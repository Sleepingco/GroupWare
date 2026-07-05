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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `Userid` varchar(32) NOT NULL,
  `Password` varchar(128) DEFAULT NULL,
  `Name` varchar(32) NOT NULL,
  `DepartmentID` int DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Birthdate` date NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `ProfilePicture` varchar(255) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE KEY `Userid` (`Userid`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  CONSTRAINT `fk_departments` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (47,'관리자1','62d5a5464041e2d715e795f5820236b4664692096a9cf24ad120c984b445d800','관리자',1,'회장','2010-10-10','123-4534-5242','경기도 김포시 구래동 05','admin@example.com','5,000','관리자1_관리자.jpg','2023-09-24'),(89,'0001','7fee45e8bf5a7e294003b3b67335b8ea92f47c7ee25a5307aaf38e996b42f9d5','김수헌',1,'이사','1997-08-16','010-5594-5729','경기도 김포시 구래동1','rlatngjs8@example.com','5,000,000','0001_김수헌.jpg','2023-10-13'),(91,'2033','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','서민호',3,'대리','1994-03-03','010-4567-7854','경기도 고양시','SeoMinho@example.com','3,400,000','2033_서민호.jpg','2021-09-22'),(92,'0002','df6b7d419449c3a4bec7c358ad787ad53c976639547209817c8c6b08d24b51a2','이수헌',2,'대리','2003-03-03','123-1231-2312','경기도 김포시 구래동 ','assdq@example.com','123,123','0002_이수헌.jpg','2023-10-05'),(93,'hwan','6bd46ca5c9dad342277366aaafed1cf3728ac5c6684b76ea6ceb4741a36bd47f','윤승환',1,'사원','2003-04-21','010-1234-1234','경기도 고양시','Yoonseunghwan@example.com','10,000,000','hwan_윤승환.jpg','2023-10-13'),(94,'1234','19900613','김민호',2,'과장','1990-06-13','010-3456-1245','경기도 고양시','KimMinho@example.com','3,250,000','1234_김민호.jpg','2022-05-13'),(104,'0003','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','김규리',3,'부장','2003-03-03','010-2213-5421','경기도 김포시 구래동 ','gyu@example.com','1,000','0003_김규리.jpg','2023-10-13'),(105,'0004','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','박성호',2,'이사','2003-03-03','123-1231-2312','서울 강서구 마곡동 760-2','park@example.com','123,123','0004_박성호.jpg','2023-10-11'),(107,'0008','2866b44a815ea832cbbe5b6b2b9a91284f2d03103b617e84ba3377cfcce5c20e','하정우',1,'이사','1960-01-01','123-1231-2312','경기도 김포시 구래동 ','ha@example.com','123,123','0008_하정우.jpg','2023-10-05'),(108,'5555','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','신주녕',2,'대리','1998-10-20','010-5555-6666','경기도 고양시 덕양구','shin@example.com','3,510,000','5555_신주녕.jpg','2023-10-17'),(109,'1010','2866b44a815ea832cbbe5b6b2b9a91284f2d03103b617e84ba3377cfcce5c20e','박재형',1,'사장','1960-01-01','321','123','pjh@example.com','321','1010_박재형.jpg','2023-10-25');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
