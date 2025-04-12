-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: caio_silva_join
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `branca`
--

DROP TABLE IF EXISTS `branca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branca` (
  `peca` varchar(20) DEFAULT NULL,
  `qtde` int DEFAULT NULL,
  `material` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branca`
--

LOCK TABLES `branca` WRITE;
/*!40000 ALTER TABLE `branca` DISABLE KEYS */;
INSERT INTO `branca` VALUES ('Rei',502,'carvalho'),('Rainha',398,'carvalho'),('torre',1020,'carvalho'),('Bispo',985,'carvalho'),('Cavaleiro',950,'carvalho'),('Peão',431,'carvalho'),('Rei',502,'carvalho'),('Rainha',398,'carvalho'),('torre',1020,'carvalho'),('Bispo',985,'carvalho'),('Cavaleiro',950,'carvalho'),('Peão',431,'carvalho');
/*!40000 ALTER TABLE `branca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carros`
--

DROP TABLE IF EXISTS `carros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carros` (
  `marca` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `ano` int DEFAULT NULL,
  `cor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carros`
--

LOCK TABLES `carros` WRITE;
/*!40000 ALTER TABLE `carros` DISABLE KEYS */;
INSERT INTO `carros` VALUES ('VW','Fox',2005,'preto'),('VW','Fox',2008,'preto'),('Ford','Ecosport',2009,'verde'),('Ford','KA',2008,'prata'),('Fiat','Punto',2008,'branco'),('Fiat','Uno',2007,'preto'),('Fiat','Stilo',2004,'prata'),('Fiat','Uno',2005,'prata'),('Fiat','Stilo',2008,'verde'),('Fiat','Uno',2009,'branco'),('Peugeot','207',2010,'prata'),('Peugeot','207',2007,'azul'),('Chrysler','300 c',2008,'verde');
/*!40000 ALTER TABLE `carros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente1`
--

DROP TABLE IF EXISTS `cliente1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente1` (
  `cod_cliente` int NOT NULL,
  `nome_cliente` varchar(60) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` char(9) DEFAULT NULL,
  `cod_profissao` int DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`),
  KEY `cod_profissao` (`cod_profissao`),
  CONSTRAINT `cliente1_ibfk_1` FOREIGN KEY (`cod_profissao`) REFERENCES `profissao` (`cod_profissao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente1`
--

LOCK TABLES `cliente1` WRITE;
/*!40000 ALTER TABLE `cliente1` DISABLE KEYS */;
INSERT INTO `cliente1` VALUES (121,'Eberth Pará','2008-08-02','3456-7890',25),(122,'Daniel Metal','2008-12-30','3456-7890',26),(123,'Kaio Britania','2009-03-15','3456-7890',27),(124,'Caio Vinicius','2008-01-30','3456-7890',28);
/*!40000 ALTER TABLE `cliente1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `marca` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES ('VW','volkswagem'),('Ford','Ford'),('GM','General Motors'),('Fiat','Fiat'),('Renault','Renault'),('MB','Mercedes Bens');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `Num_pedido` int NOT NULL,
  `cod_cliente` int DEFAULT NULL,
  `tot_pedido` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Num_pedido`),
  KEY `cod_cliente` (`cod_cliente`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente1` (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (203,121,800.00),(204,122,900.00),(205,123,1200.00);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preta`
--

DROP TABLE IF EXISTS `preta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preta` (
  `peca` varchar(20) DEFAULT NULL,
  `qtde` int DEFAULT NULL,
  `material` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preta`
--

LOCK TABLES `preta` WRITE;
/*!40000 ALTER TABLE `preta` DISABLE KEYS */;
INSERT INTO `preta` VALUES ('Rei',502,'Ébano'),('Rainha',397,'Ébano'),('torre',1020,'Ébano'),('Bispo',985,'Ébano'),('Cavaleiro',950,'Ébano'),('Peão',453,'Ébano');
/*!40000 ALTER TABLE `preta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profissao`
--

DROP TABLE IF EXISTS `profissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profissao` (
  `cod_profissao` int NOT NULL,
  `nome_profissao` varchar(60) NOT NULL,
  PRIMARY KEY (`cod_profissao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profissao`
--

LOCK TABLES `profissao` WRITE;
/*!40000 ALTER TABLE `profissao` DISABLE KEYS */;
INSERT INTO `profissao` VALUES (25,'Programador '),(26,'Analista de BD'),(27,'Suporte'),(28,'Estagiario');
/*!40000 ALTER TABLE `profissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_a`
--

DROP TABLE IF EXISTS `tabela_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_a` (
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_a`
--

LOCK TABLES `tabela_a` WRITE;
/*!40000 ALTER TABLE `tabela_a` DISABLE KEYS */;
INSERT INTO `tabela_a` VALUES ('Fernanda'),('Josefa'),('Luiz'),('Fernando');
/*!40000 ALTER TABLE `tabela_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_b`
--

DROP TABLE IF EXISTS `tabela_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_b` (
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_b`
--

LOCK TABLES `tabela_b` WRITE;
/*!40000 ALTER TABLE `tabela_b` DISABLE KEYS */;
INSERT INTO `tabela_b` VALUES ('Carlos'),('Manoel'),('Luiz'),('Fernando');
/*!40000 ALTER TABLE `tabela_b` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-11 22:07:24
