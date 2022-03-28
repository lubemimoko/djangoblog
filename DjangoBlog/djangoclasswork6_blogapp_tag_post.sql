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
-- Table structure for table `blogapp_tag_post`
--

DROP TABLE IF EXISTS `blogapp_tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_tag_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tag_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `BlogApp_tag_post_tag_id_post_id_4d867ac6_uniq` (`tag_id`,`post_id`),
  KEY `BlogApp_tag_post_post_id_17573c46_fk_BlogApp_post_id` (`post_id`),
  CONSTRAINT `BlogApp_tag_post_post_id_17573c46_fk_BlogApp_post_id` FOREIGN KEY (`post_id`) REFERENCES `blogapp_post` (`id`),
  CONSTRAINT `BlogApp_tag_post_tag_id_42ada08f_fk_BlogApp_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blogapp_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_tag_post`
--

LOCK TABLES `blogapp_tag_post` WRITE;
/*!40000 ALTER TABLE `blogapp_tag_post` DISABLE KEYS */;
INSERT INTO `blogapp_tag_post` VALUES (1,1,1),(2,2,3),(3,3,4),(4,4,5),(5,5,6),(6,6,7),(7,7,8);
/*!40000 ALTER TABLE `blogapp_tag_post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-28 11:58:47
