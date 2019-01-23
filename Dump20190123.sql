CREATE DATABASE  IF NOT EXISTS `Flipkart` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Flipkart`;
-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: Flipkart
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `BUYER_INFORMATION`
--

DROP TABLE IF EXISTS `BUYER_INFORMATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BUYER_INFORMATION` (
  `SKEY` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(45) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`SKEY`,`USER_NAME`),
  UNIQUE KEY `USER_NAME_UNIQUE` (`USER_NAME`),
  UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BUYER_INFORMATION`
--

LOCK TABLES `BUYER_INFORMATION` WRITE;
/*!40000 ALTER TABLE `BUYER_INFORMATION` DISABLE KEYS */;
INSERT INTO `BUYER_INFORMATION` VALUES (7,'JP0007','Jagatdeep Pattnaik','jagatdeepjp@gmail.com','jagat123','1996-02-20');
/*!40000 ALTER TABLE `BUYER_INFORMATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_item`
--

DROP TABLE IF EXISTS `tbl_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_item` (
  `surr_key` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `pic_location` varchar(200) NOT NULL,
  `seller_id` varchar(200) NOT NULL,
  `price` int(20) NOT NULL,
  `discount` int(20) DEFAULT NULL,
  `cat_id` varchar(30) NOT NULL,
  `sub_cat_id` varchar(30) NOT NULL,
  PRIMARY KEY (`surr_key`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_item`
--

LOCK TABLES `tbl_item` WRITE;
/*!40000 ALTER TABLE `tbl_item` DISABLE KEYS */;
INSERT INTO `tbl_item` VALUES (1,100678,'Honor 10 Lite','This is first item','/home/anirudh/img.png','IndiflashMart',30400,20,'Electronics','Mobiles'),(2,100679,'Samsung J2 Prime','This is second item','/home/anirudh/img1.png','Visonstar',12400,10,'Electronics','Mobiles'),(3,100778,'Tissot','This is third item','/home/anirudh/img2.png','Truecom',50400,5,'Men','Watch'),(4,100878,'Mi LED Smart TV','This is Last item','/home/anirudh/img3.png','Truecom',100400,25,'Electronics','Television');
/*!40000 ALTER TABLE `tbl_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Flipkart'
--

--
-- Dumping routines for database 'Flipkart'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-24  0:23:45
