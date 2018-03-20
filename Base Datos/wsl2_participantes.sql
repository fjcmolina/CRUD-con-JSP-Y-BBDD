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
-- Table structure for table `participantes`
--

DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participantes` (
  `idParticipantes` varchar(30) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `Sexo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idParticipantes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
INSERT INTO `participantes` VALUES ('1','John John Florence',NULL,'Masculino'),('10','Sebastian Zietz',NULL,'Masculino'),('11','Mick Fanning',NULL,'Masculino'),('12','Kelly Slater',NULL,'Masculino'),('13','Connor O\'Leary',NULL,'Masculino'),('14','Adriano de Souza',NULL,'Masculino'),('15','Frederico Morais',NULL,'Masculino'),('16','Jeremy Flores',NULL,'Masculino'),('17','Adrian Buchan',NULL,'Masculino'),('18','Kanoa Igarashi',NULL,'Masculino'),('19','Caio Ibelli',NULL,'Masculino'),('2','Gabriel Medina',NULL,'Masculino'),('20','Michel Bourez',NULL,'Masculino'),('21','Conner Coffin',NULL,'Masculino'),('22','Joan Duru',NULL,'Masculino'),('23','Italo Ferreira',NULL,'Masculino'),('24','Griffin Colapinto',NULL,'Masculino'),('25','Jesse Mendes',NULL,'Masculino'),('26','Wade Carmichael',NULL,'Masculino'),('27','Tomas Hermes',NULL,'Masculino'),('28','Yago Dora',NULL,'Masculino'),('29','Willian Cardoso',NULL,'Masculino'),('3','Julian Wilson',NULL,'Masculino'),('30','Keanu Asing',NULL,'Masculino'),('31','Ezekiel Lau',2,'Masculino'),('32','Michael Rodrigues',5,'Masculino'),('33','Patrick Gudauskas',NULL,'Masculino'),('34','Ian Gouveia',NULL,'Masculino'),('4','Jordy Smith',NULL,'Masculino'),('5','Matt Wilkinson',NULL,'Masculino'),('6','Owen Wright',NULL,'Masculino'),('7','Kolohe Andino',NULL,'Masculino'),('8','Joel Parkinson',NULL,'Masculino'),('9','Filipe Toledo',NULL,'Masculino');
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-20 11:12:06
