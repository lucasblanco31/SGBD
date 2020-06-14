-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: web_diario
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,5,9,'publicado',NULL,'2020-06-13 21:48:44'),(2,6,10,'publicado',NULL,'2020-06-13 21:49:31'),(3,7,11,'publicado',NULL,'2020-06-13 21:49:40'),(4,8,12,'publicado',NULL,'2020-06-13 21:50:22'),(5,9,11,'publicado',NULL,'2020-06-13 21:50:29'),(6,10,12,'publicado',NULL,'2020-06-13 21:50:36'),(7,11,13,'publicado',NULL,'2020-06-13 21:50:45'),(8,12,14,'publicado',NULL,'2020-06-13 21:50:51'),(9,13,15,'publicado',NULL,'2020-06-13 21:50:59'),(10,14,16,'publicado',NULL,'2020-06-13 21:51:06'),(11,15,17,'publicado',NULL,'2020-06-13 21:51:14'),(12,16,18,'publicado',NULL,'2020-06-13 21:51:23'),(13,17,9,'publicado',NULL,'2020-06-13 21:51:31'),(14,18,20,'publicado',NULL,'2020-06-13 21:51:40'),(15,19,19,'publicado',NULL,'2020-06-13 21:51:51'),(16,20,14,'publicado',NULL,'2020-06-13 21:51:57'),(17,21,10,'publicado',NULL,'2020-06-13 21:52:03'),(18,22,13,'publicado',NULL,'2020-06-13 21:52:10'),(19,23,17,'publicado',NULL,'2020-06-13 21:52:16'),(20,24,14,'publicado',NULL,'2020-06-13 21:52:22'),(21,8,11,'denunciado',NULL,'2020-06-13 21:53:24'),(22,7,12,'denunciado',NULL,'2020-06-13 21:54:13'),(23,7,1,'revision','denunciado por insultos','2020-06-13 21:55:31'),(24,7,1,'publicado','no ofende a nadie se vuelve a publicado','2020-06-13 21:56:15'),(25,8,2,'revision','denunciado por insultos','2020-06-13 21:56:52'),(26,8,3,'invisible','a invisible por insultos contra otro usuario','2020-06-13 21:58:15');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-13 21:59:08
