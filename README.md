![Python](https://img.shields.io/badge/Python-3.8+-blue?logo=python) ![Shell Script](https://img.shields.io/badge/Shell-Script-black?logo=gnubash) ![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white) ![Status](https://img.shields.io/badge/Status-Solução_Validada-green)

# 🛠️ Toolkit de Automação para Recuperação de Ativos Digitais

<br>

## 📄 O Case: Resgate de Ativos Digitais em Lote

Este projeto foi desenvolvido como uma solução prática para a migração de múltiplos sites de um serviço de hospedagem que seria descontinuado. O desafio era garantir a **recuperação integral e verificada de todos os ativos digitais** (arquivos e bancos de dados) de forma automatizada.

### 💥 O Problema de Negócio

O processo manual de backup era inviável, lento e propenso a erros. A necessidade era de uma ferramenta que pudesse:
* Realizar o backup completo de **10+ sites** e seus respectivos bancos de dados em uma única execução.
* Garantir que **nenhum dado fosse perdido** no processo.
* Gerar **evidências auditáveis** do sucesso e da integridade de cada operação.

---

## 🎯 A Solução: Um Toolkit de Automação com Foco em Verificação

Foi desenvolvido um toolkit em Python para automatizar 100% do processo. A solução foi projetada com foco em **velocidade, rastreabilidade e segurança**, permitindo a migração completa em poucas horas e fornecendo múltiplos artefatos para validação.

### ✅ Resultados e Evidências do Projeto

A aplicação do toolkit resultou no backup bem-sucedido de todos os ativos, com a integridade validada por relatórios e logs gerados automaticamente. Os arquivos abaixo são exemplos reais da saída da ferramenta para um dos domínios e banco de dados atrelado:

* **[Relatório de Integridade](./integrity_report.txt):** Confirmação de que 100% dos arquivos e pastas foram espelhados localmente.
* **[Sumário de Arquivos (CSV)](./summary.csv):** Lista detalhada dos mais de 5.000 arquivos baixados, com seus respectivos tamanhos, para auditoria.
* **[Log de Backup FTP](./log_backup_ftp.txt):** Log completo da operação de transferência de arquivos (com loops de resiliência para desconexão).
* **[Log de Dump MySQL](./log_dump.txt):** Log da extração dos bancos de dados do domínio.

Além da recuperação, o sucesso do projeto foi validado pela **restauração e execução dos backups em um ambiente de servidor local**, utilizando XAMPP.

* **[Guia de Validação Local com XAMPP](./como_rodar_sistema_via_xampp.md):** Documentação detalhada do processo de restauração e teste dos sites e bancos de dados recuperados.

![exemplo de tela dos sistema executado como localhost](./login.png)
*Tela de login executada localhost*
---

## 🧩 Principais Funcionalidades do Toolkit

A solução é composta por scripts modulares e adaptáveis:

* **`backup_ftp_em_lote.py` (Versões para Linux & Windows):**
    * Executa backups de múltiplos sites em lote a partir de um arquivo `csv`.
    * Gera logs detalhados e relatórios de verificação de integridade.

* **`dump.py` (Backup de Bancos de Dados):**
    * Automatiza a execução de `mysqldump` para múltiplos bancos de dados.
    * Gera um guia de restauração automático para facilitar a migração.
    * Realiza uma validação cruzada para garantir que todas as tabelas foram exportadas.

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem Principal:** Python 3.8+
* **Automação de Sistema:** Shell Script, `mysqldump`
* **Bibliotecas Python:** `pandas`
* **Ambiente de Validação Local:** XAMPP (Apache, MySQL)

---

## 🚀 Como Usar

1.  **Configure os Arquivos de Credenciais:**
    * Preencha o `ftp_credenciais.csv` com os dados de acesso FTP.
    * Preencha o `ftp_credenciais_mysql.csv` para os bancos de dados.

2.  **Instale os Requisitos:**
    * Certifique-se de ter `mysqldump` (via MySQL Client ou XAMPP) instalado e acessível no PATH do sistema.
    * Instale as bibliotecas Python necessárias:
    ```bash
    pip install -r requirements.txt
    ```

3.  **Execute os Scripts:**
    ```bash
    # Para backup de arquivos
    python linux_backup_ftp_em_lote.py
    
    # Para backup de bancos de dados
    python dump.py
    ```
4.  **Verifique os Resultados:** Os backups e logs estarão organizados nas pastas `backup_ftp/` e `backup_mysql/`.

---

## 🧑‍💻 Autor

**Felipe Reis** | [LinkedIn](https://www.linkedin.com/in/felipecsr) | [GitHub](https://github.com/felipecsr)

*Este projeto exemplifica a aplicação de habilidades de scripting e automação para resolver um problema de negócio real, com foco em governança, segurança e recuperação de dados.*
