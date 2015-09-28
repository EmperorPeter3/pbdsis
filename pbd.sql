-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pbdsis
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Petr Ivanov','petr@jfdjf.ru'),(61,'Alice Dominguez','purus.mauris@Aliquam.com'),(62,'Aurora Colon','orci.Donec.nibh@velturpis.ca'),(63,'Sacha Pearson','a.facilisis@dictum.net'),(64,'Lucian Eaton','mollis.Integer.tincidunt@atiaculisquis.com'),(65,'Jermaine Cooke','Proin.ultrices@nibhDonec.ca'),(66,'Seth Mooney','laoreet.ipsum@eutempor.ca'),(67,'Doris Brennan','enim.Etiam@loremtristiquealiquet.com'),(68,'Ulysses Brady','nec.urna.et@magnaNam.org'),(69,'Macon Barron','quis@pedemalesuadavel.co.uk'),(70,'Ishmael Bird','amet.consectetuer.adipiscing@miloremvehicula.org'),(71,'Gay Sharpe','Curabitur.massa@Duisac.edu'),(72,'MacKensie Sheppard','sit@facilisislorem.edu'),(73,'Britanni Gay','mollis@arcu.org'),(74,'August Wheeler','iaculis.lacus@nasceturridiculusmus.co.uk'),(75,'Flynn Best','risus.odio@Maurisblandit.org'),(76,'Pearl Morton','arcu@Crasdictum.com'),(77,'Denise Collins','Nullam.enim@vitaesemperegestas.com'),(78,'Kelsey Conway','non@diamdictumsapien.org'),(79,'Alea Lester','ultricies@urna.ca'),(80,'Malik Wise','iaculis.lacus.pede@Etiam.edu');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (11,'Ceramic tile'),(12,'Steel'),(13,'iron'),(14,'concrete '),(15,'Molding'),(16,'parquet'),(17,'Rafter'),(18,'Rebar'),(19,'gypsum board'),(20,'brick');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `client_id` int(11) NOT NULL,
  `spending` decimal(12,2) NOT NULL,
  `finished` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `objects_clients` (`client_id`),
  CONSTRAINT `objects_clients` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,'In Felis Ltd',102215.19,80,88312.26,1),(2,'Quisque Imperdiet Incorporated',102562.41,77,75371.23,1),(3,'Eget Associates',105276.40,76,91818.05,0),(4,'Elit Pede Malesuada Associates',96525.54,78,85922.13,1),(5,'Elit Industries',102566.95,63,77813.63,1),(6,'Senectus Foundation',102465.48,65,79417.35,1),(7,'Felis LLC',99185.19,74,71089.02,1),(8,'Faucibus Id Libero Associates',100419.83,65,76331.68,1),(9,'Nam Interdum Enim Corporation',94719.15,78,75618.57,1),(10,'Nonummy Ultricies Ornare Ltd',99999.48,72,69750.33,1),(11,'Dolor Elit Limited',101573.90,77,80808.51,1),(12,'Magna Consulting',106737.74,72,98711.64,1),(13,'Lobortis Tellus Justo Corp.',96939.35,67,68631.43,1),(14,'Et Netus Et LLC',98622.66,65,75671.69,0),(15,'Faucibus Morbi Vehicula Foundation',98104.85,69,72210.61,1),(16,'Ridiculus Limited',98723.03,65,79353.69,0),(17,'Sagittis Nullam Vitae LLP',99399.54,70,77782.22,1),(18,'Ultrices Vivamus Limited',101531.43,61,76539.92,1),(19,'Non Bibendum Sed Consulting',100723.82,70,82126.06,0),(20,'Donec Porttitor Incorporated',101049.04,80,85832.27,1),(21,'Arcu Vestibulum Corporation',100223.16,62,79596.70,1),(22,'Facilisis Facilisis Magna Corporation',99979.86,75,77947.88,1),(23,'Suspendisse LLP',99906.25,62,85886.46,0),(24,'Ut Corp.',97369.00,69,80365.50,0),(25,'Netus Et Company',105001.76,63,78836.13,1),(26,'Sed Libero Proin Inc.',100734.51,70,76120.65,0),(27,'Lacus Varius Industries',101562.89,76,90730.71,0),(28,'Nunc Id LLP',106149.97,62,78339.71,1),(29,'Elit Sed Consequat Corporation',98907.70,63,82569.39,1),(30,'Ante Vivamus Non Associates',95696.06,69,84061.41,0);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professions`
--

DROP TABLE IF EXISTS `professions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professions`
--

LOCK TABLES `professions` WRITE;
/*!40000 ALTER TABLE `professions` DISABLE KEYS */;
INSERT INTO `professions` VALUES (1,'Engineer'),(2,'Painter'),(3,'Carpenter'),(4,'Foreman'),(5,'Cleaner'),(6,'Waterpot'),(7,'Assembling'),(8,'Builder');
/*!40000 ALTER TABLE `professions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost` decimal(12,2) NOT NULL,
  `count` decimal(7,3) NOT NULL,
  `object_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_objects` (`object_id`),
  KEY `purchases_materials` (`material_id`),
  CONSTRAINT `purchases_materials` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`),
  CONSTRAINT `purchases_objects` FOREIGN KEY (`object_id`) REFERENCES `objects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,483.31,7.000,12,16),(2,567.77,5.000,1,12),(3,439.95,1.000,11,18),(4,524.20,8.000,12,16),(5,508.07,2.000,29,17),(6,579.31,4.000,8,19),(7,331.52,4.000,20,14),(8,514.57,7.000,4,18),(9,453.54,7.000,19,20),(10,512.64,5.000,4,20),(11,528.24,6.000,8,16),(12,501.66,8.000,17,11),(13,619.80,8.000,2,17),(14,468.99,1.000,6,14),(15,514.86,1.000,12,14),(16,659.76,9.000,19,19),(17,492.48,1.000,10,17),(18,554.89,1.000,14,15),(19,416.77,7.000,12,20),(20,475.77,8.000,8,19),(21,483.42,2.000,28,19),(22,548.94,3.000,20,19),(23,517.79,7.000,13,14),(24,362.99,3.000,11,16),(25,498.65,9.000,21,17),(26,512.80,5.000,11,13),(27,469.18,8.000,2,19),(28,572.21,9.000,2,18),(29,528.66,1.000,17,18),(30,477.75,3.000,28,17),(31,521.72,2.000,2,17),(32,519.17,3.000,27,12),(33,495.24,7.000,15,18),(34,452.10,1.000,28,13),(35,614.44,3.000,9,15),(36,426.66,5.000,9,16),(37,487.25,10.000,29,16),(38,577.62,8.000,26,18),(39,479.42,8.000,9,11),(40,371.76,9.000,21,19),(41,575.81,1.000,17,15),(42,398.98,8.000,4,20),(43,449.62,4.000,19,16),(44,472.05,1.000,20,18),(45,459.99,7.000,26,19),(46,387.74,9.000,1,12),(47,658.38,1.000,5,17),(48,507.93,1.000,9,14),(49,612.79,2.000,24,17),(50,510.46,1.000,25,13),(51,610.45,2.000,11,18),(52,486.71,8.000,8,18),(53,540.59,9.000,28,18),(54,365.79,6.000,2,16),(55,453.65,10.000,29,15),(56,581.01,1.000,14,16),(57,499.26,10.000,10,14),(58,585.22,3.000,13,14),(59,519.64,7.000,19,18),(60,449.07,3.000,5,13),(61,518.43,9.000,16,19),(62,484.47,2.000,23,17),(63,440.02,4.000,2,12),(64,486.29,6.000,26,12),(65,475.86,5.000,7,18),(66,562.94,3.000,11,18),(67,428.35,3.000,10,18),(68,460.30,9.000,12,15),(69,517.95,2.000,5,17),(70,517.81,2.000,21,17),(71,543.06,8.000,12,18),(72,574.40,4.000,30,19),(73,515.07,10.000,24,15),(74,535.36,5.000,27,19),(75,471.68,4.000,14,18),(76,587.38,3.000,5,19),(77,460.09,5.000,19,17),(78,594.89,7.000,19,15),(79,570.84,8.000,26,16),(80,363.83,4.000,14,14),(81,512.48,4.000,21,15),(82,503.03,3.000,28,17),(83,541.34,10.000,26,11),(84,383.45,10.000,25,15),(85,495.28,8.000,19,19),(86,533.24,6.000,23,11),(87,474.84,5.000,12,11),(88,414.58,5.000,4,17),(89,527.17,10.000,2,12),(90,433.25,7.000,11,19),(91,381.43,8.000,29,16),(92,566.76,6.000,4,17),(93,512.92,2.000,28,19),(94,414.55,7.000,3,12),(95,573.65,5.000,27,15),(96,444.00,1.000,14,20),(97,486.27,5.000,1,16),(98,469.70,8.000,17,11),(99,478.84,9.000,17,19),(100,669.85,3.000,10,15);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `prof_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `salary_objects` (`object_id`),
  KEY `salary_workers` (`worker_id`),
  KEY `prof_id` (`prof_id`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`prof_id`) REFERENCES `professions` (`id`),
  CONSTRAINT `salary_objects` FOREIGN KEY (`object_id`) REFERENCES `objects` (`id`),
  CONSTRAINT `salary_workers` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,9,60,1,677.05,5),(2,2,42,1,-102.54,4),(3,30,71,1,1427.78,1),(4,18,96,1,120.35,2),(5,25,100,1,1392.08,4),(6,19,27,1,1610.67,7),(7,13,100,0,-316.44,8),(8,20,46,1,1352.65,3),(9,24,76,1,279.66,5),(10,11,68,0,1245.50,6),(11,30,64,1,661.21,7),(12,9,15,1,631.35,3),(13,20,37,1,1935.01,5),(14,6,46,1,1820.93,2),(15,5,52,1,-1195.40,6),(16,30,4,0,1426.14,5),(17,19,90,1,1856.36,5),(18,5,53,0,1529.44,2),(19,8,29,0,356.70,1),(20,24,51,0,1893.22,5),(21,9,100,0,1694.64,7),(22,17,17,0,597.57,7),(23,5,2,0,566.76,4),(24,13,62,1,987.03,4),(25,14,13,0,580.25,6),(26,23,94,1,1433.86,4),(27,4,77,0,1404.08,2),(28,24,87,0,407.08,2),(29,24,62,0,898.82,2),(30,14,17,1,1048.93,4),(31,24,21,1,2134.22,1),(32,4,83,0,309.09,6),(33,13,52,1,2028.77,6),(34,3,32,0,512.57,4),(35,24,47,1,1760.98,7),(36,23,74,0,-667.34,8),(37,13,9,1,1065.93,4),(38,19,38,1,1197.57,1),(39,28,59,0,40.64,7),(40,1,62,1,1521.94,4),(41,12,36,1,670.59,3),(42,22,31,1,1290.01,3),(43,21,94,1,1393.49,6),(44,29,88,1,748.97,7),(45,9,95,1,759.05,8),(46,3,40,0,716.81,3),(47,19,80,0,2303.85,4),(48,15,96,1,404.05,2),(49,27,69,0,291.92,4),(50,28,91,1,-66.16,2),(51,1,46,0,1381.68,8),(52,25,13,0,1832.52,4),(53,23,42,0,924.51,3),(54,16,13,1,194.35,3),(55,15,39,0,546.45,5),(56,20,61,0,944.57,7),(57,4,8,0,1529.12,4),(58,15,47,0,1366.57,7),(59,21,14,0,564.32,7),(60,2,84,0,294.32,1),(61,30,88,0,1994.94,3),(62,6,46,0,882.70,5),(63,23,86,1,1044.25,2),(64,5,14,1,1336.10,7),(65,14,74,0,1620.61,8),(66,10,19,1,931.13,2),(67,2,42,1,306.76,5),(68,11,71,0,810.71,4),(69,8,22,0,652.73,5),(70,10,96,1,1644.73,5),(71,25,23,1,1475.42,3),(72,29,87,0,1582.11,7),(73,25,39,1,1702.19,4),(74,13,95,1,907.07,2),(75,24,25,0,1230.86,7),(76,24,89,1,1638.63,6),(77,27,47,1,537.04,2),(78,9,56,1,1389.47,3),(79,25,51,0,744.00,8),(80,6,57,1,1324.78,2),(81,13,33,0,769.83,6),(82,24,21,0,2252.23,4),(83,10,83,0,1218.61,7),(84,1,71,1,-71.07,7),(85,26,53,1,2010.81,8),(86,21,68,0,1093.42,1),(87,27,17,1,1055.06,3),(88,24,12,1,503.05,6),(89,28,47,1,400.70,2),(90,22,73,0,125.99,8),(91,17,26,0,937.35,2),(92,30,67,1,1150.84,2),(93,14,73,0,1612.08,7),(94,12,4,0,692.26,3),(95,7,100,0,1835.43,5),(96,8,27,1,818.49,7),(97,23,23,1,1754.23,4),(98,9,14,0,314.88,1),(99,19,99,1,2059.73,5),(100,1,62,1,1015.57,2);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'Kay'),(2,'Unity'),(3,'Alyssa'),(4,'Jillian'),(5,'Veronica'),(6,'Martina'),(7,'Gay'),(8,'Liberty'),(9,'Hedwig'),(10,'Hadley'),(11,'Willow'),(12,'Imani'),(13,'Sydney'),(14,'Azalia'),(15,'Anne'),(16,'Ashely'),(17,'Yvette'),(18,'Kiona'),(19,'Carolyn'),(20,'Ima'),(21,'Irma'),(22,'Cheryl'),(23,'Hedy'),(24,'Sydney'),(25,'Emi'),(26,'Lenore'),(27,'Nell'),(28,'Kim'),(29,'Maryam'),(30,'Noel'),(31,'Lavinia'),(32,'Melissa'),(33,'Amaya'),(34,'Penelope'),(35,'Nita'),(36,'Libby'),(37,'Gloria'),(38,'Hillary'),(39,'Ruby'),(40,'Kelsey'),(41,'Darrel'),(42,'Isabelle'),(43,'Cally'),(44,'Quintessa'),(45,'Amela'),(46,'Beatrice'),(47,'Alice'),(48,'Bell'),(49,'Vanna'),(50,'Kaden'),(51,'Raya'),(52,'Savannah'),(53,'Barbara'),(54,'Chiquita'),(55,'Naomi'),(56,'Alana'),(57,'Mari'),(58,'Evelyn'),(59,'Indigo'),(60,'Kelsey'),(61,'Meghan'),(62,'Scarlett'),(63,'Desiree'),(64,'Gisela'),(65,'Angelica'),(66,'Sharon'),(67,'Pascale'),(68,'Kai'),(69,'Hollee'),(70,'Cassidy'),(71,'Emily'),(72,'Shafira'),(73,'Macy'),(74,'Kaye'),(75,'Patience'),(76,'Leila'),(77,'Deborah'),(78,'Ivana'),(79,'Lillian'),(80,'Yvette'),(81,'Colette'),(82,'Olympia'),(83,'Ashely'),(84,'Quyn'),(85,'Cassidy'),(86,'Belle'),(87,'Jaden'),(88,'Rae'),(89,'Signe'),(90,'Renee'),(91,'Eden'),(92,'Quynn'),(93,'Sopoline'),(94,'Amber'),(95,'Cathleen'),(96,'Aphrodite'),(97,'Ramona'),(98,'Kirsten'),(99,'Amy'),(100,'Shea');
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-28 22:12:47
