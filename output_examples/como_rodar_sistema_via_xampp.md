
# Configuração de Ambiente Local para execução do Projeto

Este documento detalha o passo a passo para configurar e executar este projeto (um sistema legado em CodeIgniter) em um ambiente de desenvolvimento local utilizando **XAMPP (LAMPP)** em um sistema operacional Linux. O guia inclui a solução para problemas comuns de compatibilidade e configuração que foram encontrados durante o processo.

---

## 🧭 Objetivo

Rodar localmente uma cópia de um site que estava em um servidor de hospedagem (Locaweb), incluindo seus arquivos e banco de dados, para fins de desenvolvimento e manutenção.

---

## ✅ Pré-requisitos

- Um backup completo dos arquivos do site.
- Um arquivo de dump do banco de dados (ex: `systransporte.sql`).
- **XAMPP para Linux (LAMPP)** instalado.

---

## ⚙️ Guia de Instalação e Configuração

### Passo 1: Instalação e Gerenciamento do Servidor Local (LAMPP)

A base para rodar o site é ter um servidor local com Apache, MySQL e PHP.

1. Instale o **XAMPP para Linux (LAMPP)**, disponível em: https://www.apachefriends.org/index.html  
   Por padrão, ele é instalado em `/opt/lampp`.

2. Copie os arquivos do projeto para a pasta pública do servidor (requer `sudo`):

```bash
# Crie uma pasta para o projeto
sudo mkdir /opt/lampp/htdocs/sistemadegestaom1

# Copie os arquivos do seu backup para a nova pasta
sudo cp -r /caminho/do/seu/backup/* /opt/lampp/htdocs/sistemadegestaom1/
```

3. Inicie os serviços do LAMPP:

```bash
sudo /opt/lampp/lampp start
```

---

### 🛑 DETOUR #1: Conflito na Porta do Banco de Dados (MySQL)

**Problema:** MySQL não inicia, mas Apache sim.  
**Diagnóstico:** Porta 3306 já ocupada por outro MySQL do sistema.

```bash
sudo ss -tulpn | grep ':3306'
```

**Solução:** Parar o serviço MySQL do sistema:

```bash
sudo systemctl stop mysql.service
sudo /opt/lampp/lampp start
```

---

### Passo 2: Configuração do Banco de Dados

1. Acesse o phpMyAdmin: [http://localhost/phpmyadmin](http://localhost/phpmyadmin)
2. Crie um banco com o nome usado pelo sistema:

- **Nome:** `systransporte`
- **Collation:** `utf8mb4_general_ci`

3. Importe o arquivo `.sql` via aba "Importar".

---

### Passo 3: Conectando a Aplicação ao Banco de Dados Local

Edite o arquivo de configuração do banco de dados:

```php
Arquivo: /opt/lampp/htdocs/sistemadegestaom1/public_html/application/config/database.php

$db['default'] = array(
    'hostname' => 'localhost',
    'username' => 'root',
    'password' => '',
    'database' => 'systransporte',
    // ...
);
```

---

### 🛑 DETOUR #2: Erros por Incompatibilidade da Versão do PHP

**Problema:** Muitos erros `E_DEPRECATED` ou `headers already sent`.  
**Diagnóstico:** Projeto usa PHP antigo; XAMPP traz PHP 8.x, mais rigoroso.

**Soluções:**

1. Editar o arquivo de entrada do sistema:

```php
Arquivo: /opt/lampp/htdocs/sistemadegestaom1/public_html/index.php
```

2. Alterar o ambiente para produção:

```php
define('ENVIRONMENT', 'production');
```

3. Suprimir avisos de depreciação:

```php
error_reporting(E_ALL & ~E_DEPRECATED);
```

---

### 🛑 DETOUR #3: Redirecionamento para o Domínio de Produção

**Problema:** O site redireciona para o domínio antigo.  
**Diagnóstico:** `base_url` fixa no config.

1. Verifique a URL antiga:

```bash
grep -r "sistemadegestao.masmtecnologia.com.br" /opt/lampp/htdocs/sistemadegestaom1/
```

2. Corrija o arquivo de configuração:

```php
Arquivo: /opt/lampp/htdocs/sistemadegestaom1/public_html/application/config/config.php

$config['base_url'] = 'http://localhost/sistemadegestaom1/public_html/';
```

Use `nano` com `sudo` e confirme com `grep`.

---

## ✅ Resultado Final

Após seguir todos esses passos e contornar os problemas específicos, a aplicação passou a funcionar corretamente no ambiente local, acessível em:

👉 http://localhost/sistemadegestaom1/public_html/
