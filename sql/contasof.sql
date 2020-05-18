-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: contasof
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menus` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `parent` int(5) NOT NULL DEFAULT '0',
  `position` int(5) NOT NULL DEFAULT '0',
  `item` varchar(100) NOT NULL,
  `type` enum('header','link') NOT NULL,
  `text` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `link` varchar(240) NOT NULL,
  `childs` bit(1) NOT NULL DEFAULT b'0',
  `indicator` varchar(50) NOT NULL,
  `indicator_classes` varchar(60) NOT NULL,
  `button` varchar(60) NOT NULL,
  `button_title` varchar(60) NOT NULL,
  `is_slim` bit(1) NOT NULL DEFAULT b'0',
  `grupo_usuarios` int(5) NOT NULL DEFAULT '0',
  `date_at` date NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,0,10,'landing','link','Landing Page','fas fa-rocket','/KumbiaSoft/index',_binary '\0','','','','',_binary '\0',0,'2020-05-16',_binary '\0'),(2,0,20,'','header','Interfaces','','',_binary '\0','','','','',_binary '\0',0,'2020-05-16',_binary ''),(3,0,30,'components','link','Components','oi oi-puzzle-piece','/KumbiaSoft/index',_binary '','','','','',_binary '\0',0,'2020-05-16',_binary ''),(4,3,1,'general','link','General','','tables',_binary '\0','','','','',_binary '\0',0,'2020-05-16',_binary ''),(5,0,0,'dashboard','link','Dashboard','fas fa-home','/KumbiaSoft/index',_binary '\0','','','','',_binary '\0',0,'2020-05-16',_binary ''),(6,0,0,'level-menu','link','Level Menu','oi oi-list-rich','',_binary '','','','','',_binary '\0',0,'2020-05-16',_binary ''),(7,6,0,'menu-item1','link','Menu Item','','',_binary '','','','','',_binary '\0',0,'2020-05-16',_binary ''),(8,7,0,'child-item1','link','Child Item','','',_binary '','','','','',_binary '\0',0,'2020-05-16',_binary ''),(9,8,0,'grand-child-item1','link','Grand Child Item','','/KumbiaSoft/menus',_binary '\0','','','','',_binary '\0',0,'2020-05-16',_binary '');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`BQG`@`localhost`*/ /*!50003 TRIGGER `menu_OnInsert` BEFORE INSERT ON `menus` FOR EACH ROW SET NEW.date = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-18 11:07:52
