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
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `ReservationID` int NOT NULL AUTO_INCREMENT,
  `RoomID` int DEFAULT NULL,
  `ReserverEmployeeID` int DEFAULT NULL,
  `reservationDate` varchar(20) DEFAULT NULL,
  `starttime` varchar(3) DEFAULT NULL,
  `endtime` varchar(3) DEFAULT NULL,
  `ReservationMadeTime` datetime DEFAULT NULL,
  `connectionID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ReservationID`),
  KEY `RoomID` (`RoomID`),
  KEY `ReserverEmployeeID` (`ReserverEmployeeID`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`RoomID`) REFERENCES `meetingrooms` (`RoomID`),
  CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`ReserverEmployeeID`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (17,1,89,'2023-10-05','14','16',NULL,'d695867b-f093-4579-9642-1005507233c2'),(18,2,89,'2023-10-19','14','16',NULL,'6e25420a-b8e8-4665-8250-8f3ab5c7edc1'),(19,1,47,'2023-10-31','15','17',NULL,'a4af6322-3238-40d5-8b8c-8503f5a7bd1f'),(20,1,47,'2023-10-20','9','12',NULL,'d409a002-556d-4da8-8ee0-a96c91e136b6'),(21,2,47,'2023-10-12','14','16',NULL,'a568a019-c8c0-4e5b-9c66-83753e270245'),(22,1,108,'2023-10-18','13','17',NULL,'cbc9644b-57d4-4b14-974d-1d4e8d4e8900');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21 12:22:58
