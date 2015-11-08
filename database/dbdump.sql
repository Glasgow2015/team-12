-- MySQL dump 10.14  Distrib 5.5.46-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: fbwu
-- ------------------------------------------------------
-- Server version	5.5.46-MariaDB-1ubuntu0.14.04.2

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
-- Table structure for table `Access`
--

DROP TABLE IF EXISTS `Access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Access` (
  `IDAccess` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle` tinyint(1) DEFAULT NULL,
  `BiMotorCycle` tinyint(1) DEFAULT NULL,
  `Foot` tinyint(1) DEFAULT NULL,
  `NaturalNest` tinyint(1) DEFAULT NULL,
  `Tree` tinyint(1) DEFAULT NULL,
  `BreastHeight` tinyint(1) DEFAULT NULL,
  `BeeHouse` tinyint(1) DEFAULT NULL,
  `HoneyBadger` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDAccess`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Access`
--

LOCK TABLES `Access` WRITE;
/*!40000 ALTER TABLE `Access` DISABLE KEYS */;
INSERT INTO `Access` VALUES (1,0,0,1,0,0,0,0,0),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,1,1,1,1,1,1,1),(10,1,1,1,1,1,1,1,1),(11,1,1,1,1,1,1,1,1),(12,1,1,1,1,1,1,1,1),(13,1,1,1,1,1,1,1,1),(14,1,1,1,1,1,1,1,1),(15,1,1,1,1,1,1,1,1),(16,1,1,1,1,1,1,1,1),(17,1,1,1,1,1,1,1,1),(18,1,1,1,1,1,1,1,1),(19,1,1,1,1,1,1,1,1),(20,1,1,1,1,1,1,1,1),(21,1,1,1,1,1,1,1,1),(22,1,1,1,1,1,1,1,1),(23,1,1,1,1,1,1,1,1),(24,1,1,1,1,1,1,1,1),(25,1,1,1,1,1,1,1,1),(26,1,1,1,1,1,1,1,1),(27,1,1,1,1,1,1,1,1),(28,1,1,1,1,1,1,1,1),(29,1,1,1,1,1,1,1,1),(30,1,1,1,1,1,1,1,1),(31,1,1,1,1,1,1,1,1),(32,1,1,1,1,1,1,1,1),(33,1,1,1,1,1,1,1,1),(34,1,1,1,1,1,1,1,1),(35,1,1,1,1,1,1,1,1),(36,1,1,1,1,1,1,1,1),(37,1,1,1,1,1,1,1,1),(38,1,1,1,1,1,1,1,1),(39,1,1,1,1,1,1,1,1),(40,1,1,1,1,1,1,1,1),(41,1,1,1,1,1,1,1,1),(42,1,1,1,1,1,1,1,1),(43,1,1,1,1,1,1,1,1),(44,1,1,1,1,1,1,1,1),(45,1,1,1,1,1,1,1,1),(46,1,1,1,1,1,1,1,1),(47,1,1,1,1,1,1,1,1),(48,1,1,1,1,1,1,1,1),(49,1,1,1,1,1,1,1,1),(50,1,1,1,1,1,1,1,1),(51,1,1,1,1,1,1,1,1),(52,1,1,1,1,1,1,1,1),(53,1,1,1,1,1,1,1,1),(54,1,1,1,1,1,1,1,1),(55,1,1,1,1,1,1,1,1),(56,1,1,1,1,1,1,1,1),(57,1,1,1,1,1,1,1,1),(58,1,1,1,1,1,1,1,1),(59,1,1,1,1,1,1,1,1),(60,1,1,1,1,1,1,1,1),(61,1,1,1,1,1,1,1,1),(62,1,1,1,1,1,1,1,1),(63,1,1,1,1,1,1,1,1),(64,1,1,1,1,1,1,1,1),(65,1,1,1,1,1,1,1,1),(66,1,1,1,1,1,1,1,1),(67,1,1,1,1,1,1,1,1),(68,1,1,1,1,1,1,1,1),(69,1,1,1,1,1,1,1,1),(70,1,1,1,1,1,1,1,1),(71,1,1,1,1,1,1,1,1),(72,1,1,1,1,1,1,1,1),(73,1,1,1,1,1,1,1,1),(74,1,1,1,1,1,1,1,1),(75,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `Access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Apiary`
--

DROP TABLE IF EXISTS `Apiary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Apiary` (
  `IDApiary` int(11) NOT NULL AUTO_INCREMENT,
  `NameApiary` varchar(30) NOT NULL,
  `IDGPS` int(11) NOT NULL,
  `DateCreated` datetime NOT NULL,
  `IDHarvMonth` int(11) NOT NULL,
  `IDEnviroment` int(11) NOT NULL,
  `IDAccess` int(11) NOT NULL,
  PRIMARY KEY (`IDApiary`),
  KEY `Apiary_fk0` (`IDGPS`),
  KEY `Apiary_fk1` (`IDHarvMonth`),
  KEY `Apiary_fk2` (`IDEnviroment`),
  KEY `Apiary_fk3` (`IDAccess`),
  CONSTRAINT `Apiary_fk3` FOREIGN KEY (`IDAccess`) REFERENCES `Access` (`IDAccess`),
  CONSTRAINT `Apiary_fk0` FOREIGN KEY (`IDGPS`) REFERENCES `GPS` (`IDGPS`),
  CONSTRAINT `Apiary_fk1` FOREIGN KEY (`IDHarvMonth`) REFERENCES `HarvMonth` (`IDHarvMonth`),
  CONSTRAINT `Apiary_fk2` FOREIGN KEY (`IDEnviroment`) REFERENCES `Enviroment` (`IDEnviroment`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Apiary`
--

LOCK TABLES `Apiary` WRITE;
/*!40000 ALTER TABLE `Apiary` DISABLE KEYS */;
INSERT INTO `Apiary` VALUES (4,'Rob\'s Apiary',1,'0000-00-00 00:00:00',1,1,1),(5,'ROb',9,'0000-00-00 00:00:00',9,9,10),(6,'ROb',10,'0000-00-00 00:00:00',10,10,11),(7,'ROb',11,'0000-00-00 00:00:00',11,11,12),(8,'ROb',12,'0000-00-00 00:00:00',12,12,13),(9,'Rob',13,'0000-00-00 00:00:00',13,13,14),(10,'Rob',14,'0000-00-00 00:00:00',14,14,15),(11,'ROb',15,'0000-00-00 00:00:00',15,15,16),(12,'ROb',16,'0000-00-00 00:00:00',16,16,17),(13,'ROb',17,'0000-00-00 00:00:00',17,17,18),(14,'ROb',18,'0000-00-00 00:00:00',18,18,19),(15,'ROb',19,'0000-00-00 00:00:00',19,19,20),(16,'ROb',20,'0000-00-00 00:00:00',20,20,21),(17,'ROb',21,'0000-00-00 00:00:00',21,21,22),(18,'ROb',22,'0000-00-00 00:00:00',22,22,23),(19,'ROb',23,'0000-00-00 00:00:00',23,23,24),(20,'ROb',24,'0000-00-00 00:00:00',24,24,25),(21,'ROb',25,'0000-00-00 00:00:00',25,25,26),(22,'ROb',26,'0000-00-00 00:00:00',26,26,27),(23,'ROb',27,'0000-00-00 00:00:00',27,27,28),(24,'ROb',28,'0000-00-00 00:00:00',28,28,29),(25,'ROb',29,'0000-00-00 00:00:00',29,29,30),(26,'ROb',30,'0000-00-00 00:00:00',30,30,31),(27,'ROb',31,'0000-00-00 00:00:00',31,31,32),(28,'ROb',32,'0000-00-00 00:00:00',32,32,33),(29,'ROb',33,'0000-00-00 00:00:00',33,33,34),(30,'ROb',34,'0000-00-00 00:00:00',34,34,35),(31,'ROb',35,'0000-00-00 00:00:00',35,35,36),(32,'ROb',36,'0000-00-00 00:00:00',36,36,37),(33,'ROb',37,'0000-00-00 00:00:00',37,37,38),(34,'ROb',38,'0000-00-00 00:00:00',38,38,39),(35,'ROb',39,'0000-00-00 00:00:00',39,39,40),(37,'ROb',41,'0000-00-00 00:00:00',41,41,42),(38,'ROb',42,'0000-00-00 00:00:00',42,42,43),(39,'ROb',43,'0000-00-00 00:00:00',43,43,44),(40,'ROb',44,'0000-00-00 00:00:00',44,44,45),(41,'ROb',45,'0000-00-00 00:00:00',45,45,46),(42,'ROb',46,'0000-00-00 00:00:00',46,46,47),(43,'ROb',47,'0000-00-00 00:00:00',47,47,48),(44,'ROb',48,'0000-00-00 00:00:00',48,48,49),(45,'ROb',49,'0000-00-00 00:00:00',49,49,50),(46,'ROb',50,'0000-00-00 00:00:00',50,50,51),(47,'ROb',51,'0000-00-00 00:00:00',51,51,52),(48,'ROb',52,'0000-00-00 00:00:00',52,52,53),(49,'ROb',53,'0000-00-00 00:00:00',53,53,54),(50,'ROb',54,'0000-00-00 00:00:00',54,54,55),(51,'ROb',55,'0000-00-00 00:00:00',55,55,56),(52,'ROb',56,'0000-00-00 00:00:00',56,56,57),(53,'ROb',57,'0000-00-00 00:00:00',57,57,58),(54,'ROb',58,'0000-00-00 00:00:00',58,58,59),(55,'ROb',59,'0000-00-00 00:00:00',59,59,60),(56,'ROb',60,'0000-00-00 00:00:00',60,60,61),(57,'ROb',61,'0000-00-00 00:00:00',61,61,62),(58,'ROb',62,'0000-00-00 00:00:00',62,62,63),(59,'ROb',63,'0000-00-00 00:00:00',63,63,64),(60,'ROb',64,'0000-00-00 00:00:00',64,64,65),(61,'ROb',65,'0000-00-00 00:00:00',65,65,66),(62,'ROb',66,'0000-00-00 00:00:00',66,66,67),(63,'ROb',67,'0000-00-00 00:00:00',67,67,68),(64,'ROb',68,'0000-00-00 00:00:00',68,68,69),(65,'ROb',69,'0000-00-00 00:00:00',69,69,70),(66,'ROb',70,'0000-00-00 00:00:00',70,70,71),(67,'ROb',71,'0000-00-00 00:00:00',71,71,72),(68,'ROb',72,'0000-00-00 00:00:00',72,72,73),(69,'ROb',142,'0000-00-00 00:00:00',73,73,74),(70,'ROb',144,'0000-00-00 00:00:00',74,74,75);
/*!40000 ALTER TABLE `Apiary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ApiaryView`
--

DROP TABLE IF EXISTS `ApiaryView`;
/*!50001 DROP VIEW IF EXISTS `ApiaryView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ApiaryView` (
  `IDApiary` tinyint NOT NULL,
  `NameApiary` tinyint NOT NULL,
  `GPS` tinyint NOT NULL,
  `DateCreated` tinyint NOT NULL,
  `HARVMON` tinyint NOT NULL,
  `ENV` tinyint NOT NULL,
  `ACC` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `BeeToolsCondDict`
--

DROP TABLE IF EXISTS `BeeToolsCondDict`;
/*!50001 DROP VIEW IF EXISTS `BeeToolsCondDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `BeeToolsCondDict` (
  `IDBeeToolsCond` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `BeeToolsCondT`
--

DROP TABLE IF EXISTS `BeeToolsCondT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeeToolsCondT` (
  `IDBeeToolsCond` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(10) NOT NULL,
  PRIMARY KEY (`IDBeeToolsCond`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeeToolsCondT`
--

LOCK TABLES `BeeToolsCondT` WRITE;
/*!40000 ALTER TABLE `BeeToolsCondT` DISABLE KEYS */;
INSERT INTO `BeeToolsCondT` VALUES (1,'Good'),(2,'Fair'),(3,'Poor'),(4,'Damaged');
/*!40000 ALTER TABLE `BeeToolsCondT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ColStrengthDict`
--

DROP TABLE IF EXISTS `ColStrengthDict`;
/*!50001 DROP VIEW IF EXISTS `ColStrengthDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ColStrengthDict` (
  `IDColStrength` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ColStrengthT`
--

DROP TABLE IF EXISTS `ColStrengthT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ColStrengthT` (
  `IDColStrength` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(10) NOT NULL,
  PRIMARY KEY (`IDColStrength`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ColStrengthT`
--

LOCK TABLES `ColStrengthT` WRITE;
/*!40000 ALTER TABLE `ColStrengthT` DISABLE KEYS */;
INSERT INTO `ColStrengthT` VALUES (1,'Strong'),(2,'Moderate'),(3,'Weak'),(4,'Critical');
/*!40000 ALTER TABLE `ColStrengthT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CombsCond`
--

DROP TABLE IF EXISTS `CombsCond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CombsCond` (
  `IDCombsCond` int(11) NOT NULL AUTO_INCREMENT,
  `HoneyStoresT` int(11) DEFAULT NULL,
  `PollenStoresT` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDCombsCond`),
  KEY `CombsCond_fk1` (`PollenStoresT`),
  KEY `CombsCond_fk0` (`HoneyStoresT`),
  CONSTRAINT `CombsCond_fk1` FOREIGN KEY (`PollenStoresT`) REFERENCES `StoresT` (`IDStores`),
  CONSTRAINT `CombsCond_fk0` FOREIGN KEY (`HoneyStoresT`) REFERENCES `StoresT` (`IDStores`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CombsCond`
--

LOCK TABLES `CombsCond` WRITE;
/*!40000 ALTER TABLE `CombsCond` DISABLE KEYS */;
INSERT INTO `CombsCond` VALUES (1,1,1),(2,1,NULL),(3,NULL,NULL),(4,NULL,NULL),(14,1,1),(15,1,1),(16,1,1),(17,1,1),(18,1,1),(19,1,1),(20,1,1),(21,1,1),(22,1,1),(23,1,1),(24,1,1),(25,1,1),(26,1,1),(27,1,1),(28,1,1),(29,1,1),(30,1,1),(31,1,1);
/*!40000 ALTER TABLE `CombsCond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DeasPest`
--

DROP TABLE IF EXISTS `DeasPest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DeasPest` (
  `IDDeasPest` int(11) NOT NULL AUTO_INCREMENT,
  `SmallBeeT` int(11) DEFAULT NULL,
  `VarraoT` int(11) DEFAULT NULL,
  `Ant` tinyint(1) DEFAULT NULL,
  `Brood` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDDeasPest`),
  KEY `DeasPest_fk1` (`VarraoT`),
  KEY `DeasPest_fk0` (`SmallBeeT`),
  CONSTRAINT `DeasPest_fk1` FOREIGN KEY (`VarraoT`) REFERENCES `DeasPestValT` (`IDDeasPestVal`),
  CONSTRAINT `DeasPest_fk0` FOREIGN KEY (`SmallBeeT`) REFERENCES `DeasPestValT` (`IDDeasPestVal`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeasPest`
--

LOCK TABLES `DeasPest` WRITE;
/*!40000 ALTER TABLE `DeasPest` DISABLE KEYS */;
INSERT INTO `DeasPest` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL),(15,1,1,1,1),(16,1,1,1,1),(17,1,1,1,1),(18,1,1,1,1),(19,NULL,NULL,NULL,NULL),(20,1,1,1,1),(21,1,1,1,1),(22,1,1,1,1),(23,1,1,1,1),(24,1,1,1,1),(25,1,1,1,1),(26,1,1,1,1),(27,1,1,1,1),(28,1,1,1,1),(29,1,1,1,1),(30,1,1,1,1),(31,1,1,1,1);
/*!40000 ALTER TABLE `DeasPest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `DeasPestValDict`
--

DROP TABLE IF EXISTS `DeasPestValDict`;
/*!50001 DROP VIEW IF EXISTS `DeasPestValDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `DeasPestValDict` (
  `IDDeasPestVal` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `DeasPestValT`
--

DROP TABLE IF EXISTS `DeasPestValT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DeasPestValT` (
  `IDDeasPestVal` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(10) NOT NULL,
  PRIMARY KEY (`IDDeasPestVal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeasPestValT`
--

LOCK TABLES `DeasPestValT` WRITE;
/*!40000 ALTER TABLE `DeasPestValT` DISABLE KEYS */;
INSERT INTO `DeasPestValT` VALUES (1,'Light'),(2,'Moderate'),(3,'Heavy');
/*!40000 ALTER TABLE `DeasPestValT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enviroment`
--

DROP TABLE IF EXISTS `Enviroment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Enviroment` (
  `IDEnviroment` int(11) NOT NULL AUTO_INCREMENT,
  `Water` tinyint(1) DEFAULT NULL,
  `MiomboWoodland` tinyint(1) DEFAULT NULL,
  `ClosedForest` tinyint(1) DEFAULT NULL,
  `Grassland` tinyint(1) DEFAULT NULL,
  `ForestPlantation` tinyint(1) DEFAULT NULL,
  `SisalPlantation` tinyint(1) DEFAULT NULL,
  `Orchard` tinyint(1) DEFAULT NULL,
  `MixedCrops` tinyint(1) DEFAULT NULL,
  `Pestisides` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDEnviroment`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enviroment`
--

LOCK TABLES `Enviroment` WRITE;
/*!40000 ALTER TABLE `Enviroment` DISABLE KEYS */;
INSERT INTO `Enviroment` VALUES (1,0,1,0,0,0,0,0,0,0),(6,1,1,1,1,1,1,1,1,1),(9,1,1,1,1,1,1,1,1,1),(10,1,1,1,1,1,1,1,1,1),(11,1,1,1,1,1,1,1,1,1),(12,1,1,1,1,1,1,1,1,1),(13,1,1,1,1,1,1,1,1,1),(14,1,1,1,1,1,1,1,1,1),(15,1,1,1,1,1,1,1,1,1),(16,1,1,1,1,1,1,1,1,1),(17,1,1,1,1,1,1,1,1,1),(18,1,1,1,1,1,1,1,1,1),(19,1,1,1,1,1,1,1,1,1),(20,1,1,1,1,1,1,1,1,1),(21,1,1,1,1,1,1,1,1,1),(22,1,1,1,1,1,1,1,1,1),(23,1,1,1,1,1,1,1,1,1),(24,1,1,1,1,1,1,1,1,1),(25,1,1,1,1,1,1,1,1,1),(26,1,1,1,1,1,1,1,1,1),(27,1,1,1,1,1,1,1,1,1),(28,1,1,1,1,1,1,1,1,1),(29,1,1,1,1,1,1,1,1,1),(30,1,1,1,1,1,1,1,1,1),(31,1,1,1,1,1,1,1,1,1),(32,1,1,1,1,1,1,1,1,1),(33,1,1,1,1,1,1,1,1,1),(34,1,1,1,1,1,1,1,1,1),(35,1,1,1,1,1,1,1,1,1),(36,1,1,1,1,1,1,1,1,1),(37,1,1,1,1,1,1,1,1,1),(38,1,1,1,1,1,1,1,1,1),(39,1,1,1,1,1,1,1,1,1),(40,1,1,1,1,1,1,1,1,1),(41,1,1,1,1,1,1,1,1,1),(42,1,1,1,1,1,1,1,1,1),(43,1,1,1,1,1,1,1,1,1),(44,1,1,1,1,1,1,1,1,1),(45,1,1,1,1,1,1,1,1,1),(46,1,1,1,1,1,1,1,1,1),(47,1,1,1,1,1,1,1,1,1),(48,1,1,1,1,1,1,1,1,1),(49,1,1,1,1,1,1,1,1,1),(50,1,1,1,1,1,1,1,1,1),(51,1,1,1,1,1,1,1,1,1),(52,1,1,1,1,1,1,1,1,1),(53,1,1,1,1,1,1,1,1,1),(54,1,1,1,1,1,1,1,1,1),(55,1,1,1,1,1,1,1,1,1),(56,1,1,1,1,1,1,1,1,1),(57,1,1,1,1,1,1,1,1,1),(58,1,1,1,1,1,1,1,1,1),(59,1,1,1,1,1,1,1,1,1),(60,1,1,1,1,1,1,1,1,1),(61,1,1,1,1,1,1,1,1,1),(62,1,1,1,1,1,1,1,1,1),(63,1,1,1,1,1,1,1,1,1),(64,1,1,1,1,1,1,1,1,1),(65,1,1,1,1,1,1,1,1,1),(66,1,1,1,1,1,1,1,1,1),(67,1,1,1,1,1,1,1,1,1),(68,1,1,1,1,1,1,1,1,1),(69,1,1,1,1,1,1,1,1,1),(70,1,1,1,1,1,1,1,1,1),(71,1,1,1,1,1,1,1,1,1),(72,1,1,1,1,1,1,1,1,1),(73,1,1,1,1,1,1,1,1,1),(74,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `Enviroment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GPS`
--

DROP TABLE IF EXISTS `GPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GPS` (
  `IDGPS` int(11) NOT NULL AUTO_INCREMENT,
  `LAT` float NOT NULL,
  `LNG` float NOT NULL,
  PRIMARY KEY (`IDGPS`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GPS`
--

LOCK TABLES `GPS` WRITE;
/*!40000 ALTER TABLE `GPS` DISABLE KEYS */;
INSERT INTO `GPS` VALUES (1,1,1),(6,1,1),(9,1,1),(10,1,1),(11,1,1),(12,1,1),(13,1,1),(14,1,1),(15,1,1),(16,1,1),(17,1,1),(18,1,1),(19,1,1),(20,1,1),(21,1,1),(22,1,1),(23,1,1),(24,1,1),(25,1,1),(26,1,1),(27,1,1),(28,1,1),(29,1,1),(30,1,1),(31,1,1),(32,1,1),(33,1,1),(34,1,1),(35,1,1),(36,1,1),(37,1,1),(38,1,1),(39,1,1),(40,1,1),(41,1,1),(42,1,1),(43,1,1),(44,1,1),(45,1,1),(46,1,1),(47,1,1),(48,1,1),(49,1,1),(50,1,1),(51,1,1),(52,1,1),(53,1,1),(54,1,1),(55,1,1),(56,1,1),(57,1,1),(58,1,1),(59,1,1),(60,1,1),(61,1,1),(62,1,1),(63,1,1),(64,1,1),(65,1,1),(66,1,1),(67,1,1),(68,1,1),(69,1,1),(70,1,1),(71,1,1),(72,1,1),(73,1,1),(74,1,1),(75,1,1),(76,1,1),(77,1,1),(78,1,1),(79,1,1),(80,1,1),(81,1,1),(82,1,1),(83,1,1),(84,1,1),(85,1,1),(86,1,1),(87,1,1),(88,1,1),(89,1,1),(90,1,1),(91,1,1),(92,1,1),(93,1,1),(94,1,1),(95,1,1),(96,1,1),(97,1,1),(98,1,1),(99,1,1),(100,1,1),(101,1,1),(102,1,1),(103,1,1),(104,1,1),(105,1,1),(106,1,1),(107,1,1),(108,1,1),(109,1,1),(110,1,1),(111,1,1),(112,1,1),(113,1,1),(114,1,1),(115,1,1),(116,1,1),(117,1,1),(118,1,1),(119,1,1),(120,1,1),(121,1,1),(122,1,1),(123,1,1),(124,1,1),(125,1,1),(126,1,1),(127,1,1),(128,1,1),(129,1,1),(130,1,1),(131,1,1),(132,1,1),(133,1,1),(134,1,1),(135,1,1),(136,1,1),(137,1,1),(138,1,1),(139,1,1),(140,1,1),(141,1,1),(142,1,1),(143,1,1),(144,1,1),(145,1,1),(146,1,1),(147,1,1),(148,1,1),(149,1,1),(150,1,1),(151,1,1),(152,1,1),(153,1,1),(154,1,1);
/*!40000 ALTER TABLE `GPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HarvMonth`
--

DROP TABLE IF EXISTS `HarvMonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HarvMonth` (
  `IDHarvMonth` int(11) NOT NULL AUTO_INCREMENT,
  `JAN` tinyint(1) DEFAULT NULL,
  `FEB` tinyint(1) DEFAULT NULL,
  `MAR` tinyint(1) DEFAULT NULL,
  `APR` tinyint(1) DEFAULT NULL,
  `MAY` tinyint(1) DEFAULT NULL,
  `JUN` tinyint(1) DEFAULT NULL,
  `JUL` tinyint(1) DEFAULT NULL,
  `AUG` tinyint(1) DEFAULT NULL,
  `SEP` tinyint(1) DEFAULT NULL,
  `OCT` tinyint(1) DEFAULT NULL,
  `NOV` tinyint(1) DEFAULT NULL,
  `DEC` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDHarvMonth`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HarvMonth`
--

LOCK TABLES `HarvMonth` WRITE;
/*!40000 ALTER TABLE `HarvMonth` DISABLE KEYS */;
INSERT INTO `HarvMonth` VALUES (1,0,0,1,0,0,0,0,1,0,0,0,0),(6,1,1,1,1,1,1,1,1,1,1,1,1),(9,1,1,1,1,1,1,1,1,1,1,1,1),(10,1,1,1,1,1,1,1,1,1,1,1,1),(11,1,1,1,1,1,1,1,1,1,1,1,1),(12,1,1,1,1,1,1,1,1,1,1,1,1),(13,1,1,1,1,1,1,1,1,1,1,1,1),(14,1,1,1,1,1,1,1,1,1,1,1,1),(15,1,1,1,1,1,1,1,1,1,1,1,1),(16,1,1,1,1,1,1,1,1,1,1,1,1),(17,1,1,1,1,1,1,1,1,1,1,1,1),(18,1,1,1,1,1,1,1,1,1,1,1,1),(19,1,1,1,1,1,1,1,1,1,1,1,1),(20,1,1,1,1,1,1,1,1,1,1,1,1),(21,1,1,1,1,1,1,1,1,1,1,1,1),(22,1,1,1,1,1,1,1,1,1,1,1,1),(23,1,1,1,1,1,1,1,1,1,1,1,1),(24,1,1,1,1,1,1,1,1,1,1,1,1),(25,1,1,1,1,1,1,1,1,1,1,1,1),(26,1,1,1,1,1,1,1,1,1,1,1,1),(27,1,1,1,1,1,1,1,1,1,1,1,1),(28,1,1,1,1,1,1,1,1,1,1,1,1),(29,1,1,1,1,1,1,1,1,1,1,1,1),(30,1,1,1,1,1,1,1,1,1,1,1,1),(31,1,1,1,1,1,1,1,1,1,1,1,1),(32,1,1,1,1,1,1,1,1,1,1,1,1),(33,1,1,1,1,1,1,1,1,1,1,1,1),(34,1,1,1,1,1,1,1,1,1,1,1,1),(35,1,1,1,1,1,1,1,1,1,1,1,1),(36,1,1,1,1,1,1,1,1,1,1,1,1),(37,1,1,1,1,1,1,1,1,1,1,1,1),(38,1,1,1,1,1,1,1,1,1,1,1,1),(39,1,1,1,1,1,1,1,1,1,1,1,1),(40,1,1,1,1,1,1,1,1,1,1,1,1),(41,1,1,1,1,1,1,1,1,1,1,1,1),(42,1,1,1,1,1,1,1,1,1,1,1,1),(43,1,1,1,1,1,1,1,1,1,1,1,1),(44,1,1,1,1,1,1,1,1,1,1,1,1),(45,1,1,1,1,1,1,1,1,1,1,1,1),(46,1,1,1,1,1,1,1,1,1,1,1,1),(47,1,1,1,1,1,1,1,1,1,1,1,1),(48,1,1,1,1,1,1,1,1,1,1,1,1),(49,1,1,1,1,1,1,1,1,1,1,1,1),(50,1,1,1,1,1,1,1,1,1,1,1,1),(51,1,1,1,1,1,1,1,1,1,1,1,1),(52,1,1,1,1,1,1,1,1,1,1,1,1),(53,1,1,1,1,1,1,1,1,1,1,1,1),(54,1,1,1,1,1,1,1,1,1,1,1,1),(55,1,1,1,1,1,1,1,1,1,1,1,1),(56,1,1,1,1,1,1,1,1,1,1,1,1),(57,1,1,1,1,1,1,1,1,1,1,1,1),(58,1,1,1,1,1,1,1,1,1,1,1,1),(59,1,1,1,1,1,1,1,1,1,1,1,1),(60,1,1,1,1,1,1,1,1,1,1,1,1),(61,1,1,1,1,1,1,1,1,1,1,1,1),(62,1,1,1,1,1,1,1,1,1,1,1,1),(63,1,1,1,1,1,1,1,1,1,1,1,1),(64,1,1,1,1,1,1,1,1,1,1,1,1),(65,1,1,1,1,1,1,1,1,1,1,1,1),(66,1,1,1,1,1,1,1,1,1,1,1,1),(67,1,1,1,1,1,1,1,1,1,1,1,1),(68,1,1,1,1,1,1,1,1,1,1,1,1),(69,1,1,1,1,1,1,1,1,1,1,1,1),(70,1,1,1,1,1,1,1,1,1,1,1,1),(71,1,1,1,1,1,1,1,1,1,1,1,1),(72,1,1,1,1,1,1,1,1,1,1,1,1),(73,1,1,1,1,1,1,1,1,1,1,1,1),(74,1,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `HarvMonth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Harvest`
--

DROP TABLE IF EXISTS `Harvest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Harvest` (
  `IDHarvest` int(11) NOT NULL AUTO_INCREMENT,
  `IDHive` int(11) NOT NULL,
  `DateHarvest` datetime NOT NULL,
  `Quantity` int(11) NOT NULL,
  `BeeKeeperClothes` tinyint(1) NOT NULL,
  `AllAssistantTools` tinyint(1) NOT NULL,
  `Smoker` tinyint(1) NOT NULL,
  `BucketNumber` int(11) NOT NULL,
  PRIMARY KEY (`IDHarvest`),
  KEY `Harvest_fk0_idx` (`IDHive`),
  CONSTRAINT `Harvest_fk0` FOREIGN KEY (`IDHive`) REFERENCES `Hive` (`IDHive`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Harvest`
--

LOCK TABLES `Harvest` WRITE;
/*!40000 ALTER TABLE `Harvest` DISABLE KEYS */;
INSERT INTO `Harvest` VALUES (3,73,'0000-00-00 00:00:00',5,1,1,1,1),(4,73,'0000-00-00 00:00:00',5,1,1,1,1),(5,73,'0000-00-00 00:00:00',5,1,1,1,1),(6,73,'0000-00-00 00:00:00',5,1,1,1,1),(7,73,'0000-00-00 00:00:00',5,1,1,1,1),(8,73,'0000-00-00 00:00:00',5,1,1,1,1),(9,73,'0000-00-00 00:00:00',5,1,1,1,1),(10,73,'0000-00-00 00:00:00',5,1,1,1,1),(11,73,'0000-00-00 00:00:00',5,1,1,1,1),(12,73,'0000-00-00 00:00:00',5,1,1,1,1),(13,73,'0000-00-00 00:00:00',5,1,1,1,1);
/*!40000 ALTER TABLE `Harvest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `HarvestView`
--

DROP TABLE IF EXISTS `HarvestView`;
/*!50001 DROP VIEW IF EXISTS `HarvestView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `HarvestView` (
  `IDHarvest` tinyint NOT NULL,
  `IDHive` tinyint NOT NULL,
  `DateHarvest` tinyint NOT NULL,
  `Quantity` tinyint NOT NULL,
  `BeeKeeperClothes` tinyint NOT NULL,
  `AllAssistantTools` tinyint NOT NULL,
  `Smoker` tinyint NOT NULL,
  `BucketNumber` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Hive`
--

DROP TABLE IF EXISTS `Hive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hive` (
  `IDHive` int(11) NOT NULL AUTO_INCREMENT,
  `IDApiary` int(11) NOT NULL,
  `HiveNumber` int(11) NOT NULL,
  `IDGPS` int(11) NOT NULL,
  `PictureName` varchar(36) NOT NULL,
  `DateCreated` datetime NOT NULL,
  `HiveTypeT` int(11) NOT NULL,
  `SunExpT` int(11) NOT NULL,
  PRIMARY KEY (`IDHive`),
  KEY `Hive_fk0` (`IDApiary`),
  KEY `Hive_fk1` (`IDGPS`),
  KEY `Hive_fk2` (`HiveTypeT`),
  KEY `Hive_fk3` (`SunExpT`),
  CONSTRAINT `Hive_fk3` FOREIGN KEY (`SunExpT`) REFERENCES `SunExpT` (`IDSunExp`),
  CONSTRAINT `Hive_fk0` FOREIGN KEY (`IDApiary`) REFERENCES `Apiary` (`IDApiary`),
  CONSTRAINT `Hive_fk1` FOREIGN KEY (`IDGPS`) REFERENCES `GPS` (`IDGPS`),
  CONSTRAINT `Hive_fk2` FOREIGN KEY (`HiveTypeT`) REFERENCES `HiveTypeT` (`IDHiveType`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hive`
--

LOCK TABLES `Hive` WRITE;
/*!40000 ALTER TABLE `Hive` DISABLE KEYS */;
INSERT INTO `Hive` VALUES (73,4,123,145,'23123wfe23t','0000-00-00 00:00:00',1,1),(74,4,123,146,'23123wfe23t','0000-00-00 00:00:00',1,1),(75,4,123,147,'23123wfe23t','0000-00-00 00:00:00',1,1),(76,4,123,148,'23123wfe23t','0000-00-00 00:00:00',1,1),(77,4,123,149,'23123wfe23t','0000-00-00 00:00:00',1,1),(78,4,123,150,'23123wfe23t','0000-00-00 00:00:00',1,1),(79,4,123,151,'23123wfe23t','0000-00-00 00:00:00',1,1),(80,4,123,152,'23123wfe23t','0000-00-00 00:00:00',1,1),(81,4,123,153,'23123wfe23t','0000-00-00 00:00:00',1,1),(82,4,123,154,'23123wfe23t','0000-00-00 00:00:00',1,1);
/*!40000 ALTER TABLE `Hive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `HiveCondDict`
--

DROP TABLE IF EXISTS `HiveCondDict`;
/*!50001 DROP VIEW IF EXISTS `HiveCondDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `HiveCondDict` (
  `IDHiveCond` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `HiveCondT`
--

DROP TABLE IF EXISTS `HiveCondT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HiveCondT` (
  `IDHiveCond` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(10) NOT NULL,
  PRIMARY KEY (`IDHiveCond`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HiveCondT`
--

LOCK TABLES `HiveCondT` WRITE;
/*!40000 ALTER TABLE `HiveCondT` DISABLE KEYS */;
INSERT INTO `HiveCondT` VALUES (1,'Good'),(2,'Fair'),(3,'Poor'),(4,'Damaged');
/*!40000 ALTER TABLE `HiveCondT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `HiveStateDict`
--

DROP TABLE IF EXISTS `HiveStateDict`;
/*!50001 DROP VIEW IF EXISTS `HiveStateDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `HiveStateDict` (
  `IDHiveState` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `HiveStateT`
--

DROP TABLE IF EXISTS `HiveStateT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HiveStateT` (
  `IDHiveState` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(60) NOT NULL,
  PRIMARY KEY (`IDHiveState`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HiveStateT`
--

LOCK TABLES `HiveStateT` WRITE;
/*!40000 ALTER TABLE `HiveStateT` DISABLE KEYS */;
INSERT INTO `HiveStateT` VALUES (1,'Not in use/not installed'),(2,'Not yet occupied'),(3,'Occupied'),(4,'Absconded'),(5,'Dead, because of robbing'),(6,'Dead, because of honey badger'),(7,'Dead, because of mites'),(8,'Dead, because of beetle'),(9,'Dead, because of ants or other insects'),(10,'Dead, because of fire'),(11,'Dead, because of flood'),(12,'Dead, reason unknown');
/*!40000 ALTER TABLE `HiveStateT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `HiveTemperDict`
--

DROP TABLE IF EXISTS `HiveTemperDict`;
/*!50001 DROP VIEW IF EXISTS `HiveTemperDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `HiveTemperDict` (
  `IDHiveTemper` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `HiveTemperT`
--

DROP TABLE IF EXISTS `HiveTemperT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HiveTemperT` (
  `IDHiveTemper` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(20) NOT NULL,
  PRIMARY KEY (`IDHiveTemper`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HiveTemperT`
--

LOCK TABLES `HiveTemperT` WRITE;
/*!40000 ALTER TABLE `HiveTemperT` DISABLE KEYS */;
INSERT INTO `HiveTemperT` VALUES (1,'Calm'),(2,'Nervous'),(3,'Angry');
/*!40000 ALTER TABLE `HiveTemperT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `HiveTypeDict`
--

DROP TABLE IF EXISTS `HiveTypeDict`;
/*!50001 DROP VIEW IF EXISTS `HiveTypeDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `HiveTypeDict` (
  `IDHiveType` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `HiveTypeT`
--

DROP TABLE IF EXISTS `HiveTypeT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HiveTypeT` (
  `IDHiveType` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(60) NOT NULL,
  PRIMARY KEY (`IDHiveType`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HiveTypeT`
--

LOCK TABLES `HiveTypeT` WRITE;
/*!40000 ALTER TABLE `HiveTypeT` DISABLE KEYS */;
INSERT INTO `HiveTypeT` VALUES (1,'Traditional hive'),(2,'Top bar hive'),(3,'Top bar hive with queen excluder'),(4,'Langstroth hive'),(5,'Other');
/*!40000 ALTER TABLE `HiveTypeT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `HiveView`
--

DROP TABLE IF EXISTS `HiveView`;
/*!50001 DROP VIEW IF EXISTS `HiveView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `HiveView` (
  `IDHive` tinyint NOT NULL,
  `IDApiary` tinyint NOT NULL,
  `HiveNumber` tinyint NOT NULL,
  `GPS` tinyint NOT NULL,
  `PictureName` tinyint NOT NULL,
  `DateCreated` tinyint NOT NULL,
  `HiveType` tinyint NOT NULL,
  `SunExp` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Inspection`
--

DROP TABLE IF EXISTS `Inspection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inspection` (
  `IDInspection` int(11) NOT NULL AUTO_INCREMENT,
  `IDHive` int(11) NOT NULL,
  `DateInspection` datetime NOT NULL,
  `WeatherCondT` int(11) NOT NULL,
  `HiveStateT` int(11) NOT NULL,
  `ColStrengthT` int(11) NOT NULL,
  `HiveTemperT` int(11) NOT NULL,
  `QueenCellInBrood` tinyint(1) NOT NULL,
  `IDCombsCond` int(11) NOT NULL,
  `IDDeasPest` int(11) NOT NULL,
  `HiveCondT` int(11) NOT NULL,
  `BeeToolsCondT` int(11) NOT NULL,
  PRIMARY KEY (`IDInspection`),
  KEY `Inspection_fk0` (`IDHive`),
  KEY `Inspection_fk1` (`WeatherCondT`),
  KEY `Inspection_fk2` (`HiveStateT`),
  KEY `Inspection_fk3` (`ColStrengthT`),
  KEY `Inspection_fk4` (`HiveTemperT`),
  KEY `Inspection_fk5` (`IDCombsCond`),
  KEY `Inspection_fk7` (`HiveCondT`),
  KEY `Inspection_fk8` (`BeeToolsCondT`),
  KEY `Inspection_fk6_idx` (`IDDeasPest`),
  CONSTRAINT `Inspection_fk6` FOREIGN KEY (`IDDeasPest`) REFERENCES `DeasPest` (`IDDeasPest`),
  CONSTRAINT `Inspection_fk0` FOREIGN KEY (`IDHive`) REFERENCES `Hive` (`IDHive`),
  CONSTRAINT `Inspection_fk1` FOREIGN KEY (`WeatherCondT`) REFERENCES `WeatherCondT` (`IDWeatherCond`),
  CONSTRAINT `Inspection_fk2` FOREIGN KEY (`HiveStateT`) REFERENCES `HiveStateT` (`IDHiveState`),
  CONSTRAINT `Inspection_fk3` FOREIGN KEY (`ColStrengthT`) REFERENCES `ColStrengthT` (`IDColStrength`),
  CONSTRAINT `Inspection_fk4` FOREIGN KEY (`HiveTemperT`) REFERENCES `HiveTemperT` (`IDHiveTemper`),
  CONSTRAINT `Inspection_fk5` FOREIGN KEY (`IDCombsCond`) REFERENCES `CombsCond` (`IDCombsCond`),
  CONSTRAINT `Inspection_fk7` FOREIGN KEY (`HiveCondT`) REFERENCES `HiveCondT` (`IDHiveCond`),
  CONSTRAINT `Inspection_fk8` FOREIGN KEY (`BeeToolsCondT`) REFERENCES `BeeToolsCondT` (`IDBeeToolsCond`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inspection`
--

LOCK TABLES `Inspection` WRITE;
/*!40000 ALTER TABLE `Inspection` DISABLE KEYS */;
INSERT INTO `Inspection` VALUES (14,73,'0000-00-00 00:00:00',1,1,1,1,1,20,20,1,1),(15,73,'0000-00-00 00:00:00',1,1,1,1,1,21,21,1,1),(16,73,'0000-00-00 00:00:00',1,1,1,1,1,22,22,1,1),(17,73,'0000-00-00 00:00:00',1,1,1,1,1,23,23,1,1),(18,73,'0000-00-00 00:00:00',1,1,1,1,1,24,24,1,1),(19,73,'0000-00-00 00:00:00',1,1,1,1,1,25,25,1,1),(20,73,'0000-00-00 00:00:00',1,1,1,1,1,26,26,1,1),(21,73,'0000-00-00 00:00:00',1,1,1,1,1,27,27,1,1),(22,73,'0000-00-00 00:00:00',1,1,1,1,1,28,28,1,1),(23,73,'0000-00-00 00:00:00',1,1,1,1,1,29,29,1,1),(24,73,'0000-00-00 00:00:00',1,1,1,1,1,30,30,1,1),(25,73,'0000-00-00 00:00:00',1,1,1,1,1,31,31,1,1);
/*!40000 ALTER TABLE `Inspection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `InspectionView`
--

DROP TABLE IF EXISTS `InspectionView`;
/*!50001 DROP VIEW IF EXISTS `InspectionView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `InspectionView` (
  `IDInspection` tinyint NOT NULL,
  `IDHive` tinyint NOT NULL,
  `DateInspection` tinyint NOT NULL,
  `WeatherCond` tinyint NOT NULL,
  `HiveState` tinyint NOT NULL,
  `ColStrength` tinyint NOT NULL,
  `HiveTemper` tinyint NOT NULL,
  `QueenCellInBrood` tinyint NOT NULL,
  `HoneyStores` tinyint NOT NULL,
  `PollyStores` tinyint NOT NULL,
  `SmallBee` tinyint NOT NULL,
  `Varrao` tinyint NOT NULL,
  `Ant` tinyint NOT NULL,
  `Brood` tinyint NOT NULL,
  `HiveCond` tinyint NOT NULL,
  `BeeToolsCondDict` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `OwnedApiary`
--

DROP TABLE IF EXISTS `OwnedApiary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OwnedApiary` (
  `IDUser` int(11) NOT NULL,
  `IDApiary` int(11) NOT NULL,
  PRIMARY KEY (`IDUser`,`IDApiary`),
  KEY `OwnedApiary_fk1` (`IDApiary`),
  CONSTRAINT `OwnedApiary_fk1` FOREIGN KEY (`IDApiary`) REFERENCES `Apiary` (`IDApiary`),
  CONSTRAINT `OwnedApiary_fk0` FOREIGN KEY (`IDUser`) REFERENCES `User` (`IDUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OwnedApiary`
--

LOCK TABLES `OwnedApiary` WRITE;
/*!40000 ALTER TABLE `OwnedApiary` DISABLE KEYS */;
/*!40000 ALTER TABLE `OwnedApiary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OwnedHive`
--

DROP TABLE IF EXISTS `OwnedHive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OwnedHive` (
  `IDUser` int(11) NOT NULL,
  `IDHive` int(11) NOT NULL,
  PRIMARY KEY (`IDUser`,`IDHive`),
  KEY `OwnedHive_fk1` (`IDHive`),
  CONSTRAINT `OwnedHive_fk1` FOREIGN KEY (`IDHive`) REFERENCES `Hive` (`IDHive`),
  CONSTRAINT `OwnedHive_fk0` FOREIGN KEY (`IDUser`) REFERENCES `User` (`IDUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OwnedHive`
--

LOCK TABLES `OwnedHive` WRITE;
/*!40000 ALTER TABLE `OwnedHive` DISABLE KEYS */;
/*!40000 ALTER TABLE `OwnedHive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `StoresDict`
--

DROP TABLE IF EXISTS `StoresDict`;
/*!50001 DROP VIEW IF EXISTS `StoresDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `StoresDict` (
  `IDStores` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `StoresT`
--

DROP TABLE IF EXISTS `StoresT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoresT` (
  `IDStores` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(10) NOT NULL,
  PRIMARY KEY (`IDStores`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoresT`
--

LOCK TABLES `StoresT` WRITE;
/*!40000 ALTER TABLE `StoresT` DISABLE KEYS */;
INSERT INTO `StoresT` VALUES (1,'High'),(2,'Average'),(3,'Low');
/*!40000 ALTER TABLE `StoresT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `SunExpDict`
--

DROP TABLE IF EXISTS `SunExpDict`;
/*!50001 DROP VIEW IF EXISTS `SunExpDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `SunExpDict` (
  `IDSunExp` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `SunExpT`
--

DROP TABLE IF EXISTS `SunExpT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SunExpT` (
  `IDSunExp` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(15) NOT NULL,
  PRIMARY KEY (`IDSunExp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SunExpT`
--

LOCK TABLES `SunExpT` WRITE;
/*!40000 ALTER TABLE `SunExpT` DISABLE KEYS */;
INSERT INTO `SunExpT` VALUES (1,'Shady'),(2,'Partial shade'),(3,'Sunny');
/*!40000 ALTER TABLE `SunExpT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `IDUser` int(11) NOT NULL AUTO_INCREMENT,
  `NameUser` varchar(30) NOT NULL,
  `Login` varchar(30) NOT NULL,
  `UserPassword` varchar(30) NOT NULL,
  `UserRoleT` int(11) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDUser`),
  KEY `User_fk0` (`UserRoleT`),
  CONSTRAINT `User_fk0` FOREIGN KEY (`UserRoleT`) REFERENCES `UserRoleT` (`IDUserRole`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (4,'Robert Wilson','rwilson','Bees',2,'robert.wilson1717@gmail.com','07807360792'),(5,'Robert Wilson','rwilson','Bees',2,'robert.wilson1717@gmail.com','07807360792'),(6,'wfer41','123','123',1,'123',NULL),(7,'wfer41','123','123',1,'123',NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `UserRoleDict`
--

DROP TABLE IF EXISTS `UserRoleDict`;
/*!50001 DROP VIEW IF EXISTS `UserRoleDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `UserRoleDict` (
  `IDUserRole` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `UserRoleT`
--

DROP TABLE IF EXISTS `UserRoleT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserRoleT` (
  `IDUserRole` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(25) NOT NULL,
  PRIMARY KEY (`IDUserRole`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserRoleT`
--

LOCK TABLES `UserRoleT` WRITE;
/*!40000 ALTER TABLE `UserRoleT` DISABLE KEYS */;
INSERT INTO `UserRoleT` VALUES (1,'Sponsor'),(2,'Manager');
/*!40000 ALTER TABLE `UserRoleT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `UserView`
--

DROP TABLE IF EXISTS `UserView`;
/*!50001 DROP VIEW IF EXISTS `UserView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `UserView` (
  `IDUser` tinyint NOT NULL,
  `NameUser` tinyint NOT NULL,
  `Login` tinyint NOT NULL,
  `UserPassword` tinyint NOT NULL,
  `UserRole` tinyint NOT NULL,
  `Email` tinyint NOT NULL,
  `Phone` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `WeatherCondDict`
--

DROP TABLE IF EXISTS `WeatherCondDict`;
/*!50001 DROP VIEW IF EXISTS `WeatherCondDict`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `WeatherCondDict` (
  `IDWeatherCond` tinyint NOT NULL,
  `NameType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `WeatherCondT`
--

DROP TABLE IF EXISTS `WeatherCondT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WeatherCondT` (
  `IDWeatherCond` int(11) NOT NULL AUTO_INCREMENT,
  `NameType` varchar(15) NOT NULL,
  PRIMARY KEY (`IDWeatherCond`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WeatherCondT`
--

LOCK TABLES `WeatherCondT` WRITE;
/*!40000 ALTER TABLE `WeatherCondT` DISABLE KEYS */;
INSERT INTO `WeatherCondT` VALUES (1,'Sunny'),(2,'Partly cloudy'),(3,'Cloudy'),(4,'Rain'),(5,'Windy');
/*!40000 ALTER TABLE `WeatherCondT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `idtest` int(11) NOT NULL,
  PRIMARY KEY (`idtest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test2`
--

DROP TABLE IF EXISTS `test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test2` (
  `idtest` int(11) NOT NULL AUTO_INCREMENT,
  `test` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtest`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2`
--

LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
INSERT INTO `test2` VALUES (2,'13'),(3,'14'),(4,'15'),(5,'16'),(6,'17'),(7,'18'),(8,'20'),(9,'21'),(10,'22'),(11,'23'),(12,'24'),(13,'25'),(14,'26'),(15,'27'),(16,'28'),(17,'29'),(18,'30'),(19,'31');
/*!40000 ALTER TABLE `test2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fbwu'
--
/*!50003 DROP PROCEDURE IF EXISTS `CreateApiary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateApiary`(
                                IN NameApiary varchar(30),
                                IN LAT float,
                                IN LNG float,
                                IN DateCreated datetime,
                                IN HarvMonthArr varchar(30),
                                IN EnviromentArr varchar(30),
                                IN AccessArr varchar(30))
    DETERMINISTIC
BEGIN
    DECLARE IDGPS INT;
    DECLARE IDHarvMonth INT;
    DECLARE IDEnviroment INT;
    DECLARE IDAccess INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        -- SET errorCode = 1;
        -- SET errorMsg = "Tried to insert NULL to not null";
    END;

    START TRANSACTION;
    -- SET errorCode = 0;
    -- SET errorMsg = 'OK';
    
    INSERT INTO `fbwu`.`GPS` (LAT, LNG) VALUES (LAT, LNG);
    SET IDGPS = LAST_INSERT_ID();

    INSERT INTO `fbwu`.`HarvMonth` () VALUES ();
    SET IDHarvMonth = LAST_INSERT_ID();

    INSERT INTO `fbwu`.`Enviroment` () VALUES ();
    SET IDEnviroment = LAST_INSERT_ID();

    INSERT INTO `fbwu`.`Access` () VALUES ();
    SET IDAccess = LAST_INSERT_ID();

    SET @separator = ',';
    SET @separatorLength = CHAR_LENGTH(@separator);
    
    -- Get Harvest Months
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`JAN` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`FEB` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`MAR` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`APR` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`MAY` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`JUN` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`JUL` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`AUG` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`SEP` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`OCT` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`NOV` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`DEC` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;

    -- Get Enviroment vars
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`Water` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`MiomboWoodland` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`ClosedForest` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`Grassland` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`ForestPlantation` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`SisalPlantation` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`Orchard` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`MixedCrops` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`Pestisides` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;

    -- Get Enviroment vars
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`Vehicle` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`BiMotorCycle` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`Foot` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`NaturalNest` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`Tree` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`BreastHeight` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`BeeHouse` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`HoneyBadger` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
        
    -- Final Insert
    INSERT INTO `fbwu`.`Apiary` (`NameApiary`, `IDGPS`, `DateCreated`, `IDHarvMonth`, `IDEnviroment`, `IDAccess`)
    VALUES(NameApiary, IDGPS, DateCreated, IDHarvMonth, IDEnviroment, IDAccess);

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CreateHarvest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateHarvest`(
                                IDHive int(11),
                                DateHarvest datetime,
                                Quantity int(11),
                                BeeKeeperClothes tinyint(1),
                                AllAssistantTools tinyint(1),
                                Smoker tinyint(1),
                                BucketNumber int(11))
    DETERMINISTIC
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        -- SET errorCode = 1;
        -- SET errorMsg = "Tried to insert NULL to not null";
    END;

    START TRANSACTION;
    -- SET errorCode = 0;
    -- SET errorMsg = 'OK';

    -- Final Insert
    INSERT INTO `fbwu`.`Harvest` (IDHive, DateHarvest, Quantity, BeeKeeperClothes, AllAssistantTools, Smoker, BucketNumber)
    VALUES (IDHive, DateHarvest, Quantity, BeeKeeperClothes, AllAssistantTools, Smoker, BucketNumber);

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CreateHive` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateHive`(
                            IN IDApiary int(11),
                            IN HiveNumber int(11),
                            IN LAT float,
                            IN LNG float,
                            IN PictureName varchar(36),
                            IN DateCreated datetime,
                            IN HiveTypeT int(11),
                            IN SunExpT int(11))
    DETERMINISTIC
BEGIN
    DECLARE IDGPS INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        -- SET errorCode = 1;
        -- SET errorMsg = "Tried to insert NULL to not null";
    END;

    START TRANSACTION;
    -- SET errorCode = 0;
    -- SET errorMsg = 'OK';
    
    INSERT INTO `fbwu`.`GPS` (LAT, LNG) VALUES (LAT, LNG);
    SET IDGPS = LAST_INSERT_ID();

    -- Final Insert
    INSERT INTO `fbwu`.`Hive` (`IDApiary`, `HiveNumber`, `IDGPS`, `PictureName`, `DateCreated`, `HiveTypeT`, `SunExpT`)
    VALUES (IDApiary, HiveNumber, IDGPS, PictureName, DateCreated, HiveTypeT, SunExpT);


    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CreateInspection` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateInspection`(
                                IN IDHive int(11),
                                IN DateInspection datetime,
                                IN WeatherCondT int(11),
                                IN HiveStateT int(11),
                                IN ColStrengthT int(11),
                                IN HiveTemperT int(11),
                                IN QueenCellInBrood tinyint(1),
                                IN CombsCondArr varchar(30),
                                IN DeasPestArr varchar(30),
                                IN HiveCondT int(11),
                                IN BeeToolsCondT int(11))
    DETERMINISTIC
BEGIN
    DECLARE IDCombsCond INT;
    DECLARE IDDeasPest INT;
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        -- SET errorCode = 1;
        -- SET errorMsg = "Tried to insert NULL to not null";
    END;

   START TRANSACTION;
    -- SET errorCode = 0;
    -- SET errorMsg = 'OK';

    INSERT INTO `fbwu`.`CombsCond` () VALUES ();
    SET IDCombsCond = LAST_INSERT_ID();

    INSERT INTO `fbwu`.`DeasPest` () VALUES ();
    SET IDDeasPest = LAST_INSERT_ID();
	insert into test2 (test) values(IDDeasPest);
    SET @separator = ',';
    SET @separatorLength = CHAR_LENGTH(@separator);
    
    -- Get CombsCond
    SET @currentValue = SUBSTRING_INDEX(CombsCondArr, @separator, 1);
UPDATE `fbwu`.`CombsCond` 
SET 
    `CombsCond`.`HoneyStoresT` = @currentValue
WHERE
    `CombsCond`.`IDCombsCond` = IDCombsCond;
    SET CombsCondArr = SUBSTRING(CombsCondArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(CombsCondArr, @separator, 1);
UPDATE `fbwu`.`CombsCond` 
SET 
    `CombsCond`.`PollenStoresT` = @currentValue
WHERE
    `CombsCond`.`IDCombsCond` = IDCombsCond;
    SET CombsCondArr = SUBSTRING(CombsCondArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);

    -- Get DeasPest
    SET @currentValue = SUBSTRING_INDEX(DeasPestArr, @separator, 1);
UPDATE `fbwu`.`DeasPest` 
SET 
    `DeasPest`.`SmallBeeT` = @currentValue
WHERE
    `DeasPest`.`IDDeasPest` = IDDeasPest;
    SET DeasPestArr = SUBSTRING(DeasPestArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
	 SET @currentValue = SUBSTRING_INDEX(DeasPestArr, @separator, 1);
UPDATE `fbwu`.`DeasPest` 
SET 
    `DeasPest`.`VarraoT` = @currentValue
WHERE
    `DeasPest`.`IDDeasPest` = IDDeasPest;
    SET DeasPestArr = SUBSTRING(DeasPestArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
   SET @currentValue = SUBSTRING_INDEX(DeasPestArr, @separator, 1);
UPDATE `fbwu`.`DeasPest` 
SET 
    `DeasPest`.`Ant` = @currentValue
WHERE
    `DeasPest`.`IDDeasPest` = IDDeasPest;
   SET DeasPestArr = SUBSTRING(DeasPestArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(DeasPestArr, @separator, 1);
UPDATE `fbwu`.`DeasPest` 
SET 
    `DeasPest`.`Brood` = @currentValue
WHERE
    `DeasPest`.`IDDeasPest` = IDDeasPest;
   SET DeasPestArr = SUBSTRING(DeasPestArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);

    -- Final Insert
    INSERT INTO `fbwu`.`Inspection` (`IDHive`, `DateInspection`, `WeatherCondT`, `HiveStateT`, `ColStrengthT`, `HiveTemperT`, `QueenCellInBrood`, `IDCombsCond`, `IDDeasPest`, `HiveCondT`, `BeeToolsCondT`)
    VALUES (IDHive, DateInspection, WeatherCondT, HiveStateT, ColStrengthT, HiveTemperT, QueenCellInBrood, IDCombsCond, IDDeasPest, HiveCondT, BeeToolsCondT);
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CreateUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateUser`(  
							IN NameUser varchar(30),
							IN Login varchar(30),
							IN UserPassword varchar(30),
							IN UserRoleT int(11),
							IN Email varchar(30),
							IN Phone varchar(30)
							-- OUT errorCode INT(11),
							-- OUT errorMsg VARCHAR(50)
                            )
    DETERMINISTIC
BEGIN
	DECLARE EXIT HANDLER FOR 1048 
	BEGIN
		ROLLBACK;
		-- SET errorCode = 1;
        -- SET errorMsg = "Tried to insert NULL to not null";
	END;
    START TRANSACTION;
	-- SET errorCode = 0;
    -- SET errorMsg = 'OK';
    INSERT INTO `fbwu`.`User` (`NameUser`, `Login`, `UserPassword`, `UserRoleT`, `Email`, `Phone`)
	VALUES (NameUser, Login, UserPassword, UserRoleT, Email, Phone);
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteApiaryByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteApiaryByID`(IN apiaryID INT(11) )
    DETERMINISTIC
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN
		ROLLBACK;
		-- SET errorCode = 1;
        -- SET errorMsg = "User was not deleted";
	END;
    START TRANSACTION;
	-- SET errorCode = 0;
DELETE FROM Harvest 
WHERE
    Harvest.IDHive IN (SELECT 
        Hive.IDHive
    FROM
        Hive
    
    WHERE
        Hive.IDApiary = apiaryID);
DELETE FROM Inspections 
WHERE
    Inspections.IDHive IN (SELECT 
        Hive.IDHive
    FROM
        Hive
    
    WHERE
        Hive.IDApiary = apiaryID);
DELETE FROM Hive 
WHERE
    Hive.IDApiary = apiaryID;
DELETE FROM Apiary 
WHERE
    Apiary.IDApiary = apiaryID;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteHarvestByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteHarvestByID`(IN harvestID INT(11) )
    DETERMINISTIC
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN
		ROLLBACK;
		-- SET errorCode = 1;
        -- SET errorMsg = "User was not deleted";
	END;
    START TRANSACTION;
	-- SET errorCode = 0;
DELETE FROM Harvest 
WHERE
    IDHarvest = harvestID;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteHiveByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteHiveByID`(IN hiveID INT(11) )
    DETERMINISTIC
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN
		ROLLBACK;
		-- SET errorCode = 1;
        -- SET errorMsg = "User was not deleted";
	END;
    START TRANSACTION;
	-- SET errorCode = 0;
DELETE FROM Inspection 
WHERE
    Inspection.IDHive = hiveID;
DELETE FROM Harvest 
WHERE
    Harvest.IDHive = hiveID;
DELETE FROM Hive 
WHERE
    IDHive = hiveID;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteInspectionByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteInspectionByID`(IN inspectionID INT(11) )
    DETERMINISTIC
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN
		ROLLBACK;
		-- SET errorCode = 1;
        -- SET errorMsg = "User was not deleted";
	END;
    START TRANSACTION;
	-- SET errorCode = 0;
DELETE FROM Inspection 
WHERE
    IDInspection = inspectionID;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteUserByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteUserByID`(
						IN userID INT(11) 
						-- OUT errorCode INT(11),
						-- OUT errorMsg VARCHAR(50)
                        )
    DETERMINISTIC
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN
		ROLLBACK;
		-- SET errorCode = 1;
        -- SET errorMsg = "User was not deleted";
	END;
    START TRANSACTION;
	-- SET errorCode = 0;
    -- SET errorMsg = 'OK';
    Delete From OwnedApiary where OwnedApiary.IDUser = userID;
    DELETE FROM User WHERE IDUser = userID;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `ApiaryView`
--

/*!50001 DROP TABLE IF EXISTS `ApiaryView`*/;
/*!50001 DROP VIEW IF EXISTS `ApiaryView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ApiaryView` AS select `Apiary`.`IDApiary` AS `IDApiary`,`Apiary`.`NameApiary` AS `NameApiary`,concat_ws(' | ',`GPS`.`LAT`,`GPS`.`LNG`) AS `GPS`,`Apiary`.`DateCreated` AS `DateCreated`,concat_ws(' | ',if((`HarvMonth`.`JAN` = 1),'JAN ',NULL),if((`HarvMonth`.`FEB` = 1),'FEB ',NULL),if((`HarvMonth`.`MAR` = 1),'MAR ',NULL),if((`HarvMonth`.`APR` = 1),'APR ',NULL),if((`HarvMonth`.`MAY` = 1),'MAY ',NULL),if((`HarvMonth`.`JUN` = 1),'JUN ',NULL),if((`HarvMonth`.`JUL` = 1),'JUL ',NULL),if((`HarvMonth`.`AUG` = 1),'AUG ',NULL),if((`HarvMonth`.`SEP` = 1),'SEP ',NULL),if((`HarvMonth`.`OCT` = 1),'OCT ',NULL),if((`HarvMonth`.`NOV` = 1),'NOV ',NULL),if((`HarvMonth`.`DEC` = 1),'DEC ',NULL)) AS `HARVMON`,concat_ws(' | ',if((`Enviroment`.`Water` = 1),'Water ',NULL),if((`Enviroment`.`MiomboWoodland` = 1),'MiomboWoodland ',NULL),if((`Enviroment`.`ClosedForest` = 1),'ClosedForest ',NULL),if((`Enviroment`.`Grassland` = 1),'Grassland ',NULL),if((`Enviroment`.`ForestPlantation` = 1),'ForestPlantation ',NULL),if((`Enviroment`.`SisalPlantation` = 1),'SisalPlantation ',NULL),if((`Enviroment`.`Orchard` = 1),'Orchard ',NULL),if((`Enviroment`.`MixedCrops` = 1),'MixedCrops ',NULL),if((`Enviroment`.`Pestisides` = 1),'Pestisides ',NULL)) AS `ENV`,concat_ws(' | ',if((`Access`.`Vehicle` = 1),'Vehicle ',NULL),if((`Access`.`BiMotorCycle` = 1),'BiMotorCycle ',NULL),if((`Access`.`Foot` = 1),'Foot ',NULL),if((`Access`.`NaturalNest` = 1),'NaturalNest ',NULL),if((`Access`.`Tree` = 1),'Tree ',NULL),if((`Access`.`BreastHeight` = 1),'BreastHeight ',NULL),if((`Access`.`BeeHouse` = 1),'BeeHouse ',NULL),if((`Access`.`HoneyBadger` = 1),'HoneyBadger ',NULL)) AS `ACC` from ((((`Apiary` left join `GPS` on((`GPS`.`IDGPS` = `Apiary`.`IDGPS`))) left join `HarvMonth` on((`HarvMonth`.`IDHarvMonth` = `Apiary`.`IDHarvMonth`))) left join `Enviroment` on((`Enviroment`.`IDEnviroment` = `Apiary`.`IDEnviroment`))) left join `Access` on((`Access`.`IDAccess` = `Apiary`.`IDAccess`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `BeeToolsCondDict`
--

/*!50001 DROP TABLE IF EXISTS `BeeToolsCondDict`*/;
/*!50001 DROP VIEW IF EXISTS `BeeToolsCondDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `BeeToolsCondDict` AS select `BeeToolsCondT`.`IDBeeToolsCond` AS `IDBeeToolsCond`,`BeeToolsCondT`.`NameType` AS `NameType` from `BeeToolsCondT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ColStrengthDict`
--

/*!50001 DROP TABLE IF EXISTS `ColStrengthDict`*/;
/*!50001 DROP VIEW IF EXISTS `ColStrengthDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ColStrengthDict` AS select `ColStrengthT`.`IDColStrength` AS `IDColStrength`,`ColStrengthT`.`NameType` AS `NameType` from `ColStrengthT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DeasPestValDict`
--

/*!50001 DROP TABLE IF EXISTS `DeasPestValDict`*/;
/*!50001 DROP VIEW IF EXISTS `DeasPestValDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `DeasPestValDict` AS select `DeasPestValT`.`IDDeasPestVal` AS `IDDeasPestVal`,`DeasPestValT`.`NameType` AS `NameType` from `DeasPestValT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HarvestView`
--

/*!50001 DROP TABLE IF EXISTS `HarvestView`*/;
/*!50001 DROP VIEW IF EXISTS `HarvestView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `HarvestView` AS select `Harvest`.`IDHarvest` AS `IDHarvest`,`Harvest`.`IDHive` AS `IDHive`,`Harvest`.`DateHarvest` AS `DateHarvest`,`Harvest`.`Quantity` AS `Quantity`,if((`Harvest`.`BeeKeeperClothes` = 1),'YES','NO') AS `BeeKeeperClothes`,if((`Harvest`.`AllAssistantTools` = 1),'YES','NO') AS `AllAssistantTools`,if((`Harvest`.`Smoker` = 1),'YES','NO') AS `Smoker`,`Harvest`.`BucketNumber` AS `BucketNumber` from `Harvest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HiveCondDict`
--

/*!50001 DROP TABLE IF EXISTS `HiveCondDict`*/;
/*!50001 DROP VIEW IF EXISTS `HiveCondDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `HiveCondDict` AS select `HiveCondT`.`IDHiveCond` AS `IDHiveCond`,`HiveCondT`.`NameType` AS `NameType` from `HiveCondT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HiveStateDict`
--

/*!50001 DROP TABLE IF EXISTS `HiveStateDict`*/;
/*!50001 DROP VIEW IF EXISTS `HiveStateDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `HiveStateDict` AS select `HiveStateT`.`IDHiveState` AS `IDHiveState`,`HiveStateT`.`NameType` AS `NameType` from `HiveStateT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HiveTemperDict`
--

/*!50001 DROP TABLE IF EXISTS `HiveTemperDict`*/;
/*!50001 DROP VIEW IF EXISTS `HiveTemperDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `HiveTemperDict` AS select `HiveTemperT`.`IDHiveTemper` AS `IDHiveTemper`,`HiveTemperT`.`NameType` AS `NameType` from `HiveTemperT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HiveTypeDict`
--

/*!50001 DROP TABLE IF EXISTS `HiveTypeDict`*/;
/*!50001 DROP VIEW IF EXISTS `HiveTypeDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `HiveTypeDict` AS select `HiveTypeT`.`IDHiveType` AS `IDHiveType`,`HiveTypeT`.`NameType` AS `NameType` from `HiveTypeT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HiveView`
--

/*!50001 DROP TABLE IF EXISTS `HiveView`*/;
/*!50001 DROP VIEW IF EXISTS `HiveView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `HiveView` AS select `Hive`.`IDHive` AS `IDHive`,`Hive`.`IDApiary` AS `IDApiary`,`Hive`.`HiveNumber` AS `HiveNumber`,concat_ws(' | ',`GPS`.`LAT`,`GPS`.`LNG`) AS `GPS`,`Hive`.`PictureName` AS `PictureName`,`Hive`.`DateCreated` AS `DateCreated`,`HiveTypeDict`.`NameType` AS `HiveType`,`SunExpDict`.`NameType` AS `SunExp` from (((`Hive` left join `HiveTypeDict` on((`HiveTypeDict`.`IDHiveType` = `Hive`.`HiveTypeT`))) left join `SunExpDict` on((`SunExpDict`.`IDSunExp` = `Hive`.`SunExpT`))) left join `GPS` on((`GPS`.`IDGPS` = `Hive`.`IDGPS`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `InspectionView`
--

/*!50001 DROP TABLE IF EXISTS `InspectionView`*/;
/*!50001 DROP VIEW IF EXISTS `InspectionView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `InspectionView` AS select `Inspection`.`IDInspection` AS `IDInspection`,`Inspection`.`IDHive` AS `IDHive`,`Inspection`.`DateInspection` AS `DateInspection`,`WeatherCondDict`.`NameType` AS `WeatherCond`,`HiveStateDict`.`NameType` AS `HiveState`,`ColStrengthDict`.`NameType` AS `ColStrength`,`HiveTemperDict`.`NameType` AS `HiveTemper`,if((`Inspection`.`QueenCellInBrood` = 1),'YES','NO') AS `QueenCellInBrood`,`HoneyStores`.`NameType` AS `HoneyStores`,`PollyStores`.`NameType` AS `PollyStores`,`SmallBee`.`NameType` AS `SmallBee`,`Varrao`.`NameType` AS `Varrao`,if((`DeasPest`.`Ant` = 1),'YES','NO') AS `Ant`,if((`DeasPest`.`Brood` = 1),'YES','NO') AS `Brood`,`HiveCondDict`.`NameType` AS `HiveCond`,`BeeToolsCondDict`.`NameType` AS `BeeToolsCondDict` from ((((((((((((`Inspection` left join `WeatherCondDict` on((`Inspection`.`WeatherCondT` = `WeatherCondDict`.`IDWeatherCond`))) left join `HiveStateDict` on((`Inspection`.`HiveStateT` = `HiveStateDict`.`IDHiveState`))) left join `ColStrengthDict` on((`Inspection`.`ColStrengthT` = `ColStrengthDict`.`IDColStrength`))) left join `HiveTemperDict` on((`Inspection`.`HiveTemperT` = `HiveTemperDict`.`IDHiveTemper`))) left join `HiveCondDict` on((`Inspection`.`HiveCondT` = `HiveCondDict`.`IDHiveCond`))) left join `BeeToolsCondDict` on((`Inspection`.`BeeToolsCondT` = `BeeToolsCondDict`.`IDBeeToolsCond`))) left join `CombsCond` on((`CombsCond`.`IDCombsCond` = `Inspection`.`IDCombsCond`))) left join `DeasPest` on((`DeasPest`.`IDDeasPest` = `Inspection`.`IDDeasPest`))) left join `StoresDict` `HoneyStores` on((`HoneyStores`.`IDStores` = `CombsCond`.`HoneyStoresT`))) left join `StoresDict` `PollyStores` on((`PollyStores`.`IDStores` = `CombsCond`.`PollenStoresT`))) left join `DeasPestValDict` `SmallBee` on((`SmallBee`.`IDDeasPestVal` = `DeasPest`.`SmallBeeT`))) left join `DeasPestValDict` `Varrao` on((`Varrao`.`IDDeasPestVal` = `DeasPest`.`VarraoT`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `StoresDict`
--

/*!50001 DROP TABLE IF EXISTS `StoresDict`*/;
/*!50001 DROP VIEW IF EXISTS `StoresDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `StoresDict` AS select `StoresT`.`IDStores` AS `IDStores`,`StoresT`.`NameType` AS `NameType` from `StoresT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `SunExpDict`
--

/*!50001 DROP TABLE IF EXISTS `SunExpDict`*/;
/*!50001 DROP VIEW IF EXISTS `SunExpDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `SunExpDict` AS select `SunExpT`.`IDSunExp` AS `IDSunExp`,`SunExpT`.`NameType` AS `NameType` from `SunExpT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UserRoleDict`
--

/*!50001 DROP TABLE IF EXISTS `UserRoleDict`*/;
/*!50001 DROP VIEW IF EXISTS `UserRoleDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `UserRoleDict` AS select `UserRoleT`.`IDUserRole` AS `IDUserRole`,`UserRoleT`.`NameType` AS `NameType` from `UserRoleT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UserView`
--

/*!50001 DROP TABLE IF EXISTS `UserView`*/;
/*!50001 DROP VIEW IF EXISTS `UserView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `UserView` AS select `User`.`IDUser` AS `IDUser`,`User`.`NameUser` AS `NameUser`,`User`.`Login` AS `Login`,`User`.`UserPassword` AS `UserPassword`,`UserRoleDict`.`NameType` AS `UserRole`,`User`.`Email` AS `Email`,`User`.`Phone` AS `Phone` from (`User` left join `UserRoleDict` on((`UserRoleDict`.`IDUserRole` = `User`.`UserRoleT`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `WeatherCondDict`
--

/*!50001 DROP TABLE IF EXISTS `WeatherCondDict`*/;
/*!50001 DROP VIEW IF EXISTS `WeatherCondDict`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `WeatherCondDict` AS select `WeatherCondT`.`IDWeatherCond` AS `IDWeatherCond`,`WeatherCondT`.`NameType` AS `NameType` from `WeatherCondT` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-08  3:32:48
