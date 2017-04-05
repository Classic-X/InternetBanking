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
-- Table structure for table `temp_regd`
--

DROP TABLE IF EXISTS `temp_regd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_regd` (
  `salutation` varchar(5) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `education` varchar(25) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `guardian_name` varchar(50) DEFAULT NULL,
  `address_type` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `alt_mobile` varchar(11) DEFAULT NULL,
  `office_no` varchar(11) DEFAULT NULL,
  `state` varchar(30) NOT NULL,
  `propic` longblob NOT NULL,
  `signpic` longblob NOT NULL,
  `acc_type` varchar(100) NOT NULL,
  `min_bal` decimal(10,0) NOT NULL,
  `cheque` varchar(20) DEFAULT NULL,
  `ATM` varchar(20) DEFAULT NULL,
  `IB` varchar(20) DEFAULT NULL,
  `SMS` varchar(20) DEFAULT NULL,
  `MB` varchar(20) DEFAULT NULL,
  `IP` varchar(70) NOT NULL,
  `IPID` varchar(100) NOT NULL,
  `AP` varchar(70) NOT NULL,
  `APID` varchar(100) NOT NULL,
  PRIMARY KEY (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_regd`
--

LOCK TABLES `temp_regd` WRITE;
/*!40000 ALTER TABLE `temp_regd` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_regd` ENABLE KEYS */;
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
