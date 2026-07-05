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
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar` (
  `calendar_no` int NOT NULL AUTO_INCREMENT,
  `CALENDAR_TITLE` varchar(200) NOT NULL,
  `CALENDAR_MEMO` varchar(500) DEFAULT NULL,
  `calendar_start` varchar(20) NOT NULL,
  `calendar_end` varchar(20) NOT NULL,
  `birthday` int DEFAULT '0',
  `reservation` int DEFAULT '0',
  `writer` varchar(32) DEFAULT NULL,
  `connectionID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`calendar_no`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (52,'김수헌 생일','김수헌 생일','1997-08-16','1997-08-16',1,0,NULL,NULL),(54,'김규리 생일','김규리 생일','1998-06-17','1998-06-17',1,0,NULL,NULL),(55,'서민호 생일','서민호 생일','1994-03-03','1994-03-03',1,0,NULL,NULL),(56,'이수헌 생일','이수헌 생일','2003-03-03','2003-03-03',1,0,NULL,NULL),(57,'윤승환 생일','윤승환 생일','2003-04-21','2003-04-21',1,0,NULL,NULL),(58,'김민호 생일','김민호 생일','1990-06-13','1990-06-13',1,0,NULL,NULL),(59,'황백희ㅁ 생일','황백희ㅁ 생일','1963-05-12','1963-05-12',1,0,NULL,NULL),(60,'아구이 생일','아구이 생일','1965-03-02','1965-03-02',1,0,NULL,NULL),(61,'안녕 생일','안녕 생일','1962-02-02','1962-02-02',1,0,NULL,NULL),(62,'bbb 생일','bbb 생일','1960-01-01','1960-01-01',1,0,NULL,NULL),(63,'asddsss 생일','asddsss 생일','1960-01-01','1960-01-01',1,0,NULL,NULL),(64,'mm 생일','mm 생일','1960-01-01','1960-01-01',1,0,NULL,NULL),(65,'asdas 생일','asdas 생일','1966-07-07','1966-07-07',1,0,NULL,NULL),(66,'123 생일','123 생일','1964-05-06','1964-05-06',1,0,NULL,NULL),(67,'테스트돼라 생일','테스트돼라 생일','1960-01-01','1960-01-01',1,0,NULL,NULL),(68,'김규리 생일','김규리 생일','2003-03-03','2003-03-03',1,0,NULL,NULL),(69,'박성호 생일','박성호 생일','2003-03-03','2003-03-03',1,0,NULL,NULL),(70,'테스트2 생일','테스트2 생일','1960-01-01','1960-01-01',1,0,NULL,NULL),(71,'임원 정기회의','임원 정기회의','2023-10-05T14:00:00','2023-10-05T16:00:00',0,0,'김수헌',NULL),(72,'1번 회의실','임원 정기회의','2023-10-05T14:00:00','2023-10-05T16:00:00',0,1,'김수헌','d695867b-f093-4579-9642-1005507233c2'),(73,'임원 정기회의','임원 정기회의','2023-10-19T14:00:00','2023-10-19T16:00:00',0,0,'김수헌',NULL),(74,'2번 회의실','임원 정기회의1234','2023-10-19T14:00:00','2023-10-19T16:00:00',0,1,'김수헌','6e25420a-b8e8-4665-8250-8f3ab5c7edc1'),(75,'지방출장','지방출장','2023-10-24T08:00:00','2023-10-26T22:00:00',0,0,'관리자',NULL),(76,'신주녕 연차','신주녕 연차','2023-10-04T08:00:00','2023-10-06T22:00:00',0,0,'관리자',NULL),(77,'주간보고 취합전달','주간보고 취합전달','2023-10-27T13:00:00','2023-10-27T09:00:00',0,0,'관리자',NULL),(78,'월간세미나','월간세미나','2023-10-31T15:00:00','2023-10-31T17:00:00',0,0,'관리자',NULL),(79,'1번 회의실','월간세미나','2023-10-31T15:00:00','2023-10-31T17:00:00',0,1,'관리자','a4af6322-3238-40d5-8b8c-8503f5a7bd1f'),(80,'1번 회의실','1번 회의실 예약\r\n','2023-10-20T09:00:00','2023-10-20T12:00:00',0,1,'관리자','d409a002-556d-4da8-8ee0-a96c91e136b6'),(81,'주간보고','주간보고','2023-10-06T13:00:00','2023-10-06T09:00:00',0,0,'관리자',NULL),(82,'주간보고','주간보고','2023-10-13T13:00:00','2023-10-13T09:00:00',0,0,'관리자',NULL),(83,'주간보고','주간보고','2023-10-20T13:00:00','2023-10-20T09:00:00',0,0,'관리자',NULL),(84,'하정우 생일','하정우 생일','1960-01-01','1960-01-01',1,0,NULL,NULL),(86,'스킬업특강','스킬업특강','2023-10-18T13:00:00','2023-10-18T17:00:00',0,0,'관리자',NULL),(87,'2번 회의실','인사팀 회의','2023-10-12T14:00:00','2023-10-12T16:00:00',0,1,'관리자','a568a019-c8c0-4e5b-9c66-83753e270245'),(88,'신주녕 생일','신주녕 생일','1998-10-20','1998-10-20',1,0,NULL,NULL),(89,'박재형 생일','박재형 생일','1960-01-01','1960-01-01',1,0,NULL,NULL),(90,'1번 회의실','스킬업특강','2023-10-18T13:00:00','2023-10-18T17:00:00',0,1,'신주녕','cbc9644b-57d4-4b14-974d-1d4e8d4e8900');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21 12:22:57
