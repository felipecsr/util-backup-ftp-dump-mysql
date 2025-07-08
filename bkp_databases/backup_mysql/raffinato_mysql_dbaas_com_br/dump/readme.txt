📘 GUIA PASSO A PASSO PARA RESTAURAÇÃO (NÍVEL INICIANTE)

1️⃣ Abra o terminal e vá para a pasta dump:
   cd /home/fcsr/Documentos/Dbeaver/Dump_Sartori_Miranda/bkp_databases/backup_mysql/raffinato_mysql_dbaas_com_br/dump

2️⃣ Se ainda não existir, crie o banco de destino:
   mysql -u raffinato -p -h raffinato.mysql.dbaas.com.br -e "CREATE DATABASE nome_do_banco;"

3️⃣ Para cada arquivo .sql em dump/, execute:
   mysql -u raffinato -p -h raffinato.mysql.dbaas.com.br nome_do_banco < arquivo.sql

   Exemplo:
     mysql -u raffinato -p -h raffinato.mysql.dbaas.com.br meu_banco < meu_banco.sql

4️⃣ Quando pedir senha, digite **a mesma** que você usa no phpMyAdmin ou no seu cliente MySQL.

5️⃣ Após concluir, confira o log:
   logs/log_backup.txt
   que lista tabelas processadas e possíveis erros.

📁 Estrutura de pastas gerada:
- dump/: contém os arquivos `.sql`
- logs/: registros de cada etapa
- database/: backups brutos (se aplicável)
