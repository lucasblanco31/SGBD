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
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (5,'Que está pensando ese 48% ahora?',1,NULL,9,'2020-06-13 18:50:06'),(6,'No entiendo porque este titere con la experiencia que tiene no interviene',1,NULL,10,'2020-06-13 18:51:26'),(7,'Este es un tremendo vende humo',1,NULL,11,'2020-06-13 18:51:45'),(8,'Vos sos un vende humo',1,7,12,'2020-06-13 18:52:18'),(9,'Que te pasa? Te voy a denunciar',1,8,11,'2020-06-13 18:53:31'),(10,'Hace lo que quieras',1,9,12,'2020-06-13 18:53:44'),(11,'Pobres chicos',2,NULL,13,'2020-06-13 18:54:26'),(12,'Ojala se recuperen',2,NULL,14,'2020-06-13 18:54:40'),(13,'Muy buena la lei hace unos años',4,NULL,15,'2020-06-13 18:55:19'),(14,'Es verdad',4,NULL,16,'2020-06-13 18:55:36'),(15,'Ojala salga ya',8,NULL,17,'2020-06-13 18:56:13'),(16,'La espero con ansias',8,NULL,18,'2020-06-13 18:56:27'),(17,'No lo puedo creer',16,NULL,9,'2020-06-13 18:56:52'),(18,'yo tampoco',16,17,20,'2020-06-13 18:57:27'),(19,'mira que cosa',19,NULL,19,'2020-06-13 18:58:00'),(20,'ES UN PLAN PARA DOMINARNOS',19,NULL,14,'2020-06-13 18:58:23'),(21,'Me parece que estas exagerando',19,20,10,'2020-06-13 18:58:57'),(22,'Es verdad lo lei en un diario',19,21,13,'2020-06-13 18:59:21'),(23,'Ojala se apruebe',20,NULL,17,'2020-06-13 18:59:41'),(24,'Cuando se discute?',20,NULL,14,'2020-06-13 18:59:54');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-13 19:00:43
