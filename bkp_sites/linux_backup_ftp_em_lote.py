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
    print(f'\r{prefix} [{bar}] {count}/{total} ({percents}%) {suffix}', end='', flush=True)
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
            return [], [], {}
        visited_paths.add(abs_path)
    except Exception:
        return [], [], {}

    folders, files = [], []
    file_sizes = {}  # Dicionário para armazenar tamanhos dos arquivos
    
    # Modo de compatibilidade (fallback) para servidores Windows/IIS
    if use_fallback:
        try:
            items = ftp.nlst(path)
            for item in items:
                try:
                    ftp.cwd(item)
                    ftp.cwd('..')
                    folders.append(item)
                    f_sub, fl_sub, sizes_sub = list_ftp_structure(ftp, use_fallback, item, visited_paths)
                    folders.extend(f_sub)
                    files.extend(fl_sub)
                    file_sizes.update(sizes_sub)
                except ftplib.error_perm:
                    files.append(item)
                    # Tenta obter o tamanho do arquivo no modo fallback
                    try:
                        size = ftp.size(item)
                        if size is not None:
                            file_sizes[item] = size
                    except Exception:
                        pass
            return list(set(folders)), list(set(files)), file_sizes
        except Exception:
            return [], [], {}

    # Modo padrão (MLSD) para servidores modernos/Linux
    try:
        entries = ftp.mlsd(path, facts=['type', 'size'])
        for name, facts in entries:
            if name in ('.', '..'): continue
            remote = f"{path.rstrip('/')}/{name}".replace('//', '/')
            if facts.get('type') == 'dir':
                folders.append(remote)
                f_sub, fl_sub, sizes_sub = list_ftp_structure(ftp, use_fallback, remote, visited_paths)
                folders.extend(f_sub)
                files.extend(fl_sub)
                file_sizes.update(sizes_sub)
            else:
                files.append(remote)
                # Armazena o tamanho do arquivo se disponível
                if 'size' in facts and facts['size'] is not None:
                    try:
                        file_sizes[remote] = int(facts['size'])
                    except (TypeError, ValueError):
                        pass
        return folders, files, file_sizes
    except Exception:
        return [], [], {}

def download_ftp_file(ftp, remote_path, local_path, max_retries=3):
    """Baixa um arquivo com tratamento de erros e retentativas."""
    retries = 0
    while retries < max_retries:
        try:
            # Tenta obter o tamanho remoto para verificação posterior
            try:
                remote_size = ftp.size(remote_path)
            except Exception:
                remote_size = None
            
            # Baixa o arquivo
            with open(local_path, 'wb') as f:
                ftp.retrbinary(f"RETR {remote_path}", f.write)
            
            # Verifica se o arquivo foi baixado completamente
            if remote_size is not None:
                local_size = os.path.getsize(local_path)
                if local_size != remote_size:
                    raise IOError(f"Tamanho inconsistente (remoto: {remote_size}, local: {local_size})")
            
            return True, remote_size
        except Exception as e:
            retries += 1
            # Remove arquivo parcial em caso de erro
            if os.path.exists(local_path):
                try:
                    os.remove(local_path)
                except Exception:
                    pass
            
            if retries < max_retries:
                time.sleep(2)
            else:
                return False, str(e)
    return False, "Max retries exceeded"

def download_ftp_folder(ftp, use_fallback, remote_dir, local_dir, log, summary, ctr, total, inaccessible_paths, file_sizes):
    """Faz o download recursivo, com tratamento de erros e verificação de integridade."""
    if not os.path.exists(local_dir):
        os.makedirs(local_dir, exist_ok=True)
    
    ctr['cur'] += 1
    if total > 0: 
        print_progress(ctr['cur'], total, prefix='Processando', suffix=local_dir)

    # Verifica permissão de acesso ao diretório
    original_dir = ftp.pwd()
    try:
        ftp.cwd(remote_dir)
        ftp.cwd(original_dir)
    except ftplib.error_perm as e:
        log.append(f"⚠️ Acesso negado ao entrar no diretório '{remote_dir}': {e}. Pulando.")
        inaccessible_paths.add(remote_dir)
        return

    # Obtém lista de entradas no diretório
    entries = []
    try:
        if use_fallback:
            items_nlst = ftp.nlst(remote_dir)
            for item in items_nlst: 
                entries.append((os.path.basename(item), {'type': 'dir'}))  # Assume diretório inicialmente
        else:
            entries = list(ftp.mlsd(remote_dir, facts=['type']))
    except Exception as e:
        log.append(f"⚠️ Erro ao listar {remote_dir}: {e}")
        return

    for name, facts in entries:
        if name in ('.', '..'): 
            continue
            
        remote_path = f"{remote_dir.rstrip('/')}/{name}".replace('//', '/')
        local_path = os.path.join(local_dir, name)
        
        # Determina se é diretório
        is_directory = False
        if facts.get('type') == 'dir':
            is_directory = True
        else:
            # Verificação adicional para servidores que não reportam tipo corretamente
            try:
                ftp.cwd(remote_path)
                ftp.cwd('..')
                is_directory = True
            except Exception:
                is_directory = False
        
        if is_directory:
            # Processa diretório recursivamente
            download_ftp_folder(
                ftp, use_fallback, remote_path, local_path, 
                log, summary, ctr, total, inaccessible_paths, file_sizes
            )
        else:
            # Atualiza contador para arquivo
            ctr['cur'] += 1
            
            # Verifica se arquivo local já existe e está completo
            if os.path.exists(local_path):
                local_size = os.path.getsize(local_path)
                
                # Verifica tamanho contra o servidor
                try:
                    remote_size = ftp.size(remote_path)
                    if remote_size is not None and local_size == remote_size:
                        # Arquivo parece válido, pula download
                        if total > 0: 
                            print_progress(ctr['cur'], total, prefix='Verificado', suffix=local_path)
                        continue
                except Exception:
                    pass
            
            # Baixa o arquivo com tratamento de erros
            success, result = download_ftp_file(ftp, remote_path, local_path)
            
            if success:
                remote_size = result
                file_sizes[remote_path] = remote_size  # Atualiza tamanho conhecido
                sz_kb = remote_size / 1024 if remote_size else 0
                log.append(f"📄 {remote_path} → {local_path} ({sz_kb:.2f} KB)")
                summary.append([remote_path, local_path, f"{sz_kb:.2f}"])
            else:
                error_msg = result
                log.append(f"⚠️ Falha no download de {remote_path}: {error_msg}")
            
            if total > 0: 
                status = 'Sucesso' if success else 'Falha'
                print_progress(ctr['cur'], total, prefix=status, suffix=local_path)

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
                    except ValueError: 
                        continue
            
            if latest_backup_dir == 'COMPLETED':
                print(f"\n✅ Backup para {host} já está completo e verificado. Pulando.")
                continue

            if latest_backup_dir:
                base = latest_backup_dir
                print(f"\n🔄 Retomando backup para {host} em {base.name}")
            else:
                ts = now.strftime('%Y%m%d_%H%M%S')
                base = base_dir_for_host / ts
            
            log_dir = base / 'bkp_log'
            files_dir = base / 'bkp_files'
            os.makedirs(log_dir, exist_ok=True)
            os.makedirs(files_dir, exist_ok=True)

            log, summary, inaccessible_paths = [], [], set()
            log_file_path = log_dir / 'log_backup.txt'
            file_sizes = {}  # Dicionário para armazenar tamanhos de arquivos
            
            # Carrega log existente se estiver retomando
            if base.exists() and log_file_path.exists():
                with open(log_file_path, 'r', encoding='utf-8') as f:
                    log = f.read().splitlines()
            
            log.append(f"\n--- Início do Processo de Backup para {host} em: {now.strftime('%Y-%m-%d %H:%M:%S')} ---")

            max_retries = 50
            retry_count = 0
            backup_succeeded = False
            folders, files = [], []
            
            # Loop de retentativas para todo o processo de backup
            while retry_count < max_retries and not backup_succeeded:
                session_start = datetime.now()
                log.append(f"\n--- Sessão de tentativa {retry_count + 1}/{max_retries} iniciada em: {session_start} ---")
                
                try:
                    # Estabelece conexão FTP
                    ftp = create_ftp_connection(host, user, password)
                    if not ftp:
                        raise ConnectionError("Falha na conexão FTP")
                    
                    # Detecta tipo de servidor para determinar método de listagem
                    welcome_msg = ftp.getwelcome().lower()
                    use_fallback = 'microsoft' in welcome_msg or 'windows' in welcome_msg
                    
                    # Obtém estrutura completa do servidor se necessário
                    if not folders and not files:
                        folders, files, file_sizes = list_ftp_structure(ftp, use_fallback)
                        log.append(f"\n📦 Total de itens detectado: {len(folders)} pastas, {len(files)} arquivos.")
                    
                    total_items = len(folders) + len(files)
                    ctr = {'cur': 0}
                    
                    # Executa download recursivo
                    download_ftp_folder(
                        ftp, use_fallback, '/', str(files_dir), 
                        log, summary, ctr, total_items, inaccessible_paths, file_sizes
                    )
                    
                    ftp.quit()
                    
                    # Verificação final de integridade
                    verification_errors = verify_backup_integrity(files_dir, folders, files, file_sizes, log)
                    
                    if not verification_errors:
                        (base / '_SUCCESS').touch()
                        log.append(f"\n✅ Backup concluído e verificado com sucesso em: {datetime.now()}")
                        print(f"\n✅ Backup para {host} concluído e verificado com sucesso!")
                        backup_succeeded = True
                    else:
                        log.append(f"\n⚠️ Backup concluído com {verification_errors} problemas de integridade em: {datetime.now()}")
                        print(f"\n⚠️ Backup para {host} concluído com {verification_errors} problemas de integridade!")
                        backup_succeeded = True  # Considera completo mas com problemas
                    
                    break

                except (EOFError, ftplib.error_temp, ConnectionError) as e:
                    error_msg = f"Conexão perdida com '{host}': {e}"
                    print(f"\n❌ {error_msg}")
                    log.append(f"❌ {error_msg}")
                except Exception as e:
                    error_msg = f"ERRO FATAL no backup do host '{host}': {e}"
                    print(f"\n❌ {error_msg}")
                    log.append(f"❌ {error_msg}")
                    break
                
                finally:
                    # Fecha conexão se ainda estiver aberta
                    try:
                        if 'ftp' in locals() and ftp:
                            ftp.quit()
                    except Exception:
                        pass
                
                # Prepara para nova tentativa
                retry_count += 1
                if retry_count < max_retries:
                    retry_msg = f"Tentando novamente em 15 segundos... (Tentativa {retry_count + 1}/{max_retries})"
                    print(f"   {retry_msg}")
                    log.append(f"❌ {retry_msg}")
                    time.sleep(15)
                else:
                    error_msg = "Máximo de retentativas atingido. Backup INCOMPLETO."
                    print(f"\n❌ {error_msg}")
                    log.append(f"\n❌ {error_msg}")
            
            # Gera relatórios finais
            generate_final_reports(files_dir, log_dir, log, summary, folders, files, file_sizes)
            
            if not backup_succeeded:
                print(f"⚠️ Atenção: O backup para o host {host} não foi concluído com sucesso após todas as tentativas.")

def verify_backup_integrity(files_dir, remote_folders, remote_files, remote_file_sizes, log):
    """Verifica a integridade do backup comparando estrutura e tamanhos de arquivos."""
    log.append("\n🔍 ETAPA FINAL: Verificação Remoto x Local")
    verification_errors = 0
    
    # Verificação de pastas
    local_dirs = set()
    for root, dirs, _ in os.walk(files_dir):
        for d in dirs:
            full_path = os.path.join(root, d)
            relative_path = full_path[len(str(files_dir)):].replace('\\', '/').lstrip('/')
            if relative_path:  # Ignora diretório raiz
                local_dirs.add('/' + relative_path)
    
    # Encontra pastas faltantes ou extras
    remote_dir_set = set(remote_folders)
    missing_dirs = remote_dir_set - local_dirs
    extra_dirs = local_dirs - remote_dir_set
    
    if missing_dirs or extra_dirs:
        log.append("⚠️ Discrepâncias em Pastas:")
        for d in sorted(missing_dirs):
            log.append(f"    - ❌ Faltando: {d}")
            verification_errors += 1
        for d in sorted(extra_dirs):
            log.append(f"    - ⚠️ Extra: {d} (não existe no servidor)")
            verification_errors += 1
    else:
        log.append("✅ Todas as pastas foram criadas corretamente")
    
    # Verificação de arquivos
    local_files = {}
    for root, _, files in os.walk(files_dir):
        for f in files:
            full_path = os.path.join(root, f)
            relative_path = full_path[len(str(files_dir)):].replace('\\', '/').lstrip('/')
            if relative_path:  # Ignora diretório raiz
                local_size = os.path.getsize(full_path)
                local_files['/' + relative_path] = local_size
    
    # Encontra arquivos faltantes, extras ou com tamanho incorreto
    missing_files = []
    size_mismatch = []
    
    for remote_file in remote_files:
        if remote_file not in local_files:
            missing_files.append(remote_file)
            verification_errors += 1
        else:
            local_size = local_files[remote_file]
            remote_size = remote_file_sizes.get(remote_file)
            
            # Só compara tamanhos se conhecido em ambos os lados
            if remote_size is not None and local_size != remote_size:
                size_mismatch.append((remote_file, remote_size, local_size))
                verification_errors += 1
    
    extra_files = set(local_files.keys()) - set(remote_files)
    
    if missing_files or size_mismatch or extra_files:
        log.append("⚠️ Discrepâncias em Arquivos:")
        for f in sorted(missing_files):
            log.append(f"    - ❌ Faltando: {f}")
        for f, remote_size, local_size in size_mismatch:
            log.append(f"    - ❌ Tamanho incorreto: {f} (remoto: {remote_size}, local: {local_size})")
        for f in sorted(extra_files):
            log.append(f"    - ⚠️ Extra: {f} (não existe no servidor)")
    else:
        log.append("✅ Todos os arquivos foram baixados com tamanhos corretos")
    
    log.append(f"\n🔍 RESULTADO DA VERIFICAÇÃO: {verification_errors} problemas encontrados")
    return verification_errors

def generate_final_reports(files_dir, log_dir, log, summary, folders, files, file_sizes):
    """Gera todos os relatórios finais do backup."""
    # Salva log principal
    with open(log_dir / 'log_backup.txt', 'w', encoding='utf-8') as f:
        f.write('\n'.join(log))
    
    # Salva sumário CSV
    with open(log_dir / 'summary.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['Caminho Remoto', 'Caminho Local', 'Tamanho (KB)'])
        writer.writerows(summary)
    
    # Salva relatório de integridade
    integrity_report = [
        "RELATÓRIO DE INTEGRIDADE",
        "========================",
        f"Pastas remotas: {len(folders)}",
        f"Arquivos remotos: {len(files)}",
        "",
        "ESTRUTURA DO BACKUP LOCAL:",
        f"Total de pastas: {sum([len(dirs) for _, dirs, _ in os.walk(files_dir)])}",
        f"Total de arquivos: {sum([len(files) for _, _, files in os.walk(files_dir)])}",
        f"Tamanho total: {sum(os.path.getsize(os.path.join(dirpath, filename)) for dirpath, _, filenames in os.walk(files_dir) for filename in filenames) / 1024 / 1024:.2f} MB"
    ]
    
    with open(log_dir / 'integrity_report.txt', 'w', encoding='utf-8') as f:
        f.write('\n'.join(integrity_report))

if __name__ == '__main__':
    execute_backup_from_csv('ftp_credenciais.csv')