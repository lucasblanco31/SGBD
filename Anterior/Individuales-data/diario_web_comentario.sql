-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: diario_web
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
INSERT INTO `comentario` VALUES (1,'QUE ESTA PENSANDO ESE 48% AHORA?',1,NULL,'caribess'),(2,'No entiendo porqué este títere con la experiencia que tiene no interviene.',1,NULL,'exinoid'),(3,'vnde humo',1,NULL,'polylood'),(4,'vos sos un vende humo',1,3,'jdperon'),(5,'mira tu nick',1,4,'NEONAGE'),(6,'bueno',1,5,'jdperon'),(7,'pobres chicos',2,NULL,'tartim'),(8,'ojala se recuperen',2,NULL,'XEROSTRE'),(9,'MUY buena la ley cuando era chica',4,NULL,'caribess'),(10,'Es verdad!',4,9,'jdperon'),(11,'ojala salga ya',8,NULL,'promous'),(12,'la espero con ansias',8,NULL,'promous'),(13,'no lo puedo creer',16,NULL,'AMBISPHAN'),(14,'todavia, no lo puedo creer',16,13,'AMBISPHAN'),(15,'mira que cosa che!',19,NULL,'NEONAGE'),(16,'ES UN PLAN PARA DOMINARNOS',19,15,'polylood'),(17,'me parece que estas exagerando',19,16,'tartim'),(18,'es verdad! lo lei en un diario',19,17,'promous'),(19,'ojala se apruebe!',20,NULL,'promous'),(20,'ojala se apruebe! Si!!!',20,NULL,'jdperon');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 19:59:45
