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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-02-23 14:37:27.092940','1','Politics',1,'[{\"added\": {}}]',7,1),(2,'2022-02-23 15:57:17.996905','1','the-new-nigeria',1,'[{\"added\": {}}]',9,1),(3,'2022-02-24 00:16:09.014277','2','TechWoman',1,'[{\"added\": {}}]',7,1),(4,'2022-02-24 00:19:01.065808','1','Tag object (1)',1,'[{\"added\": {}}]',8,1),(5,'2022-02-24 00:21:54.496989','1','Comment object (1)',1,'[{\"added\": {}}]',10,1),(6,'2022-02-24 00:26:06.569034','2','this-is-tech',1,'[{\"added\": {}}]',9,1),(7,'2022-02-24 00:26:54.669274','3','inec-elections',1,'[{\"added\": {}}]',9,1),(8,'2022-02-24 00:27:40.354039','2','Comment object (2)',1,'[{\"added\": {}}]',10,1),(9,'2022-02-24 00:28:09.046034','3','Comment object (3)',1,'[{\"added\": {}}]',10,1),(10,'2022-02-24 00:29:13.261953','4','girls-in-tech-ondo',1,'[{\"added\": {}}]',9,1),(11,'2022-02-24 00:30:11.389016','5','where-is-ola-rotimi',1,'[{\"added\": {}}]',9,1),(12,'2022-02-24 00:31:23.772039','6','new-numbers',1,'[{\"added\": {}}]',9,1),(13,'2022-02-24 00:32:19.405530','7','ekiti-governorship',1,'[{\"added\": {}}]',9,1),(14,'2022-02-24 00:33:57.875524','8','tech-fest',1,'[{\"added\": {}}]',9,1),(15,'2022-02-24 00:34:30.376399','2','Tag object (2)',1,'[{\"added\": {}}]',8,1),(16,'2022-02-24 00:34:41.498048','3','Tag object (3)',1,'[{\"added\": {}}]',8,1),(17,'2022-02-24 00:34:54.433952','4','Tag object (4)',1,'[{\"added\": {}}]',8,1),(18,'2022-02-24 00:35:28.171804','5','Tag object (5)',1,'[{\"added\": {}}]',8,1),(19,'2022-02-24 00:36:03.292712','6','Tag object (6)',1,'[{\"added\": {}}]',8,1),(20,'2022-02-24 00:36:18.206453','7','Tag object (7)',1,'[{\"added\": {}}]',8,1),(21,'2022-02-24 00:37:09.355110','4','Comment object (4)',1,'[{\"added\": {}}]',10,1),(22,'2022-02-24 00:37:47.107925','5','Comment object (5)',1,'[{\"added\": {}}]',10,1),(23,'2022-02-24 00:38:11.456732','6','Comment object (6)',1,'[{\"added\": {}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-28 11:58:43
