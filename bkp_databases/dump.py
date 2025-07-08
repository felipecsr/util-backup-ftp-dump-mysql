import os
import csv
import subprocess
import re
from datetime import datetime
from pathlib import Path
import mysql.connector

# ————— Configurações iniciais —————
SYSTEM_DATABASES = {'information_schema', 'performance_schema', 'mysql', 'sys'}
BASE_BACKUP_DIR   = Path('backup_mysql')
CSV_CREDENTIALS   = 'ftp_credenciais_mysql.csv'


def criar_estrutura(host: str) -> dict:
    """Cria pastas base para logs, dumps e backups físicos."""
    host_dir = BASE_BACKUP_DIR / host.replace('.', '_')
    paths = {
        'base':     host_dir,
        'logs':     host_dir / 'logs',
        'dump':     host_dir / 'dump',
        'database': host_dir / 'database'
    }
    for key, p in paths.items():
        try:
            p.mkdir(parents=True, exist_ok=True)
        except Exception as e:
            print(f"Erro ao criar pasta '{key}': {p} -> {e}")
    return paths


def gerar_readme(dump_dir: Path, host: str, user: str) -> None:
    """Gera readme.txt com guia passo a passo para iniciantes."""
    try:
        readme_path = dump_dir / 'readme.txt'
        content = f"""
📘 GUIA PASSO A PASSO PARA RESTAURAÇÃO (NÍVEL INICIANTE)

1️⃣ Abra o terminal e vá para a pasta dump:
   cd {dump_dir.resolve()}

2️⃣ Se ainda não existir, crie o banco de destino:
   mysql -u {user} -p -h {host} -e "CREATE DATABASE nome_do_banco;"

3️⃣ Para cada arquivo .sql em dump/, execute:
   mysql -u {user} -p -h {host} nome_do_banco < arquivo.sql

   Exemplo:
     mysql -u {user} -p -h {host} meu_banco < meu_banco.sql

4️⃣ Quando pedir senha, digite **a mesma** que você usa no phpMyAdmin ou no seu cliente MySQL.

5️⃣ Após concluir, confira o log:
   logs/log_backup.txt
   que lista tabelas processadas e possíveis erros.

📁 Estrutura de pastas gerada:
- dump/: contém os arquivos `.sql`
- logs/: registros de cada etapa
- database/: backups brutos (se aplicável)
"""
        readme_path.write_text(content.strip() + '\n', encoding='utf-8')
    except Exception as e:
        print(f"Erro ao gerar readme: {e}")


def registrar_log(log_dir: Path, lines: list) -> None:
    """Registra linhas no arquivo log_backup.txt."""
    try:
        log_file = log_dir / 'log_backup.txt'
        with log_file.open('a', encoding='utf-8') as f:
            f.write('\n'.join(lines) + '\n')
    except Exception as e:
        print(f"Erro ao registrar log: {e}")


def listar_bancos(host: str, user: str, password: str) -> list:
    """Retorna lista de bancos válidos no servidor, excluindo sistemas."""
    conn = None
    try:
        conn = mysql.connector.connect(host=host, user=user, password=password)
        cursor = conn.cursor()
        cursor.execute('SHOW DATABASES')
        dbs = [row[0] for row in cursor.fetchall() if row[0] not in SYSTEM_DATABASES]
        cursor.close()
        return dbs
    except Exception as e:
        raise RuntimeError(f"Falha ao listar bancos em '{host}': {e}")
    finally:
        if conn:
            conn.close()


def listar_tabelas(host: str, user: str, password: str, database: str) -> list:
    """Retorna lista de tabelas de um banco."""
    conn = mysql.connector.connect(
        host=host, user=user, password=password, database=database
    )
    cursor = conn.cursor()
    cursor.execute('SHOW TABLES')
    tables = [row[0] for row in cursor.fetchall()]
    cursor.close()
    conn.close()
    return tables


def parse_dump_tables(dump_path: Path) -> list:
    """Extrai nomes de tabelas do arquivo .sql via regex em linhas de DROP TABLE."""
    pattern = re.compile(r"DROP TABLE IF EXISTS `([^`]+)`;")
    tables = []
    with dump_path.open(encoding='utf-8', errors='ignore') as f:
        for line in f:
            m = pattern.search(line)
            if m:
                tables.append(m.group(1))
    return tables


def dump_databases(host: str, user: str, password: str) -> None:
    """Realiza dump de todos os bancos, registra logs e exibe progresso no console."""
    print(f"\n🔄 Iniciando backup do host '{host}' em {datetime.now():%Y-%m-%d %H:%M:%S}")
    paths = criar_estrutura(host)
    log_lines = [
        f"📅 Início do backup: {datetime.now()}",
        f"🌐 Host: {host}"
    ]

    # 1. Listar bancos
    try:
        bancos = listar_bancos(host, user, password)
        if not bancos:
            log_lines.append('⚠️ Nenhum banco encontrado.')
            registrar_log(paths['logs'], log_lines)
            print("⚠️ Nenhum banco válido encontrado. Abortando.")
            return
    except RuntimeError as e:
        log_lines.append(f"❌ {e}")
        registrar_log(paths['logs'], log_lines)
        print(f"❌ Falha ao listar bancos: {e}")
        return

    # 2. Gerar readme
    gerar_readme(paths['dump'], host, user)
    log_lines.append(f"📘 Readme criado em: {paths['dump']/'readme.txt'}")
    print("📘 Readme gerado.")

    # 3. Dump por banco
    for db in bancos:
        db_file = paths['dump'] / f"{db}.sql"
        log_lines.append(f"📦 Banco: {db}")

        # Listar e logar tabelas linha a linha
        tables = listar_tabelas(host, user, password, db)
        log_lines.append("   Tabelas:")
        for tbl in tables:
            log_lines.append(f"      - {tbl}")
        print(f"Iniciando dump de '{db}' ({len(tables)} tabelas)...")

        cmd = ['mysqldump', f'-h{host}', f'-u{user}', f'-p{password}', db]
        try:
            with db_file.open('w', encoding='utf-8') as f:
                subprocess.run(cmd, stdout=f, stderr=subprocess.PIPE, check=True, text=True)
            log_lines.append(f"✅ Dump concluído: {db}.sql")
            print(f"✅ Dump de '{db}' concluído.")
        except subprocess.CalledProcessError as e:
            log_lines.append(f"❌ Erro no dump {db}: {e.stderr.strip()}")
            print(f"❌ Falha no dump de '{db}'. Consulte o log.")

        # 4. Validação de tabelas
        dumped_tables = parse_dump_tables(db_file)
        expected_set = set(tables)
        dumped_set   = set(dumped_tables)
        if expected_set == dumped_set:
            msg = f"✅ Verificação OK ({len(tables)} tabelas)"
            log_lines.append(msg)
            print(msg)
        else:
            log_lines.append("❌ Discrepâncias na validação:")
            for t in expected_set - dumped_set:
                log_lines.append(f"   – Não dumpou: {t}")
            for t in dumped_set - expected_set:
                log_lines.append(f"   – Dumpou a mais: {t}")
            print("❌ Discrepância detectada. Veja o log.")

    # 5. Finalizar log
    log_lines.append(f"🏁 Fim do backup: {datetime.now()}")
    registrar_log(paths['logs'], log_lines)
    print(f"🏁 Backup concluído com sucesso! Logs em: {paths['logs']}\n")


def main():
    # Lê credenciais CSV
    if not Path(CSV_CREDENTIALS).is_file():
        print(f"❌ Arquivo de credenciais não encontrado: {CSV_CREDENTIALS}")
        return

    with open(CSV_CREDENTIALS, newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            dump_databases(row['host'], row['user'], row['pass'])


if __name__ == '__main__':
    main()
