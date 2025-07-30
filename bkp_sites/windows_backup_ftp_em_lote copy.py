import os
import csv
import ftplib
import time
from datetime import datetime, timedelta
from pathlib import Path

def print_progress(count, total, prefix='', suffix=''):
    """Exibe uma barra de progresso no terminal."""
    bar_len = 40
    if total == 0: total = 1
    filled_len = int(round(bar_len * count / float(total)))
    percents = round(100.0 * count / float(total), 1)
    bar = '=' * filled_len + '-' * (bar_len - filled_len)
    print(f'\r{prefix} [{bar}] {count}/{total} ({percents}%) {suffix}', end='')
    if count == total:
        print()

def create_ftp_connection(host, user, password, timeout=30):
    """Cria e retorna uma conexão FTP."""
    try:
        ftp = ftplib.FTP()
        ftp.connect(host, 21, timeout=timeout)
        ftp.login(user, password)
        print(f"\n✅ Conectado: {host}")
        return ftp
    except Exception as e:
        print(f"\n❌ Falha na conexão com {host}: {e}")
        return None

def list_ftp_structure(ftp, use_fallback, path='/', visited_paths=None):
    """Lista recursivamente todos os arquivos e pastas, com proteção contra loops."""
    if visited_paths is None:
        visited_paths = set()
    
    try:
        # Tenta obter o caminho absoluto para detectar loops
        original_dir = ftp.pwd()
        ftp.cwd(path)
        abs_path = ftp.pwd()
        ftp.cwd(original_dir)

        if abs_path in visited_paths:
            return [], []
        visited_paths.add(abs_path)
    except Exception:
        # Se não for possível determinar o caminho, melhor não processar para evitar erros
        return [], []

    folders, files = [], []
    
    # Modo de compatibilidade (fallback) para servidores Windows/IIS
    if use_fallback:
        try:
            items = ftp.nlst(path)
            for item in items:
                try:
                    ftp.cwd(item)
                    ftp.cwd('..')
                    folders.append(item)
                    f_sub, fl_sub = list_ftp_structure(ftp, use_fallback, item, visited_paths)
                    folders.extend(f_sub)
                    files.extend(fl_sub)
                except ftplib.error_perm:
                    files.append(item)
            return list(set(folders)), list(set(files))
        except Exception:
            return [], []

    # Modo padrão (MLSD) para servidores modernos/Linux
    try:
        entries = ftp.mlsd(path, facts=['type'])
        for name, facts in entries:
            if name in ('.', '..'): continue
            remote = f"{path.rstrip('/')}/{name}".replace('//', '/')
            if facts.get('type') == 'dir':
                folders.append(remote)
                f_sub, fl_sub = list_ftp_structure(ftp, use_fallback, remote, visited_paths)
                folders.extend(f_sub)
                files.extend(fl_sub)
            else:
                files.append(remote)
        return folders, files
    except Exception:
        return [], []

def download_ftp_folder(ftp, use_fallback, remote_dir, local_dir, log, summary, ctr, total, inaccessible_paths):
    """Faz o download recursivo, pulando arquivos existentes e pastas sem permissão."""
    if not os.path.exists(local_dir):
        os.makedirs(local_dir)
    
    ctr['cur'] += 1
    if total > 0: print_progress(ctr['cur'], total, prefix='Processando', suffix=local_dir)

    # Lógica "Olhe Antes de Pular": verifica se pode entrar na pasta
    original_dir = ftp.pwd()
    try:
        ftp.cwd(remote_dir)
        ftp.cwd(original_dir)
    except ftplib.error_perm as e:
        log.append(f"⚠️ Acesso negado ao entrar no diretório '{remote_dir}': {e}. Pulando.")
        inaccessible_paths.add(remote_dir)
        return

    entries = []
    try:
        if use_fallback:
            items_nlst = ftp.nlst(remote_dir)
            for item in items_nlst: entries.append((os.path.basename(item), {}))
        else:
            entries = ftp.mlsd(remote_dir, facts=['type'])
    except Exception:
        return

    for name, facts in entries:
        if name in ('.', '..'): continue
        rem = f"{remote_dir.rstrip('/')}/{name}".replace('//', '/')
        loc = os.path.join(local_dir, name)
        
        is_directory = False
        if facts.get('type') == 'dir':
            is_directory = True
        else:
            try:
                ftp.cwd(rem); ftp.cwd('..'); is_directory = True
            except Exception:
                is_directory = False
        
        if is_directory:
            download_ftp_folder(ftp, use_fallback, rem, loc, log, summary, ctr, total, inaccessible_paths)
        else:
            if os.path.exists(loc):
                ctr['cur'] += 1
                continue
            try:
                with open(loc, 'wb') as f: ftp.retrbinary(f"RETR {rem}", f.write)
                sz = os.path.getsize(loc) / 1024
                log.append(f"📄 {rem} → {loc} ({sz:.2f} KB)")
                summary.append([rem, loc, f"{sz:.2f}"])
            except Exception as e:
                log.append(f"⚠️ Erro ao baixar {rem}: {e}")
            ctr['cur'] += 1
            if total > 0: print_progress(ctr['cur'], total, prefix='Processando', suffix=loc)

def execute_backup_from_csv(csv_path):
    """Função principal que gerencia o backup de múltiplos hosts com retentativa e resumo inteligente."""
    with open(csv_path, newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            host = row['host'].strip()
            user = row['user'].strip()
            password = row['pass'].strip()
            
            base_dir_for_host = Path('backup_ftp') / host.replace('.', '_')
            os.makedirs(base_dir_for_host, exist_ok=True)
            
            latest_backup_dir = None
            now = datetime.now()
            for d in sorted(base_dir_for_host.iterdir(), reverse=True):
                if d.is_dir():
                    try:
                        dir_time = datetime.strptime(d.name, '%Y%m%d_%H%M%S')
                        if now - dir_time < timedelta(hours=24):
                            if (d / '_SUCCESS').exists():
                                latest_backup_dir = 'COMPLETED'
                                break
                            else:
                                latest_backup_dir = d
                                break
                    except ValueError: continue
            
            if latest_backup_dir == 'COMPLETED':
                print(f"\n✅ Backup para {host} já está completo e verificado. Pulando.")
                continue

            if latest_backup_dir:
                base = latest_backup_dir
                print(f"\n🔄 Retomando backup para {host} em {base.name}")
            else:
                ts = now.strftime('%Y%m%d_%H%M%S')
                base = base_dir_for_host / ts
            
            log_dir = base / 'bkp_log'; files_dir = base / 'bkp_files'
            os.makedirs(log_dir, exist_ok=True); os.makedirs(files_dir, exist_ok=True)

            log, summary, inaccessible_paths = [], [], set()
            log_file_path = log_dir / 'log_backup.txt'
            if latest_backup_dir and log_file_path.exists():
                log = log_file_path.read_text(encoding='utf-8').splitlines()
            log.append(f"--- Início do Processo de Backup para {host} em: {now.strftime('%Y-%m-%d %H:%M:%S')} ---")

            max_retries = 50
            retry_count = 0
            backup_succeeded = False
            folders, files = [], []

            while retry_count < max_retries:
                log.append(f"\n--- Sessão de tentativa {retry_count + 1}/{max_retries} iniciada em: {datetime.now()} ---")
                
                try:
                    ftp = create_ftp_connection(host, user, password)
                    if not ftp:
                        retry_count += 1
                        if retry_count < max_retries:
                            time.sleep(15)
                            continue
                        else:
                            break
                    
                    welcome_msg = ftp.getwelcome().lower()
                    use_fallback = 'microsoft' in welcome_msg
                    
                    if not folders and not files:
                        folders, files = list_ftp_structure(ftp, use_fallback)
                        log.append(f"\n📦 Total de itens detectado: {len(folders)} pastas, {len(files)} arquivos.")
                    
                    total = len(folders) + len(files)
                    ctr = {'cur': 0}
                    download_ftp_folder(ftp, use_fallback, '/', str(files_dir), log, summary, ctr, total, inaccessible_paths)
                    
                    ftp.quit()
                    log.append(f"\n✅ Backup concluído com sucesso em: {datetime.now()}")
                    
                    (base / '_SUCCESS').touch()
                    print(f"\n✅ Backup para {host} concluído e selado com sucesso!")
                    backup_succeeded = True
                    break

                except (EOFError, ftplib.error_temp) as e:
                    print(f"\n❌ Conexão perdida com '{host}': {e}.")
                except Exception as e:
                    if str(e).strip().startswith('200'):
                        print(f"\n❌ Erro de protocolo inesperado (servidor instável): {e}.")
                    else:
                        print(f"\n❌ ERRO FATAL no backup do host '{host}': {e}")
                        log.append(f"❌ ERRO FATAL: {e}")
                        break
                
                retry_count += 1
                if retry_count < max_retries:
                    print(f"   Tentando novamente em 15 segundos... (Tentativa {retry_count + 1}/{max_retries})")
                    log.append(f"❌ TENTANDO NOVAMENTE ({retry_count + 1}/{max_retries})...")
                    time.sleep(15)
                else:
                    print(f"❌ Máximo de retentativas atingido para '{host}'. Desistindo.")
                    log.append("\n❌ MÁXIMO DE RETENTATIVAS ATINGIDO. BACKUP INCOMPLETO.")
            
            log.append("\n🔍 ETAPA FINAL: Verificação Remoto x Local")
            local_dirs, local_files = set(), set()
            if files_dir.exists():
                for root, dirs, files_ls in os.walk(files_dir):
                    for d in dirs:
                        rel = os.path.join(root, d)[len(str(files_dir)):].replace('\\','/').strip('/')
                        local_dirs.add('/' + rel)
                    for f in files_ls:
                        absf = os.path.join(root, f)
                        rel = absf[len(str(files_dir)):].replace('\\','/').strip('/')
                        local_files.add('/' + rel)
            
            log.append(f"Pastas remotas (detectadas): {len(folders)}, Pastas locais (baixadas): {len(local_dirs)}")
            if len(folders) != len(local_dirs):
                missing_folders = set(folders) - local_dirs
                extra_folders = local_dirs - set(folders)
                log.append("  Discrepâncias em Pastas:")
                for d in missing_folders:
                    if d in inaccessible_paths: log.append(f"    - ⚠️ Não baixada (permissão negada): {d}")
                    else: log.append(f"    - ❌ Faltando: {d}")
                for d in extra_folders: log.append(f"    - ⚠️ Pasta extra (não deveria existir): {d}")

            log.append(f"\nArquivos remotos (detectados): {len(files)}, Arquivos locais (baixados): {len(local_files)}")
            if len(files) != len(local_files):
                missing_files = set(files) - local_files
                extra_files = local_files - set(files)
                log.append("  Discrepâncias em Arquivos:")
                for f in missing_files: log.append(f"    - ❌ Faltando: {f}")
                for f in extra_files: log.append(f"    - ⚠️ Arquivo extra (não deveria existir): {f}")
            
            if not backup_succeeded:
                print(f"⚠️ Atenção: O backup para o host {host} não foi concluído com sucesso após todas as tentativas.")

            with open(log_file_path, 'w', encoding='utf-8') as f:
                f.write('\n'.join(log))
            with open(log_dir/'summary.csv', 'w', newline='', encoding='utf-8') as f:
                writer = csv.writer(f)
                writer.writerow(['Remoto','Local','Tamanho (KB)'])
                writer.writerows(summary)

if __name__ == '__main__':
    execute_backup_from_csv('ftp_credenciais.csv')