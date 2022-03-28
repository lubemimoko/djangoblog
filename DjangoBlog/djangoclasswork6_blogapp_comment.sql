-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: djangoclasswork6
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `blogapp_comment`
--

DROP TABLE IF EXISTS `blogapp_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `allowcomment` tinyint(1) NOT NULL,
  `body` longtext NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlogApp_comment_post_id_4a681a88_fk_BlogApp_post_id` (`post_id`),
  CONSTRAINT `BlogApp_comment_post_id_4a681a88_fk_BlogApp_post_id` FOREIGN KEY (`post_id`) REFERENCES `blogapp_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_comment`
--

LOCK TABLES `blogapp_comment` WRITE;
/*!40000 ALTER TABLE `blogapp_comment` DISABLE KEYS */;
INSERT INTO `blogapp_comment` VALUES (1,'Nora',0,'This is new begininng','2022-02-24 00:21:54.375553',1),(2,'Levi',1,'Yes, I support women','2022-02-24 00:27:40.316221',2),(3,'Uplift Xcel',1,'Where is the ballot boxes','2022-02-24 00:28:08.955240',3),(4,'Lola',1,'We stand tall','2022-02-24 00:37:09.305354',4),(5,'Sandra',1,'Where is he','2022-02-24 00:37:46.977643',5),(6,'Willy',0,'Do we have','2022-02-24 00:38:11.429484',6);
/*!40000 ALTER TABLE `blogapp_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-28 11:58:45
