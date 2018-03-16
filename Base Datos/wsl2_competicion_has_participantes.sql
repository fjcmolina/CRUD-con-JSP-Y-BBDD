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
-- Table structure for table `competicion_has_participantes`
--

DROP TABLE IF EXISTS `competicion_has_participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competicion_has_participantes` (
  `Competicion_idCompeticion` varchar(30) NOT NULL,
  `Participantes_idParticipantes` varchar(30) NOT NULL,
  PRIMARY KEY (`Competicion_idCompeticion`,`Participantes_idParticipantes`),
  KEY `fk_Competicion_has_Participantes_Participantes1_idx` (`Participantes_idParticipantes`),
  KEY `fk_Competicion_has_Participantes_Competicion_idx` (`Competicion_idCompeticion`),
  CONSTRAINT `fk_Competicion_has_Participantes_Competicion` FOREIGN KEY (`Competicion_idCompeticion`) REFERENCES `competicion` (`idCompeticion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Competicion_has_Participantes_Participantes1` FOREIGN KEY (`Participantes_idParticipantes`) REFERENCES `participantes` (`idParticipantes`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competicion_has_participantes`
--

LOCK TABLES `competicion_has_participantes` WRITE;
/*!40000 ALTER TABLE `competicion_has_participantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `competicion_has_participantes` ENABLE KEYS */;
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
