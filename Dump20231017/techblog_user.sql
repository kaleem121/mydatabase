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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `about` varchar(1000) DEFAULT NULL,
  `rdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `profile` varchar(100) DEFAULT 'default.png',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (26,'Kaleem','kkl@gmail.com','kaleem121','on','Learner','2023-02-28 04:11:20','default.png'),(51,'kaleem','kk2l@gmail.com','fgfd','on','gfd','2023-03-02 03:26:40','default.png'),(58,'Ayush','ayush@gmail.com','123','on','I am an employee\r\n                           \r\n                           ','2023-03-03 04:29:36','download.jpg'),(59,'Tausif Ahmed','tsf@gmail.com','tsf@121','on','Computer expert','2023-03-04 13:21:35','default.png'),(61,'Amit','amt@gmail.com','amit121','on','amit','2023-03-04 14:33:52','default.png'),(62,'AMAR','amr@gmail.com','amar121','on','Student','2023-03-04 14:41:14','default.png'),(68,'Ahmad','ahmd@gmail.com','ahmad@121','male','Student','2023-03-08 04:40:17','default.png'),(69,'KALEEM AHMAD','kkal@gmail.com','KKL121','male','                            I am kaleem 1                                                        \r\n                           \r\n                           ','2023-03-12 12:04:34','error.png'),(71,'Anuj','anjk@gmail.com','anuj121','male','anuj','2023-03-12 12:06:51','default.png'),(72,'Atul K','atul2@gmail.com','atul121','male','                     kkr\r\n                           ','2023-03-12 12:09:48','error.png'),(73,'Afroz Sid','afroz@gmail.com','afroz@121','male','                           Businessman\r\n                           ','2023-04-01 15:23:14','pexels.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
