# 🛠️ FTP & MySQL Backup Toolkit

Ferramenta automatizada para backup completo de **sites hospedados na Locaweb**, com foco em **eficiência em lote**, segurança e verificação cruzada dos dados baixados.

## 🎯 Objetivo

Este projeto tem como finalidade **resgatar rapidamente todo o conteúdo de hospedagens Locaweb** usando credenciais administrativas. Ele cobre dois aspectos principais:

- **Códigos do site e arquivos**, via FTP.
- **Bases de dados MySQL**, via dump automático.

## 📁 Estrutura do Repositório

```
ftp-mysql-backup-toolkit/
├── backup_ftp_em_lote.py       # Script de backup FTP com verificação de integridade
├── dump.py                     # Script de dump de bancos MySQL com validação
├── ftp_credenciais.csv         # Lista de acessos para execução em lote
├── backup_ftp/                 # Backups dos arquivos por host e data
└── backup_mysql/               # Dumps dos bancos e logs organizados por host
```

## 🧩 Scripts Inclusos

### 1. `backup_ftp_em_lote.py`

Backup de **todos os arquivos e pastas de sites via FTP**, com recursos de:

- Execução em lote via `ftp_credenciais.csv`.
- Download recursivo completo das pastas.
- **Barra de progresso** por item transferido.
- Log detalhado em `log_backup.txt` com:
  - estrutura original do FTP,
  - itens baixados,
  - erros e alertas,
  - comparação **remoto x local**.
- Geração de `summary.csv` com os arquivos baixados e seus tamanhos.

#### 🧪 Exemplo de validação no log:
```
Pastas remotas: 12, locais: 12
Arquivos remotos: 87, locais: 87
✅ Backup completo sem discrepâncias.
```

### 2. `dump.py`

Dump completo de **todos os bancos MySQL** associados às credenciais fornecidas. Funcionalidades:

- Execução em lote via `ftp_credenciais_mysql.csv`.
- Criação automatizada de:
  - dumps SQL (`dump/`)
  - logs (`logs/`)
  - backup bruto (opcional)
- Geração de `readme.txt` com **guia passo-a-passo para restauração**.
- Verificação cruzada entre tabelas existentes e tabelas presentes no dump (`DROP TABLE`).
- Detecção de falhas silenciosas (ex: tabelas não incluídas no dump).

#### 🧪 Exemplo de verificação no log:
```
Banco: clientes
Tabelas:
  - usuarios
  - pedidos
✅ Dump concluído: clientes.sql
✅ Verificação OK (2 tabelas)
```

## 🚀 Como Usar

1. **Configure o CSV de credenciais** com os acessos:
   - `ftp_credenciais.csv` para backups FTP
   - `ftp_credenciais_mysql.csv` para dumps MySQL

2. **Execute os scripts** em lote:
```bash
python backup_ftp_em_lote.py
python dump.py
```

3. Os arquivos e logs serão salvos em pastas organizadas por host e data.

## 📌 Observações

- **Recomenda-se rodar em ambiente Linux** com acesso a `mysqldump` instalado.
- O foco é **velocidade, rastreabilidade e segurança**, permitindo migrar múltiplos sites de forma confiável.
- Pode ser adaptado para outros provedores com ajustes mínimos.

## 🧑‍💻 Autor

Felipe Reis - felipecsr@gmail.com

Desenvolvido como ferramenta de apoio para resgate e migração de sites Locaweb, com foco em **clientes que desejam encerrar o serviço mantendo uma cópia integral dos dados**.

## 🧰 Requisitos do Sistema

Além da biblioteca Python abaixo, é necessário que o utilitário `mysqldump` esteja instalado no sistema:

```bash
# No Ubuntu/Debian:
sudo apt update
sudo apt install mysql-client

# Verifique se o mysqldump está disponível:
mysqldump --version
```

Também é recomendável ter o Python 3.8+ instalado e as bibliotecas do `requirements.txt` configuradas:
```bash
pip install -r requirements.txt
```
