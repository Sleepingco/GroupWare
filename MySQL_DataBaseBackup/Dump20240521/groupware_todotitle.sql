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
-- Table structure for table `todotitle`
--

DROP TABLE IF EXISTS `todotitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todotitle` (
  `TodotitleID` int NOT NULL AUTO_INCREMENT,
  `TodoID` int DEFAULT NULL,
  `EmpID` int DEFAULT NULL,
  `TodoTitle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TodotitleID`),
  KEY `TodoID` (`TodoID`),
  KEY `EmpID` (`EmpID`),
  CONSTRAINT `todotitle_ibfk_1` FOREIGN KEY (`TodoID`) REFERENCES `todos` (`TodoID`) ON DELETE CASCADE,
  CONSTRAINT `todotitle_ibfk_2` FOREIGN KEY (`EmpID`) REFERENCES `employees` (`EmployeeID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todotitle`
--

LOCK TABLES `todotitle` WRITE;
/*!40000 ALTER TABLE `todotitle` DISABLE KEYS */;
INSERT INTO `todotitle` VALUES (31,10,89,'진행'),(32,10,89,'완료'),(33,11,89,'진행'),(34,11,89,'완료'),(35,11,89,'홍보 활동 관련 보고사항'),(36,12,89,'진행'),(37,12,89,'완료'),(38,13,89,'진행'),(44,13,89,'폐기');
/*!40000 ALTER TABLE `todotitle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21 12:23:00
