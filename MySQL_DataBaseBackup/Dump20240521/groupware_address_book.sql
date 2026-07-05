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
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_book` (
  `address_book_id` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(40) NOT NULL,
  `POSITION` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `company_phone` varchar(20) DEFAULT NULL,
  `company_address` varchar(100) DEFAULT NULL,
  `memo` text,
  `Writer_id` varchar(32) DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `group_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`address_book_id`),
  KEY `group_id` (`group_id`),
  KEY `Writer_id` (`Writer_id`),
  CONSTRAINT `address_book_ibfk_1` FOREIGN KEY (`Writer_id`) REFERENCES `employees` (`Userid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
INSERT INTO `address_book` VALUES (58,'김수헌','헌','010-5594-5729','rlatngjs8','관리부','부','0319999999','경기도 김포시','시','관리자1',NULL,'거래처처'),(59,'11','123','12321321','321','21312','13','123123','312312','1313212','관리자1',NULL,'3123'),(60,'1111','1111','123-1234-1234','11111','1','1111','1','11','11','관리자1',NULL,'11'),(74,'유재석','디자이너','010-7777-8888','lee.jieun@example.com','디자인팀','디자인 마스터','02-3333-4444','역삼동 789번지','최근 작업한 고객 연락처','0001',NULL,'디자인 고객'),(75,'박철수','개발자','010-2222-3333','park.chulsoo@example.com','개발팀','코드 마스터즈','02-6666-7777','양재동 789번지','프로젝트 참여자 연락처','0001',NULL,'개발 프로젝트'),(76,'김태영','영업 대표','010-9999-1111','kim.taeyoung@example.com','영업팀','매출 승리자','02-8888-9999','미아동 101번지','주요 고객사 연락처','0001',NULL,'영업 고객사'),(77,'정미경','인사 담당자','010-3333-4444','jeong.mikyung@example.com','인사팀','행복한 사람들','02-1111-3333','역삼동 789번지','인사 관련 문의사항 연락처','0001',NULL,'인사 팀'),(78,'이승우','마케팅 전문가','010-7777-9999','lee.seungwoo@example.com','마케팅팀','마케팅 엘리트','02-5555-6666','잠실동 123번지','마케팅 캠페인 담당자','0001',NULL,'마케팅 캠페인'),(79,'김태린','재무 분석가','010-5555-4444','kim.taerin@example.com','재무팀','재무 마스터','02-2222-1111','소공동 456번지','재무 분석 및 회계 연락처','0001',NULL,'재무 팀');
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
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
