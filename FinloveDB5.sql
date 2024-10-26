CREATE DATABASE  IF NOT EXISTS `finlove` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `finlove`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: finlove
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `blocked_chats`
--

DROP TABLE IF EXISTS `blocked_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocked_chats` (
  `blockID` int NOT NULL AUTO_INCREMENT,
  `user1ID` int NOT NULL,
  `user2ID` int DEFAULT NULL,
  `matchID` int NOT NULL,
  `isBlocked` tinyint(1) DEFAULT '1',
  `blockTimestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`blockID`),
  KEY `user1ID` (`user1ID`),
  KEY `user2ID` (`user2ID`),
  KEY `matchID` (`matchID`),
  CONSTRAINT `blocked_chats_ibfk_1` FOREIGN KEY (`user1ID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `blocked_chats_ibfk_2` FOREIGN KEY (`user2ID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `blocked_chats_ibfk_3` FOREIGN KEY (`matchID`) REFERENCES `matches` (`matchID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_chats`
--

LOCK TABLES `blocked_chats` WRITE;
/*!40000 ALTER TABLE `blocked_chats` DISABLE KEYS */;
INSERT INTO `blocked_chats` VALUES (11,107,105,2,0,'2024-10-26 14:37:30'),(12,105,105,4,1,'2024-10-26 14:44:52'),(13,105,105,4,1,'2024-10-26 14:44:53'),(14,105,105,4,1,'2024-10-26 14:44:58'),(15,105,105,2,0,'2024-10-26 14:45:14'),(16,105,105,2,0,'2024-10-26 14:45:48'),(17,105,105,2,0,'2024-10-26 14:45:49'),(18,105,105,2,0,'2024-10-26 14:47:48'),(19,105,105,2,0,'2024-10-26 14:47:49'),(20,105,105,2,0,'2024-10-26 14:47:50'),(21,105,105,2,0,'2024-10-26 14:47:50'),(22,105,105,4,1,'2024-10-26 14:49:55'),(23,105,105,4,1,'2024-10-26 14:49:57'),(24,105,105,4,1,'2024-10-26 14:49:58'),(25,105,105,4,1,'2024-10-26 14:49:59'),(26,107,105,2,0,'2024-10-26 14:55:06');
/*!40000 ALTER TABLE `blocked_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
  `chatID` int NOT NULL AUTO_INCREMENT,
  `matchID` int NOT NULL,
  `senderID` int NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastBackupTimestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`chatID`),
  KEY `matchID` (`matchID`),
  KEY `senderID` (`senderID`),
  CONSTRAINT `chats_ibfk_1` FOREIGN KEY (`matchID`) REFERENCES `matches` (`matchID`),
  CONSTRAINT `chats_ibfk_2` FOREIGN KEY (`senderID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,1,106,'Hello!','2024-10-15 15:49:54',NULL),(2,1,105,'Ayo!','2024-10-15 17:33:21',NULL),(3,1,105,'hello','2024-10-25 17:12:00',NULL),(4,1,105,'what yourname','2024-10-25 17:12:05',NULL),(5,2,107,'hello','2024-10-25 17:39:34',NULL),(6,2,107,'hoe are you','2024-10-25 17:39:42',NULL),(7,2,105,'fine','2024-10-25 17:54:39',NULL),(8,2,107,'jjj','2024-10-25 22:16:17',NULL),(9,3,105,'act rai','2024-10-25 22:18:32',NULL),(10,2,105,'D kup Kong suay','2024-10-25 22:20:17',NULL),(11,3,105,'moodeng','2024-10-25 22:25:42',NULL),(12,3,105,'kun roo jak mai','2024-10-25 22:25:58',NULL),(13,2,105,'dasdas','2024-10-26 14:14:07',NULL),(14,2,105,'dkup','2024-10-26 14:14:50',NULL),(15,2,105,'dsad','2024-10-26 14:14:59',NULL),(16,6,107,'fsdf','2024-10-26 14:15:18',NULL),(17,6,107,'sdfsdf','2024-10-26 14:15:21',NULL),(18,6,107,'sdfsdfsdfsd','2024-10-26 14:15:22',NULL),(19,2,105,'hi','2024-10-26 14:19:03',NULL),(20,2,105,'sdfsdf','2024-10-26 14:26:42',NULL),(21,2,105,'sdfsdf','2024-10-26 14:26:44',NULL),(22,2,105,'hello','2024-10-26 14:27:58',NULL),(23,2,105,'jjjj','2024-10-26 14:28:22',NULL),(24,2,105,'hi','2024-10-26 14:30:23',NULL),(25,2,105,'hello','2024-10-26 14:31:09',NULL),(26,2,105,'hi','2024-10-26 14:37:24',NULL),(27,2,105,'hello','2024-10-26 14:37:37',NULL),(28,2,105,'why block me','2024-10-26 14:54:59',NULL),(29,2,105,'hi honey','2024-10-26 14:57:54',NULL),(30,2,105,'yi','2024-10-26 14:59:11',NULL),(31,2,105,'hello','2024-10-26 14:59:56',NULL),(32,2,105,'hi','2024-10-26 15:01:07',NULL),(33,2,105,'hello dear','2024-10-26 15:01:26',NULL),(34,2,105,'hi','2024-10-26 15:02:29',NULL),(35,6,114,'hi sweetie','2024-10-26 15:03:55',NULL);
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_chats`
--

DROP TABLE IF EXISTS `deleted_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleted_chats` (
  `deleteID` int NOT NULL AUTO_INCREMENT,
  `userID` int DEFAULT NULL,
  `matchID` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `deleteTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`deleteID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_chats`
--

LOCK TABLES `deleted_chats` WRITE;
/*!40000 ALTER TABLE `deleted_chats` DISABLE KEYS */;
INSERT INTO `deleted_chats` VALUES (3,107,2,1,'2024-10-26 07:57:44');
/*!40000 ALTER TABLE `deleted_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `educationID` int NOT NULL AUTO_INCREMENT,
  `EducationName` varchar(255) NOT NULL,
  PRIMARY KEY (`educationID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'มัธยมศึกษา'),(2,'ปริญญาตรี'),(3,'ปริญญาโท'),(4,'ปริญญาเอก'),(5,'กำลังทำงาน');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `empID` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phonenumber` char(10) DEFAULT NULL,
  `gender` tinyint DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `imageFile` varchar(100) DEFAULT NULL,
  `positionID` tinyint DEFAULT NULL,
  `loginAttempt` tinyint DEFAULT '0',
  `lastAttemptTime` datetime DEFAULT NULL,
  `isActive` tinyint DEFAULT '1',
  PRIMARY KEY (`empID`),
  UNIQUE KEY `username` (`username`),
  KEY `positionID` (`positionID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`positionID`) REFERENCES `position` (`positionID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (2,'ปริญ','วรกมล','0898763723',1,'parin@hotmail.com','admin','$2a$10$NY/tG0DPjsdaE1TMbagI4uoZVtwbZF.xt4uf/khIQuHp1RpOYuhCm','img2.png',1,0,NULL,1),(3,'สมชาย','หารณรงค์','0862134496',1,'somchai@gmail.com','ant','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','img3.jpg',2,0,NULL,1),(4,'กาญจนา','กิ่งแก้ว','0868927364',1,'karnjana@gmail.com','karnjana','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','img4.jpg',2,0,NULL,1),(5,'ขนิษฐา','กองแก้ว','0893524367',1,'khanitha@hotmail.com','khanitha','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','1729529584219-wp9463344-loki-and-sylvie-wallpapers.jpg',2,0,NULL,1),(6,'พิเชษ','เจตจำนงค์','0896789076',1,'pichet@hotmail.com','pichet','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','img6.jpg',2,0,NULL,1),(7,'นิดา','แสนสุข','0897658261',1,'nida@gmail.com','nida','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','img7.jpg',2,0,NULL,1),(8,'นิตยา','สุขใจ','0898733827',1,'nitaya@gmail.com','nitaya','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','1729529230323-555.jpg',2,0,NULL,0),(9,'สรศักดิ์','หาญกล้า','0895767894',1,'sorasak@gmail.com','sorasak','$2a$10$9PA9zeFRXx1U1zSnhODMw..X87PmIqN8axlC6JaP0fhxEO8OYN3Ti','1729528729015-777.jpg',2,0,NULL,0);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `GenderID` int NOT NULL AUTO_INCREMENT,
  `Gender_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`GenderID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female'),(3,'Other');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goal` (
  `goalID` int NOT NULL AUTO_INCREMENT,
  `goalName` varchar(255) NOT NULL,
  PRIMARY KEY (`goalID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` VALUES (1,'หาคู่รักที่จริงใจ'),(2,'หาคู่เดทช่วงสั้นๆ'),(3,'หาเพื่อนใหม่'),(4,'ยังไม่แน่ใจ');
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interestgender`
--

DROP TABLE IF EXISTS `interestgender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interestgender` (
  `interestGenderID` int NOT NULL AUTO_INCREMENT,
  `interestGenderName` varchar(255) NOT NULL,
  PRIMARY KEY (`interestGenderID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interestgender`
--

LOCK TABLES `interestgender` WRITE;
/*!40000 ALTER TABLE `interestgender` DISABLE KEYS */;
INSERT INTO `interestgender` VALUES (1,'Male'),(2,'Female'),(3,'Other');
/*!40000 ALTER TABLE `interestgender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `matchID` int NOT NULL AUTO_INCREMENT,
  `user1ID` int NOT NULL,
  `user2ID` int NOT NULL,
  `matchDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isBlocked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`matchID`),
  KEY `fk_user1` (`user1ID`),
  KEY `fk_user2` (`user2ID`),
  CONSTRAINT `fk_user1` FOREIGN KEY (`user1ID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `fk_user2` FOREIGN KEY (`user2ID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,105,106,'2024-10-15 15:45:48',1),(2,105,107,'2024-10-15 15:46:05',0),(3,108,105,'2024-10-22 00:23:22',0),(4,105,114,'2024-10-25 17:17:58',0),(5,107,106,'2024-10-25 17:39:08',0),(6,107,114,'2024-10-25 17:39:14',0);
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `positionID` tinyint NOT NULL,
  `positionName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`positionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Admin'),(2,'Employee');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferences` (
  `PreferenceID` int NOT NULL AUTO_INCREMENT,
  `PreferenceNames` varchar(255) NOT NULL,
  PRIMARY KEY (`PreferenceID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES (1,'ฟุตบอล'),(2,'ภาพยนตร์'),(3,'ท่องเที่ยว'),(4,'อนิเมชั่น'),(5,'ช็อปปิ้ง'),(6,'เล่นดนตรี'),(7,'เล่นกีฬา'),(8,'เล่นเกม'),(9,'อ่านหนังสือ'),(10,'ปาร์ตี้'),(11,'สายควัน'),(12,'ออกกำลังกาย'),(13,'ตกปลา'),(14,'รักสัตว์'),(15,'ของหวาน'),(16,'ถ่ายรูป');
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `reportID` int NOT NULL,
  `reportType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`reportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'ก่อกวน/ปั่นป่วน'),(2,'ไม่ตอบสนอง'),(3,'ข้อมูลเท็จ');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `nickname` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phonenumber` varchar(10) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `home` varchar(255) DEFAULT NULL,
  `DateBirth` date DEFAULT NULL,
  `imageFile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `GenderID` int DEFAULT NULL,
  `educationID` int DEFAULT NULL,
  `goalID` int DEFAULT NULL,
  `interestGenderID` int DEFAULT NULL,
  `loginAttempt` tinyint NOT NULL DEFAULT '0',
  `lastAttemptTime` timestamp NULL DEFAULT NULL,
  `pinCode` varchar(10) DEFAULT NULL,
  `pinCodeExpiration` datetime DEFAULT NULL,
  `isActive` tinyint DEFAULT '1',
  `verify` tinyint DEFAULT '0',
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `educationID` (`educationID`),
  KEY `goalID` (`goalID`),
  KEY `interestGenderID` (`interestGenderID`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`educationID`) REFERENCES `education` (`educationID`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`goalID`) REFERENCES `goal` (`goalID`),
  CONSTRAINT `user_ibfk_4` FOREIGN KEY (`interestGenderID`) REFERENCES `interestgender` (`interestGenderID`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (105,'ant','$2b$10$MMF3Ff8A7m.pFq0EIB5eH.HCMSGEKL7whr6mpSn9bGeOJ7emlOEUO','Methaporn','Limrostham','Ant','pedza507@gmail.com','0642727318',180,'Bangkok',NULL,'1729924055666-celebrity1.png',1,2,1,2,0,'2024-10-26 08:01:00','1752','2024-10-25 18:13:04',1,1),(106,'test1','$2b$10$oJDUE1lYMXMRKMNRibdBkulE4hrdp6/iWSa8ic8Cp6CuCciIJS4xq','test1','test1','test1','test1','1111111111',159,'test','2024-10-01','image5621395018744202777.jpg',2,1,1,2,0,'2024-10-14 07:29:31',NULL,NULL,1,1),(107,'test2','$2b$10$bPdUqXeanRG/uklqSLmv3eiGIkAC/V9TNOC4EouctpRMd.GcuRlke','test','test','test2','test2','2222222222',158,'test','2024-10-04','8ca81dce-5eca-49f2-a173-539d0740cc88.jpg',2,3,1,1,0,'2024-10-26 07:59:49',NULL,NULL,1,1),(108,'test3','$2b$10$ocnNGDh5ma1PTf6p56L4vuPp3XVk0WWIuDO7YQyMloqHFWwIx.bQK','test','test','test3','test3','3333333333',175,'test','2024-10-04','image4916145192027822480.jpg',1,4,2,2,0,'2024-10-21 17:22:53',NULL,NULL,1,0),(109,'test4','$2b$10$lD5Xsab8U6yLah2jL4QKNeAvEmHKXiXyYWZdrLqryoL1TkRgWozSG','test','test','test4','test4','4444444444',163,'test','2024-10-02','image4143559456358884421.jpg',2,2,1,1,0,NULL,NULL,NULL,1,0),(110,'test5','$2b$10$oJDUE1lYMXMRKMNRibdBkulE4hrdp6/iWSa8ic8Cp6CuCciIJS4xq','test','test','test5','test5','5555555555',159,'test','2024-10-01','image5621395018744202777.jpg',2,1,1,2,0,NULL,NULL,NULL,0,0),(111,'test6','$2b$10$bPdUqXeanRG/uklqSLmv3eiGIkAC/V9TNOC4EouctpRMd.GcuRlke','สรัน','test','test6','test6','6666666677',158,'test','2024-10-03','image5621395018744202777.jpg',2,3,1,2,0,NULL,NULL,NULL,0,0),(114,'testx','$2b$10$Zk/q8k5rerzuwNh3.H.xpu5alNhkrC38U8NasFFojxpWW2pnHlDry','jndjdix','dhdjdk','app','ksjdjd','5439434694',160,'djndbjds','2024-10-04','df31c7ed-4f14-4e05-8274-1b91e29f21ae.jpg',2,2,3,3,0,'2024-10-26 08:03:47',NULL,NULL,1,0),(115,'dhdjf','$2b$10$BUWwZtaIl4U8E90VhwvuD.SM1ggfZLjDCi7gw06R3rqpu8HTddxIq','bdjxjx','xbxjx','nxjxjx','bjdjd','8861616466',816,'uhdjdid','2024-10-06','image1146166400998428609.jpg',2,2,1,1,0,NULL,NULL,NULL,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdislike`
--

DROP TABLE IF EXISTS `userdislike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdislike` (
  `dislikeID` int NOT NULL AUTO_INCREMENT,
  `dislikerID` int NOT NULL,
  `dislikedID` int NOT NULL,
  PRIMARY KEY (`dislikeID`),
  KEY `userdislike_ibfk_1` (`dislikerID`),
  KEY `userdislike_ibfk_2` (`dislikedID`),
  CONSTRAINT `userdislike_ibfk_1` FOREIGN KEY (`dislikerID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `userdislike_ibfk_2` FOREIGN KEY (`dislikedID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdislike`
--

LOCK TABLES `userdislike` WRITE;
/*!40000 ALTER TABLE `userdislike` DISABLE KEYS */;
INSERT INTO `userdislike` VALUES (21,114,106),(30,105,106),(32,107,108),(33,105,107),(34,114,105),(35,114,107),(36,105,108),(37,105,109),(38,105,110),(39,105,111),(40,105,114),(41,105,115);
/*!40000 ALTER TABLE `userdislike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlike`
--

DROP TABLE IF EXISTS `userlike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlike` (
  `likeID` int NOT NULL AUTO_INCREMENT,
  `likerID` int NOT NULL,
  `likedID` int NOT NULL,
  PRIMARY KEY (`likeID`),
  KEY `likerID` (`likerID`),
  KEY `likedID` (`likedID`),
  CONSTRAINT `userlike_ibfk_1` FOREIGN KEY (`likerID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `userlike_ibfk_2` FOREIGN KEY (`likedID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlike`
--

LOCK TABLES `userlike` WRITE;
/*!40000 ALTER TABLE `userlike` DISABLE KEYS */;
INSERT INTO `userlike` VALUES (148,106,105),(149,106,107),(150,106,108),(151,106,109),(152,106,105),(153,106,107),(154,106,108),(155,106,109),(156,106,105),(160,107,109),(215,108,105),(226,114,108),(227,114,109),(228,114,110),(229,114,111),(236,107,109),(237,107,110),(238,107,111),(239,107,114),(248,107,105),(249,107,109),(252,107,105),(253,107,106);
/*!40000 ALTER TABLE `userlike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpreferences`
--

DROP TABLE IF EXISTS `userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userpreferences` (
  `UserID` int NOT NULL,
  `PreferenceID` int NOT NULL,
  PRIMARY KEY (`UserID`,`PreferenceID`),
  KEY `PreferenceID` (`PreferenceID`),
  CONSTRAINT `userpreferences_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE,
  CONSTRAINT `userpreferences_ibfk_2` FOREIGN KEY (`PreferenceID`) REFERENCES `preferences` (`PreferenceID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpreferences`
--

LOCK TABLES `userpreferences` WRITE;
/*!40000 ALTER TABLE `userpreferences` DISABLE KEYS */;
INSERT INTO `userpreferences` VALUES (107,1),(108,1),(111,1),(114,1),(107,2),(108,2),(111,2),(107,4),(108,4),(109,4),(111,4),(115,7),(105,8),(114,8),(109,10),(115,10),(109,11),(114,11),(115,11),(105,12),(106,13),(110,13),(106,14),(110,14),(106,15),(110,15),(105,16);
/*!40000 ALTER TABLE `userpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userreport`
--

DROP TABLE IF EXISTS `userreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userreport` (
  `userreportID` int NOT NULL AUTO_INCREMENT,
  `reporterID` int NOT NULL,
  `reportedID` int NOT NULL,
  `reportID` int NOT NULL,
  PRIMARY KEY (`userreportID`),
  KEY `reporterID` (`reporterID`),
  KEY `reportedID` (`reportedID`),
  KEY `reportID` (`reportID`),
  CONSTRAINT `userreport_ibfk_1` FOREIGN KEY (`reporterID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `userreport_ibfk_2` FOREIGN KEY (`reportedID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `userreport_ibfk_3` FOREIGN KEY (`reportID`) REFERENCES `report` (`reportID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userreport`
--

LOCK TABLES `userreport` WRITE;
/*!40000 ALTER TABLE `userreport` DISABLE KEYS */;
INSERT INTO `userreport` VALUES (14,105,106,2),(15,105,106,3),(16,105,108,2),(18,105,108,1),(19,114,106,3),(20,114,114,1),(21,107,106,1),(22,105,105,2),(23,105,110,3),(24,114,105,3),(25,114,106,2),(26,114,107,3),(27,114,108,1);
/*!40000 ALTER TABLE `userreport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-26 15:07:25
