CREATE DATABASE  IF NOT EXISTS `project_bank` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `project_bank`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: project_bank
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `client_personal_details`
--

DROP TABLE IF EXISTS `client_personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_personal_details` (
  `customer_id` varchar(10) NOT NULL,
  `salutation` varchar(5) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `education` varchar(45) NOT NULL,
  `mother_name` varchar(45) NOT NULL,
  `father_name` varchar(45) NOT NULL,
  `guardian_name` varchar(45) DEFAULT NULL,
  `address_type` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `alt_mobile` varchar(10) DEFAULT NULL,
  `office_no` varchar(45) DEFAULT NULL,
  `state` varchar(50) NOT NULL,
  `propic` longblob NOT NULL,
  `signpic` longblob NOT NULL,
  `IP` varchar(70) NOT NULL,
  `IPID` varchar(100) NOT NULL,
  `AP` varchar(70) NOT NULL,
  `APID` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `acc_mail_UNIQUE` (`mail`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`),
  UNIQUE KEY `IPID_UNIQUE` (`IPID`),
  UNIQUE KEY `APID_UNIQUE` (`APID`),
  UNIQUE KEY `alt_mobile_UNIQUE` (`alt_mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_personal_details`
--

LOCK TABLES `client_personal_details` WRITE;
/*!40000 ALTER TABLE `client_personal_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_personal_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05 16:22:09
