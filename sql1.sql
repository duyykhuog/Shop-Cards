CREATE DATABASE  IF NOT EXISTS `shopcards` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopcards`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopcards
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(225) DEFAULT NULL,
  `pass` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `isAdmin` int NOT NULL,
  `isActive` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  `deletedBy` varchar(225) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (13,'admin','2Om13rWExgMldVQKW2+k6aUb1pU=','doanquochao2509@gmail.com',1,1,NULL,NULL,NULL,NULL,NULL,NULL,358645404,'Ha Noi',5000000),(14,'hao','s6GbqfixPesacOZuAAKdBYYi9A8=','haodqhe172718@fpt.edu.vn',0,1,NULL,NULL,NULL,NULL,NULL,NULL,123456788,'Nam dinh',NULL),(25,'khuongnd','z3Bu5BGqAYAGpPg16NPCKQZP5tI=','khuong862k4@gmail.com',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  `DeleteBy` varchar(225) DEFAULT NULL,
  `DeleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Viettel','2024-05-18 14:20:05','haodq',NULL,1,NULL,NULL),(2,'Vinaphone','2024-05-18 14:20:05','haodq',NULL,1,NULL,NULL),(3,'Mobiphone','2024-05-18 14:20:05','haodq',NULL,1,NULL,NULL),(4,'Vietnammobile','2024-05-18 14:20:05','haodq',NULL,1,NULL,NULL),(5,'Garena','2024-05-18 14:20:05','haodq',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailcard`
--

DROP TABLE IF EXISTS `detailcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detailcard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Seri` varchar(45) DEFAULT NULL,
  `CardNumber` varchar(45) DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  `deleteBy` varchar(225) DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product` (`ProductId`),
  CONSTRAINT `fk_product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailcard`
--

LOCK TABLES `detailcard` WRITE;
/*!40000 ALTER TABLE `detailcard` DISABLE KEYS */;
INSERT INTO `detailcard` VALUES (1,'123','1234',2,NULL,NULL,NULL,1,NULL,'2024-07-06 18:04:03'),(2,'234','2345',2,NULL,NULL,NULL,1,NULL,'2024-07-06 18:10:18'),(3,'567','9876',2,NULL,NULL,NULL,1,NULL,'2024-07-06 18:10:51'),(4,'368','6789',2,NULL,NULL,NULL,1,NULL,'2024-07-06 18:18:01'),(5,'567','8905',3,NULL,NULL,NULL,1,NULL,'2024-07-06 18:04:03'),(6,'235','4567',3,NULL,NULL,NULL,1,NULL,'2024-07-06 18:18:31'),(7,'154','0834',3,NULL,NULL,NULL,1,NULL,'2024-07-06 18:20:39'),(8,'267','90348',4,NULL,NULL,NULL,1,NULL,'2024-07-06 18:04:03'),(9,'294','043275',4,NULL,NULL,NULL,1,NULL,'2024-07-06 18:25:25'),(10,'82934','09175',4,NULL,NULL,NULL,1,NULL,'2024-07-15 15:23:05'),(11,'289346','2394',4,NULL,NULL,NULL,1,NULL,'2024-07-15 15:23:05'),(12,'912485','91045',5,NULL,NULL,NULL,1,NULL,'2024-07-15 15:23:05'),(13,'190847','230487',5,NULL,NULL,NULL,1,NULL,'2024-07-15 15:23:05'),(14,'190235781','12092034',5,NULL,NULL,NULL,1,NULL,'2024-07-15 15:23:05'),(15,'10924571','893465',5,NULL,NULL,NULL,1,NULL,'2024-07-15 15:23:05'),(16,'1094','19847124',6,NULL,NULL,NULL,1,NULL,'2024-07-08 11:53:05'),(17,'194184','184193864',6,NULL,NULL,NULL,1,NULL,'2024-07-08 11:53:05'),(18,'1894756','1947563214',6,NULL,NULL,NULL,1,NULL,'2024-07-08 11:53:05'),(19,'891234756','10945614095',6,NULL,NULL,NULL,1,NULL,'2024-07-08 11:53:05'),(20,'8236514','1092347',7,NULL,NULL,NULL,1,NULL,'2024-07-15 15:23:05'),(21,'2938074','15723123',7,NULL,NULL,NULL,NULL,NULL,NULL),(22,'1341982','137649213',7,NULL,NULL,NULL,1,NULL,'2024-07-15 15:23:05'),(23,'10941321','17846519',8,NULL,NULL,NULL,NULL,NULL,NULL),(24,'127964','10293471948',8,NULL,NULL,NULL,NULL,NULL,NULL),(25,'23786419','19746342309',8,NULL,NULL,NULL,NULL,NULL,NULL),(26,'19764134','12736419',9,NULL,NULL,NULL,NULL,NULL,NULL),(27,'1928347','912478',9,NULL,NULL,NULL,NULL,NULL,NULL),(28,'1897246','1234691',9,NULL,NULL,NULL,NULL,NULL,NULL),(29,'110923478','18762349104',10,NULL,NULL,NULL,NULL,NULL,NULL),(30,'12896479','12451092',10,NULL,NULL,NULL,NULL,NULL,NULL),(31,'1286459178','127304',10,NULL,NULL,NULL,NULL,NULL,NULL),(32,'19026409','91269424',11,NULL,NULL,NULL,NULL,NULL,NULL),(33,'192074912','12784',11,NULL,NULL,NULL,NULL,NULL,NULL),(34,'196497124','62354',11,NULL,NULL,NULL,NULL,NULL,NULL),(35,'9817264','9781624',12,NULL,NULL,NULL,NULL,NULL,NULL),(36,'091874','9176293',12,NULL,NULL,NULL,NULL,NULL,NULL),(37,'126746','971264',12,NULL,NULL,NULL,NULL,NULL,NULL),(38,'617926427','812974',13,NULL,NULL,NULL,NULL,NULL,NULL),(39,'1984619','9176249',13,NULL,NULL,NULL,NULL,NULL,NULL),(40,'781624','97162',13,NULL,NULL,NULL,NULL,NULL,NULL),(41,'712947','1972634',14,NULL,NULL,NULL,NULL,NULL,NULL),(42,'1094723','7126347',14,NULL,NULL,NULL,NULL,NULL,NULL),(43,'1947912','1724',14,NULL,NULL,NULL,NULL,NULL,NULL),(44,'9162349','927613479',15,NULL,NULL,NULL,NULL,NULL,NULL),(45,'891762347','12764',15,NULL,NULL,NULL,NULL,NULL,NULL),(46,'791697467','8912734',15,NULL,NULL,NULL,NULL,NULL,NULL),(47,'178624','7962194',16,NULL,NULL,NULL,NULL,NULL,NULL),(48,'16312','7236',16,NULL,NULL,NULL,NULL,NULL,NULL),(49,'9712649','7234894',16,NULL,NULL,NULL,NULL,NULL,NULL),(50,'186242','79432',17,NULL,NULL,NULL,NULL,NULL,NULL),(51,'16914','92374',17,NULL,NULL,NULL,NULL,NULL,NULL),(52,'971649','9812374',17,NULL,NULL,NULL,NULL,NULL,NULL),(53,'916479','47823',18,NULL,NULL,NULL,NULL,NULL,NULL),(54,'167209471','178243',18,NULL,NULL,NULL,NULL,NULL,NULL),(55,'1724082','9231784',18,NULL,NULL,NULL,NULL,NULL,NULL),(56,'17293749','0124732834',19,NULL,NULL,NULL,NULL,NULL,NULL),(57,'9481724','1928347',19,NULL,NULL,NULL,NULL,NULL,NULL),(58,'9172497','48234234',19,NULL,NULL,NULL,NULL,NULL,NULL),(59,'817346','2372',20,NULL,NULL,NULL,NULL,NULL,NULL),(60,'12794','482094',20,NULL,NULL,NULL,NULL,NULL,NULL),(61,'84127','1728946',20,NULL,NULL,NULL,NULL,NULL,NULL),(62,'1280437','79236',21,NULL,NULL,NULL,NULL,NULL,NULL),(63,'34567','2197647',21,NULL,NULL,NULL,NULL,NULL,NULL),(64,'1724612','17641234',21,NULL,NULL,NULL,NULL,NULL,NULL),(65,'91762437','19472',22,NULL,NULL,NULL,NULL,NULL,NULL),(66,'1892346','18273468',22,NULL,NULL,NULL,NULL,NULL,NULL),(67,'7198234','1297634',22,NULL,NULL,NULL,NULL,NULL,NULL),(68,'182346','2719364',22,NULL,NULL,NULL,NULL,NULL,NULL),(69,'123','123',2,NULL,NULL,NULL,1,NULL,'2024-07-17 12:00:38'),(70,'123213','12312313',2,NULL,NULL,NULL,NULL,NULL,NULL),(71,'98756','678768',2,NULL,NULL,NULL,NULL,NULL,NULL),(72,'45454','45453',2,NULL,NULL,NULL,NULL,NULL,NULL),(73,'12313','11123',3,NULL,NULL,NULL,NULL,NULL,NULL),(74,'111','33',3,NULL,NULL,NULL,NULL,NULL,NULL),(75,'3121','1123123',4,NULL,NULL,NULL,NULL,NULL,NULL),(76,'1213','1231231',4,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `detailcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `productID` int NOT NULL,
  `amount` int NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  `deleteBy` varchar(225) DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`productID`),
  CONSTRAINT `FK_Inventory_Product` FOREIGN KEY (`productID`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (2,5,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,NULL,NULL,NULL,NULL,NULL,NULL),(6,4,NULL,NULL,NULL,NULL,NULL,NULL),(7,2,NULL,NULL,NULL,NULL,NULL,NULL),(8,3,NULL,NULL,NULL,NULL,NULL,NULL),(9,3,NULL,NULL,NULL,NULL,NULL,NULL),(10,3,NULL,NULL,NULL,NULL,NULL,NULL),(11,6,NULL,NULL,NULL,NULL,NULL,NULL),(12,3,NULL,NULL,NULL,NULL,NULL,NULL),(13,3,NULL,NULL,NULL,NULL,NULL,NULL),(14,3,NULL,NULL,NULL,NULL,NULL,NULL),(15,3,NULL,NULL,NULL,NULL,NULL,NULL),(16,3,NULL,NULL,NULL,NULL,NULL,NULL),(17,3,NULL,NULL,NULL,NULL,NULL,NULL),(18,3,NULL,NULL,NULL,NULL,NULL,NULL),(19,3,NULL,NULL,NULL,NULL,NULL,NULL),(20,3,NULL,NULL,NULL,NULL,NULL,NULL),(21,3,NULL,NULL,NULL,NULL,NULL,NULL),(22,4,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `card_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `card_id` (`card_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`card_id`) REFERENCES `detailcard` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,1),(2,2,2),(3,2,5),(4,3,3),(5,4,4),(6,11,16),(7,11,16),(8,12,6),(9,12,17),(10,15,18),(11,16,20),(12,17,5),(13,17,8),(14,17,1),(15,18,2),(16,19,3),(17,20,4),(18,21,6),(19,22,7),(20,23,9),(21,24,16),(22,24,19),(23,24,18),(24,24,17),(25,25,10),(26,25,22),(27,25,15),(28,25,13),(29,25,11),(30,25,14),(31,25,20),(32,25,12),(33,26,69);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,13,20000,'2024-07-05 19:31:23','Completed'),(2,13,70000,'2024-07-05 19:34:01','Completed'),(3,13,20000,'2024-07-05 22:13:28','Completed'),(4,13,20000,'2024-07-05 22:14:06','Completed'),(5,13,20000,'2024-07-05 22:15:22','Completed'),(6,13,20000,'2024-07-05 22:15:32','Completed'),(7,13,20000,'2024-07-05 22:15:43','Completed'),(8,13,0,'2024-07-05 22:16:07','Completed'),(9,13,20000,'2024-07-05 22:16:23','Completed'),(10,13,20000,'2024-07-05 22:22:04','Completed'),(11,13,20000,'2024-07-05 22:22:32','Completed'),(12,13,60000,'2024-07-05 22:22:58','Completed'),(13,13,20000,'2024-07-05 22:27:08','Completed'),(14,13,0,'2024-07-05 22:38:29','Completed'),(15,13,20000,'2024-07-06 12:02:23','Completed'),(16,13,40000,'2024-07-06 12:23:10','Completed'),(17,13,340000,'2024-07-06 18:04:03','Completed'),(18,13,40000,'2024-07-06 18:10:18','Completed'),(19,13,40000,'2024-07-06 18:10:51','Completed'),(20,13,40000,'2024-07-06 18:18:01','Completed'),(21,13,100000,'2024-07-06 18:18:31','Completed'),(22,13,100000,'2024-07-06 18:20:39','Completed'),(23,13,100000,'2024-07-06 18:25:25','Completed'),(24,13,40000,'2024-07-08 11:53:04','Completed'),(25,13,2240000,'2024-07-15 15:23:05','Completed'),(26,13,20000,'2024-07-17 12:00:38','Completed');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `image` text,
  `price` int DEFAULT NULL,
  `cateID` int DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  `deleteBy` varchar(225) DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Product_Category` (`cateID`),
  CONSTRAINT `FK_Product_Category` FOREIGN KEY (`cateID`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'Thẻ viettel 20k','https://daily.gate.vn/Skin/images/Logos/card-viettel.jpg',20000,1,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(3,'Thẻ viettel 50k','https://daily.gate.vn/Skin/images/Logos/card-viettel.jpg',50000,1,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(4,'Thẻ viettel 100k','https://daily.gate.vn/Skin/images/Logos/card-viettel.jpg',100000,1,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(5,'Thẻ viettel 500k','https://daily.gate.vn/Skin/images/Logos/card-viettel.jpg',500000,1,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(6,'Thẻ Vina 10k','https://daily.gate.vn/Skin/images/Logos/card-vinaphone.jpg',10000,2,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(7,'Thẻ Vina 20k','https://daily.gate.vn/Skin/images/Logos/card-vinaphone.jpg',20000,2,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(8,'Thẻ Vina 50k','https://daily.gate.vn/Skin/images/Logos/card-vinaphone.jpg',50000,2,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(9,'Thẻ Vina 100k','https://daily.gate.vn/Skin/images/Logos/card-vinaphone.jpg',100000,2,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(10,'Thẻ Vina 500k','https://daily.gate.vn/Skin/images/Logos/card-vinaphone.jpg',500000,2,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(11,'Thẻ Mobi 20k','https://daily.gate.vn/Skin/images/Logos/card-mobifone.jpg',20000,3,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(12,'Thẻ Mobi 50k','https://daily.gate.vn/Skin/images/Logos/card-mobifone.jpg',50000,3,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(13,'Thẻ Mobi 100k','https://daily.gate.vn/Skin/images/Logos/card-mobifone.jpg',100000,3,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(14,'Thẻ Mobi 500k','https://daily.gate.vn/Skin/images/Logos/card-mobifone.jpg',500000,3,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(15,'Thẻ Vietnam 20k','https://daily.gate.vn/Skin/images/Logos/card-vietnamobile.jpg',20000,4,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(16,'Thẻ Vietnam 50k','https://daily.gate.vn/Skin/images/Logos/card-vietnamobile.jpg',50000,4,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(17,'Thẻ Vietnam 100k','https://daily.gate.vn/Skin/images/Logos/card-vietnamobile.jpg',100000,4,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(18,'Thẻ Vietnam 500k','https://daily.gate.vn/Skin/images/Logos/card-vietnamobile.jpg',500000,4,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(19,'Thẻ Garena 20k','https://daily.gate.vn/Skin/images/Logos/card-garena.jpg',20000,5,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(20,'Thẻ Garena 50k','https://daily.gate.vn/Skin/images/Logos/card-garena.jpg',50000,5,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(21,'Thẻ Garena 100k','https://daily.gate.vn/Skin/images/Logos/card-garena.jpg',100000,5,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(22,'Thẻ Garena 200k','https://daily.gate.vn/Skin/images/Logos/card-garena.jpg',200000,5,'haodq','2024-05-18 14:20:05',NULL,0,NULL,NULL),(23,'Thẻ viettel 150k','https://daily.gate.vn/Skin/images/Logos/card-viettel.jpg',150000,1,NULL,NULL,NULL,0,NULL,NULL),(24,'Thẻ viettel 15k','https://daily.gate.vn/Skin/images/Logos/card-viettel.jpg',15000,1,NULL,NULL,NULL,0,NULL,NULL),(25,'Thẻ viettel 300k','https://daily.gate.vn/Skin/images/Logos/card-viettel.jpg',300000,1,NULL,NULL,NULL,0,NULL,NULL),(26,'Thẻ viettel 30k','https://daily.gate.vn/Skin/images/Logos/card-viettel.jpg',30000,1,NULL,NULL,NULL,0,NULL,NULL),(27,'Thẻ viettel 40k','https://daily.gate.vn/Skin/images/Logos/card-viettel.jpg',40000,1,NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` varchar(50) NOT NULL,
  `processed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('08507596','2024-07-27 05:58:48'),('14518635','2024-07-25 10:55:15'),('35693594','2024-07-25 11:36:59'),('40376017','2024-07-25 10:55:40'),('61113816','2024-07-25 11:22:37'),('61656412','2024-07-25 11:30:28'),('64981900','2024-07-26 18:22:47'),('66362274','2024-07-25 17:01:14'),('75729833','2024-07-25 16:58:26'),('80369442','2024-07-25 10:56:43'),('95841493','2024-07-26 18:14:45');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-02 10:53:49
