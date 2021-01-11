-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: empresacinema
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `codFuncionario` int NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `dataAdmissao` datetime DEFAULT NULL,
  `salario` decimal(6,2) DEFAULT NULL,
  `comissao` decimal(6,2) DEFAULT NULL,
  `RG` varchar(250) DEFAULT NULL,
  `CPF` varchar(250) DEFAULT NULL,
  `CNH` varchar(150) DEFAULT NULL,
  `cargo` varchar(250) DEFAULT NULL,
  `telefone` varchar(250) DEFAULT NULL,
  `celular` varchar(250) DEFAULT NULL,
  `codTerceirizado` int DEFAULT NULL,
  `empregadora` varchar(250) DEFAULT NULL,
  `CNPJ` varchar(250) DEFAULT NULL,
  `contato` varchar(250) DEFAULT NULL,
  `codFreela` int DEFAULT NULL,
  `RS` varchar(250) DEFAULT NULL,
  `Obs` varchar(250) DEFAULT NULL,
  `codEfetivo` int DEFAULT NULL,
  `PIS` varchar(250) DEFAULT NULL,
  `codConta` int DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `agencia` int DEFAULT NULL,
  `digito` int DEFAULT NULL,
  PRIMARY KEY (`codFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Antônio Dias','2020-02-02 07:00:00',1200.00,10.00,'8766899','87698745676','B','Segurança','99878654','1213123',1,'Global Securit','123123322345','98767890',1,'Credo em cruz','N/A',1,'09328409238409',1,123,123,1),(2,'Marcos Antônio','2020-02-02 07:00:00',1200.00,10.00,'8766899','87698745676','B','Segurança','99878654','1123213',1,'Global Securit','123123322345','98767890',1,'Credo em cruz','N/A',1,'09328409238409',1,123,123,1),(3,'Eduardo Santos','2020-02-02 07:00:00',1200.00,10.00,'8766899','87698745676','B','Segurança','99878654','123123',1,'Global Securit','123123322345','98767890',1,'Credo em cruz','N/A',1,'09328409238409',1,123,123,1),(4,'Elisa Andrade','2020-02-02 07:00:00',1200.00,10.00,'8766899','87698745676','B','Segurança','99878654','123132',1,'Global Securit','123123322345','98767890',1,'Credo em cruz','N/A',1,'09328409238409',1,123,123,1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-02 12:17:44
