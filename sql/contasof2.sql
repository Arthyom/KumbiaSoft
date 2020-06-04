-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: contasof2
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
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(50) NOT NULL,
  `nivel` tinyint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (3,'dios',0),(4,'dragon',1),(6,'ogro',3),(10,'tigre',3);
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menus` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `alfred` varchar(50) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `menus_por_grupos` (`grupo_usuarios`),
  CONSTRAINT `menus_por_grupos` FOREIGN KEY (`grupo_usuarios`) REFERENCES `grupos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,NULL,0,10,'landing','link','Landing Page','fas fa-rocket','/KumbiaSoft/index',_binary '\0','','','','',_binary '\0',0,'2020-05-16',_binary '\0'),(2,NULL,0,20,'','header','Interfaces','','',_binary '\0','','','','',_binary '\0',0,'2020-05-16',_binary ''),(3,NULL,0,30,'components','link','Components','oi oi-puzzle-piece','/KumbiaSoft/index',_binary '','','','','',_binary '\0',0,'2020-05-16',_binary ''),(4,NULL,3,1,'general','link','General','','tables',_binary '\0','','','','',_binary '\0',0,'2020-05-16',_binary ''),(5,NULL,0,0,'dashboard','link','Dashboard','fas fa-home','/KumbiaSoft/index',_binary '\0','','','','',_binary '\0',0,'2020-05-16',_binary ''),(6,NULL,0,0,'level-menu','link','Level Menu','oi oi-list-rich','',_binary '','','','','',_binary '\0',0,'2020-05-16',_binary ''),(7,NULL,6,0,'menu-item1','link','Menu Item','','',_binary '','','','','',_binary '\0',0,'2020-05-16',_binary ''),(8,NULL,7,0,'child-item1','link','Child Item','','',_binary '','','','','',_binary '\0',0,'2020-05-16',_binary ''),(9,NULL,8,0,'grand-child-item1','link','Grand Child Item','','/KumbiaSoft/menus',_binary '\0','','','','',_binary '\0',0,'2020-05-16',_binary '');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `grupos_id` int(11) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_pertenece_grupo` (`grupos_id`),
  CONSTRAINT `usuario_pertenece_grupo` FOREIGN KEY (`grupos_id`) REFERENCES `grupos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'juvencio','12345',3,'Jefe de proyectos'),(3,'Alfredo','12345',4,'Desarrollador Senior'),(5,'Bernardo','12345',6,'Desarrollador Junior'),(7,'Juan Carlos Aviles','12345',10,'Oficinista casual');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-19 17:40:40
