-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: wsl2
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `competicion`
--

DROP TABLE IF EXISTS `competicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competicion` (
  `idCompeticion` varchar(30) NOT NULL,
  `NombreCompeticion` varchar(45) DEFAULT NULL,
  `LugarCompeticion` varchar(45) DEFAULT NULL,
  `NumeroParticipantes` varchar(45) DEFAULT NULL,
  `IdParticipante` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idCompeticion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competicion`
--

LOCK TABLES `competicion` WRITE;
/*!40000 ALTER TABLE `competicion` DISABLE KEYS */;
INSERT INTO `competicion` VALUES ('Men\'s CT 1','Quisilver Pro Gold Coast',NULL,'34',NULL),('Men\'s CT 10','MEO Rip Curl Pro Portugal',NULL,'34',NULL),('Men\'s CT 11','Billabong Pipe Masters',NULL,'34',NULL),('Men\'s CT 2','Rip Curl Pro Bells Beach',NULL,'34',NULL),('Men\'s CT 3','Margaret River Pro',NULL,'34',NULL),('Men\'s CT 4','Oi Rio Pro',NULL,'34',NULL),('Men\'s CT 5','Bali Pro Keramas',NULL,'34',NULL),('Men\'s CT 6','Corona Open J-Bay',NULL,'34',NULL),('Men\'s CT 7','Tahiti Pro Teahupoo',NULL,'34',NULL),('Men\'s CT 8','Surf Ranch Open',NULL,'34',NULL),('Men\'s CT 9','Quiksilver Pro France',NULL,'34',NULL);
/*!40000 ALTER TABLE `competicion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-14  8:41:20
