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
-- Table structure for table `approvals`
--

DROP TABLE IF EXISTS `approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `approvals` (
  `ApprovalID` int NOT NULL AUTO_INCREMENT,
  `ApprovalTitle` varchar(50) DEFAULT NULL,
  `Sender_id` varchar(50) NOT NULL,
  `Receiver_id` varchar(50) NOT NULL,
  `Content` text,
  `approval_type` varchar(50) NOT NULL,
  `Approval_status` enum('진행 중','보류','거절','승인') DEFAULT '진행 중',
  `Approval_completed_at` varchar(50) DEFAULT NULL,
  `CreatedTime` varchar(50) DEFAULT NULL,
  `Comment` text,
  PRIMARY KEY (`ApprovalID`),
  KEY `Sender_id` (`Sender_id`),
  KEY `Receiver_id` (`Receiver_id`),
  CONSTRAINT `approvals_ibfk_1` FOREIGN KEY (`Sender_id`) REFERENCES `employees` (`Userid`),
  CONSTRAINT `approvals_ibfk_2` FOREIGN KEY (`Receiver_id`) REFERENCES `employees` (`Userid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approvals`
--

LOCK TABLES `approvals` WRITE;
/*!40000 ALTER TABLE `approvals` DISABLE KEYS */;
INSERT INTO `approvals` VALUES (51,'업무협조 바랍니다','0001','0003','업무협조 해주세요','업무협조','승인','2023-10-15 15:47:36','2023-10-15 15:34:23',NULL),(52,'업무협조 바랍니다','0001','0003','업무협조 해주세요','업무협조','거절','2023-10-15 15:47:29','2023-10-15 15:34:46',NULL),(53,'업무협조 바랍니다','0001','0003','업무협조 해주세요','업무협조','승인','2023-10-15 15:47:25','2023-10-15 15:34:50',NULL),(54,'23.10.16~20 휴가신청','0001','0004','23.10.16~20일 연가 신청합니다','휴가신청서','진행 중','2023-10-15 15:37:31','2023-10-15 15:37:31',NULL),(55,'23.10.16~20 휴가신청','0001','0004','23.10.16~20일 연가 신청합니다','휴가신청서','진행 중','2023-10-15 15:39:04','2023-10-15 15:39:04',NULL),(56,'개발자 채용요청','0001','hwan','개발자 10명 채용 요청드립니다','채용요청','진행 중','2023-10-15 15:39:35','2023-10-15 15:39:35',NULL),(57,'회의록 제출 요청','0001','0002','회의록 제출해주세요','회의록','진행 중','2023-10-15 15:41:59','2023-10-15 15:41:59',NULL),(58,'거절사유','0003','0001','안됩니다','사유서','거절','2023-10-16 06:10:42','2023-10-15 15:49:53',NULL),(59,'890','관리자1','0003','3242342','업무기안','진행 중','2023-10-16 00:37:37','2023-10-16 00:37:37',NULL),(60,'890','관리자1','0003','3242342','업무기안','진행 중','2023-10-16 00:39:01','2023-10-16 00:39:01',NULL),(61,'123','관리자1','관리자1','123123','업무기안','승인','2023-10-16 00:46:50','2023-10-16 00:45:32',NULL),(62,'123','관리자1','관리자1','12312312313','업무기안','진행 중','2023-10-16 00:45:40','2023-10-16 00:45:40',NULL),(63,'123','관리자1','관리자1','12312312313','업무기안','진행 중','2023-10-16 00:48:39','2023-10-16 00:48:39',NULL),(64,'12312312','관리자1','1234','1231232131231231','업무협조','진행 중','2023-10-16 00:49:01','2023-10-16 00:49:01',NULL),(65,'1231','관리자1','0003','2312312312312123','업무기안','진행 중','2023-10-16 00:56:59','2023-10-16 00:56:59',NULL),(66,'1231','관리자1','0003','2312312312312123','업무기안','진행 중','2023-10-16 00:57:31','2023-10-16 00:57:31',NULL),(67,'출장신청','0001','관리자1','출장다녀오겠습니다','출장신청서','보류','2023-11-13 16:26:25','2023-10-16 07:21:43',NULL),(68,'asdas','0001','0001','asdasd','구매신청서','승인','2023-10-19 12:39:45','2023-10-16 07:47:41',NULL),(69,'영업부서 입니다.','5555','0001','영업부서 업부','업무기안','승인','2023-10-20 11:49:13','2023-10-17 07:20:11',NULL),(70,'휴가신청서','5555','1234','자가 이사로 인해 휴가 신청합니다.','휴가신청서','진행 중','2023-10-17 07:21:06','2023-10-17 07:21:06',NULL),(71,'xss 테스트','관리자1','관리자1',' <script>alert(1)</script>','업무기안','진행 중','2024-01-16 12:50:29','2024-01-16 12:50:29',NULL);
/*!40000 ALTER TABLE `approvals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21 12:22:59
