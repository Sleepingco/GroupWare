-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 144.24.92.25    Database: groupware
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `documentlibrary`
--

DROP TABLE IF EXISTS `documentlibrary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentlibrary` (
  `DocumentID` int NOT NULL AUTO_INCREMENT,
  `DocumentTitle` varchar(100) NOT NULL,
  `Writer` varchar(50) NOT NULL,
  `FileType` varchar(50) DEFAULT NULL,
  `FileSize` bigint DEFAULT NULL,
  `CreatedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `StorageType` varchar(255) DEFAULT 'all',
  PRIMARY KEY (`DocumentID`),
  KEY `Writer` (`Writer`),
  CONSTRAINT `documentlibrary_ibfk_1` FOREIGN KEY (`Writer`) REFERENCES `employees` (`Userid`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentlibrary`
--

LOCK TABLES `documentlibrary` WRITE;
/*!40000 ALTER TABLE `documentlibrary` DISABLE KEYS */;
INSERT INTO `documentlibrary` VALUES (157,'개인정보처리방침 예시 (1).hwp','관리자1','hwp',50688,'2023-10-17 04:55:53','all'),(158,'nhis-20230530161039945AO1 (1).pdf','0001','pdf',165427,'2023-10-18 00:51:46','all'),(159,'girl.png','0001','png',26387,'2023-10-18 00:51:46','all'),(160,'회사 공문 양식 - 복사본.docx','0001','docx',76118,'2023-10-18 01:02:45','0001'),(161,'[첨부자료]2-2.사업계획(신청)서(예시).pdf','0001','pdf',221834,'2023-10-18 01:02:45','0001');
/*!40000 ALTER TABLE `documentlibrary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21 12:22:56
