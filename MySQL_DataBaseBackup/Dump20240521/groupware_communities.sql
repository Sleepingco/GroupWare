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
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `CommunityID` int NOT NULL AUTO_INCREMENT,
  `CommunityTitle` varchar(50) DEFAULT NULL,
  `AuthorEmployeeID` int DEFAULT NULL,
  `Content` text,
  `Views` int DEFAULT '0',
  `Likes` int DEFAULT '0',
  `CreatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`CommunityID`),
  KEY `fk_employees` (`AuthorEmployeeID`),
  CONSTRAINT `fk_employees` FOREIGN KEY (`AuthorEmployeeID`) REFERENCES `employees` (`EmployeeID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (42,'디지털스퀘어 민·관 합동 소방훈련 협조 안내 (10/31)',47,'<p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">소방시설 설치·유지 및 안전관리에 관한 법률 시행규칙 제15조에 의거하여,&nbsp;<span style=\"line-height: 20px; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;\">죽전 디지털스퀘어 민관합동 소방훈련이 시행될 예정입니다.</span></p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">&nbsp;</p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">디지털스퀘어에서 근무하시는 임직원께서는 아래 내용 확인하시어 협조 부탁드립니다.</p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">&nbsp;</p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">&nbsp;</p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; -&nbsp;아 래 -</strong></p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">&nbsp;</p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\"><strong>1. 훈련일시 : 2017년 10월 31일 (화) 13시 30분 ~ 14시 30분 (약 1시간)</strong></p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">&nbsp;</p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\"><strong>2. 훈련내용: 민·관 합동 훈련으로서 보정119안전센터(구급차 또는 소화활동차량)와 다우DS빌딩 자위소방대 합동훈련 실시</strong></p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">&nbsp;</p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\"><strong>3. 협조 안내사항</strong></p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\"><strong>&nbsp;- 훈련 시간 동안 사옥 내 경종, 사이렌 및 비상안내방송 등이 송출될 예정이오니 착오 없으시기 바랍니다.</strong></p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\"><strong>&nbsp;- 비상 대피방송 송출 등 훈련 상황 발생 시 자위소방대의 지시에 따라 적극적인 참여 부탁드립니다.</strong></p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\"><strong>&nbsp;- 훈련 진행 시 엘리베이터는 가급적 사용을 자제하여 주시고 비상계단을 이용하여 대피하여 주시기 바랍니다.</strong></p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">&nbsp;</p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">&nbsp;</p><p style=\"line-height: 20px; font-family: &quot;맑은 고딕&quot;; font-size: 10pt;\">감사합니다.</p>',26,0,'2023-10-13 05:42:12'),(43,'2016년 상반기 전사 영업 활성화 프로모션',47,'<p class=\"MsoNormal\" style=\"line-height: 1.5; font-family: 돋움, dotum, AppleGothic, arial, Helvetica, sans-serif;\"><b><span style=\"line-height: 1.5; font-family: &quot;times new roman&quot;;\">지정된 영업 담당자들이 등록된 내용 확인 후 직접 컨택하여 관련 자료를 전달하고 미팅을 진행 하셨고</span><span lang=\"EN-US\" style=\"line-height: 1.5; font-family: &quot;times new roman&quot;;\">,&nbsp;</span><span style=\"line-height: 1.5; font-family: &quot;times new roman&quot;;\">미팅 예정인 업체도 있습니다</span><span lang=\"EN-US\" style=\"line-height: 1.5; font-family: &quot;times new roman&quot;;\">.</span><span style=\"font-family: &quot;times new roman&quot;;\">&nbsp;</span></b></p><p class=\"MsoNormal\" style=\"line-height: 1.5; font-family: 돋움, dotum, AppleGothic, arial, Helvetica, sans-serif;\"><b><span lang=\"EN-US\"></span><span style=\"font-family: &quot;times new roman&quot;;\">아직 완료되지 않은 상태이니 좋은 결과를 기대해봅니다&nbsp;</span></b><span lang=\"EN-US\"><span style=\"font-family: &quot;times new roman&quot;;\"><b>^^!</b></span><b>​</b></span></p>',102,0,'2023-10-13 05:50:33'),(48,'오늘 날씨가 좋습니다',104,'오늘도 화이팅 입니다',16,0,'2023-10-18 10:08:14'),(52,'수요일 입니다',47,'<span style=\"font-size: 11pt;\">2일</span>만 더 나오면 <b><span style=\"color: rgb(255, 0, 0); font-size: 14pt;\">빨간날</span></b>&nbsp; ㅎㅎ\n        ',41,0,'2023-10-18 11:41:13');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
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
