CREATE DATABASE  IF NOT EXISTS `techblog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `techblog`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: techblog
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pTitle` varchar(150) NOT NULL,
  `pContent` longtext,
  `pCode` longtext,
  `pPic` varchar(100) DEFAULT NULL,
  `pDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cid` int DEFAULT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `cid_idx` (`cid`),
  KEY `userId_idx` (`userId`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'First Title','Testing content','Testing code','error.png','2023-05-16 17:42:08',1,26),(3,'Python Title','Python Content','Python Code','Exc.jpg','2023-05-16 18:07:57',2,71),(4,'Python Title','Python Content','Python Code','Exc.jpg','2023-05-16 18:13:09',2,71),(5,'Python Title','Python Content','Python Code','sample.jpeg','2023-05-16 18:21:48',2,71),(6,'JAVA TITLE','JAVA CONTENT','JAVA CODE','sample.jpeg','2023-05-16 18:24:09',1,26),(8,'my title','cntnt','codde','sample2.jpeg','2023-05-16 18:40:32',1,72),(9,'Title','cntn','cdd','sample.jpeg','2023-05-17 17:07:58',1,72),(10,'ttl','ctn','cd','sample.jpeg','2023-05-17 17:15:31',2,72),(11,'ttl','ctn','cd','sample.jpeg','2023-05-17 17:15:46',2,72),(12,'ttl','ctn','cd','sample.jpeg','2023-05-17 17:16:34',2,72),(13,'my title','ctn','cdd','sample.jpeg','2023-05-17 17:25:47',2,72),(14,'hh','jhg','jh','sample.jpeg','2023-05-17 17:29:01',1,72),(15,'hh','jhg','jh','sample2.jpeg','2023-05-17 17:29:52',1,72);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-17 22:59:54
