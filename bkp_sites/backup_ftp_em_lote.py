import os
import csv
import ftplib
from datetime import datetime
from pathlib import Path

def print_progress(count, total, prefix='', suffix=''):  
    bar_len = 40
    filled_len = int(round(bar_len * count / float(total)))
    percents = round(100.0 * count / float(total), 1)
    bar = '=' * filled_len + '-' * (bar_len - filled_len)
    print(f'\r{prefix} [{bar}] {count}/{total} ({percents}%) {suffix}', end='')
    if count == total:
        print()

def create_ftp_connection(host, user, password, timeout=30):
    try:
        ftp = ftplib.FTP()
        ftp.connect(host, 21, timeout=timeout)
        ftp.login(user, password)
        print(f"\n✅ Conectado: {host}")
        return ftp
    except Exception as e:
        print(f"\n❌ Falha na conexão com {host}: {e}")
        return None

def list_ftp_structure(ftp, path='/'):
    folders, files = [], []
    try:
        entries = list(ftp.mlsd(path, facts=['type']))
    except Exception:
        return folders, files
    for name, facts in entries:
        if name in ('.', '..'):
            continue
        remote = f"{path.rstrip('/')}/{name}".replace('//','/')
        if facts.get('type') == 'dir':
            folders.append(remote)
            f_sub, fl_sub = list_ftp_structure(ftp, remote)
            folders += f_sub
            files   += fl_sub
        else:
            files.append(remote)
    return folders, files

def download_ftp_folder(ftp, remote_dir, local_dir, log, summary, ctr, total):
    os.makedirs(local_dir, exist_ok=True)
    ctr['cur'] += 1
    print_progress(ctr['cur'], total, prefix='Processando', suffix=local_dir)
    log.append(f"📁 Diretório criado: {local_dir}")
    try:
        entries = list(ftp.mlsd(remote_dir, facts=['type']))
    except Exception:
        return
    for name, facts in entries:
        if name in ('.', '..'):
            continue
        rem = f"{remote_dir.rstrip('/')}/{name}".replace('//','/')
        loc = os.path.join(local_dir, name)
        if facts.get('type') == 'dir':
            download_ftp_folder(ftp, rem, loc, log, summary, ctr, total)
        else:
            try:
                with open(loc, 'wb') as f:
                    ftp.retrbinary(f"RETR {rem}", f.write)
                sz = os.path.getsize(loc) / 1024
                log.append(f"📄 {rem} → {loc} ({sz:.2f} KB)")
                summary.append([rem, loc, f"{sz:.2f}"])
            except Exception as e:
                log.append(f"⚠️ Erro ao baixar {rem}: {e}")
            ctr['cur'] += 1
            print_progress(ctr['cur'], total, prefix='Processando', suffix=loc)

def execute_backup_from_csv(csv_path):
    with open(csv_path, newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            host      = row['host'].strip()
            user      = row['user'].strip()
            password  = row['pass'].strip()
            ts        = datetime.now().strftime('%Y%m%d_%H%M%S')
            base      = Path('backup_ftp')/host.replace('.', '_')/ts
            log_dir   = base/'bkp_log'; files_dir = base/'bkp_files'
            os.makedirs(log_dir, exist_ok=True); os.makedirs(files_dir, exist_ok=True)

            log, summary = [], []
            log.append(f"Host: {host}"); log.append(f"📅 Início: {datetime.now()}")

            ftp = create_ftp_connection(host, user, password)
            if not ftp:
                (log_dir/'log_backup.txt').write_text('\n'.join(log), encoding='utf-8')
                continue

            # ETAPA 1: listagem de pastas
            folders, files = list_ftp_structure(ftp)
            log.append("\n🔎 ETAPA 1: Listagem de pastas remotas")
            for d in folders:
                log.append(f"📁 {d}")

            # ETAPA 2: resumo de quantidade
            total = len(folders) + len(files)
            log.append(f"\n📦 ETAPA 2: Total de itens: {total} ({len(folders)} pastas, {len(files)} arquivos)")

            # ETAPA 3: download
            log.append("\n📂 ETAPA 3: Transferência de todos os itens")
            ctr = {'cur': 0}
            download_ftp_folder(ftp, '/', str(files_dir), log, summary, ctr, total)
            ftp.quit()
            log.append(f"\n✅ Fim: {datetime.now()}")
            log.append(f"⏱️ Duração: {datetime.now() - datetime.strptime(ts, '%Y%m%d_%H%M%S')}")

            # ETAPA 4: verificação pós-backup
            log.append("\n🔍 ETAPA 4: Verificação local x remoto")
            local_dirs, local_files = set(), set()
            for root, dirs, files_ls in os.walk(files_dir):
                for d in dirs:
                    rel = os.path.join(root, d)[len(str(files_dir)):].replace('\\','/').strip('/')
                    local_dirs.add('/' + rel)
                for f in files_ls:
                    absf = os.path.join(root, f)
                    rel  = absf[len(str(files_dir)):].replace('\\','/').strip('/')
                    local_files.add('/' + rel)

            log.append(f"Pastas remotas: {len(folders)}, locais: {len(local_dirs)}")
            if len(folders)!=len(local_dirs):
                miss = set(folders)-local_dirs
                extra= local_dirs-set(folders)
                for d in miss: log.append(f"❌ Pasta faltando: {d}")
                for d in extra:log.append(f"⚠️ Pasta extra: {d}")

            log.append(f"\nArquivos remotos: {len(files)}, locais: {len(local_files)}")
            if len(files)!=len(local_files):
                miss = set(files)-local_files
                extra= local_files-set(files)
                for f in miss: log.append(f"❌ Arquivo faltando: {f}")
                for f in extra:log.append(f"⚠️ Arquivo extra: {f}")

            # grava logs
            (log_dir/'log_backup.txt').write_text('\n'.join(log), encoding='utf-8')
            with open(log_dir/'summary.csv', 'w', newline='', encoding='utf-8') as f:
                writer = csv.writer(f)
                writer.writerow(['Remoto','Local','Tamanho (KB)'])
                writer.writerows(summary)

if __name__ == '__main__':
    execute_backup_from_csv('ftp_credenciais.csv')
