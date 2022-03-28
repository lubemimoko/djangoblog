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
-- Table structure for table `blogapp_post`
--

DROP TABLE IF EXISTS `blogapp_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `BlogApp_post_category_id_9d02b59a_fk_BlogApp_maincategory_id` (`category_id`),
  KEY `BlogApp_post_slug_335f37e3` (`slug`),
  CONSTRAINT `BlogApp_post_category_id_9d02b59a_fk_BlogApp_maincategory_id` FOREIGN KEY (`category_id`) REFERENCES `blogapp_maincategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_post`
--

LOCK TABLES `blogapp_post` WRITE;
/*!40000 ALTER TABLE `blogapp_post` DISABLE KEYS */;
INSERT INTO `blogapp_post` VALUES (1,'The New Nigeria','blog_images/shirt_J8YIPyo.png','hgfdszcvbn','2022-02-23 15:57:17.590882',1,'the-new-nigeria'),(2,'This is Tech','blog_images/smartmockups_koq4dqq9.jpg','Women in Tech','2022-02-24 00:26:06.484604',2,'this-is-tech'),(3,'INEC ELECTIONS','blog_images/tshirt.jpg','Give out shirts','2022-02-24 00:26:54.647600',1,'inec-elections'),(4,'Girls in Tech Ondo','blog_images/shirt_tlml135.png','The new era of women in tech','2022-02-24 00:29:13.223320',2,'girls-in-tech-ondo'),(5,'Where is Ola Rotimi','blog_images/tshirt_HxHdHSJ.jpg','Where is the Aspirant','2022-02-24 00:30:11.371488',1,'where-is-ola-rotimi'),(6,'New Numbers','blog_images/shirt_qTsWele.png','This is why women are in tech','2022-02-24 00:31:23.612462',2,'new-numbers'),(7,'Ekiti Governorship','blog_images/tshirt_GAJblYg.jpg','This flagoff of the Governorship','2022-02-24 00:32:19.365201',1,'ekiti-governorship'),(8,'Tech Fest','blog_images/tshirt_wWrQJM4.jpg','Women arise in tech','2022-02-24 00:33:57.813279',2,'tech-fest');
/*!40000 ALTER TABLE `blogapp_post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-28 11:58:46
