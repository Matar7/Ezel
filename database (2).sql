
--
-- Host: localhost    Database: shipping
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (4,'Ahmad Halah','ahmadhalah','63a9f0ea7bb98050796b649e85481845');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zone_id` int NOT NULL,
  `city` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `same_day_price` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `next_day_price` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zone_id` (`zone_id`),
  CONSTRAINT `city` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (10,13,'Abdoun','3','5'),(11,13,'Mecca Street','10','40');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trade_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `client_zone` int NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pickup_address` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gmap_address` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sub_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bank_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bank_branch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_holder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Iban` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gmap_address_pickup` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (47,'iSpectra',13,'Ahmad Halah','https://mail.google.com/mail/u/0/','0795051547','https://mail.google.com/mail/u/0/','info@marceladecala.es','DEEMA AL AZZAH','Jordan','IT','Amman','1','Wakalat street','Arabi Bank','Swefieh','Ahmad Halah','asfasffa','https://mail.google.com/mail/u/0/');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_files`
--

DROP TABLE IF EXISTS `client_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `file_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `client_files_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_files`
--

LOCK TABLES `client_files` WRITE;
/*!40000 ALTER TABLE `client_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courier`
--

DROP TABLE IF EXISTS `courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courier_addresses` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_number` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notes` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courier`
--

LOCK TABLES `courier` WRITE;
/*!40000 ALTER TABLE `courier` DISABLE KEYS */;
INSERT INTO `courier` VALUES (5,'Halah','10','Amman','0795051547','1','Test');
/*!40000 ALTER TABLE `courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `consignee_name` varchar(250) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `delivery_cost_lodger` varchar(100) NOT NULL,
  `delivery_date` varchar(200) NOT NULL,
  `internal_notes` varchar(1000) NOT NULL,
  `courier_id` int NOT NULL,
  `address_from_zones` int NOT NULL,
  `shipment_value` varchar(250) NOT NULL,
  `address_sub_text` varchar(1000) NOT NULL,
  `status` int NOT NULL,
  `address_maps_link` varchar(2000) NOT NULL,
  `delivery_cost` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (400,47,'Ahmad Halah','0795051547','1','2','24-03-2020','Test',5,10,'50','Wakalat street',7,'https://www.google.com/maps/preview','40');
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zone` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_couriers_share` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charge_per_unit` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `base_weight` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra_fees_per_unit` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES (13,'West Amman','3','0','100','0');
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-24 18:43:27
