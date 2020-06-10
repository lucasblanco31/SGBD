-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: DIARIO_WEB
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP SCHEMA IF EXISTS DIARIO_WEB;
CREATE SCHEMA DIARIO_WEB;
USE DIARIO_WEB;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `nickname` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contraseña` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rango` int(11) NOT NULL,
  `actual` tinyint(1) NOT NULL,
  `fechaDeModificacion` datetime NOT NULL,
  PRIMARY KEY (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 13:45:05

--
-- Table structure for table `Noticia`
--

DROP TABLE IF EXISTS `Noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Noticia` (
  `idNoticia` int(11) NOT NULL AUTO_INCREMENT,
  `contenido` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `título` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaDeModificacion` datetime NOT NULL,
  `bajada` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actual` tinyint(1) NOT NULL,
  PRIMARY KEY (`idNoticia`),
  KEY `noticia-autor_fk` (`autor`),
  CONSTRAINT `noticia-autor_fk` FOREIGN KEY (`autor`) REFERENCES `Usuario` (`nickname`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Noticia`
--

LOCK TABLES `Noticia` WRITE;
/*!40000 ALTER TABLE `Noticia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Noticia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 13:45:05

--
-- Table structure for table `Comentario`
--

DROP TABLE IF EXISTS `Comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comentario` (
  `idComentario` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noticia` int(11) NOT NULL,
  `comentarioSuperior` int(11) DEFAULT NULL,
  `usuario` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idComentario`),
  KEY `comentario-noticia_fk` (`noticia`),
  KEY `comentario-comentarioSuperior_fk` (`comentarioSuperior`),
  KEY `comentario-usuario_fk` (`usuario`),
  CONSTRAINT `comentario-comentarioSuperior_fk` FOREIGN KEY (`comentarioSuperior`) REFERENCES `Comentario` (`idComentario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `comentario-noticia_fk` FOREIGN KEY (`noticia`) REFERENCES `Noticia` (`idNoticia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `comentario-usuario_fk` FOREIGN KEY (`usuario`) REFERENCES `Usuario` (`nickname`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comentario`
--

LOCK TABLES `Comentario` WRITE;
/*!40000 ALTER TABLE `Comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comentario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `Registro de Navegación`
--

DROP TABLE IF EXISTS `Registro de Navegación`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Registro de Navegación` (
  `noticia` int(11) NOT NULL,
  `usuario` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meGusta` tinyint(1) NOT NULL,
  `fechaDeModificacion` datetime NOT NULL,
  PRIMARY KEY (`noticia`,`usuario`),
  KEY `registro-usuario_fk` (`usuario`),
  CONSTRAINT `registro-noticia_fk` FOREIGN KEY (`noticia`) REFERENCES `Noticia` (`idNoticia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `registro-usuario_fk` FOREIGN KEY (`usuario`) REFERENCES `Usuario` (`nickname`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registro de Navegación`
--

LOCK TABLES `Registro de Navegación` WRITE;
/*!40000 ALTER TABLE `Registro de Navegación` DISABLE KEYS */;
/*!40000 ALTER TABLE `Registro de Navegación` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `Estado`
--

DROP TABLE IF EXISTS `Estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Estado` (
  `idEstado` int(11) NOT NULL,
  `comentario` int(11) NOT NULL,
  `fechaDeModificacion` datetime NOT NULL,
  `estado` enum('publicado','denunciado','en revision','invisible') COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actual` tinyint(1) NOT NULL,
  PRIMARY KEY (`idEstado`),
  KEY `estado-comentario_fk` (`comentario`),
  KEY `estado-usuario_fk` (`usuario`),
  CONSTRAINT `estado-comentario_fk` FOREIGN KEY (`comentario`) REFERENCES `Comentario` (`idComentario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `estado-usuario_fk` FOREIGN KEY (`usuario`) REFERENCES `Usuario` (`nickname`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estado`
--

LOCK TABLES `Estado` WRITE;
/*!40000 ALTER TABLE `Estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 13:45:05
