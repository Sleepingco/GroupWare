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
-- Table structure for table `todocontent`
--

DROP TABLE IF EXISTS `todocontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todocontent` (
  `TodocontentID` int NOT NULL AUTO_INCREMENT,
  `TtID` int DEFAULT NULL,
  `EmpID` int DEFAULT NULL,
  `TodoContent` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TodocontentID`),
  KEY `TtID` (`TtID`),
  KEY `EmpID` (`EmpID`),
  CONSTRAINT `todocontent_ibfk_1` FOREIGN KEY (`TtID`) REFERENCES `todotitle` (`TodotitleID`) ON DELETE CASCADE,
  CONSTRAINT `todocontent_ibfk_2` FOREIGN KEY (`EmpID`) REFERENCES `employees` (`EmployeeID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todocontent`
--

LOCK TABLES `todocontent` WRITE;
/*!40000 ALTER TABLE `todocontent` DISABLE KEYS */;
INSERT INTO `todocontent` VALUES (38,35,89,'행사참여 (10/23~10/24)'),(39,33,89,'승진자 교육 진행'),(40,33,92,'신입 교육 진행'),(42,35,92,'블로그 운영 관리'),(44,35,92,'홍보용 유튜브 제작을 위한 회의');
/*!40000 ALTER TABLE `todocontent` ENABLE KEYS */;
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
