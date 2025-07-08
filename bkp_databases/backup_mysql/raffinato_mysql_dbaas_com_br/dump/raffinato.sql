-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: raffinato.mysql.dbaas.com.br    Database: raffinato
-- ------------------------------------------------------
-- Server version	5.7.32-35-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anexos_colaboradores_dependentes`
--

DROP TABLE IF EXISTS `anexos_colaboradores_dependentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexos_colaboradores_dependentes` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `dependente_id` int(11) NOT NULL,
  `descricao` varchar(180) NOT NULL,
  `file` varchar(180) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_colaboradores_dependentes` (`dependente_id`) USING BTREE,
  CONSTRAINT `fk_anexo_colaboradores_dependentes` FOREIGN KEY (`dependente_id`) REFERENCES `colaboradores_dependentes` (`idDependente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexos_colaboradores_dependentes`
--

LOCK TABLES `anexos_colaboradores_dependentes` WRITE;
/*!40000 ALTER TABLE `anexos_colaboradores_dependentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `anexos_colaboradores_dependentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexos_colaboradores_epis`
--

DROP TABLE IF EXISTS `anexos_colaboradores_epis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexos_colaboradores_epis` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador_id` int(11) NOT NULL,
  `descricao` varchar(180) NOT NULL,
  `file` varchar(180) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_colaboradores_epis` (`colaborador_id`) USING BTREE,
  CONSTRAINT `fk_anexo_colaboradores_epis` FOREIGN KEY (`colaborador_id`) REFERENCES `colaboradores` (`idColaboradores`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexos_colaboradores_epis`
--

LOCK TABLES `anexos_colaboradores_epis` WRITE;
/*!40000 ALTER TABLE `anexos_colaboradores_epis` DISABLE KEYS */;
/*!40000 ALTER TABLE `anexos_colaboradores_epis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexos_colaboradores_exames`
--

DROP TABLE IF EXISTS `anexos_colaboradores_exames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexos_colaboradores_exames` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `exame_id` int(11) NOT NULL,
  `descricao` varchar(180) NOT NULL,
  `file` varchar(180) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_colaboradores_exames` (`exame_id`) USING BTREE,
  CONSTRAINT `fk_anexo_colaboradores_exames` FOREIGN KEY (`exame_id`) REFERENCES `colaboradores_exames` (`idExame`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexos_colaboradores_exames`
--

LOCK TABLES `anexos_colaboradores_exames` WRITE;
/*!40000 ALTER TABLE `anexos_colaboradores_exames` DISABLE KEYS */;
/*!40000 ALTER TABLE `anexos_colaboradores_exames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexos_colaboradores_ferias`
--

DROP TABLE IF EXISTS `anexos_colaboradores_ferias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexos_colaboradores_ferias` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `dados_ferias_id` int(11) NOT NULL,
  `descricao` varchar(180) COLLATE latin1_general_ci NOT NULL,
  `file` varchar(180) COLLATE latin1_general_ci DEFAULT NULL,
  `path` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `url` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `tamanho` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_colaboradores_dados_ferias` (`dados_ferias_id`),
  CONSTRAINT `fk_anexo_colaboradores_dados_ferias` FOREIGN KEY (`dados_ferias_id`) REFERENCES `colaboradores_ferias_dados` (`idDadosFerias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexos_colaboradores_ferias`
--

LOCK TABLES `anexos_colaboradores_ferias` WRITE;
/*!40000 ALTER TABLE `anexos_colaboradores_ferias` DISABLE KEYS */;
/*!40000 ALTER TABLE `anexos_colaboradores_ferias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexos_colaboradores_uniformes`
--

DROP TABLE IF EXISTS `anexos_colaboradores_uniformes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexos_colaboradores_uniformes` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador_id` int(11) NOT NULL,
  `descricao` varchar(180) NOT NULL,
  `file` varchar(180) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_colaboradores_uniformes` (`colaborador_id`) USING BTREE,
  CONSTRAINT `fk_anexo_colaboradores_uniformes` FOREIGN KEY (`colaborador_id`) REFERENCES `colaboradores` (`idColaboradores`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexos_colaboradores_uniformes`
--

LOCK TABLES `anexos_colaboradores_uniformes` WRITE;
/*!40000 ALTER TABLE `anexos_colaboradores_uniformes` DISABLE KEYS */;
/*!40000 ALTER TABLE `anexos_colaboradores_uniformes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexos_contas_receber`
--

DROP TABLE IF EXISTS `anexos_contas_receber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexos_contas_receber` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `anexo` varchar(100) NOT NULL,
  `path` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `conta_id` int(11) NOT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_conta_receber_conta` (`conta_id`),
  CONSTRAINT `fk_anexo_conta_receber_conta` FOREIGN KEY (`conta_id`) REFERENCES `contas_receber` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexos_contas_receber`
--

LOCK TABLES `anexos_contas_receber` WRITE;
/*!40000 ALTER TABLE `anexos_contas_receber` DISABLE KEYS */;
INSERT INTO `anexos_contas_receber` VALUES (1,'BOLETO','e11e304952dd6c94b64c9c53687f73c5.pdf','/home/storage/a/1a/7a/masmtecnologia1/public_html/raffinato/assets/anexos/e11e304952dd6c94b64c9c53687f73c5.pdf','http://defumariaraffinato.masmtecnologia.com.br/assets/anexos/e11e304952dd6c94b64c9c53687f73c5.pdf',NULL,1,'.pdf','39.43'),(2,'COMPROVANTE DE TRANSFERENCIA','feedf2bb229540a7c583e205a8255b2c.pdf','/home/storage/a/1a/7a/masmtecnologia1/public_html/raffinato/assets/anexos/feedf2bb229540a7c583e205a8255b2c.pdf','http://defumariaraffinato.masmtecnologia.com.br/assets/anexos/feedf2bb229540a7c583e205a8255b2c.pdf',NULL,1,'.pdf','93.47');
/*!40000 ALTER TABLE `anexos_contas_receber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexos_gerais_conferencias`
--

DROP TABLE IF EXISTS `anexos_gerais_conferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexos_gerais_conferencias` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `conferencia_id` int(11) NOT NULL,
  `descricao` varchar(180) NOT NULL,
  `file` varchar(180) NOT NULL,
  `path` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_geral_conferencia` (`conferencia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexos_gerais_conferencias`
--

LOCK TABLES `anexos_gerais_conferencias` WRITE;
/*!40000 ALTER TABLE `anexos_gerais_conferencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `anexos_gerais_conferencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexos_gerais_guiches`
--

DROP TABLE IF EXISTS `anexos_gerais_guiches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexos_gerais_guiches` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `guiche_id` int(11) NOT NULL,
  `descricao` varchar(180) NOT NULL,
  `file` varchar(180) NOT NULL,
  `path` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_geral_guiche` (`guiche_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexos_gerais_guiches`
--

LOCK TABLES `anexos_gerais_guiches` WRITE;
/*!40000 ALTER TABLE `anexos_gerais_guiches` DISABLE KEYS */;
/*!40000 ALTER TABLE `anexos_gerais_guiches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexos_receitas_conferencias`
--

DROP TABLE IF EXISTS `anexos_receitas_conferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexos_receitas_conferencias` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `conferencia_id` int(11) NOT NULL,
  `descricao` varchar(180) NOT NULL,
  `file` varchar(180) NOT NULL,
  `path` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_receita_conferencia` (`conferencia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexos_receitas_conferencias`
--

LOCK TABLES `anexos_receitas_conferencias` WRITE;
/*!40000 ALTER TABLE `anexos_receitas_conferencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `anexos_receitas_conferencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexos_receitas_guiches`
--

DROP TABLE IF EXISTS `anexos_receitas_guiches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexos_receitas_guiches` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `guiche_id` int(11) NOT NULL,
  `descricao` varchar(180) NOT NULL,
  `file` varchar(180) NOT NULL,
  `path` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_receita_guiche` (`guiche_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexos_receitas_guiches`
--

LOCK TABLES `anexos_receitas_guiches` WRITE;
/*!40000 ALTER TABLE `anexos_receitas_guiches` DISABLE KEYS */;
/*!40000 ALTER TABLE `anexos_receitas_guiches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arquivos`
--

DROP TABLE IF EXISTS `arquivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arquivos` (
  `idArquivo` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(70) DEFAULT NULL,
  `descricao` text,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idArquivo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arquivos`
--

LOCK TABLES `arquivos` WRITE;
/*!40000 ALTER TABLE `arquivos` DISABLE KEYS */;
INSERT INTO `arquivos` VALUES (1,'não apagar','https://medium.com/@buddhiv/how-to-directly-print-from-your-browser-using-qz-tray-6c86ccd7b3f9','fa4df2e3ff8ac170cc55a8aa4f260ca2.jpg','/home/storage/3/8b/ad/sistemaautoposto1/public_html/assets/arquivos/03-12-2019/fa4df2e3ff8ac170cc55a8aa4f260ca2.jpg','https://sistemaautoposto1.websiteseguro.com/assets/arquivos/03-12-2019/fa4df2e3ff8ac170cc55a8aa4f260ca2.jpg','2019-12-03',NULL,'.jpg','858.78');
/*!40000 ALTER TABLE `arquivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargos` (
  `idCargos` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCargo` varchar(55) NOT NULL,
  `situacao` tinyint(2) NOT NULL,
  `dataCadastro` datetime NOT NULL,
  PRIMARY KEY (`idCargos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('pg6f5voel758q6dp1v0k0goj8smjht2t','127.0.0.1',1597835589,_binary '__ci_last_regenerate|i:1597835589;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('524oqbm4mnnb3k0ouc0m79qdsvadk0s0','127.0.0.1',1597835281,_binary '__ci_last_regenerate|i:1597835281;'),('livk5gpnmvd8fj3laliaocdevrtmcn3l','127.0.0.1',1597836261,_binary '__ci_last_regenerate|i:1597836261;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('urutoprefp5pjuh53l1rp6viffmj0p23','127.0.0.1',1597836594,_binary '__ci_last_regenerate|i:1597836594;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('trld5bkkerd5dnrahi521plkkckg77u7','127.0.0.1',1597836913,_binary '__ci_last_regenerate|i:1597836913;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('g6m47at8l0ut2m6g33mbu7q33bg0ocgn','127.0.0.1',1597837325,_binary '__ci_last_regenerate|i:1597837325;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('n8k0jgbu0lvs4idr8pn235d3md0tj8sn','127.0.0.1',1597837328,_binary '__ci_last_regenerate|i:1597837325;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('je1k884vfkbe6p6c15nl8l3gdoff8r93','127.0.0.1',1597842676,_binary '__ci_last_regenerate|i:1597842676;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('dpnn9hvr0idjgl7m60j48ukk4snfhf7l','127.0.0.1',1597842983,_binary '__ci_last_regenerate|i:1597842983;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('40eb0i6ph1h0ale3ffvou27gqupop05o','127.0.0.1',1597843584,_binary '__ci_last_regenerate|i:1597843584;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('3dsa9o5k20k2oflns8djask0lvoepqfe','127.0.0.1',1597843936,_binary '__ci_last_regenerate|i:1597843936;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('u5dmlgr760r73hkahb4779ppk5pquag2','127.0.0.1',1597845575,_binary '__ci_last_regenerate|i:1597845575;'),('aa0a72096bceeef92daa0a49a860725f4a436c31','131.221.232.182',1597845577,_binary '__ci_last_regenerate|i:1597845577;'),('b2jkdj7dfb3fd6fgk3jtq37jbg894bik','127.0.0.1',1597845576,_binary '__ci_last_regenerate|i:1597845575;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;'),('e83e0b545a6e1fdcf7481bb3e0c4434487a2da2c','131.221.232.182',1597847509,_binary '__ci_last_regenerate|i:1597847509;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('3bd4921ec9352338e8e0d4c53a90117100d82e81','131.221.232.182',1597847815,_binary '__ci_last_regenerate|i:1597847534;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('54e09ac6139f7eba9ecac8880343cbeacac19436','131.221.232.182',1597853071,_binary '__ci_last_regenerate|i:1597853071;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('67800048ea4484053dafcf79197b979245b7c759','131.221.232.182',1597861468,_binary '__ci_last_regenerate|i:1597861468;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('788698a9f0af6300f1afb6d5868f2af95e9b45fb','131.221.232.182',1597861470,_binary '__ci_last_regenerate|i:1597861468;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('b63556bad308267ec8cd9e892ee0ce90f042a3f4','131.221.232.182',1597871712,_binary '__ci_last_regenerate|i:1597871712;'),('950fa1606ef03f321e6beade69163d02c0f19ec4','131.221.232.182',1597873130,_binary '__ci_last_regenerate|i:1597873130;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('6f50035a8282102e3779150483f869fe71d77279','131.221.232.182',1597871729,_binary '__ci_last_regenerate|i:1597871729;'),('2b98d76d9c405b0586acd7a6bab162b48bc29a9e','131.221.232.182',1597871730,_binary '__ci_last_regenerate|i:1597871730;'),('a3735f5452c3db780803d79eb7d44f2e44b21206','131.221.232.182',1597873132,_binary '__ci_last_regenerate|i:1597873130;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('54ebbca5987f655320fa85347bcb133f172b0ab1','131.221.232.182',1597929581,_binary '__ci_last_regenerate|i:1597929578;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('m1v1b8mebqhlsv0tujmb51djf2224mom','127.0.0.1',1597924332,_binary '__ci_last_regenerate|i:1597924331;'),('7cv6l60tumq1itkroah7eogh1tgakh2v','127.0.0.1',1597924995,_binary '__ci_last_regenerate|i:1597924995;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('d1qm1pl8l2qq2f9fkrr6dat7a7ovlhqm','127.0.0.1',1597925695,_binary '__ci_last_regenerate|i:1597925695;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('fj39sed29a1loaj6csfna6slqblg5l7i','127.0.0.1',1597926178,_binary '__ci_last_regenerate|i:1597926178;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('9uegqal6btb7hkmvrrpmhl856ptmau07','127.0.0.1',1597927098,_binary '__ci_last_regenerate|i:1597927098;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('b6etskecb4ltju08dhhlap67meta080e','127.0.0.1',1597927461,_binary '__ci_last_regenerate|i:1597927461;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('6ej8im8fmmsb5nddl9groiomf6nd48j6','127.0.0.1',1597927769,_binary '__ci_last_regenerate|i:1597927769;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('i6ju19ktdm4fj4qrl2vni4u8t1pdhg72','127.0.0.1',1597928081,_binary '__ci_last_regenerate|i:1597928081;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('uohbcpt6midispcfj8hn6h2hidekng6r','127.0.0.1',1597928424,_binary '__ci_last_regenerate|i:1597928424;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('3h4m9e4q1ihg54ibhrllfnk64c4j7inj','127.0.0.1',1597928765,_binary '__ci_last_regenerate|i:1597928765;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('il5avlvtjt44u6c6m9mg5apd6k065n9o','127.0.0.1',1597929168,_binary '__ci_last_regenerate|i:1597929168;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('pqts7s0mq8fbpl4d3c3394f03ct3jk1o','127.0.0.1',1597929300,_binary '__ci_last_regenerate|i:1597929168;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('71278843f97976323ed3fecddddb337adbc2f85a','131.221.232.182',1597929592,_binary '__ci_last_regenerate|i:1597929578;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('f82ba059915f9a0f97d0ff56f6796d2e7fbc1525','170.231.254.194',1597956965,_binary '__ci_last_regenerate|i:1597956666;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:26:\"ROBERTA ARCANJO SEMI JOIAS\";cidadeEmpresa|s:10:\"São Paulo\";matriz|i:0;'),('69cc59a76a7276cdcf69fcc2775786c8a1847a3b','170.231.254.194',1598013888,_binary '__ci_last_regenerate|i:1598013887;'),('804c341a875518b34075ed536575e1234b59f4da','170.231.254.194',1598234704,_binary '__ci_last_regenerate|i:1598234704;'),('ba71528f4f5ad0afe17505b4a7cc0615620b6daa','170.231.254.194',1598271951,_binary '__ci_last_regenerate|i:1598271951;'),('a3717782790bd951c91c0c93015ce97270c9dd1a','170.231.254.194',1598367155,_binary '__ci_last_regenerate|i:1598367155;'),('77mrp3eo6ep38vqlusa7u611ar8q6ajp','127.0.0.1',1598373826,_binary '__ci_last_regenerate|i:1598373826;'),('710d10dcd77c977bc59758b3113dd0565b73b4f4','170.231.254.194',1598373705,_binary '__ci_last_regenerate|i:1598373704;'),('ssht98k8iok5egbv51hoej2u88pprgce','127.0.0.1',1598374167,_binary '__ci_last_regenerate|i:1598374167;'),('st9u4u0j0h9mn87auogq29t5dpklc8n7','127.0.0.1',1598374512,_binary '__ci_last_regenerate|i:1598374512;'),('vqhlcf7jcdg91ikcmhvlunnn4m40ofqd','127.0.0.1',1598374839,_binary '__ci_last_regenerate|i:1598374839;'),('gsjuq9ogd865sd65a7jt501iu2g0h3a2','127.0.0.1',1598375141,_binary '__ci_last_regenerate|i:1598375141;'),('5q87jcpcdfonk3ek7fm3s1314bhu67ho','127.0.0.1',1598375602,_binary '__ci_last_regenerate|i:1598375602;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;'),('m8cp48vibsnem4oj1k0mfdo5fpgs3p29','127.0.0.1',1598375950,_binary '__ci_last_regenerate|i:1598375950;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('bil0r18tqe2s9r9c64ub0fkfamdqobhj','127.0.0.1',1598376253,_binary '__ci_last_regenerate|i:1598376253;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('ej0mdc85r91o2qbt5tujdmdketca93b4','127.0.0.1',1598376572,_binary '__ci_last_regenerate|i:1598376572;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('1712r3ufv6h5cqgv3v6srbtvk21ps34q','127.0.0.1',1598377166,_binary '__ci_last_regenerate|i:1598377166;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('ppoobnrludtv061drirb58043oe32lu3','127.0.0.1',1598377479,_binary '__ci_last_regenerate|i:1598377479;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('2kljc8n8nqbjkk1q9sfgi5gp053ig0ng','127.0.0.1',1598377821,_binary '__ci_last_regenerate|i:1598377821;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('2757lc0qqdhnnh8dgr9r1r4noj650cl5','127.0.0.1',1598378040,_binary '__ci_last_regenerate|i:1598377821;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('cc4648b097f88eeda7a86a527e344f9c4e9a7ad1','170.231.254.194',1598384656,_binary '__ci_last_regenerate|i:1598384656;'),('f268cda76dfd75ae5563a1e1d78b2d9954e5de33','170.231.254.194',1598384975,_binary '__ci_last_regenerate|i:1598384975;'),('70e4cf494952c955d9cf87fae6402fd65b4c9ebf','170.231.254.194',1598387980,_binary '__ci_last_regenerate|i:1598387980;'),('a4ae3be661415ba4080853f80a5472835218863e','170.231.254.194',1598385442,_binary '__ci_last_regenerate|i:1598385442;'),('74f71a220e7c72330e3357da25bc9d16f6867c26','170.231.254.194',1598385443,_binary '__ci_last_regenerate|i:1598385443;'),('6dbe4dbd138abdde5e46f6af6fb1b30e1a543c28','170.231.254.194',1598385504,_binary '__ci_last_regenerate|i:1598385503;'),('3297d090e86fcba3a29cae587f9afa546fc66b4a','170.231.254.194',1598389385,_binary '__ci_last_regenerate|i:1598389385;'),('4244b33a100547c33ede1a51f48d4f8f7b062a68','186.239.235.54',1598389502,_binary '__ci_last_regenerate|i:1598389502;nome|s:5:\"Teste\";email|s:15:\"teste@teste.com\";login|s:13:\"usuario.teste\";id|s:2:\"45\";logado|b:1;permissao|s:3:\"154\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('d5e7bd8b77c51f268c3cb05c84c375db875a7119','179.246.217.230',1598389346,_binary '__ci_last_regenerate|i:1598389346;'),('d040b5d9b6d9258cee2e7522e860644497ff7582','179.246.217.230',1598389347,_binary '__ci_last_regenerate|i:1598389347;'),('30a071d85325b72e2f376dc19ebede5c2d6e0740','170.231.254.194',1598389715,_binary '__ci_last_regenerate|i:1598389715;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('42p2cs1mq1c5llta63ggi4jdb9cfospq','127.0.0.1',1598389591,_binary '__ci_last_regenerate|i:1598389591;'),('7147e6908df0ae924ef3d77d46d7e5cfa3c86f6a','186.239.235.54',1598389625,_binary '__ci_last_regenerate|i:1598389617;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('ba0b71f1437020ea0af14b15aa0cc0f85deffd41','170.231.254.194',1598392985,_binary '__ci_last_regenerate|i:1598392985;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('l53nlev73hosq5r4lm12c4ek7c1m3ci5','127.0.0.1',1598389791,_binary '__ci_last_regenerate|i:1598389777;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;'),('424a1abf672d53944e0f5da430f9f6563d29e530','170.231.254.194',1598392985,_binary '__ci_last_regenerate|i:1598392985;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('3df00a324b25fbbfd6314fd9eef131d320a40c52','170.231.254.194',1598398809,_binary '__ci_last_regenerate|i:1598398727;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;'),('91bb91d590468e0bb971f60f3308613f87e3fa87','187.119.235.41',1598407306,_binary '__ci_last_regenerate|i:1598407306;'),('6d19e211190e8eafaaaf5de8170649bfc89e68da','177.25.199.237',1598407777,_binary '__ci_last_regenerate|i:1598407777;'),('62c949888b449cc71e8061641b647e662a65d46d','170.231.252.119',1598449880,_binary '__ci_last_regenerate|i:1598449880;'),('2807dc32da1c80117e315d41b94ec0b3bc95efaa','170.231.252.119',1598450181,_binary '__ci_last_regenerate|i:1598450181;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('b33f8b00cf10e614e31429b9596e21dcdfe10a00','170.231.252.119',1598455134,_binary '__ci_last_regenerate|i:1598455134;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('5943453fbdc52126ec365feaed5899ead2fa4d48','131.221.232.204',1598452093,_binary '__ci_last_regenerate|i:1598452093;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('8280007d783ee5c2e78eea6d43e56213622f51d0','170.231.252.119',1598455601,_binary '__ci_last_regenerate|i:1598455601;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('bed4a95d513c8b83f28ffdb925aaa86e2ed58b19','170.231.252.119',1598456098,_binary '__ci_last_regenerate|i:1598456098;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('a5f2c9b48ddc70b112ad08cb90cca94ffd5a3759','170.231.252.119',1598461681,_binary '__ci_last_regenerate|i:1598461681;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('280425be1405bec95f4511707b0009e78501cab0','170.231.252.119',1598468375,_binary '__ci_last_regenerate|i:1598468375;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('b3f4d8c3bd552baac45007835035976f0d0f37b9','170.231.252.119',1598468375,_binary '__ci_last_regenerate|i:1598468375;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:2:\"22\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('ea268519fdc2f13b8827588a59d9725db922f716','170.231.252.119',1598483890,_binary '__ci_last_regenerate|i:1598483890;'),('7e3964f1b44ad1e40a89a7698511ca2096798678','170.231.252.119',1598483890,_binary '__ci_last_regenerate|i:1598483890;'),('4fc10ddb1e4f10d7a916f232c20e954dcf47c720','179.246.219.25',1598521942,_binary '__ci_last_regenerate|i:1598521942;'),('0f0d0c76b7e1f7c73014c4fae4eaf943d380be1b','170.231.252.119',1598546829,_binary '__ci_last_regenerate|i:1598546829;'),('8c5d41777414a1165d65aa8c5599803044cd308d','170.231.252.119',1598556848,_binary '__ci_last_regenerate|i:1598556848;'),('c9e1634bb33ed6b7e954f9a150bb7d11c75c7e25','104.41.2.27',1598552656,_binary '__ci_last_regenerate|i:1598552656;'),('e1818b19bd3d836844454c19e7fced70263ec841','104.41.2.27',1598552656,_binary '__ci_last_regenerate|i:1598552656;'),('766c5a341e7f7f09dc12d782c68fe366f2012d71','179.34.206.122',1598554257,_binary '__ci_last_regenerate|i:1598554257;'),('436333d814bf6cf500366d5b274a3ad34568c615','179.34.206.122',1598554257,_binary '__ci_last_regenerate|i:1598554257;'),('n2ag1ni58423v3pscef7orvdm7c4nl3o','127.0.0.1',1598557192,_binary '__ci_last_regenerate|i:1598557192;'),('83c521e8f7a35f1091563132eadc3e9e15afe4ac','170.231.252.119',1598556889,_binary '__ci_last_regenerate|i:1598556848;'),('p7k065jr7shb99htj2q7n8ee64pjl52q','127.0.0.1',1598558081,_binary '__ci_last_regenerate|i:1598558081;'),('10169a345b5439f4b5c8a3f1f06a1cf411c15d61','179.34.206.122',1598557508,_binary '__ci_last_regenerate|i:1598557508;'),('ce4270267ac86ae882c5723c89ddae48c3261929','170.231.252.119',1598560631,_binary '__ci_last_regenerate|i:1598560631;'),('111r7idlchf97orl0baqmu561jh3onj2','127.0.0.1',1598558849,_binary '__ci_last_regenerate|i:1598558849;'),('vpelinv0hnb1gr9p4qcog06vbkss5pqd','127.0.0.1',1598559194,_binary '__ci_last_regenerate|i:1598559194;'),('sems1s8l03966dgr0ht1hlf4sa0uo12h','127.0.0.1',1598559816,_binary '__ci_last_regenerate|i:1598559816;'),('763jntsq8s4eqllh3cvfunft4t7t2mf8','127.0.0.1',1598559819,_binary '__ci_last_regenerate|i:1598559816;'),('ea8877c9e910980e509fa01d106e329ed3d8d059','170.231.252.119',1598561552,_binary '__ci_last_regenerate|i:1598561552;'),('c27e85f9cbd8d31d7e0250f91e6884c230b8bdd5','170.231.252.119',1598563129,_binary '__ci_last_regenerate|i:1598563129;'),('2b4ea4e1d832c64ad93d9534bf0f36a7a3a014f0','170.231.252.119',1598561573,_binary '__ci_last_regenerate|i:1598561573;'),('4f215bb6cdb76516cb5b5a7a97c1063607778863','170.231.252.119',1598561574,_binary '__ci_last_regenerate|i:1598561574;'),('2611186a993dca55ee0b8ff69f1acedd7d16dfe2','51.79.81.146',1598561608,_binary '__ci_last_regenerate|i:1598561584;'),('508b13a68cce614e932310bf780cfc1a6f6d8c1d','170.231.252.119',1598563129,_binary '__ci_last_regenerate|i:1598563129;'),('bef0b96d5ecb5c3ae2b96c846d81a37410052a71','186.239.235.54',1598565530,_binary '__ci_last_regenerate|i:1598565507;'),('31e4a922caa6a3a15252968c346f769d2658f42e','104.41.2.27',1598575645,_binary '__ci_last_regenerate|i:1598575645;'),('154ddc095f670ec5050145d1ff872b24d857f209','170.231.252.119',1598575639,_binary '__ci_last_regenerate|i:1598575639;'),('31c69eb189fe4ac9e28798a1c5996f201af7c140','170.231.252.119',1598575639,_binary '__ci_last_regenerate|i:1598575639;'),('3ed03b693155df805387ed33a4d6037624b7a6e6','170.231.252.119',1598575916,_binary '__ci_last_regenerate|i:1598575645;'),('516782139fdb7ceb9576d82bf89730b10ab201dd','170.231.252.119',1598575650,_binary '__ci_last_regenerate|i:1598575650;'),('60e9ba1e6a2f1f3eb72897ba60fc2d9cba9a98bf','170.231.252.119',1598576039,_binary '__ci_last_regenerate|i:1598575827;'),('db6d33994854e6a9f161df4362e3637ddec82937','170.231.252.119',1598576608,_binary '__ci_last_regenerate|i:1598576608;nome|s:5:\"admin\";email|s:15:\"admin@admin.com\";login|s:5:\"admin\";id|s:1:\"1\";logado|b:1;permissao|s:3:\"150\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('927c2dc3d05ad2e959c854fad600e602406e2735','170.231.252.119',1598576609,_binary '__ci_last_regenerate|i:1598576609;'),('1168e23cf9c559ba8b55baf4a48a0d3ad28c2ae0','187.119.227.5',1598714122,_binary '__ci_last_regenerate|i:1598714122;'),('5d0a5510cc6d833811e15d26807c23fa0d6e0c53','177.53.105.201',1599173909,_binary '__ci_last_regenerate|i:1599173909;'),('7e6941b6a4abe262260bf59f91310e426dd7b46b','192.141.117.167',1599312990,_binary '__ci_last_regenerate|i:1599312961;'),('4f8386ebd7cd53bc37755d3485fd076614e2f189','192.141.117.167',1599313346,_binary '__ci_last_regenerate|i:1599313346;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('0785110aeb5bab719be7a6b5eb239304fe0adc34','192.141.117.167',1599313906,_binary '__ci_last_regenerate|i:1599313906;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('be103bb3fbd3aabdff5e78448865e7bf4c668adf','192.141.117.167',1599314316,_binary '__ci_last_regenerate|i:1599314316;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('73ffbc54d715775fa58455585bf855065ab0772e','192.141.117.167',1599315687,_binary '__ci_last_regenerate|i:1599315687;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('1d06fd548459897936e220665ea99d56fd1352e8','192.141.117.167',1599316814,_binary '__ci_last_regenerate|i:1599316814;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('6f5e12dca1cf7b3a0b02061f4246a498ed729380','192.141.117.167',1599317158,_binary '__ci_last_regenerate|i:1599317158;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('cd6cc7b4f114fd725d0dc3042003c17ee08b351f','192.141.117.167',1599318106,_binary '__ci_last_regenerate|i:1599318106;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;success|s:34:\"Permissão adicionada com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('734a3edb180a90b97a6f138d033173bb06fcafad','192.141.117.167',1599318106,_binary '__ci_last_regenerate|i:1599318106;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('ebdd3194d761ba631028deaf301a34a9fd51e485','192.141.117.167',1599564609,_binary '__ci_last_regenerate|i:1599564609;'),('3d081a98bdd57640328be0d773a834d41300912d','192.141.117.167',1599656811,_binary '__ci_last_regenerate|i:1599656670;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('cbf750150dade1a4a7127d765497fbc0fc2586eb','192.141.117.167',1599826121,_binary '__ci_last_regenerate|i:1599825951;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('c9ba69985bf397820d60ef657e6477e847491670','192.141.117.167',1599843754,_binary '__ci_last_regenerate|i:1599843754;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('8045dbe06f7449dc52658c528854aaa13fb8c320','192.141.117.167',1599846941,_binary '__ci_last_regenerate|i:1599846941;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('6a6b236bb3549bfc74a1ffdaa54436d7235b2cb1','192.141.117.167',1599847567,_binary '__ci_last_regenerate|i:1599847567;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('61e64e07d5025954b356a50514e887b55fcda32a','192.141.117.167',1599847597,_binary '__ci_last_regenerate|i:1599847567;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('185efe9e0e8cc3b5b138b8cf37f91a2b6a788a47','192.141.117.160',1600438899,_binary '__ci_last_regenerate|i:1600438899;'),('53fd15b4f2e84bbc237a86e8053e4f7c7e2b3b40','192.141.117.160',1600438899,_binary '__ci_last_regenerate|i:1600438899;'),('9a71ed55da700550b02ef0674045b64217794408','192.141.117.160',1600693629,_binary '__ci_last_regenerate|i:1600693629;'),('9284400707ac4f6b5c8ef574b4f80477d89de904','192.141.117.160',1600712431,_binary '__ci_last_regenerate|i:1600712431;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('724070b270a80fe928753678fddf55a8a6d536ee','192.141.117.160',1600712748,_binary '__ci_last_regenerate|i:1600712748;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('9d686ccbf2db19d41326f8a53f92015dc63ac207','192.141.117.160',1600713049,_binary '__ci_last_regenerate|i:1600713049;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;success|s:28:\"Cliente editado com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('4f9cdc8450a17d7903e77f8c315ba8cacfd556fb','192.141.117.160',1600715943,_binary '__ci_last_regenerate|i:1600715943;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('666325f30bc7562aa9dcc5d3bb8213c827f03914','192.141.117.160',1600715943,_binary '__ci_last_regenerate|i:1600715943;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('563537fefde228003171085dc4e3966e3a4b098a','177.53.105.210',1600729622,_binary '__ci_last_regenerate|i:1600729622;'),('7f4d3e917bc3bad75dfb9059288e2abccc6104ce','192.141.116.166',1600863153,_binary '__ci_last_regenerate|i:1600863153;'),('1c04fc69e1da355cf6c34430c43bff2a629996dc','192.141.117.160',1600950879,_binary '__ci_last_regenerate|i:1600950788;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('8c5f49bf27e0a4d8dbb79501e239916fad2fcef5','192.141.117.160',1601302323,_binary '__ci_last_regenerate|i:1601302323;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('b364834511d43ed399649a40bd9e85895901ade9','192.141.117.160',1601302631,_binary '__ci_last_regenerate|i:1601302631;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('6add5a8da7495277e155caf727c5b4f80fd799a1','192.141.117.160',1601303271,_binary '__ci_last_regenerate|i:1601303271;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('ca8deb1e0d6f4beeae7e2bfff8d77771a4540fe4','192.141.117.160',1601303590,_binary '__ci_last_regenerate|i:1601303590;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('870fa38136a004900c3a5365664f05edab75c22a','192.141.117.160',1601303893,_binary '__ci_last_regenerate|i:1601303893;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('a1e2c7fa319262d77a83e794a2074c2ec2b4d6fa','192.141.117.160',1601304233,_binary '__ci_last_regenerate|i:1601304233;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('7ce2d303b8ca610a2e29a4ab3b0f9e8dfe6f5dbf','192.141.117.160',1601310556,_binary '__ci_last_regenerate|i:1601310556;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('3ca8513589759395e863e029720a774cc41e5ead','192.141.117.160',1601310891,_binary '__ci_last_regenerate|i:1601310891;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('09fc36467c194de94d255473a77276e77570dded','192.141.117.160',1601311744,_binary '__ci_last_regenerate|i:1601311744;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('51ca7c793f0ece3fd4a9dc3a370d4294ca924bd1','192.141.117.160',1601312420,_binary '__ci_last_regenerate|i:1601312420;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;success|s:31:\"Cliente cadastrado com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('75ed334ee845b63f2d23bd37e60252267a65570b','192.141.117.160',1601313721,_binary '__ci_last_regenerate|i:1601313721;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;success|s:31:\"Cliente cadastrado com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('5275ce6f7fca43920c4ff3b7274b693d3dfce4ba','192.141.117.160',1601313764,_binary '__ci_last_regenerate|i:1601313721;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('102d00ce3b3eeefd9ddb5aac005432a9f2944982','192.141.117.160',1601386151,_binary '__ci_last_regenerate|i:1601386151;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('d4aa92f7339c5eb61397af2afc3ffb5e8efdb478','192.141.117.160',1601386170,_binary '__ci_last_regenerate|i:1601386151;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('0c908e0b3b1c58cf2a78d675c969f344f8e59815','192.141.117.160',1601476979,_binary '__ci_last_regenerate|i:1601476822;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('d790bfbe7a42d4e8f184f36df180e9d2188259f1','192.141.117.160',1601641172,_binary '__ci_last_regenerate|i:1601641172;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;success|s:31:\"Cliente cadastrado com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('4cd14656c6258915d1ae64219b442e3fc7deec8c','192.141.117.160',1601644442,_binary '__ci_last_regenerate|i:1601644442;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('75cbf271d05d3e0d7feb94a80021d68beeb05220','192.141.117.160',1601648008,_binary '__ci_last_regenerate|i:1601648008;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('eb79045a45fc438f06eb33cf35596f9b1b864aee','192.141.117.160',1601648530,_binary '__ci_last_regenerate|i:1601648530;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('5d8250c7d0d6b05f13078eaba959fa7e971c2802','192.141.117.160',1601650085,_binary '__ci_last_regenerate|i:1601650085;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('ca7d7ac7ad0d6e8892edf157dbd84d3d1949b179','192.141.117.160',1601650411,_binary '__ci_last_regenerate|i:1601650411;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('7d5789a93dcf857b9f4816212d35efca185d8758','192.141.117.160',1601650466,_binary '__ci_last_regenerate|i:1601650411;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('51e35312003efb5841df2a4d8acd6f1a91f12eda','192.141.117.160',1601662439,_binary '__ci_last_regenerate|i:1601662341;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('af2a762a9d9dfa6ebc04f5fc4738c6ce1813aa67','192.141.117.160',1601907634,_binary '__ci_last_regenerate|i:1601907634;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('c0695ce388ae33a2a21072a11eb7dddde91dd69c','192.141.117.160',1601907689,_binary '__ci_last_regenerate|i:1601907689;'),('b64fe68c784ff7a93dbc0cab1cd927b530400020','177.53.105.201',1602025915,_binary '__ci_last_regenerate|i:1602025915;'),('5583752d972e13b4b7426608ef61aa79c2ced3a3','192.141.117.160',1602079457,_binary '__ci_last_regenerate|i:1602079457;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('a1953c837d4d02d20cd1030daf203c658c0cac90','192.141.117.160',1602082002,_binary '__ci_last_regenerate|i:1602082002;'),('1ff923870b524e7990bac1873cce712d9ef9f74b','192.141.117.160',1602082161,_binary '__ci_last_regenerate|i:1602082002;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"161\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;success|s:31:\"Cliente cadastrado com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('cfdd0fe5ecf334de9c976dd9d37ec4654c90205c','189.120.75.10',1602626785,_binary '__ci_last_regenerate|i:1602626785;'),('47c9eefa452c0c68b7e6c145e8c823d4ea28f82d','189.120.75.10',1602627140,_binary '__ci_last_regenerate|i:1602627140;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('5edd88718d2ab1e2ffedf71e7bc4d6ea1f003a8b','189.120.75.10',1602627151,_binary '__ci_last_regenerate|i:1602627140;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('bf99ce00ac4380090263bc88c0cabf4054f42c08','192.141.117.164',1603214372,_binary '__ci_last_regenerate|i:1603214364;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;'),('78f83ba9b79ede4b7ff2674fc0e7f63fb9d3d30a','189.120.75.10',1603764247,_binary '__ci_last_regenerate|i:1603764247;'),('dba5b5caf5759d3dff37282dd30253b7df1be003','192.141.117.175',1604422907,_binary '__ci_last_regenerate|i:1604422907;'),('24ac88de9e3b7019499aecb14a698ce87d6be917','192.141.117.175',1605551678,_binary '__ci_last_regenerate|i:1605551648;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('08f31ddaa2063bc77afec12ede089defa6780480','192.141.117.171',1606484951,_binary '__ci_last_regenerate|i:1606484928;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('e44efcc0f18b4e12c5e2106ea51a77ac51c2035f','192.141.116.167',1607109737,_binary '__ci_last_regenerate|i:1607109737;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('900e9c3559b7151e11ef4d458709244eda66b90f','192.141.116.167',1607110897,_binary '__ci_last_regenerate|i:1607110897;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('5b0a13d82d397a1965e7a4d781f864f3478959e8','192.141.116.167',1607110972,_binary '__ci_last_regenerate|i:1607110897;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('cd9ab3403fdd0c61c31af698c1a11df20271d17c','131.221.232.219',1608033770,_binary '__ci_last_regenerate|i:1608033770;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;success|s:29:\"Usuário editado com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('94b6a7e1aba275632a6edd32bd8d02c43a4e55c7','131.221.232.219',1608034671,_binary '__ci_last_regenerate|i:1608034671;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('03938078f55884ece933be4a32effbdb010def80','131.221.232.219',1608035245,_binary '__ci_last_regenerate|i:1608035245;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"159\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('f8da39dcac09dc3383c00f4f95451ce16d323d67','192.141.116.168',1608035625,_binary '__ci_last_regenerate|i:1608035625;nome|s:20:\"SALUA SCHOLZ SANCHES\";email|s:24:\"saluasanches@hotmail.com\";login|s:13:\"salua.sanches\";id|s:2:\"48\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('3f1cddfd0ba01810f93421bc83700f996cde819c','131.221.232.219',1608035576,_binary '__ci_last_regenerate|i:1608035576;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"159\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('f610aca0cf4b5e160f6ae521bb6570546086c998','131.221.232.219',1608035903,_binary '__ci_last_regenerate|i:1608035903;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"159\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;success|s:29:\"Usuário editado com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('c19a4a5d3412190d28a0b8781d0053cdbf5f6639','192.141.116.168',1608036583,_binary '__ci_last_regenerate|i:1608036583;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('df2db461c35676eaf067a76b812475da7981ff6b','131.221.232.219',1608037668,_binary '__ci_last_regenerate|i:1608037668;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"159\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('665673d96dc687c5b7a2554bf110872a013ac394','192.141.116.168',1608036927,_binary '__ci_last_regenerate|i:1608036927;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('c791ad1accd259867e03a1be0eec22e942c1e483','192.141.116.168',1608037517,_binary '__ci_last_regenerate|i:1608037517;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"160\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('deb6d33d40f5ce6457832623a75b23d80325931a','192.141.116.168',1608037945,_binary '__ci_last_regenerate|i:1608037945;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"162\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('8d68d62aed1dd9caaac5a86be625796f58536f08','131.221.232.219',1608038222,_binary '__ci_last_regenerate|i:1608038222;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"159\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('147f1100c6de7032d5b162fce7b3064250c65468','192.141.116.168',1608038305,_binary '__ci_last_regenerate|i:1608038305;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"162\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('e0df47315e829131b60f4434c3f59b9b574e4e5e','131.221.232.219',1608042841,_binary '__ci_last_regenerate|i:1608042841;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"159\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('0db3cc120ba711c89d25e08ea8ec46049a97c3da','192.141.116.168',1608038616,_binary '__ci_last_regenerate|i:1608038616;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"162\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('e0f3a3390d8a6ffabfb7bd89f34f8d969a8e1135','192.141.116.168',1608038955,_binary '__ci_last_regenerate|i:1608038955;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"162\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('d1ef43a0c66d3b7114bcb244b2916388dd6d6f39','192.141.116.168',1608039264,_binary '__ci_last_regenerate|i:1608039264;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"162\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;success|s:30:\"Lançamento feito com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('314bcdd7adb85759f425baf32bc90e6fc21953c1','192.141.116.168',1608039583,_binary '__ci_last_regenerate|i:1608039583;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"162\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('8361c24f6013d34d75a86184f3ad314480fab67d','192.141.116.168',1608039746,_binary '__ci_last_regenerate|i:1608039583;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"162\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('d639a31b036009001375915a9bd1aa04c822d6d6','131.221.232.219',1608043145,_binary '__ci_last_regenerate|i:1608043145;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"159\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('431111030a86f4cf08829d967863e619f17c0286','131.221.232.219',1608043230,_binary '__ci_last_regenerate|i:1608043145;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"159\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;success|s:41:\"Tipo de pagamento cadastrado com sucesso!\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('b8d8b002c76d2e7398f1e648488a33515675675e','131.221.232.219',1608066939,_binary '__ci_last_regenerate|i:1608066939;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"159\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('3d347086581a11ae15f46dd771e7569b38c69199','131.221.232.219',1608066939,_binary '__ci_last_regenerate|i:1608066939;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"159\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('688f48ae0a08002264686da9844b0f6ee8237742','192.141.116.168',1608226559,_binary '__ci_last_regenerate|i:1608226559;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"162\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('b8b6a32a944f3f808e69ed8c0f2c779142db8e1f','192.141.116.168',1608226646,_binary '__ci_last_regenerate|i:1608226559;nome|s:25:\"TAIANE CATARINE ZACARIOTO\";email|s:35:\"defumariaraffinatoitapira@gmail.com\";login|s:16:\"taiane.zacarioto\";id|s:2:\"49\";logado|b:1;permissao|s:3:\"162\";empresa|s:2:\"13\";nomeEmpresa|s:19:\"DEFUMARIA RAFFINATO\";cidadeEmpresa|s:7:\"Itapira\";matriz|i:0;'),('876b19853704d0a68ab5771f40d6ee34ce0f6fed','179.113.81.117',1610458391,_binary '__ci_last_regenerate|i:1610458391;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('81262cd4b676456d631b5197ff21057a6e3d2d9f','179.113.81.117',1610458432,_binary '__ci_last_regenerate|i:1610458391;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('b782806bdb32682a729fa0ff550f9bf15d390845','179.113.81.117',1610505673,_binary '__ci_last_regenerate|i:1610505665;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('2e4b57881fe55fe7923c944304d40a9bd292e28a','186.202.163.106',1611699437,_binary '__ci_last_regenerate|i:1611699436;'),('cdfc3f8ebed779ef57dd1b832639f9a7dd206ddf','186.202.163.106',1611699437,_binary '__ci_last_regenerate|i:1611699437;'),('5376d86162b020a6adbf5e64ab46f2eafd13992f','186.202.163.106',1611757017,_binary '__ci_last_regenerate|i:1611757017;'),('351d497a906b4b83ebc9e1022b2e82f6b4f94bc2','186.202.163.106',1611758005,_binary '__ci_last_regenerate|i:1611758000;'),('97c2fcb7116f26ef1e609bfa81e2447dce81a79b','186.202.163.106',1611783711,_binary '__ci_last_regenerate|i:1611783711;'),('1345d2320b3f314bff583029dfbc76b41c7f7957','186.202.163.106',1611783711,_binary '__ci_last_regenerate|i:1611783711;'),('36ef3bff02a260d810fa47ccfe4943a160928904','192.141.116.167',1611836093,_binary '__ci_last_regenerate|i:1611836093;'),('f496076beeefb6190fab7e1e41433bac666b272f','192.141.117.165',1615918193,_binary '__ci_last_regenerate|i:1615918193;'),('a1b1e2188a6e8f8e38833cf0a19093f49772648b','192.141.117.165',1615918582,_binary '__ci_last_regenerate|i:1615918582;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('52ffe53edf5b8212bc8dc46d83219dd0949e8777','192.141.117.165',1615918637,_binary '__ci_last_regenerate|i:1615918582;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('32c1f709249b57659172c4dddc21d740a1b018f2','192.141.117.169',1616613669,_binary '__ci_last_regenerate|i:1616613652;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('f05da802d3e54c11597c8e04939187fafd01a57c','192.141.117.169',1619640859,_binary '__ci_last_regenerate|i:1619640859;'),('47c990e459d84082fa8db61fe21b087c431cb5a3','192.141.117.164',1623353899,_binary '__ci_last_regenerate|i:1623353899;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('8d8349b4a3396e13b0a6362603f60a3f87b70706','192.141.117.164',1623354029,_binary '__ci_last_regenerate|i:1623354029;'),('770cdf56f86a1e2c0eb9e79afe39808436fceee6','192.141.117.164',1623355816,_binary '__ci_last_regenerate|i:1623355816;'),('23ace100e791d9f3117e7262a639b643efcf0a2a','192.141.117.164',1623355816,_binary '__ci_last_regenerate|i:1623355816;'),('bfbae27406bc1ad2bf758b3e4e70c6a24c433d90','192.141.117.164',1623356953,_binary '__ci_last_regenerate|i:1623356953;'),('36a7d961362fc0bc78d555246ef181a8ceabc765','192.141.117.164',1623690900,_binary '__ci_last_regenerate|i:1623690900;'),('004c34d64d419183363bd8dae95d199d688fc84e','192.141.117.164',1623790030,_binary '__ci_last_regenerate|i:1623789968;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('25c621b119d6e7b6c00d187025fc0d58ea1e336d','138.185.196.210',1623957603,_binary '__ci_last_regenerate|i:1623957535;'),('81e775efdf22fb6a1727caaabb02a938e20364a0','192.141.117.171',1624368429,_binary '__ci_last_regenerate|i:1624368429;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('d046185fcdbeeee02bb81c1e0b030dbd7489db7c','192.141.117.171',1624368526,_binary '__ci_last_regenerate|i:1624368429;nome|s:13:\"MAURO MIRANDA\";email|s:26:\"mauro_miranda_@hotmail.com\";login|s:13:\"mauro.miranda\";id|s:2:\"47\";logado|b:1;permissao|s:3:\"158\";empresa|s:1:\"4\";nomeEmpresa|s:9:\"RAFFINATO\";cidadeEmpresa|s:6:\"MATRIZ\";matriz|i:1;'),('07fe69c9552583b783b3ea9a7a3222b8ad8758e1','18.234.54.32',1624369536,_binary '__ci_last_regenerate|i:1624369535;'),('cc05ed88fc03ab444ca452626989c19698d77aff','177.94.247.154',1646308887,_binary '__ci_last_regenerate|i:1646308886;'),('75aca70ceb2eb978712147a99f9144fc07923b6a','187.106.54.68',1655748053,_binary '__ci_last_regenerate|i:1655748053;'),('cbd290cbf865789c66b75a9d13a49f1cd2f55751','187.106.54.68',1656194272,_binary '__ci_last_regenerate|i:1656194272;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `cpfCnpj` varchar(18) NOT NULL,
  `rua` varchar(150) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `telefone` varchar(13) NOT NULL,
  `telefone2` varchar(14) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `empresa_id` int(11) NOT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_cliente_empresa_id` (`empresa_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (4,'OLD STREET BURGER DE ITAPIRA LTDA','Jurídico','24.624.390/0001-39','Rua Manoel Pereira','Santo Antônio','340','Itapira','SP','13.970-346','(19) 3863-559','','',13,1,'2020-09-28'),(7,'EGON E THELMA COMERCIO DE CERVEJAS ESPECIAIS, BEBIDAS E CONEXOS LTDA - EPP.','Jurídico','13.709.451/0001-44','Avenida Leão Machado','Parque Continental','100','São Paulo','SP','05.328-020','(11) 3718-001','','',13,1,'2020-10-02'),(8,'DIEGO APARECIDO DE MORAES','Físico','326.743.188-30','Rua Doutor Michael Peter Reinach','Jardim Doutor Júlio de Mesquita Filho','10','Bragança Paulista','SP','12910600','(11) 94119-66','','',13,1,'2020-10-02'),(12,'EMILIANA BEATRIZ PEIGO','Físico','282.367.518-30','Valter Faustino','Jardim Bela Vista','35','Espírito Santo do Pinhal','SP','13.990-000','(19) 99811-23','','',13,1,'2020-10-07'),(13,'BEEF BURGUER E GRELHADOS LTDA','Jurídico','27.468.267/0001-64','Rua 24 de Outubro','Santa Cruz','685','Itapira','SP','13974-391','1999999999999','','',13,1,'2020-12-17');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores` (
  `idColaboradores` int(11) NOT NULL AUTO_INCREMENT,
  `nomeColaborador` varchar(255) NOT NULL,
  `dataNasc` date NOT NULL,
  `matricula` int(11) NOT NULL,
  `numCamisa` varchar(5) DEFAULT NULL,
  `numCalca` varchar(5) DEFAULT NULL,
  `habilitacao` char(2) NOT NULL,
  `numHabilitacao` int(11) DEFAULT NULL,
  `dataVencHab` date DEFAULT NULL,
  `documento` varchar(20) NOT NULL,
  `pis` int(18) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `salario` decimal(11,2) DEFAULT NULL,
  `cargaHora` time DEFAULT NULL,
  `empresa_id` int(25) NOT NULL,
  `setor_id` int(11) DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `dataAdmissao` date DEFAULT NULL,
  `situacao` char(2) NOT NULL,
  `dataDemissao` date DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idColaboradores`),
  KEY `fk_empresa_id1` (`empresa_id`) USING BTREE,
  KEY `fk_colaborador_cargo` (`cargo_id`) USING BTREE,
  KEY `setor_id` (`setor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores`
--

LOCK TABLES `colaboradores` WRITE;
/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores_advertencias`
--

DROP TABLE IF EXISTS `colaboradores_advertencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores_advertencias` (
  `idAdvertencia` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `motivo` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `descricao` text COLLATE latin1_general_ci,
  `file` varchar(180) COLLATE latin1_general_ci DEFAULT NULL,
  `path` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `url` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `tamanho` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idAdvertencia`),
  KEY `fk_advertencia_colaborador_id` (`colaborador_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores_advertencias`
--

LOCK TABLES `colaboradores_advertencias` WRITE;
/*!40000 ALTER TABLE `colaboradores_advertencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaboradores_advertencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores_dependentes`
--

DROP TABLE IF EXISTS `colaboradores_dependentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores_dependentes` (
  `idDependente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(155) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `rg` varchar(155) DEFAULT NULL,
  `cpf` varchar(155) DEFAULT NULL,
  `certidao` text,
  `colaborador_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`idDependente`),
  KEY `fk_dependente_colaborador_id` (`colaborador_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores_dependentes`
--

LOCK TABLES `colaboradores_dependentes` WRITE;
/*!40000 ALTER TABLE `colaboradores_dependentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaboradores_dependentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores_epis`
--

DROP TABLE IF EXISTS `colaboradores_epis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores_epis` (
  `idEpi` int(11) NOT NULL AUTO_INCREMENT,
  `epi` varchar(155) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `dataRetirada` date DEFAULT NULL,
  `colaborador_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`idEpi`),
  KEY `fk_epi_colaborador_id` (`colaborador_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores_epis`
--

LOCK TABLES `colaboradores_epis` WRITE;
/*!40000 ALTER TABLE `colaboradores_epis` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaboradores_epis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores_exames`
--

DROP TABLE IF EXISTS `colaboradores_exames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores_exames` (
  `idExame` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` char(2) NOT NULL,
  `descricao` text NOT NULL,
  `dataRealizada` date NOT NULL,
  `dataFinal` date DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `colaborador_id` int(11) NOT NULL,
  PRIMARY KEY (`idExame`),
  KEY `fk_exame_colaborador_id` (`colaborador_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores_exames`
--

LOCK TABLES `colaboradores_exames` WRITE;
/*!40000 ALTER TABLE `colaboradores_exames` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaboradores_exames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores_ferias`
--

DROP TABLE IF EXISTS `colaboradores_ferias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores_ferias` (
  `idFerias` int(11) NOT NULL AUTO_INCREMENT,
  `dataInicioAquisitivo` date DEFAULT NULL,
  `dataFimAquisitivo` date DEFAULT NULL,
  `colaborador_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`idFerias`),
  KEY `fk_ferias_colaborador_id` (`colaborador_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores_ferias`
--

LOCK TABLES `colaboradores_ferias` WRITE;
/*!40000 ALTER TABLE `colaboradores_ferias` DISABLE KEYS */;
INSERT INTO `colaboradores_ferias` VALUES (1,'2019-01-01','2020-01-01',1);
/*!40000 ALTER TABLE `colaboradores_ferias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores_ferias_dados`
--

DROP TABLE IF EXISTS `colaboradores_ferias_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores_ferias_dados` (
  `idDadosFerias` int(11) NOT NULL AUTO_INCREMENT,
  `ferias_id` int(11) DEFAULT NULL,
  `dataInicioRetirada` date DEFAULT NULL,
  `dataFimRetirada` date DEFAULT NULL,
  `credito` int(11) DEFAULT NULL,
  `diasTirados` int(11) DEFAULT NULL,
  `diasPagos` int(11) DEFAULT NULL,
  `valorPago` decimal(10,2) DEFAULT NULL,
  `saldoDias` int(11) DEFAULT NULL,
  `dataPago` date DEFAULT NULL,
  PRIMARY KEY (`idDadosFerias`),
  KEY `fk_colaboradores_ferias_id` (`ferias_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores_ferias_dados`
--

LOCK TABLES `colaboradores_ferias_dados` WRITE;
/*!40000 ALTER TABLE `colaboradores_ferias_dados` DISABLE KEYS */;
INSERT INTO `colaboradores_ferias_dados` VALUES (1,1,'2020-02-01','2020-02-20',2,20,0,0.00,0,NULL);
/*!40000 ALTER TABLE `colaboradores_ferias_dados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores_grupos_escalas`
--

DROP TABLE IF EXISTS `colaboradores_grupos_escalas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores_grupos_escalas` (
  `idColaborador` int(11) NOT NULL AUTO_INCREMENT,
  `grupo_id` int(11) NOT NULL,
  `colaborador_id` int(11) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idColaborador`),
  KEY `fk_grupo_escala_grupo` (`grupo_id`),
  KEY `fk_grupo_escala_colaborador` (`colaborador_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores_grupos_escalas`
--

LOCK TABLES `colaboradores_grupos_escalas` WRITE;
/*!40000 ALTER TABLE `colaboradores_grupos_escalas` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaboradores_grupos_escalas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores_suspensoes`
--

DROP TABLE IF EXISTS `colaboradores_suspensoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores_suspensoes` (
  `idSuspensao` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador_id` int(11) NOT NULL,
  `dataInicio` date NOT NULL,
  `dataFim` date NOT NULL,
  `dias` int(11) NOT NULL,
  `motivo` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `descricao` text COLLATE latin1_general_ci,
  `file` varchar(180) COLLATE latin1_general_ci DEFAULT NULL,
  `path` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `url` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `tamanho` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idSuspensao`),
  KEY `fk_suspensao_colaborador_id` (`colaborador_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores_suspensoes`
--

LOCK TABLES `colaboradores_suspensoes` WRITE;
/*!40000 ALTER TABLE `colaboradores_suspensoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaboradores_suspensoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores_uniformes`
--

DROP TABLE IF EXISTS `colaboradores_uniformes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colaboradores_uniformes` (
  `idUniforme` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_id` int(11) DEFAULT NULL,
  `tamanho_id` int(10) DEFAULT NULL,
  `dataRetirada` date DEFAULT NULL,
  `colaborador_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`idUniforme`),
  KEY `fk_uniforme_colaborador_id` (`colaborador_id`) USING BTREE,
  KEY `fk_uniforme_tamanho_id` (`tamanho_id`) USING BTREE,
  KEY `fk_uniforme_tipo_id` (`tipo_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores_uniformes`
--

LOCK TABLES `colaboradores_uniformes` WRITE;
/*!40000 ALTER TABLE `colaboradores_uniformes` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaboradores_uniformes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contas_pagar`
--

DROP TABLE IF EXISTS `contas_pagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contas_pagar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota_id` int(11) DEFAULT NULL,
  `fornecedor_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) NOT NULL,
  `tipo_conta_id` int(11) DEFAULT NULL,
  `tipo_pagamento_id` int(11) DEFAULT NULL,
  `numeroDoc` varchar(50) NOT NULL,
  `historico` varchar(120) DEFAULT NULL,
  `tipoLancamento` tinyint(1) NOT NULL,
  `tipoPagamento` varchar(10) NOT NULL,
  `formaPagamento` tinyint(1) NOT NULL,
  `dataLancamento` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_contapagar_empresa` (`empresa_id`) USING BTREE,
  KEY `fk_contapagar_nota` (`nota_id`) USING BTREE,
  KEY `fk_contapagar_fornecedor` (`fornecedor_id`) USING BTREE,
  KEY `fk_contapagar_tipo_conta` (`tipo_conta_id`),
  KEY `fk_contapagar_tipo_pagamento` (`tipo_pagamento_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contas_pagar`
--

LOCK TABLES `contas_pagar` WRITE;
/*!40000 ALTER TABLE `contas_pagar` DISABLE KEYS */;
/*!40000 ALTER TABLE `contas_pagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contas_receber`
--

DROP TABLE IF EXISTS `contas_receber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contas_receber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `tipo_conta_id` int(11) NOT NULL,
  `numeroDoc` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `descricao` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `formaPagamento` tinyint(1) NOT NULL,
  `dataLancamento` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_conta_receber_empresa` (`empresa_id`),
  KEY `fk_conta_receber_cliente` (`cliente_id`),
  KEY `fk_conta_receber_tipo_conta` (`tipo_conta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contas_receber`
--

LOCK TABLES `contas_receber` WRITE;
/*!40000 ALTER TABLE `contas_receber` DISABLE KEYS */;
INSERT INTO `contas_receber` VALUES (1,13,5,1,'2222','',0,'2020-12-15 00:00:00');
/*!40000 ALTER TABLE `contas_receber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controle_emails`
--

DROP TABLE IF EXISTS `controle_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controle_emails` (
  `idControle` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `dataEnvio` date NOT NULL,
  `horaEnvio` time NOT NULL,
  `tipo` varchar(30) NOT NULL,
  PRIMARY KEY (`idControle`),
  KEY `fk_controle_email_usuario` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controle_emails`
--

LOCK TABLES `controle_emails` WRITE;
/*!40000 ALTER TABLE `controle_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `controle_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_tanque`
--

DROP TABLE IF EXISTS `data_tanque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_tanque` (
  `idDataTanque` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) NOT NULL,
  `tanque_id` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`idDataTanque`),
  KEY `fk_data_tanque_empresa` (`empresa_id`) USING BTREE,
  KEY `fk_data_tanque_tanque` (`tanque_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_tanque`
--

LOCK TABLES `data_tanque` WRITE;
/*!40000 ALTER TABLE `data_tanque` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_tanque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despesas_caixa`
--

DROP TABLE IF EXISTS `despesas_caixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `despesas_caixa` (
  `idDespesa` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fornecedor_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `nota_id` int(11) DEFAULT NULL,
  `situacao` char(2) COLLATE latin1_general_ci NOT NULL,
  `data_lancamento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDespesa`),
  KEY `fk_despesa_caixa_empresa` (`empresa_id`),
  KEY `fk_despesa_caixa_forncedor` (`fornecedor_id`),
  KEY `fk_despesa_caixa_nota` (`nota_id`),
  KEY `fk_despesa_caixa_usuario` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despesas_caixa`
--

LOCK TABLES `despesas_caixa` WRITE;
/*!40000 ALTER TABLE `despesas_caixa` DISABLE KEYS */;
/*!40000 ALTER TABLE `despesas_caixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos` (
  `idDocumento` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador_id` int(11) NOT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `path` varchar(300) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idDocumento`),
  KEY `fk_documentos_colaborador` (`colaborador_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
INSERT INTO `documentos` VALUES (1,1,'OLIRIYTE MES','http://defumariaraffinato.masmtecnologia.com.br/assets/documentos/05-09-2020/62b031df093ad472ee05b4eb6a10f951.pdf','/home/storage/a/1a/7a/masmtecnologia1/public_html/raffinato/assets/documentos/05-09-2020/62b031df093ad472ee05b4eb6a10f951.pdf','2020-09-05');
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `relatorios` text NOT NULL,
  `horario` time NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_email_usuario` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `ie` varchar(50) DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logo` text NOT NULL,
  `matriz` tinyint(1) NOT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (4,'RAFFINATO','0','0','Rua Marechal Castelo Branco','61','Jardim Itamaraca','MATRIZ','SP','(19) 38431917','','https://testes107.websiteseguro.com/assets/uploads/e091a29d0961ac3a59c0227c51842c31.png',1),(13,'DEFUMARIA RAFFINATO','00000000000000','1','Rua Marechal Castelo Branco','61','Jardim Itamaraca','Itapira','SP','(19) 999550030','robertaarcanjoaraujo@gmail.com','http://sistema.robertaarcanjosemijoias.com.br/assets/uploads/logo_padrao.png',0);
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas_passageiros`
--

DROP TABLE IF EXISTS `empresas_passageiros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas_passageiros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passageiro_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empresa_passageiro_passageiro` (`passageiro_id`),
  KEY `fk_empresa_passageiro_empresa` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas_passageiros`
--

LOCK TABLES `empresas_passageiros` WRITE;
/*!40000 ALTER TABLE `empresas_passageiros` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresas_passageiros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas_produtos`
--

DROP TABLE IF EXISTS `empresas_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empresa_produto_produto` (`produto_id`),
  KEY `fk_empresa_produto_empresa` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas_produtos`
--

LOCK TABLES `empresas_produtos` WRITE;
/*!40000 ALTER TABLE `empresas_produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresas_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalas`
--

DROP TABLE IF EXISTS `escalas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escalas` (
  `idEscala` int(11) NOT NULL AUTO_INCREMENT,
  `periodo_id` int(11) NOT NULL,
  `grupo_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `programada` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idEscala`),
  KEY `fk_escala_periodo` (`periodo_id`),
  KEY `fk_escala_grupo` (`grupo_id`),
  KEY `fk_escala_empresa` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalas`
--

LOCK TABLES `escalas` WRITE;
/*!40000 ALTER TABLE `escalas` DISABLE KEYS */;
/*!40000 ALTER TABLE `escalas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalas_alteracoes`
--

DROP TABLE IF EXISTS `escalas_alteracoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escalas_alteracoes` (
  `idAlteracao` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador_id` int(11) NOT NULL,
  `escala_id` int(11) NOT NULL,
  `escala_realizada_id` int(11) NOT NULL,
  `tarefa_anterior_id` int(11) DEFAULT NULL,
  `tarefa_nova_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  `descricao` text,
  `dia` date NOT NULL,
  `dataAlteracao` date NOT NULL,
  PRIMARY KEY (`idAlteracao`),
  KEY `fk_escala_alteracao_escala_realizada` (`escala_realizada_id`),
  KEY `fk_escala_alteracao_tarefa_anterior` (`tarefa_anterior_id`),
  KEY `fk_escala_alteracao_tarefa_nova` (`tarefa_nova_id`),
  KEY `fk_escala_alteracao_usuario` (`usuario_id`),
  KEY `fk_escala_alteracao_escala` (`escala_id`),
  KEY `fk_escala_alteracao_colaborador` (`colaborador_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalas_alteracoes`
--

LOCK TABLES `escalas_alteracoes` WRITE;
/*!40000 ALTER TABLE `escalas_alteracoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `escalas_alteracoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalas_linhas_tarefas_programadas`
--

DROP TABLE IF EXISTS `escalas_linhas_tarefas_programadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escalas_linhas_tarefas_programadas` (
  `idLinhaTarefaProgramada` int(11) NOT NULL AUTO_INCREMENT,
  `tarefa_programada_id` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `horarioInicio` time NOT NULL,
  `horarioFim` time NOT NULL,
  `horasTrabalhadas` time NOT NULL,
  `horasNoturnas` time NOT NULL,
  `adicionalNoturno` time NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idLinhaTarefaProgramada`),
  KEY `fk_escala_linha_tarefa_programada_tarefa` (`tarefa_programada_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalas_linhas_tarefas_programadas`
--

LOCK TABLES `escalas_linhas_tarefas_programadas` WRITE;
/*!40000 ALTER TABLE `escalas_linhas_tarefas_programadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `escalas_linhas_tarefas_programadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalas_linhas_tarefas_realizadas`
--

DROP TABLE IF EXISTS `escalas_linhas_tarefas_realizadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escalas_linhas_tarefas_realizadas` (
  `idLinhaTarefaRealizada` int(11) NOT NULL AUTO_INCREMENT,
  `tarefa_realizada_id` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `horarioInicio` time NOT NULL,
  `horarioFim` time NOT NULL,
  `horasTrabalhadas` time NOT NULL,
  `horasNoturnas` time NOT NULL,
  `adicionalNoturno` time NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idLinhaTarefaRealizada`),
  KEY `fk_escala_linha_tarefa_realizada_tarefa` (`tarefa_realizada_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalas_linhas_tarefas_realizadas`
--

LOCK TABLES `escalas_linhas_tarefas_realizadas` WRITE;
/*!40000 ALTER TABLE `escalas_linhas_tarefas_realizadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `escalas_linhas_tarefas_realizadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalas_programadas`
--

DROP TABLE IF EXISTS `escalas_programadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escalas_programadas` (
  `idEscalaProgramada` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador_id` int(11) NOT NULL,
  `tarefa_id` int(11) DEFAULT NULL,
  `veiculo_id` int(11) DEFAULT NULL,
  `escala_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `diaSemana` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idEscalaProgramada`),
  KEY `fk_escala_programada_escala` (`escala_id`),
  KEY `fk_escala_programada_tarefa` (`tarefa_id`) USING BTREE,
  KEY `fk_escala_programada_colaborador` (`colaborador_id`) USING BTREE,
  KEY `fk_escala_programada_veiculo` (`veiculo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalas_programadas`
--

LOCK TABLES `escalas_programadas` WRITE;
/*!40000 ALTER TABLE `escalas_programadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `escalas_programadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalas_realizadas`
--

DROP TABLE IF EXISTS `escalas_realizadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escalas_realizadas` (
  `idEscalaRealizada` int(11) NOT NULL AUTO_INCREMENT,
  `colaborador_id` int(11) NOT NULL,
  `tarefa_id` int(11) DEFAULT NULL,
  `veiculo_id` int(11) DEFAULT NULL,
  `escala_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `diaSemana` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idEscalaRealizada`),
  KEY `fk_escala_realizada_colaborador` (`colaborador_id`),
  KEY `fk_escala_realizada_tarefa` (`tarefa_id`),
  KEY `fk_escala_realizada_escala` (`escala_id`),
  KEY `fk_escala_realizada_veiculo` (`veiculo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalas_realizadas`
--

LOCK TABLES `escalas_realizadas` WRITE;
/*!40000 ALTER TABLE `escalas_realizadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `escalas_realizadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalas_tarefas_programadas`
--

DROP TABLE IF EXISTS `escalas_tarefas_programadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escalas_tarefas_programadas` (
  `idTarefaProgramada` int(11) NOT NULL AUTO_INCREMENT,
  `escala_programada_id` int(11) NOT NULL,
  `tarefa_id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `horasTrabalhadas` time NOT NULL,
  `intraJornada` time NOT NULL,
  `horaNoturna` time NOT NULL,
  `adicionalNoturno` time NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFim` time NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idTarefaProgramada`),
  KEY `fk_escala_tarefa_escala_programada` (`escala_programada_id`),
  KEY `fk_escala_tarefa_tarefa` (`tarefa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalas_tarefas_programadas`
--

LOCK TABLES `escalas_tarefas_programadas` WRITE;
/*!40000 ALTER TABLE `escalas_tarefas_programadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `escalas_tarefas_programadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalas_tarefas_realizadas`
--

DROP TABLE IF EXISTS `escalas_tarefas_realizadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escalas_tarefas_realizadas` (
  `idTarefaRealizada` int(11) NOT NULL AUTO_INCREMENT,
  `escala_realizada_id` int(11) NOT NULL,
  `tarefa_id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `horasTrabalhadas` time NOT NULL,
  `intraJornada` time NOT NULL,
  `horaNoturna` time NOT NULL,
  `adicionalNoturno` time NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFim` time NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idTarefaRealizada`),
  KEY `fk_escala_tarefa_escala_realizada` (`escala_realizada_id`),
  KEY `fk_escala_tarefa_tarefa` (`tarefa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalas_tarefas_realizadas`
--

LOCK TABLES `escalas_tarefas_realizadas` WRITE;
/*!40000 ALTER TABLE `escalas_tarefas_realizadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `escalas_tarefas_realizadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feriados`
--

DROP TABLE IF EXISTS `feriados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feriados` (
  `idFeriado` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(120) NOT NULL,
  `dataFeriado` date NOT NULL,
  `fixo` tinyint(1) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `dataCadastro` int(11) NOT NULL,
  PRIMARY KEY (`idFeriado`),
  KEY `fk_feriado_empresa` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feriados`
--

LOCK TABLES `feriados` WRITE;
/*!40000 ALTER TABLE `feriados` DISABLE KEYS */;
/*!40000 ALTER TABLE `feriados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `idFornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `cpfCnpj` varchar(18) NOT NULL,
  `rua` varchar(70) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `telefone` varchar(13) NOT NULL,
  `telefone2` varchar(14) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos_escala`
--

DROP TABLE IF EXISTS `grupos_escala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos_escala` (
  `idGrupo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `escalaTrabalho` varchar(10) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idGrupo`),
  KEY `fk_grupo_escala_empresa` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_escala`
--

LOCK TABLES `grupos_escala` WRITE;
/*!40000 ALTER TABLE `grupos_escala` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupos_escala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_notas`
--

DROP TABLE IF EXISTS `itens_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itens_notas` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `produto_id` int(11) DEFAULT NULL,
  `nota_id` int(11) NOT NULL,
  `destino` tinyint(1) NOT NULL,
  `setor_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `valorUnitario` decimal(10,2) NOT NULL,
  `desconto` decimal(10,2) NOT NULL,
  `acrescimo` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idItem`),
  KEY `fk_nota_item_empresa` (`empresa_id`) USING BTREE,
  KEY `fk_nota_item_nota` (`nota_id`) USING BTREE,
  KEY `fk_nota_item_setor` (`setor_id`) USING BTREE,
  KEY `fk_nota_item_produto` (`produto_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_notas`
--

LOCK TABLES `itens_notas` WRITE;
/*!40000 ALTER TABLE `itens_notas` DISABLE KEYS */;
INSERT INTO `itens_notas` VALUES (1,1,1,0,NULL,13,100.00,5.00,0.00,0.00,500.00),(2,3,5,0,NULL,13,50.00,50.00,10.00,100.00,2350.00);
/*!40000 ALTER TABLE `itens_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_requerimentos`
--

DROP TABLE IF EXISTS `itens_requerimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itens_requerimentos` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `requerimento_id` int(11) NOT NULL,
  `destino` tinyint(1) NOT NULL,
  `veiculo_id` int(11) DEFAULT NULL,
  `setor_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `valorUnitario` decimal(10,2) NOT NULL,
  `desconto` decimal(10,2) NOT NULL,
  `acrescimo` decimal(10,2) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idItem`),
  KEY `fk_requerimento_item_requerimento` (`requerimento_id`) USING BTREE,
  KEY `fk_item_requerimento_veiculo` (`veiculo_id`) USING BTREE,
  KEY `fk_item_requerimento_empresa` (`empresa_id`) USING BTREE,
  KEY `fk_item_requerimento_setor` (`setor_id`) USING BTREE,
  KEY `fk_item_requerimento_item` (`item_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_requerimentos`
--

LOCK TABLES `itens_requerimentos` WRITE;
/*!40000 ALTER TABLE `itens_requerimentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `itens_requerimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linhas_tarefas`
--

DROP TABLE IF EXISTS `linhas_tarefas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linhas_tarefas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarefa_id` int(11) DEFAULT NULL,
  `linha_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_linha_tarefa_linha` (`linha_id`),
  KEY `fk_linha_tarefa_tarefa` (`tarefa_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linhas_tarefas`
--

LOCK TABLES `linhas_tarefas` WRITE;
/*!40000 ALTER TABLE `linhas_tarefas` DISABLE KEYS */;
/*!40000 ALTER TABLE `linhas_tarefas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `idLogs` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(80) DEFAULT NULL,
  `tarefa` text,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLogs`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'admin','entrada estoque - 1, quantidade: 34, compra $: 23.00, venda $: 45.00','2020-08-27','21:58:32','170.231.252.119'),(2,'MAURO MIRANDA','Adicionou a nota 001','2020-09-05','10:53:27','192.141.117.167'),(3,'SALUA SCHOLZ SANCHES','Adicionou a nota 002','2020-09-21','15:25:48','192.141.117.160'),(4,'TAIANE CATARINE ZACARIOTO','Adicionou a nota 2000','2020-12-15','10:06:53','192.141.116.168'),(5,'MAURO MIRANDA','Adicionou a nota 001','2020-12-15','10:10:25','131.221.232.219'),(6,'TAIANE CATARINE ZACARIOTO','Adicionou a nota 000','2020-12-15','10:13:25','192.141.116.168'),(7,'TAIANE CATARINE ZACARIOTO','Editou a nota 000','2020-12-15','10:19:36','192.141.116.168'),(8,'TAIANE CATARINE ZACARIOTO','Editou a nota 000','2020-12-15','10:20:32','192.141.116.168'),(9,'TAIANE CATARINE ZACARIOTO','Editou a nota 000','2020-12-15','10:22:51','192.141.116.168'),(10,'TAIANE CATARINE ZACARIOTO','Excluiu contas a pagar 000','2020-12-15','10:23:02','192.141.116.168'),(11,'TAIANE CATARINE ZACARIOTO','Excluiu contas a pagar 000','2020-12-15','10:23:03','192.141.116.168'),(12,'TAIANE CATARINE ZACARIOTO','Adicionou contas a pagar 2000','2020-12-15','10:24:29','192.141.116.168'),(13,'TAIANE CATARINE ZACARIOTO','Deu baixa na conta 2000','2020-12-15','10:27:53','192.141.116.168'),(14,'TAIANE CATARINE ZACARIOTO','Adicionou contas a pagar 2000','2020-12-15','10:33:42','192.141.116.168'),(15,'TAIANE CATARINE ZACARIOTO','Deu baixa na conta 2000','2020-12-15','10:34:24','192.141.116.168'),(16,'TAIANE CATARINE ZACARIOTO','Adicionou contas a receber 2222','2020-12-15','10:36:31','192.141.116.168'),(17,'MAURO MIRANDA','Adicionou a nota TESTE','2020-12-15','18:11:57','131.221.232.219'),(18,'MAURO MIRANDA','Editou a nota TESTE','2020-12-15','18:13:50','131.221.232.219'),(19,'MAURO MIRANDA','Excluiu contas a pagar 2000','2021-03-16','15:16:22','192.141.117.165'),(20,'MAURO MIRANDA','Excluiu contas a pagar 001','2021-03-16','15:16:26','192.141.117.165'),(21,'MAURO MIRANDA','Excluiu contas a pagar 2000','2021-03-16','15:16:41','192.141.117.165'),(22,'MAURO MIRANDA','Excluiu contas a receber 2223','2021-03-16','15:16:49','192.141.117.165');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentacao_estoque`
--

DROP TABLE IF EXISTS `movimentacao_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimentacao_estoque` (
  `idMovimentacao` int(11) NOT NULL AUTO_INCREMENT,
  `estoque_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  `metodo` tinyint(1) NOT NULL,
  `quantidade` int(10) NOT NULL,
  `requerimento_id` int(11) DEFAULT NULL,
  `nota_id` int(11) DEFAULT NULL,
  `saida_id` int(11) DEFAULT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`idMovimentacao`),
  KEY `fk_movimentacao_estoque_estoque` (`estoque_id`) USING BTREE,
  KEY `fk_movimentacao_estoque_usuario` (`usuario_id`) USING BTREE,
  KEY `fk_movimentacao_estoque_requerimento` (`requerimento_id`) USING BTREE,
  KEY `fk_movimentacao_estoque_nota` (`nota_id`) USING BTREE,
  KEY `fk_movimentacao_estoque_saida` (`saida_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentacao_estoque`
--

LOCK TABLES `movimentacao_estoque` WRITE;
/*!40000 ALTER TABLE `movimentacao_estoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimentacao_estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_fiscais`
--

DROP TABLE IF EXISTS `notas_fiscais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_fiscais` (
  `idNota` int(11) NOT NULL AUTO_INCREMENT,
  `numeroNota` varchar(100) NOT NULL,
  `fornecedor_id` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `dataEmissao` date NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `valorFrete` decimal(10,2) NOT NULL,
  `valorIpi` decimal(10,2) NOT NULL,
  `valorIss` decimal(10,2) NOT NULL,
  `valorIcms` decimal(10,2) DEFAULT NULL,
  `valorDesconto` decimal(10,2) DEFAULT NULL,
  `tipoDesconto` tinyint(1) NOT NULL,
  `dataLancamento` date NOT NULL,
  PRIMARY KEY (`idNota`),
  KEY `fk_nota_fiscal_fornecedor` (`fornecedor_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_fiscais`
--

LOCK TABLES `notas_fiscais` WRITE;
/*!40000 ALTER TABLE `notas_fiscais` DISABLE KEYS */;
INSERT INTO `notas_fiscais` VALUES (1,'001',1,'BARRIGA DE PORCO','2020-09-05',500.00,0.00,0.00,0.00,NULL,0.00,0,'2020-09-05'),(2,'002',1,'BARRIGA DE PORCO','2020-09-21',0.00,0.00,0.00,0.00,NULL,NULL,0,'2020-09-21'),(3,'2000',2,'BARRIGA DE PORCO','2020-12-15',0.00,0.00,0.00,0.00,NULL,NULL,0,'2020-12-15'),(4,'001',2,'','2020-12-15',0.00,0.00,0.00,0.00,NULL,NULL,0,'2020-12-15'),(5,'000',2,'BARRIGA DE PORCO','2020-12-15',2350.00,0.00,0.00,0.00,NULL,0.00,0,'2020-12-15'),(6,'TESTE',2,'','2020-12-15',0.00,0.00,0.00,0.00,NULL,NULL,0,'2020-12-15');
/*!40000 ALTER TABLE `notas_fiscais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_fiscais_anexos`
--

DROP TABLE IF EXISTS `notas_fiscais_anexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_fiscais_anexos` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `nota_id` int(11) NOT NULL,
  `descricao` varchar(180) COLLATE latin1_general_ci NOT NULL,
  `file` varchar(180) COLLATE latin1_general_ci NOT NULL,
  `path` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `tipo` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `tamanho` varchar(15) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_anexo_nota` (`nota_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_fiscais_anexos`
--

LOCK TABLES `notas_fiscais_anexos` WRITE;
/*!40000 ALTER TABLE `notas_fiscais_anexos` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas_fiscais_anexos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcelas_pagar`
--

DROP TABLE IF EXISTS `parcelas_pagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcelas_pagar` (
  `idParcela` int(11) NOT NULL AUTO_INCREMENT,
  `conta_id` int(11) NOT NULL,
  `parcela` tinyint(10) NOT NULL,
  `numeroCheque` varchar(80) DEFAULT NULL,
  `valorParcela` decimal(10,2) NOT NULL,
  `aumento` decimal(10,2) NOT NULL,
  `desconto` decimal(10,2) NOT NULL,
  `dataVencimento` date NOT NULL,
  `dataPagamento` date DEFAULT NULL,
  `situacao` varchar(50) NOT NULL,
  PRIMARY KEY (`idParcela`),
  KEY `fk_parcela_pagar_conta` (`conta_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcelas_pagar`
--

LOCK TABLES `parcelas_pagar` WRITE;
/*!40000 ALTER TABLE `parcelas_pagar` DISABLE KEYS */;
/*!40000 ALTER TABLE `parcelas_pagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcelas_receber`
--

DROP TABLE IF EXISTS `parcelas_receber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcelas_receber` (
  `idParcela` int(11) NOT NULL AUTO_INCREMENT,
  `conta_id` int(11) NOT NULL,
  `parcela` tinyint(10) NOT NULL,
  `valorParcela` decimal(10,2) NOT NULL,
  `dataVencimento` date NOT NULL,
  `dataRecebimento` date DEFAULT NULL,
  `situacao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idParcela`),
  KEY `fk_parcela_receber_conta` (`conta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcelas_receber`
--

LOCK TABLES `parcelas_receber` WRITE;
/*!40000 ALTER TABLE `parcelas_receber` DISABLE KEYS */;
/*!40000 ALTER TABLE `parcelas_receber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passageiros`
--

DROP TABLE IF EXISTS `passageiros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passageiros` (
  `idPassageiro` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(180) NOT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idPassageiro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passageiros`
--

LOCK TABLES `passageiros` WRITE;
/*!40000 ALTER TABLE `passageiros` DISABLE KEYS */;
/*!40000 ALTER TABLE `passageiros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passageiros_conferencias`
--

DROP TABLE IF EXISTS `passageiros_conferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passageiros_conferencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conferencia_id` int(11) NOT NULL,
  `passageiro_id` int(11) NOT NULL,
  `quantidade` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_passageiro_conferencia_conferencia` (`conferencia_id`),
  KEY `fk_passageiro_conferencia_passageiro` (`passageiro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passageiros_conferencias`
--

LOCK TABLES `passageiros_conferencias` WRITE;
/*!40000 ALTER TABLE `passageiros_conferencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `passageiros_conferencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodos`
--

DROP TABLE IF EXISTS `periodos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodos` (
  `idPeriodo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `dataInicial` date NOT NULL,
  `dataFinal` date NOT NULL,
  `numeroDias` int(3) NOT NULL,
  `horasPeriodo` varchar(20) NOT NULL,
  `dsr` int(3) NOT NULL,
  `interJornada` time NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`idPeriodo`),
  KEY `fk_periodo_empresa` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodos`
--

LOCK TABLES `periodos` WRITE;
/*!40000 ALTER TABLE `periodos` DISABLE KEYS */;
/*!40000 ALTER TABLE `periodos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissoes`
--

DROP TABLE IF EXISTS `permissoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissoes` (
  `idPermissao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `permissoes` text,
  `situacao` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`idPermissao`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissoes`
--

LOCK TABLES `permissoes` WRITE;
/*!40000 ALTER TABLE `permissoes` DISABLE KEYS */;
INSERT INTO `permissoes` VALUES (1,'Administrador','a:42:{s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";s:1:\"1\";s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:11:\"aLancamento\";s:1:\"1\";s:11:\"eLancamento\";s:1:\"1\";s:11:\"dLancamento\";s:1:\"1\";s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:9:\"cEmitente\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:8:\"rCliente\";s:1:\"1\";s:8:\"rProduto\";s:1:\"1\";s:8:\"rServico\";s:1:\"1\";s:3:\"rOs\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:11:\"rFinanceiro\";s:1:\"1\";}',1,'2014-09-03');
/*!40000 ALTER TABLE `permissoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissoesnova`
--

DROP TABLE IF EXISTS `permissoesnova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissoesnova` (
  `idPermissao` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `permissoes` text,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`idPermissao`),
  KEY `fk_permissoes_usuario` (`usuario_id`),
  KEY `fk_permissoes_empresa` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissoesnova`
--

LOCK TABLES `permissoesnova` WRITE;
/*!40000 ALTER TABLE `permissoesnova` DISABLE KEYS */;
INSERT INTO `permissoesnova` VALUES (20,1,2,'a:201:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:17:\"aSaidaCombustivel\";s:1:\"1\";s:17:\"eSaidaCombustivel\";s:1:\"1\";s:17:\"dSaidaCombustivel\";s:1:\"1\";s:17:\"vSaidaCombustivel\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";}','2018-12-13'),(21,1,3,'a:193:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:17:\"aSaidaCombustivel\";s:1:\"1\";s:17:\"eSaidaCombustivel\";s:1:\"1\";s:17:\"dSaidaCombustivel\";s:1:\"1\";s:17:\"vSaidaCombustivel\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";}','2018-12-13'),(22,1,4,'a:226:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:17:\"aSaidaCombustivel\";s:1:\"1\";s:17:\"eSaidaCombustivel\";s:1:\"1\";s:17:\"dSaidaCombustivel\";s:1:\"1\";s:17:\"vSaidaCombustivel\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";}','2018-12-13'),(23,1,5,'a:189:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:17:\"aSaidaCombustivel\";s:1:\"1\";s:17:\"eSaidaCombustivel\";s:1:\"1\";s:17:\"dSaidaCombustivel\";s:1:\"1\";s:17:\"vSaidaCombustivel\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";}','2018-12-14'),(24,1,6,'a:174:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:11:\"cImpressora\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";}','2018-12-14'),(46,1,7,'a:123:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";}','2018-12-18'),(47,1,9,'a:123:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";}','2018-12-18'),(55,7,4,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2018-12-19'),(71,11,7,'a:144:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";N;s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";N;s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:11:\"cImpressora\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;}','2018-12-27'),(72,12,2,'a:133:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";N;s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rCustoSetor\";N;}','2019-01-07'),(82,13,2,'a:197:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";}','2019-01-16'),(83,13,3,'a:197:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";}','2019-01-16'),(84,13,4,'a:197:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";}','2019-01-16'),(85,13,5,'a:197:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";}','2019-01-16'),(95,16,3,'a:193:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;}','2019-01-22'),(97,15,5,'a:193:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";N;s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;}','2019-01-22'),(98,17,2,'a:133:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rCustoSetor\";N;}','2019-02-07'),(99,18,2,'a:133:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rCustoSetor\";N;}','2019-02-11'),(100,19,2,'a:135:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:11:\"cImpressora\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rCustoSetor\";N;}','2019-02-11'),(101,20,5,'a:137:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:11:\"cImpressora\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";N;s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;}','2019-02-12'),(102,21,2,'a:135:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:11:\"cImpressora\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";}','2019-02-13'),(103,21,3,'a:135:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:11:\"cImpressora\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";}','2019-02-13'),(104,23,2,'a:135:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:11:\"cImpressora\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";}','2019-02-14'),(105,24,5,'a:135:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:11:\"cImpressora\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rCustoSetor\";N;}','2019-02-18'),(107,25,7,'a:193:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;}','2019-03-08'),(109,26,5,'a:144:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:11:\"cImpressora\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";}','2019-04-05'),(110,14,2,'a:174:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";}','2019-04-08'),(111,14,3,'a:174:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";}','2019-04-08'),(112,14,4,'a:183:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";}','2019-04-08'),(113,14,5,'a:174:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";}','2019-04-08'),(114,14,6,'a:174:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";}','2019-04-08'),(115,14,7,'a:174:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";}','2019-04-08'),(116,14,9,'a:174:{s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";s:1:\"1\";s:13:\"eRequerimento\";s:1:\"1\";s:13:\"dRequerimento\";s:1:\"1\";s:13:\"vRequerimento\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";}','2019-04-08'),(121,27,5,'a:165:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:11:\"cImpressora\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;}','2019-04-16'),(122,28,5,'a:161:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:11:\"cImpressora\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;}','2019-04-16'),(123,29,3,'a:161:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:11:\"cImpressora\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;}','2019-04-17'),(124,30,3,'a:161:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:11:\"cImpressora\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;}','2019-04-17'),(128,31,2,'a:183:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";s:1:\"1\";s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;}','2019-04-24'),(129,32,3,'a:170:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:11:\"cImpressora\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;}','2019-04-24'),(130,33,3,'a:189:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";s:7:\"rFerias\";N;s:10:\"rUniformes\";N;}','2019-04-25'),(132,34,3,'a:182:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;}','2019-05-22'),(133,35,3,'a:189:{s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;}','2019-08-09'),(134,7,11,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2019-10-22'),(135,7,12,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2019-10-22'),(136,1,11,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2019-10-23'),(137,36,4,'a:201:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";N;}','2019-10-23'),(138,36,11,'a:201:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";N;}','2019-10-23'),(139,36,12,'a:201:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";N;}','2019-10-23'),(140,37,4,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2019-10-30'),(141,37,11,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2019-10-30'),(142,37,12,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";N;s:6:\"dFiado\";N;s:6:\"vFiado\";N;s:15:\"vPrestacaoConta\";N;s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";N;s:15:\"eTiposPagamento\";N;s:15:\"dTiposPagamento\";N;s:15:\"vTiposPagamento\";N;s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2019-10-30'),(143,38,11,'a:226:{s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:7:\"aTanque\";N;s:7:\"eTanque\";N;s:7:\"dTanque\";N;s:7:\"vTanque\";N;s:6:\"aBomba\";N;s:6:\"eBomba\";N;s:6:\"dBomba\";N;s:6:\"vBomba\";N;s:8:\"aVeiculo\";N;s:8:\"eVeiculo\";N;s:8:\"dVeiculo\";N;s:8:\"vVeiculo\";N;s:10:\"aCategoria\";N;s:10:\"eCategoria\";N;s:10:\"dCategoria\";N;s:10:\"vCategoria\";N;s:12:\"aCombustivel\";N;s:12:\"eCombustivel\";N;s:12:\"dCombustivel\";N;s:12:\"vCombustivel\";N;s:14:\"aAbastecimento\";N;s:14:\"eAbastecimento\";N;s:14:\"dAbastecimento\";N;s:14:\"vAbastecimento\";N;s:20:\"aControleCombustivel\";N;s:20:\"eControleCombustivel\";N;s:20:\"dControleCombustivel\";N;s:20:\"vControleCombustivel\";N;s:14:\"aControleBomba\";N;s:14:\"eControleBomba\";N;s:14:\"dControleBomba\";N;s:14:\"vControleBomba\";N;s:6:\"aLinha\";N;s:6:\"eLinha\";N;s:6:\"dLinha\";N;s:6:\"vLinha\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:9:\"aPortaria\";N;s:9:\"ePortaria\";N;s:9:\"dPortaria\";N;s:9:\"vPortaria\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:8:\"aEstoque\";N;s:8:\"eEstoque\";N;s:8:\"dEstoque\";N;s:8:\"vEstoque\";N;s:13:\"aSaidaEstoque\";N;s:13:\"eSaidaEstoque\";N;s:13:\"dSaidaEstoque\";N;s:13:\"vSaidaEstoque\";N;s:5:\"aItem\";N;s:5:\"eItem\";N;s:5:\"dItem\";N;s:5:\"vItem\";N;s:8:\"aProduto\";N;s:8:\"eProduto\";N;s:8:\"dProduto\";N;s:8:\"vProduto\";N;s:11:\"aPassageiro\";N;s:11:\"ePassageiro\";N;s:11:\"dPassageiro\";N;s:11:\"vPassageiro\";N;s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:7:\"aGuiche\";N;s:7:\"eGuiche\";N;s:7:\"dGuiche\";N;s:7:\"vGuiche\";N;s:13:\"validarGuiche\";N;s:12:\"aConferencia\";N;s:12:\"eConferencia\";N;s:12:\"dConferencia\";N;s:12:\"vConferencia\";N;s:18:\"validarConferencia\";N;s:5:\"aTipo\";N;s:5:\"eTipo\";N;s:5:\"dTipo\";N;s:5:\"vTipo\";N;s:3:\"aOs\";N;s:3:\"eOs\";N;s:3:\"dOs\";N;s:3:\"vOs\";N;s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:11:\"aDataInicio\";N;s:11:\"eDataInicio\";N;s:11:\"dDataInicio\";N;s:11:\"vDataInicio\";N;s:7:\"aAcerto\";N;s:7:\"eAcerto\";N;s:7:\"dAcerto\";N;s:7:\"vAcerto\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:17:\"aSaidaCombustivel\";N;s:17:\"eSaidaCombustivel\";N;s:17:\"dSaidaCombustivel\";N;s:17:\"vSaidaCombustivel\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:11:\"dashConsumo\";N;s:14:\"dashFinanceiro\";N;s:12:\"dashPortaria\";N;s:6:\"dashOs\";N;s:17:\"rFluxoCombustivel\";N;s:19:\"rEntradaCombustivel\";N;s:21:\"rQuilometragemVeiculo\";N;s:13:\"rConsumoGeral\";N;s:14:\"rConsumoMensal\";N;s:15:\"rConsumoVeiculo\";N;s:12:\"rContasPagar\";N;s:18:\"rManutencaoVeiculo\";N;s:21:\"rManutencaoFornecedor\";N;s:17:\"rManutencaoMensal\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:10:\"rOsVeiculo\";N;s:14:\"rOsFuncionario\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";N;s:17:\"rMovimentoEstoque\";N;s:6:\"rVenda\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";N;s:6:\"vVenda\";s:1:\"1\";s:6:\"eFiado\";N;s:6:\"dFiado\";N;s:6:\"vFiado\";N;s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";N;s:17:\"eCategoriaProduto\";N;s:17:\"dCategoriaProduto\";N;s:17:\"vCategoriaProduto\";N;s:15:\"aEstoqueProduto\";N;s:15:\"eEstoqueProduto\";N;s:15:\"dEstoqueProduto\";N;s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";N;s:15:\"eTiposPagamento\";N;s:15:\"dTiposPagamento\";N;s:15:\"vTiposPagamento\";N;}','2019-12-03'),(144,39,11,'a:121:{s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";N;s:17:\"rMovimentoEstoque\";N;s:6:\"rVenda\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";N;s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";N;s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";N;s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";N;s:6:\"dFiado\";N;s:6:\"vFiado\";N;s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";N;s:17:\"eCategoriaProduto\";N;s:17:\"dCategoriaProduto\";N;s:17:\"vCategoriaProduto\";N;s:15:\"aEstoqueProduto\";N;s:15:\"eEstoqueProduto\";N;s:15:\"dEstoqueProduto\";N;s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";N;s:15:\"eTiposPagamento\";N;s:15:\"dTiposPagamento\";N;s:15:\"vTiposPagamento\";N;s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2019-12-03'),(145,1,12,'a:226:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:7:\"aTanque\";s:1:\"1\";s:7:\"eTanque\";s:1:\"1\";s:7:\"dTanque\";s:1:\"1\";s:7:\"vTanque\";s:1:\"1\";s:6:\"aBomba\";s:1:\"1\";s:6:\"eBomba\";s:1:\"1\";s:6:\"dBomba\";s:1:\"1\";s:6:\"vBomba\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:10:\"aCategoria\";s:1:\"1\";s:10:\"eCategoria\";s:1:\"1\";s:10:\"dCategoria\";s:1:\"1\";s:10:\"vCategoria\";s:1:\"1\";s:12:\"aCombustivel\";s:1:\"1\";s:12:\"eCombustivel\";s:1:\"1\";s:12:\"dCombustivel\";s:1:\"1\";s:12:\"vCombustivel\";s:1:\"1\";s:14:\"aAbastecimento\";s:1:\"1\";s:14:\"eAbastecimento\";s:1:\"1\";s:14:\"dAbastecimento\";s:1:\"1\";s:14:\"vAbastecimento\";s:1:\"1\";s:20:\"aControleCombustivel\";s:1:\"1\";s:20:\"eControleCombustivel\";s:1:\"1\";s:20:\"dControleCombustivel\";s:1:\"1\";s:20:\"vControleCombustivel\";s:1:\"1\";s:14:\"aControleBomba\";s:1:\"1\";s:14:\"eControleBomba\";s:1:\"1\";s:14:\"dControleBomba\";s:1:\"1\";s:14:\"vControleBomba\";s:1:\"1\";s:6:\"aLinha\";s:1:\"1\";s:6:\"eLinha\";s:1:\"1\";s:6:\"dLinha\";s:1:\"1\";s:6:\"vLinha\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:9:\"aPortaria\";s:1:\"1\";s:9:\"ePortaria\";s:1:\"1\";s:9:\"dPortaria\";s:1:\"1\";s:9:\"vPortaria\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:8:\"aEstoque\";s:1:\"1\";s:8:\"eEstoque\";s:1:\"1\";s:8:\"dEstoque\";s:1:\"1\";s:8:\"vEstoque\";s:1:\"1\";s:13:\"aSaidaEstoque\";s:1:\"1\";s:13:\"eSaidaEstoque\";s:1:\"1\";s:13:\"dSaidaEstoque\";s:1:\"1\";s:13:\"vSaidaEstoque\";s:1:\"1\";s:5:\"aItem\";s:1:\"1\";s:5:\"eItem\";s:1:\"1\";s:5:\"dItem\";s:1:\"1\";s:5:\"vItem\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:11:\"aPassageiro\";s:1:\"1\";s:11:\"ePassageiro\";s:1:\"1\";s:11:\"dPassageiro\";s:1:\"1\";s:11:\"vPassageiro\";s:1:\"1\";s:13:\"aRequerimento\";N;s:13:\"eRequerimento\";N;s:13:\"dRequerimento\";N;s:13:\"vRequerimento\";N;s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:7:\"aGuiche\";s:1:\"1\";s:7:\"eGuiche\";s:1:\"1\";s:7:\"dGuiche\";s:1:\"1\";s:7:\"vGuiche\";s:1:\"1\";s:13:\"validarGuiche\";s:1:\"1\";s:12:\"aConferencia\";s:1:\"1\";s:12:\"eConferencia\";s:1:\"1\";s:12:\"dConferencia\";s:1:\"1\";s:12:\"vConferencia\";s:1:\"1\";s:18:\"validarConferencia\";s:1:\"1\";s:5:\"aTipo\";s:1:\"1\";s:5:\"eTipo\";s:1:\"1\";s:5:\"dTipo\";s:1:\"1\";s:5:\"vTipo\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:11:\"aDataInicio\";s:1:\"1\";s:11:\"eDataInicio\";s:1:\"1\";s:11:\"dDataInicio\";s:1:\"1\";s:11:\"vDataInicio\";s:1:\"1\";s:7:\"aAcerto\";s:1:\"1\";s:7:\"eAcerto\";s:1:\"1\";s:7:\"dAcerto\";s:1:\"1\";s:7:\"vAcerto\";s:1:\"1\";s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:17:\"aSaidaCombustivel\";s:1:\"1\";s:17:\"eSaidaCombustivel\";s:1:\"1\";s:17:\"dSaidaCombustivel\";s:1:\"1\";s:17:\"vSaidaCombustivel\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:11:\"dashConsumo\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"dashPortaria\";s:1:\"1\";s:6:\"dashOs\";s:1:\"1\";s:17:\"rFluxoCombustivel\";s:1:\"1\";s:19:\"rEntradaCombustivel\";s:1:\"1\";s:21:\"rQuilometragemVeiculo\";s:1:\"1\";s:13:\"rConsumoGeral\";s:1:\"1\";s:14:\"rConsumoMensal\";s:1:\"1\";s:15:\"rConsumoVeiculo\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:18:\"rManutencaoVeiculo\";s:1:\"1\";s:21:\"rManutencaoFornecedor\";s:1:\"1\";s:17:\"rManutencaoMensal\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:10:\"rOsVeiculo\";s:1:\"1\";s:14:\"rOsFuncionario\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";}','2019-12-23'),(146,40,11,'a:121:{s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";N;s:17:\"rMovimentoEstoque\";N;s:6:\"rVenda\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";N;s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";N;s:6:\"dFiado\";N;s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";N;s:17:\"eCategoriaProduto\";N;s:17:\"dCategoriaProduto\";N;s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";N;s:15:\"eEstoqueProduto\";N;s:15:\"dEstoqueProduto\";N;s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";N;s:15:\"eTiposPagamento\";N;s:15:\"dTiposPagamento\";N;s:15:\"vTiposPagamento\";N;s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2020-02-12'),(147,41,11,'a:121:{s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";N;s:17:\"rMovimentoEstoque\";N;s:6:\"rVenda\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";N;s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";N;s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";N;s:6:\"dFiado\";N;s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";N;s:17:\"eCategoriaProduto\";N;s:17:\"dCategoriaProduto\";N;s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";N;s:15:\"eEstoqueProduto\";N;s:15:\"dEstoqueProduto\";N;s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";N;s:15:\"eTiposPagamento\";N;s:15:\"dTiposPagamento\";N;s:15:\"vTiposPagamento\";N;s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2020-02-12'),(148,42,11,'a:121:{s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";N;s:5:\"eNota\";N;s:5:\"dNota\";N;s:5:\"vNota\";N;s:11:\"aTiposConta\";N;s:11:\"eTiposConta\";N;s:11:\"dTiposConta\";N;s:11:\"vTiposConta\";N;s:12:\"aContasPagar\";N;s:12:\"eContasPagar\";N;s:12:\"dContasPagar\";N;s:12:\"vContasPagar\";N;s:14:\"aContasReceber\";N;s:14:\"eContasReceber\";N;s:14:\"dContasReceber\";N;s:14:\"vContasReceber\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";N;s:12:\"rContasPagar\";N;s:11:\"rFluxoCaixa\";N;s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";N;s:7:\"rFerias\";N;s:10:\"rUniformes\";N;s:8:\"rEstoque\";N;s:17:\"rMovimentoEstoque\";N;s:6:\"rVenda\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";N;s:11:\"eFornecedor\";N;s:11:\"dFornecedor\";N;s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";N;s:12:\"eColaborador\";N;s:12:\"dColaborador\";N;s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";N;s:6:\"dFiado\";N;s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";N;s:17:\"eCategoriaProduto\";N;s:17:\"dCategoriaProduto\";N;s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";N;s:15:\"eEstoqueProduto\";N;s:15:\"dEstoqueProduto\";N;s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";N;s:15:\"eTiposPagamento\";N;s:15:\"dTiposPagamento\";N;s:15:\"vTiposPagamento\";N;s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2020-02-13'),(149,43,4,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2020-08-10'),(150,1,13,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2020-08-10'),(151,43,13,'a:122:{s:6:\"aSetor\";N;s:6:\"eSetor\";N;s:6:\"dSetor\";N;s:6:\"vSetor\";N;s:6:\"aCargo\";N;s:6:\"eCargo\";N;s:6:\"dCargo\";N;s:6:\"vCargo\";N;s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";N;s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";N;s:7:\"eFerias\";N;s:7:\"dFerias\";N;s:7:\"vFerias\";N;}','2020-08-10'),(152,44,4,'a:122:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:6:\"aSaldo\";s:1:\"1\";s:6:\"eSaldo\";s:1:\"1\";s:6:\"dSaldo\";s:1:\"1\";s:6:\"vSaldo\";s:1:\"1\";s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2020-08-10'),(153,44,13,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";s:1:\"1\";s:8:\"eFeriado\";s:1:\"1\";s:8:\"dFeriado\";s:1:\"1\";s:8:\"vFeriado\";s:1:\"1\";s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2020-08-10'),(156,46,4,'a:122:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";N;s:8:\"eDespesa\";N;s:8:\"dDespesa\";N;s:8:\"vDespesa\";N;s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";N;s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";N;s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";N;s:7:\"eFerias\";N;s:7:\"dFerias\";N;s:7:\"vFerias\";N;}','2020-08-25'),(157,46,13,'a:122:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:9:\"aUniforme\";N;s:9:\"eUniforme\";N;s:9:\"dUniforme\";N;s:9:\"vUniforme\";N;s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";N;s:8:\"eDespesa\";N;s:8:\"dDespesa\";N;s:8:\"vDespesa\";N;s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";N;s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";N;s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";N;s:7:\"eFerias\";N;s:7:\"dFerias\";N;s:7:\"vFerias\";N;}','2020-08-25'),(158,47,4,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2020-08-25'),(159,47,13,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";s:1:\"1\";s:8:\"ePeriodo\";s:1:\"1\";s:8:\"dPeriodo\";s:1:\"1\";s:8:\"vPeriodo\";s:1:\"1\";s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";s:1:\"1\";s:7:\"eTarefa\";s:1:\"1\";s:7:\"dTarefa\";s:1:\"1\";s:7:\"vTarefa\";s:1:\"1\";s:12:\"aGrupoEscala\";s:1:\"1\";s:12:\"eGrupoEscala\";s:1:\"1\";s:12:\"dGrupoEscala\";s:1:\"1\";s:12:\"vGrupoEscala\";s:1:\"1\";s:7:\"aEscala\";s:1:\"1\";s:7:\"eEscala\";s:1:\"1\";s:7:\"dEscala\";s:1:\"1\";s:7:\"vEscala\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:8:\"aEmpresa\";s:1:\"1\";s:8:\"eEmpresa\";s:1:\"1\";s:8:\"dEmpresa\";s:1:\"1\";s:8:\"vEmpresa\";s:1:\"1\";s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aDespesa\";s:1:\"1\";s:8:\"eDespesa\";s:1:\"1\";s:8:\"dDespesa\";s:1:\"1\";s:8:\"vDespesa\";s:1:\"1\";s:6:\"eFiado\";s:1:\"1\";s:6:\"dFiado\";s:1:\"1\";s:6:\"vFiado\";s:1:\"1\";s:15:\"vPrestacaoConta\";s:1:\"1\";s:21:\"validarPrestacaoConta\";s:1:\"1\";s:15:\"dPrestacaoConta\";s:1:\"1\";s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";s:1:\"1\";s:13:\"eProdutoSaida\";s:1:\"1\";s:13:\"dProdutoSaida\";s:1:\"1\";s:13:\"vProdutoSaida\";s:1:\"1\";s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";s:1:\"1\";s:7:\"eFerias\";s:1:\"1\";s:7:\"dFerias\";s:1:\"1\";s:7:\"vFerias\";s:1:\"1\";}','2020-08-25'),(160,48,4,'a:122:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";N;s:6:\"rVenda\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aDespesa\";N;s:8:\"eDespesa\";N;s:8:\"dDespesa\";N;s:8:\"vDespesa\";N;s:6:\"eFiado\";N;s:6:\"dFiado\";N;s:6:\"vFiado\";N;s:15:\"vPrestacaoConta\";N;s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";N;s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";N;s:7:\"eFerias\";N;s:7:\"dFerias\";N;s:7:\"vFerias\";N;}','2020-09-05'),(161,48,13,'a:122:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:6:\"aSaldo\";N;s:6:\"eSaldo\";N;s:6:\"dSaldo\";N;s:6:\"vSaldo\";N;s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:20:\"vMovimentacaoEstoque\";N;s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";s:1:\"1\";s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";s:1:\"1\";s:8:\"rEstoque\";s:1:\"1\";s:17:\"rMovimentoEstoque\";N;s:6:\"rVenda\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aDespesa\";N;s:8:\"eDespesa\";N;s:8:\"dDespesa\";N;s:8:\"vDespesa\";N;s:6:\"eFiado\";N;s:6:\"dFiado\";N;s:6:\"vFiado\";N;s:15:\"vPrestacaoConta\";N;s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";N;s:13:\"eProdutoVenda\";N;s:13:\"dProdutoVenda\";N;s:13:\"vProdutoVenda\";N;s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";s:1:\"1\";s:15:\"eEstoqueProduto\";s:1:\"1\";s:15:\"dEstoqueProduto\";s:1:\"1\";s:15:\"vEstoqueProduto\";s:1:\"1\";s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";N;s:7:\"eFerias\";N;s:7:\"dFerias\";N;s:7:\"vFerias\";N;}','2020-09-05'),(162,49,13,'a:121:{s:6:\"aSetor\";s:1:\"1\";s:6:\"eSetor\";s:1:\"1\";s:6:\"dSetor\";s:1:\"1\";s:6:\"vSetor\";s:1:\"1\";s:6:\"aCargo\";s:1:\"1\";s:6:\"eCargo\";s:1:\"1\";s:6:\"dCargo\";s:1:\"1\";s:6:\"vCargo\";s:1:\"1\";s:8:\"aPeriodo\";N;s:8:\"ePeriodo\";N;s:8:\"dPeriodo\";N;s:8:\"vPeriodo\";N;s:8:\"aFeriado\";N;s:8:\"eFeriado\";N;s:8:\"dFeriado\";N;s:8:\"vFeriado\";N;s:7:\"aTarefa\";N;s:7:\"eTarefa\";N;s:7:\"dTarefa\";N;s:7:\"vTarefa\";N;s:12:\"aGrupoEscala\";N;s:12:\"eGrupoEscala\";N;s:12:\"dGrupoEscala\";N;s:12:\"vGrupoEscala\";N;s:7:\"aEscala\";N;s:7:\"eEscala\";N;s:7:\"dEscala\";N;s:7:\"vEscala\";N;s:8:\"aArquivo\";N;s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";N;s:5:\"aNota\";s:1:\"1\";s:5:\"eNota\";s:1:\"1\";s:5:\"dNota\";s:1:\"1\";s:5:\"vNota\";s:1:\"1\";s:11:\"aTiposConta\";s:1:\"1\";s:11:\"eTiposConta\";s:1:\"1\";s:11:\"dTiposConta\";s:1:\"1\";s:11:\"vTiposConta\";s:1:\"1\";s:12:\"aContasPagar\";s:1:\"1\";s:12:\"eContasPagar\";s:1:\"1\";s:12:\"dContasPagar\";s:1:\"1\";s:12:\"vContasPagar\";s:1:\"1\";s:14:\"aContasReceber\";s:1:\"1\";s:14:\"eContasReceber\";s:1:\"1\";s:14:\"dContasReceber\";s:1:\"1\";s:14:\"vContasReceber\";s:1:\"1\";s:9:\"aUniforme\";s:1:\"1\";s:9:\"eUniforme\";s:1:\"1\";s:9:\"dUniforme\";s:1:\"1\";s:9:\"vUniforme\";s:1:\"1\";s:8:\"cUsuario\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:6:\"cEmail\";N;s:10:\"cAuditoria\";N;s:14:\"dashFinanceiro\";s:1:\"1\";s:12:\"rContasPagar\";s:1:\"1\";s:11:\"rFluxoCaixa\";s:1:\"1\";s:13:\"rCustoEmpresa\";N;s:11:\"rCustoSetor\";s:1:\"1\";s:7:\"rFerias\";s:1:\"1\";s:10:\"rUniformes\";N;s:8:\"rEstoque\";N;s:17:\"rMovimentoEstoque\";N;s:6:\"rVenda\";N;s:8:\"aEmpresa\";N;s:8:\"eEmpresa\";N;s:8:\"dEmpresa\";N;s:8:\"vEmpresa\";N;s:11:\"aFornecedor\";s:1:\"1\";s:11:\"eFornecedor\";s:1:\"1\";s:11:\"dFornecedor\";s:1:\"1\";s:11:\"vFornecedor\";s:1:\"1\";s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:12:\"aColaborador\";s:1:\"1\";s:12:\"eColaborador\";s:1:\"1\";s:12:\"dColaborador\";s:1:\"1\";s:12:\"vColaborador\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aDespesa\";N;s:8:\"eDespesa\";N;s:8:\"dDespesa\";N;s:8:\"vDespesa\";N;s:6:\"eFiado\";N;s:6:\"dFiado\";N;s:6:\"vFiado\";N;s:15:\"vPrestacaoConta\";N;s:21:\"validarPrestacaoConta\";N;s:15:\"dPrestacaoConta\";N;s:13:\"aProdutoVenda\";s:1:\"1\";s:13:\"eProdutoVenda\";s:1:\"1\";s:13:\"dProdutoVenda\";s:1:\"1\";s:13:\"vProdutoVenda\";s:1:\"1\";s:17:\"aCategoriaProduto\";s:1:\"1\";s:17:\"eCategoriaProduto\";s:1:\"1\";s:17:\"dCategoriaProduto\";s:1:\"1\";s:17:\"vCategoriaProduto\";s:1:\"1\";s:15:\"aEstoqueProduto\";N;s:15:\"eEstoqueProduto\";N;s:15:\"dEstoqueProduto\";N;s:15:\"vEstoqueProduto\";N;s:13:\"aProdutoSaida\";N;s:13:\"eProdutoSaida\";N;s:13:\"dProdutoSaida\";N;s:13:\"vProdutoSaida\";N;s:15:\"aTiposPagamento\";s:1:\"1\";s:15:\"eTiposPagamento\";s:1:\"1\";s:15:\"dTiposPagamento\";s:1:\"1\";s:15:\"vTiposPagamento\";s:1:\"1\";s:7:\"aFerias\";N;s:7:\"eFerias\";N;s:7:\"dFerias\";N;s:7:\"vFerias\";N;}','2020-12-15');
/*!40000 ALTER TABLE `permissoesnova` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestacao_contas`
--

DROP TABLE IF EXISTS `prestacao_contas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestacao_contas` (
  `idPrestacaoConta` int(11) NOT NULL AUTO_INCREMENT,
  `valorTotalSemFiado` decimal(18,2) NOT NULL,
  `valorTotalComFiado` decimal(18,2) NOT NULL,
  `totalDinheiro` decimal(18,2) NOT NULL,
  `totalCartaoCredito` decimal(18,2) NOT NULL,
  `totalCartaoDebito` decimal(18,2) NOT NULL,
  `totalFiadoCliente` decimal(18,2) NOT NULL DEFAULT '0.00',
  `totalFiadoColaborador` decimal(18,2) NOT NULL DEFAULT '0.00',
  `totalDespesa` decimal(10,2) DEFAULT NULL,
  `situacao` char(1) NOT NULL DEFAULT 'A',
  `usuario_id` int(11) NOT NULL,
  `usuario_validacao_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) NOT NULL,
  `dataValidacao` datetime DEFAULT NULL,
  `dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPrestacaoConta`),
  KEY `idx_prestacao_conta_usuario` (`usuario_id`) USING BTREE,
  KEY `fk_prestacao_conta_empresa` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestacao_contas`
--

LOCK TABLES `prestacao_contas` WRITE;
/*!40000 ALTER TABLE `prestacao_contas` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestacao_contas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestacao_contas_anexos`
--

DROP TABLE IF EXISTS `prestacao_contas_anexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestacao_contas_anexos` (
  `idAnexo` int(11) NOT NULL AUTO_INCREMENT,
  `prestacao_id` int(11) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `file` varchar(300) NOT NULL,
  `path` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idAnexo`),
  KEY `fk_prestacao_conta_anexo` (`prestacao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestacao_contas_anexos`
--

LOCK TABLES `prestacao_contas_anexos` WRITE;
/*!40000 ALTER TABLE `prestacao_contas_anexos` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestacao_contas_anexos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestacao_contas_despesas`
--

DROP TABLE IF EXISTS `prestacao_contas_despesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestacao_contas_despesas` (
  `idPrestacaoDespesa` int(11) NOT NULL AUTO_INCREMENT,
  `prestacao_id` int(11) NOT NULL,
  `despesa_id` int(11) NOT NULL,
  `dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPrestacaoDespesa`),
  KEY `idx_prestacao_conta_despesa_prestacao` (`prestacao_id`),
  KEY `fk_prestacao_conta_despesa_venda` (`despesa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestacao_contas_despesas`
--

LOCK TABLES `prestacao_contas_despesas` WRITE;
/*!40000 ALTER TABLE `prestacao_contas_despesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestacao_contas_despesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestacao_contas_vendas`
--

DROP TABLE IF EXISTS `prestacao_contas_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestacao_contas_vendas` (
  `idPrestacaoVenda` int(11) NOT NULL AUTO_INCREMENT,
  `prestacao_id` int(11) NOT NULL,
  `venda_id` int(11) NOT NULL,
  `dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPrestacaoVenda`),
  KEY `idx_prestacao_conta_venda_prestacao` (`prestacao_id`),
  KEY `fk_prestacao_conta_venda_venda` (`venda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestacao_contas_vendas`
--

LOCK TABLES `prestacao_contas_vendas` WRITE;
/*!40000 ALTER TABLE `prestacao_contas_vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestacao_contas_vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_categoria`
--

DROP TABLE IF EXISTS `produtos_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `situacao` char(2) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_categoria`
--

LOCK TABLES `produtos_categoria` WRITE;
/*!40000 ALTER TABLE `produtos_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_estoque`
--

DROP TABLE IF EXISTS `produtos_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_estoque` (
  `idEstoque` int(11) NOT NULL AUTO_INCREMENT,
  `fornecedor_id` int(11) DEFAULT NULL,
  `produto_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `nota_id` int(11) DEFAULT NULL,
  `quantidade` int(15) NOT NULL,
  `precoCusto` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) DEFAULT NULL,
  `dataValidade` date DEFAULT NULL,
  `dataEntrada` date NOT NULL,
  `file` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `path` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `url` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `tipo` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `tamanho` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idEstoque`),
  KEY `fk_estoque_produto_venda` (`produto_id`) USING BTREE,
  KEY `fk_produtos_estoque_empresa` (`empresa_id`) USING BTREE,
  KEY `fk_produtos_estoque_fornecedor` (`fornecedor_id`) USING BTREE,
  KEY `fk_produtos_estoque_nota` (`nota_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_estoque`
--

LOCK TABLES `produtos_estoque` WRITE;
/*!40000 ALTER TABLE `produtos_estoque` DISABLE KEYS */;
INSERT INTO `produtos_estoque` VALUES (1,NULL,1,13,NULL,34,23.00,45.00,'2012-11-23','2020-08-27',NULL,NULL,NULL,NULL,NULL),(2,NULL,1,13,1,100,5.00,0.00,NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL),(3,NULL,3,13,5,50,50.00,0.00,NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `produtos_estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_guiches`
--

DROP TABLE IF EXISTS `produtos_guiches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_guiches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guiche_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produto_guiche_guiche` (`guiche_id`),
  KEY `fk_produto_guiche_produto` (`produto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_guiches`
--

LOCK TABLES `produtos_guiches` WRITE;
/*!40000 ALTER TABLE `produtos_guiches` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_guiches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_movimentacao_estoque`
--

DROP TABLE IF EXISTS `produtos_movimentacao_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_movimentacao_estoque` (
  `idMovimentacao` int(11) NOT NULL AUTO_INCREMENT,
  `estoque_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `tipo` char(2) COLLATE latin1_general_ci NOT NULL,
  `metodo` char(2) COLLATE latin1_general_ci NOT NULL,
  `quantidade` int(10) NOT NULL,
  `saldo_atual` int(11) DEFAULT NULL,
  `nota_id` int(11) DEFAULT NULL,
  `venda_id` int(11) DEFAULT NULL,
  `saida_id` int(11) DEFAULT NULL,
  `dataMovimentacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idMovimentacao`),
  KEY `fk_produtos_movimentacao_estoque` (`estoque_id`) USING BTREE,
  KEY `fk_produtos_movimentacao_usuario` (`usuario_id`) USING BTREE,
  KEY `fk_produtos_movimentacao_venda` (`venda_id`) USING BTREE,
  KEY `fk_produtos_movimentacao_nota` (`nota_id`) USING BTREE,
  KEY `fk_produtos_movimentacao_saida` (`saida_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_movimentacao_estoque`
--

LOCK TABLES `produtos_movimentacao_estoque` WRITE;
/*!40000 ALTER TABLE `produtos_movimentacao_estoque` DISABLE KEYS */;
INSERT INTO `produtos_movimentacao_estoque` VALUES (1,1,1,'E','M',34,34,NULL,NULL,NULL,'2020-08-27 21:58:32'),(2,2,47,'E','N',100,NULL,1,NULL,NULL,'2020-09-05 10:54:35'),(3,3,49,'E','N',50,NULL,5,NULL,NULL,'2020-12-15 10:15:10');
/*!40000 ALTER TABLE `produtos_movimentacao_estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_saida`
--

DROP TABLE IF EXISTS `produtos_saida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_saida` (
  `idSaida` int(11) NOT NULL AUTO_INCREMENT,
  `produto_id` int(11) DEFAULT NULL,
  `estoque_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `observacao` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `dataSaida` date DEFAULT NULL,
  PRIMARY KEY (`idSaida`),
  KEY `fk_saida_produto` (`produto_id`) USING BTREE,
  KEY `fk_saida_empresa` (`empresa_id`) USING BTREE,
  KEY `fk_saida_estoque` (`estoque_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_saida`
--

LOCK TABLES `produtos_saida` WRITE;
/*!40000 ALTER TABLE `produtos_saida` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_saida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_venda`
--

DROP TABLE IF EXISTS `produtos_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_venda` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `cod_barras` varchar(100) DEFAULT NULL,
  `estoqueMinimo` int(55) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `situacao` char(2) DEFAULT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `fk_produto_categoria` (`categoria_id`) USING BTREE,
  KEY `fk_produto_empresa` (`empresa_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_venda`
--

LOCK TABLES `produtos_venda` WRITE;
/*!40000 ALTER TABLE `produtos_venda` DISABLE KEYS */;
INSERT INTO `produtos_venda` VALUES (1,'PRODUTO TESTE','2105453512290',0,1,13,'2020-08-27','1'),(2,'PRODUTO TESTE 02','3389377605475',0,1,13,'2020-12-15','1'),(3,'BARRIGA DE PORCO','0',0,1,13,'2020-12-15','1');
/*!40000 ALTER TABLE `produtos_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setores`
--

DROP TABLE IF EXISTS `setores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setores` (
  `idSetores` int(11) NOT NULL AUTO_INCREMENT,
  `nomeSetor` varchar(255) NOT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idSetores`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setores`
--

LOCK TABLES `setores` WRITE;
/*!40000 ALTER TABLE `setores` DISABLE KEYS */;
/*!40000 ALTER TABLE `setores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarefas`
--

DROP TABLE IF EXISTS `tarefas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarefas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigoTarefa` int(11) NOT NULL,
  `descricao` mediumtext,
  `horasTrabalhadas` time NOT NULL,
  `intraJornada` time NOT NULL,
  `horaNoturna` time NOT NULL,
  `adicionalNoturno` time NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFim` time NOT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `dataCadastro` date NOT NULL,
  `situacao` tinyint(1) NOT NULL,
  `motorista_id` int(11) DEFAULT NULL,
  `motorista_folguista_id` int(11) DEFAULT NULL,
  `cobrador_id` int(11) DEFAULT NULL,
  `cobrador_folguista_id` int(11) DEFAULT NULL,
  `veiculo_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `diasSemana` text,
  `fixa` tinyint(1) NOT NULL,
  `diaria` tinyint(1) NOT NULL,
  `cor` varchar(12) DEFAULT NULL,
  `tipoTarefa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tarefa_empresa` (`empresa_id`) USING BTREE,
  KEY `fk_tarefa_motorista` (`motorista_id`),
  KEY `fk_tarefa_motorista_folguista` (`motorista_folguista_id`),
  KEY `fk_tarefa_cobrador` (`cobrador_id`),
  KEY `fk_tarefa_cobrador_folguista` (`cobrador_folguista_id`),
  KEY `fk_tarefa_veiculo` (`veiculo_id`),
  KEY `fk_tarefa_cliente` (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefas`
--

LOCK TABLES `tarefas` WRITE;
/*!40000 ALTER TABLE `tarefas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarefas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarefas_grupos_escalas`
--

DROP TABLE IF EXISTS `tarefas_grupos_escalas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarefas_grupos_escalas` (
  `idTarefa` int(11) NOT NULL AUTO_INCREMENT,
  `grupo_id` int(11) NOT NULL,
  `tarefa_id` int(11) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idTarefa`),
  KEY `fk_tarefa_grupo_escala_grupo` (`grupo_id`) USING BTREE,
  KEY `fk_tarefa_grupo_escala_tarefa` (`tarefa_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefas_grupos_escalas`
--

LOCK TABLES `tarefas_grupos_escalas` WRITE;
/*!40000 ALTER TABLE `tarefas_grupos_escalas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarefas_grupos_escalas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos`
--

DROP TABLE IF EXISTS `tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `situacao` tinyint(2) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idTipo`),
  KEY `fk_tipo_empresa` (`empresa_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos`
--

LOCK TABLES `tipos` WRITE;
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_conta`
--

DROP TABLE IF EXISTS `tipos_conta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_conta` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_conta`
--

LOCK TABLES `tipos_conta` WRITE;
/*!40000 ALTER TABLE `tipos_conta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_conta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_pagamento`
--

DROP TABLE IF EXISTS `tipos_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_pagamento` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_pagamento`
--

LOCK TABLES `tipos_pagamento` WRITE;
/*!40000 ALTER TABLE `tipos_pagamento` DISABLE KEYS */;
INSERT INTO `tipos_pagamento` VALUES (1,'DINHEIRO',1,'2020-12-15'),(2,'BOLETO',1,'2020-12-15'),(3,'CARTÃO - CRÉDITO',1,'2020-12-15'),(4,'CARTÃO - DÉBITO',1,'2020-12-15'),(5,'TRANSFERÊNCIA BANCÁRIA',1,'2020-12-15');
/*!40000 ALTER TABLE `tipos_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniformes`
--

DROP TABLE IF EXISTS `uniformes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniformes` (
  `idUniforme` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_id` int(11) DEFAULT NULL,
  `tamanho_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `quantidade` int(5) DEFAULT NULL,
  `dataCadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`idUniforme`),
  KEY `fk_uniforme_tipo` (`tipo_id`) USING BTREE,
  KEY `fk_uniforme_tamanho` (`tamanho_id`) USING BTREE,
  KEY `fk_uniforme_empresa` (`empresa_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniformes`
--

LOCK TABLES `uniformes` WRITE;
/*!40000 ALTER TABLE `uniformes` DISABLE KEYS */;
/*!40000 ALTER TABLE `uniformes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniformes_movimentacao`
--

DROP TABLE IF EXISTS `uniformes_movimentacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniformes_movimentacao` (
  `idMovimentacao` int(11) NOT NULL AUTO_INCREMENT,
  `uniforme_id` int(11) NOT NULL,
  `colaborador_id` int(11) DEFAULT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  `tamanho_id` int(11) DEFAULT NULL,
  `quantidade` int(10) NOT NULL,
  `tipo_movimentacao` varchar(10) NOT NULL,
  `data_retirada` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`idMovimentacao`),
  KEY `uniforme_id` (`uniforme_id`),
  KEY `colaborador_id` (`colaborador_id`),
  KEY `tipo_id` (`tipo_id`),
  KEY `tamanho_id` (`tamanho_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniformes_movimentacao`
--

LOCK TABLES `uniformes_movimentacao` WRITE;
/*!40000 ALTER TABLE `uniformes_movimentacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `uniformes_movimentacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniformes_tamanhos`
--

DROP TABLE IF EXISTS `uniformes_tamanhos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniformes_tamanhos` (
  `idTamanho` int(11) NOT NULL AUTO_INCREMENT,
  `tamanho` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idTamanho`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniformes_tamanhos`
--

LOCK TABLES `uniformes_tamanhos` WRITE;
/*!40000 ALTER TABLE `uniformes_tamanhos` DISABLE KEYS */;
/*!40000 ALTER TABLE `uniformes_tamanhos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniformes_tipos`
--

DROP TABLE IF EXISTS `uniformes_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniformes_tipos` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniformes_tipos`
--

LOCK TABLES `uniformes_tipos` WRITE;
/*!40000 ALTER TABLE `uniformes_tipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `uniformes_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `dataNasc` date DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `login` varchar(25) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idUsuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','1990-01-01','00000000000','admin@admin.com','admin','$2y$10$SEvyPA.rLboeGud1UcS6cO5TuGeUCYJkP5Pcci1VQgiipnM.0Y0Em',1,'2013-11-22'),(45,'Z.INATIVO','1987-09-18','00000000000','teste@teste.com','usuario.teste','$2y$10$eM3yaoPZIXw0cofJrM3YPeMRc6whU3GYFKx7UJ5QdJsZdKPW7leDa',0,'2020-08-25'),(46,'FIRMINO SANCHES','1970-01-01','00000000000','a@a.com.br','firmino.sanches','$2y$10$y8tPXqotNyYfoBGgMrNyceCTLgoIX7pa4oT94N2LQsRP9IALNsLPW',1,'2020-08-25'),(47,'MAURO MIRANDA','1989-04-20','36919701847','mauro_miranda_@hotmail.com','mauro.miranda','$2y$10$S736ZEN3Lg6d3jZOPP22mO7scAyMXer4TJbkGtZK2JpRvE7b..VW2',1,'2020-08-25'),(48,'SALUA SCHOLZ SANCHES','1991-01-25','40617709858','saluasanches@hotmail.com','salua.sanches','$2y$10$dAbXw0Ca6kcXtbxW252nguzxdKMoKHYyNxzg0o.k/C.QpjIBcn.8W',1,'2020-09-05'),(49,'TAIANE CATARINE ZACARIOTO','1991-09-17','39014732899','defumariaraffinatoitapira@gmail.com','taiane.zacarioto','$2y$10$unmqi6fg64JfrZOB.Sv/zOCNW2fASGBofyUJs4R08bwbsLqBK0SXq',1,'2020-12-15');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas` (
  `idVenda` int(11) NOT NULL AUTO_INCREMENT,
  `dataVenda` datetime NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `formaPagamento` char(4) COLLATE latin1_general_ci DEFAULT NULL,
  `valorTotal` decimal(18,2) NOT NULL,
  `valorPago` decimal(18,2) DEFAULT NULL,
  `dinheiro` decimal(18,2) NOT NULL,
  `cartao` decimal(18,2) NOT NULL,
  `troco` decimal(18,2) NOT NULL,
  `fiado` tinyint(1) NOT NULL,
  `situacao` char(1) COLLATE latin1_general_ci NOT NULL,
  `empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`idVenda`),
  KEY `idx_venda_usuario` (`usuario_id`) USING BTREE,
  KEY `idx_venda_empresa` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_fiado`
--

DROP TABLE IF EXISTS `vendas_fiado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_fiado` (
  `idVendaFiado` int(11) NOT NULL AUTO_INCREMENT,
  `venda_id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `colaborador_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) NOT NULL,
  `dataVencimento` date DEFAULT NULL,
  `situacao` char(1) COLLATE latin1_general_ci NOT NULL,
  `dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idVendaFiado`),
  KEY `idx_venda_fiado_venda` (`venda_id`),
  KEY `idx_venda_fiado_cliente` (`cliente_id`),
  KEY `idx_venda_fiado_colaborador` (`colaborador_id`),
  KEY `fk_venda_fiado_empresa` (`empresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_fiado`
--

LOCK TABLES `vendas_fiado` WRITE;
/*!40000 ALTER TABLE `vendas_fiado` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas_fiado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_fiado_pagamentos`
--

DROP TABLE IF EXISTS `vendas_fiado_pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_fiado_pagamentos` (
  `idPagamento` int(11) NOT NULL AUTO_INCREMENT,
  `venda_fiado_id` int(11) NOT NULL DEFAULT '0',
  `valor` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dataPagamento` date NOT NULL,
  `observacao` varchar(250) DEFAULT '0',
  `dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPagamento`),
  KEY `fk_fiado_pagamento_fiado` (`venda_fiado_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_fiado_pagamentos`
--

LOCK TABLES `vendas_fiado_pagamentos` WRITE;
/*!40000 ALTER TABLE `vendas_fiado_pagamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas_fiado_pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_pagamentos`
--

DROP TABLE IF EXISTS `vendas_pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_pagamentos` (
  `idVendaPagamento` int(11) NOT NULL AUTO_INCREMENT,
  `forma_pagamento` char(2) COLLATE latin1_general_ci NOT NULL,
  `valor_pago` decimal(10,2) NOT NULL,
  `valor_pagamento` decimal(10,2) DEFAULT NULL,
  `troco` decimal(10,2) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `colaborador_id` int(11) DEFAULT NULL,
  `venda_id` int(11) NOT NULL,
  `data_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idVendaPagamento`),
  KEY `fk_pagamento_colaborador_id` (`colaborador_id`),
  KEY `fk_pagamento_cliente_id` (`cliente_id`),
  KEY `fk_pagamento_venda_id` (`venda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_pagamentos`
--

LOCK TABLES `vendas_pagamentos` WRITE;
/*!40000 ALTER TABLE `vendas_pagamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas_pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_produtos`
--

DROP TABLE IF EXISTS `vendas_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_produtos` (
  `idVendaProduto` int(11) NOT NULL AUTO_INCREMENT,
  `venda_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `estoque_id` int(11) NOT NULL,
  `valor` decimal(18,2) NOT NULL,
  `dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idVendaProduto`),
  KEY `idx_venda_produto_venda` (`venda_id`),
  KEY `idx_venda_produto_produto` (`produto_id`) USING BTREE,
  KEY `idx_venda_produto_estoque` (`estoque_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_produtos`
--

LOCK TABLES `vendas_produtos` WRITE;
/*!40000 ALTER TABLE `vendas_produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas_produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-08  9:29:25
