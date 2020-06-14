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
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('AMBISPHAN','Ambar','Sphan','jK@wCiL%pFt#',0,0,'2020-06-10 14:19:23'),('caribess','Carina','Bessone','cabess123',0,0,'2020-06-10 14:32:37'),('cdickens','Charles','Dickens','cdickens123',2,1,'2020-06-10 14:27:57'),('exinoid','Ezequiel','Noro','xS0bu$sVmw9R',0,1,'2020-06-10 14:21:22'),('fkafka','Franz','Kafka','fkafka123',2,1,'2020-06-10 14:28:28'),('ggmarquez','Gabriel Garcia','Marquez','jasdlf',2,0,'2020-06-10 14:24:36'),('jausten','Jane','Austen','jausten123',2,0,'2020-06-10 14:26:40'),('jdperon','Juan Domingo','Peron','justiciasocial',0,1,'2020-06-10 14:32:07'),('kmarx','Karl','Marx','kmarx123',2,1,'2020-06-10 14:29:40'),('lucasblanco31','Lucas','Blanco','blanco123',3,1,'2020-06-10 14:23:18'),('MAESONUS','Mateo','Sono','msono123',0,0,'2020-06-10 14:33:50'),('matiasmachado7','Matias','Machado','machado123',3,1,'2020-06-10 14:23:00'),('mvllosa','Mario Vargas','LLosa','mmllosa123',2,1,'2020-06-10 14:28:57'),('NEONAGE','Nicolas','Ager','sv*#SZVb^ZgD',0,1,'2020-06-10 14:19:58'),('polylood','Pedro','Loro','plood123',0,1,'2020-06-10 14:31:25'),('promous','Pedro','Mous','$Yl6!rTNB#IL',0,0,'2020-06-10 14:18:13'),('tartim','Tomas','Artime','tartim123',0,0,'2020-06-10 14:33:23'),('tsarquis88','Tomas','Sarquis','sarquis123',3,1,'2020-06-10 14:21:57'),('vhugo','Victor','Hugo','vhugo123',2,1,'2020-06-10 14:29:25'),('XEROSTRE','Jeronimo','Rostre','y^Y^re^U&l0%',0,1,'2020-06-10 14:20:42');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 19:59:45

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
-- Dumping data for table `noticia`
--

LOCK TABLES `noticia` WRITE;
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
INSERT INTO `noticia` VALUES (1,'El presidente Alberto Fernández advirtió este miércoles por la velocidad de contagio del coronavirus​, principalmente en el Área Metropolitana de Buenos Aires (AMBA), y afirmó que, en base a eso, la región debería estar en cuarentena absoluta.  ','actualidad','Por el aumento de contagios','cdickens','2020-06-10 14:51:55','Fernandez: \"Tendríamos que estar en la fase 1, en cuarentena absoluta.\"',1),(2,'El coronavirus ​pega duro en el fútbol mexicano. Toluca es uno de los más afectados con siete casos confirmados. Y uno de los contagiados es  el argentino Federico Mancuello, ex mediocampista de Independiente, quien dio positivo en los testeos realizados en los últimos días. Por la tarde se confirmó otro caso de un argentino: Rogelio Funes Mori, ex delantero de River y actualmente en Rayados de Monterrey.','deportes','Federico Mancuello y Rogelio Funes Mori, contagiados de coronavirus en México','cdickens','2020-06-10 14:55:56','Están bien',1),(3,'El fútbol alemán siempre se las ingenia para estar en el centro de la escena. Después de su protagonismo a lo largo de todo el siglo XX, con tres títulos mundiales, su trabajo constante con apoyo en los juveniles llegó a su punto más alto en la Copa del Mundo en Brasil 2014 (después de no bajar de semifinales en las tres ediciones anteriores). La seriedad y el trabajo fueron en todos esos logros su marca registrada. No parece casual, en ese contexto, que haya sido la Bundesliga la primera de las cinco grandes ligas de Europa que tuvo la posibilidad de volver a los campos de juego.','deportes','El CEO de la Bundesliga cuenta cómo hizo Alemania para volver a las canchas antes que todos y habla del fútbol argentino','cdickens','2020-06-10 14:58:02','Entrevista con Clarín',0),(4,'El Quijote, la novela de caballería más leída de la historia, se publicó por primera vez en 1605. Desde entonces, tuvo numerosas ediciones, pero hubo una muy especial, que se concretó pasado el centenario de su publicación. En 1780, la Real Academia Española decidió encargar la mejor edición posible del clásico escrito por Miguel de Cervantes Saavedra. La idea era recuperar los grabados, que con las reimpresiones se veían cada vez más borrosos. Fue posible, porque tuvo la financiación de un rey: Carlos III fue el que costeó aquella valiosa edición, en la que cada página se componía a mano. Que un libro tuviera una tipografía especial era algo inédito.','arte','Cuarentena por coronavirus: ¿conocés el “Quijote chico” y sus delicadas ilustraciones?','cdickens','2020-06-10 14:59:50','Para “visitar”',0),(5,'Los dos grandes poemas épicos de Homero que están en la base de la civilización occidental, la Ilíada y la Odisea -el primero, la cólera de Aquiles en la guerra de Troya y el segundo, el difícil regreso de Ulises a casa- acaban de cobrar nueva vida. La Odisea  fue editado por Malpaso con grandes ilustraciones que retratan la evolución de Ulises en los diez largos años que tarda en regresar a Ítaca y encontrarse con la paciente Penélope. Lo ilustró Miguel Brieva.','arte','Aquiles y Ulises también son héroes de comic','cdickens','2020-06-10 15:00:41','Los grandes clásicos',1),(6,'\"No sé cuándo, ni cómo ni de qué manera, pero volveremos\"... El cantante de Jarabe de palo murió este martes 9, a los 53 años, y sus fans no hicieron más que recordarlo con canciones, con poemas, con viejas declaraciones y fotos. Pero llamó la atención esa suerte de despedida que muchos trajeron al presente, un video que se habia viralizado a principios de enero de 2019.','actualidad','Murió Pau Donés: la conmovedora despedida del cantante para sus fans','fkafka','2020-06-10 15:03:17','En 2019',1),(7,'La película de origen polaco, 365 DNI, o 365 días, el título de su versión en español, es uno de los estrenos más recientes de Netflix, que en pocos tiempo llegó al puesto número uno de lo más visto en el país. Sin embargo, algunas de sus escenas generaron polémica y varios espectadores se manifestaron en redes sociales.','actualidad','365 DNI en Netflix: la polémica película erótica que es considerada más intensa que 50 sombras de Grey','fkafka','2020-06-10 15:04:12','Muy Vista',0),(8,'La ex jueza de la Cámara de Casación Penal de la Ciudad y fundadora de la agrupación Justicia Legítima, María Laura Garrigós de Rébori; sería la elegida por el presidente Alberto Fernández​ para intervenir el Servicio Penitenciario Federal, según indicaron a Clarín altas fuentes del Gobierno.','politica','La fundadora de Justicia Legítima sería la nueva interventora del Servicio Penitenciario Federal','ggmarquez','2020-06-10 15:06:04','La crisis en las cárceles',0),(9,'\"Me dio tanto la Universidad, que me gusta devolver lo que me dio\", dijo esta mañana Alberto Fernández en una entrevista radial. Y apenas un rato después lo demostró. Este miércoles, el Presidente retomó su papel de profesor universitario y dio su clase en la UBA, a distancia, para poco más de 30 alumnos.','politica','En plena crisis por el coronavirus, Alberto Fernández retomó su papel de profesor: dio una clase virtual','ggmarquez','2020-06-10 15:06:57','En la Universidad de Buenos Aires',0),(10,'Ubaldo Matildo Fillol respondió sin filtros a los polémicos dichos de Johnny Rep, ex futbolista holandés, quien en una entrevista con la agencia Télam puso en duda la conquista argentina en el Mundial de 1978​ y afirmó que el triunfo por 6-0 sobre Perú estuvo \"arreglado\". Enojado por las dudas que el ex delantero intentó sembrar, el Pato le pidió que \"cierre la boca\" porque \"no para de decir taradeces\".','deportes','El Pato Fillol salió al cruce de la denuncia sin fundamentos de Rep: “No para de decir taradeces”','ggmarquez','2020-06-10 15:07:54','Polémica',1),(11,'La atención de gran parte del mundo gamer estará centrada este jueves en el esperado evento en el que Sony presentará nuevos detalles de su próxima consola, la PlayStation 5 (PS5). La cita, inicialmente prevista para la semana pasada, fue retrasada por las protestas que sucedieron en torno al crimen de George Floyd​ que desató protestas en Estados Unidos y el mundo.','tecnologia','PlayStation 5: qué presentarán en el gran evento “El futuro de los videojuegos”','ggmarquez','2020-06-10 15:10:12','Seguilo el jueves en Clarín',1),(12,'Un fallo de seguridad en WhatsApp vulneró la privacidad de miles de usuarios, ya que su número de teléfono estaba visible en los resultados de búsqueda de Google.','tecnologia','WhatsApp: cómo saber si tu número está en el listado filtrado por Google','jausten','2020-06-10 15:11:42','Aplicaciones',1),(13,'Anunció junto con el envío del proyecto, la firma de un Decreto de Necesidad y Urgencia (DNU) para la intervención de la empresa, pasando a integrar YPF Agro, mediante un fideicomiso.','politica','El Gobierno al rescate de Vicentin: se hace cargo de su deuda millonaria','kmarx','2020-06-10 15:14:55','NACIONAL',0),(14,'A raíz de la crisis del sector salud en la provincia, agravada por la pandemia de Covid-19, el gobernador Axel Kicillof junto a su ministro de Salud, Daniel Gollan, anunciaron este miércoles que el Estado ayudará al sector de medicina privada, por la \"caída de ingresos\", producto de que menos gente se atiende en las clínicas privadas, según afirmaron.','politica','Kicillof anunció un rescate a empresarios del sector de salud por $ 400 millones por mes','kmarx','2020-06-10 15:13:00','PROVINCIA DE BUENOS AIRES',1),(15,'Mediante un comunicado difundido este martes a última hora, la Asociación Empresaria Argentina ​(AEA) rechazó las medidas anunciadas por el presidente Alberto Fernández respecto al salvataje de la empresa agroexportadora Vicentin.','politica','Vicentin: a pesar de las aclaraciones de Fernández, llegaron los reproches empresarios','kmarx','2020-06-10 15:14:09','INTERNA DE CLASE',0),(16,'El 22 de junio de 1986 a las 12 hs de México (14 hs de Buenos Aires) comenzaba un partido en el Estadio Azteca que iba a quedar en la historia. Se enfrentaban las selecciones de Argentina e Inglaterra por cuartos de final del Mundial de México, uno de los pocos partidos que quizás merezca un libro entero. Ese libro existe: lo escribió Andrés Burgo y cuenta el antes, el durante y el después de ese partido lleno de carga simbólica y política.','deportes','Andrés Burgo sobre el partido de “la mano de Dios”: “Maradona lo inventa dos veces”','mvllosa','2020-06-10 15:16:40','ENTREVISTA',1),(17,'Les artistas y trabajadores de la cultura están en emergencia. La pandemia ha abierto una situación de crisis económica y social extraordinaria, pocas veces vista en el ciclo capitalista. Una crisis que intentarán descargar sobre el conjunto de la clase obrera y que golpea con dureza a este sector que arrastra décadas de precarización. Este ciclo de entrevistas pretende no solo reflejar, de primera mano, la situación que atraviesan les artistas y trabajadores de la cultura; sino también comenzar a pensar una salida.','arte','Iván Amsler: “Con el dinero recaudado a los explotadores del laburante se podría subsidiar a informales y monotributistas”','mvllosa','2020-06-10 15:18:01','ARTISTAS PRECARIZADES',1),(18,'El golpe de Estado de 1955, la Revolución Libertadora encabezada por el general Pedro Eugenio Aramburu y el contraalmirante Isaac Rojas, se propuso desterrar al peronismo de la vida política nacional. Sabiéndolo expresión política de la clase trabajadora cuyas conquistas debían atacar para abrir las puertas a la ofensiva imperialista que los encumbró en el poder, los militares de la Libertadora proscribieron al peronismo, prohibieron pronunciar el nombre de su líder, dibujar sus símbolos o cantar sus canciones. Los “gorilas” encontraron múltiples formas para expresar el odio acumulado contra las “cabecitas negras”.','arte','El levantamiento de Valle, la “Fusiladora” y el odio de los gorilas','mvllosa','2020-06-10 15:19:10','A 64 AÑOS',1),(19,'“Dado que el COVID-19 puede transmitirse a través de la proximidad a personas afectadas, los organismos de salud pública han identificado el rastreo de contactos como una herramienta valiosa para ayudar a contener su propagación. Autoridades públicas sanitarias, universidades y ONGs de todo el mundo han estado haciendo un trabajo importante para desarrollar tecnología de rastreo de contactos de uso voluntario. Para promover esta causa, Apple y Google lanzarán una solución integral que incluye interfaces de programación de aplicaciones (APIs) y tecnología a nivel de sistema operativo para ayudar a permitir el seguimiento de contactos. Dada la necesidad urgente, el plan es implementar esta solución en dos pasos, manteniendo siempre fuertes medidas de protección de la privacidad del usuario.”','tecnologia','Google y Apple se asocian para crear tecnología de rastreo','vhugo','2020-06-10 15:20:50','¿NUEVAS FORMAS DE VIGILANCIA?',1),(20,'En Argentina, el acceso a la Interrupción Legal del Embarazo (IVE) está garantizado por la Constitución Nacional, por los Tratados de Derecho Humanos, por el Código Penal de 1921, por el Código Civil y Comercial reformado en 2015, por el Fallo F.A.L de la Corte Suprema de Justicia de la Nación del año 2012 y por la Organización Mundial de la Salud, que rige la política sanitaria a nivel internacional y actualiza periódicamente la guía de atención integral de este derecho.','actualidad','¿Qué es la ILE y quiénes pueden acceder a ella?','vhugo','2020-06-10 15:21:54','SE TENÍA QUE DECIR',1);
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 19:59:45

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
-- Dumping data for table `regnavegacion`
--

LOCK TABLES `regnavegacion` WRITE;
/*!40000 ALTER TABLE `regnavegacion` DISABLE KEYS */;
INSERT INTO `regnavegacion` VALUES (1,'AMBISPHAN',0,'2020-06-10 15:54:56'),(1,'caribess',1,'2020-06-10 15:56:45'),(1,'exinoid',0,'2020-06-10 15:57:51'),(1,'jdperon',0,'2020-06-10 16:03:08'),(1,'MAESONUS',0,'2020-06-10 16:03:25'),(1,'NEONAGE',1,'2020-06-10 16:03:41'),(1,'polylood',1,'2020-06-10 16:11:47'),(1,'promous',0,'2020-06-10 16:05:49'),(2,'AMBISPHAN',0,'2020-06-10 15:55:05'),(2,'exinoid',0,'2020-06-10 15:57:53'),(2,'tartim',1,'2020-06-10 16:06:36'),(2,'XEROSTRE',0,'2020-06-10 16:08:32'),(3,'AMBISPHAN',0,'2020-06-10 15:55:07'),(3,'caribess',1,'2020-06-10 15:56:47'),(3,'exinoid',0,'2020-06-10 15:57:56'),(3,'jdperon',0,'2020-06-10 16:03:01'),(3,'NEONAGE',1,'2020-06-10 16:03:45'),(3,'promous',1,'2020-06-10 16:05:35'),(4,'AMBISPHAN',1,'2020-06-10 15:55:13'),(4,'caribess',0,'2020-06-10 16:10:06'),(4,'exinoid',0,'2020-06-10 15:57:59'),(4,'jdperon',0,'2020-06-10 16:10:59'),(4,'promous',0,'2020-06-10 16:05:55'),(4,'tartim',1,'2020-06-10 16:06:38'),(5,'AMBISPHAN',1,'2020-06-10 15:55:17'),(5,'caribess',1,'2020-06-10 15:57:05'),(5,'exinoid',0,'2020-06-10 15:58:00'),(5,'jdperon',0,'2020-06-10 16:03:04'),(6,'exinoid',0,'2020-06-10 15:58:01'),(6,'promous',1,'2020-06-10 16:05:38'),(7,'caribess',1,'2020-06-10 15:56:49'),(7,'exinoid',0,'2020-06-10 15:58:03'),(7,'NEONAGE',1,'2020-06-10 16:03:49'),(8,'exinoid',0,'2020-06-10 15:58:04'),(8,'promous',1,'2020-06-10 16:12:01'),(9,'AMBISPHAN',1,'2020-06-10 15:55:21'),(9,'caribess',1,'2020-06-10 15:57:07'),(9,'exinoid',0,'2020-06-10 15:58:06'),(9,'jdperon',1,'2020-06-10 16:02:54'),(9,'promous',0,'2020-06-10 16:05:57'),(9,'tartim',1,'2020-06-10 16:06:41'),(10,'exinoid',0,'2020-06-10 15:58:09'),(10,'polylood',0,'2020-06-10 16:04:16'),(11,'AMBISPHAN',1,'2020-06-10 15:55:24'),(11,'caribess',1,'2020-06-10 15:56:52'),(11,'exinoid',0,'2020-06-10 15:58:11'),(11,'jdperon',1,'2020-06-10 16:02:52'),(11,'NEONAGE',1,'2020-06-10 16:03:53'),(11,'promous',1,'2020-06-10 16:05:40'),(12,'exinoid',0,'2020-06-10 15:58:13'),(12,'promous',0,'2020-06-10 16:06:02'),(12,'tartim',1,'2020-06-10 16:06:23'),(13,'AMBISPHAN',1,'2020-06-10 15:55:26'),(13,'exinoid',0,'2020-06-10 15:58:15'),(13,'jdperon',1,'2020-06-10 16:02:51'),(13,'polylood',0,'2020-06-10 16:04:18'),(14,'exinoid',0,'2020-06-10 15:58:16'),(14,'jdperon',1,'2020-06-10 16:02:48'),(15,'exinoid',0,'2020-06-10 15:58:18'),(15,'polylood',0,'2020-06-10 16:04:21'),(15,'promous',1,'2020-06-10 16:05:27'),(16,'AMBISPHAN',0,'2020-06-10 16:09:26'),(16,'caribess',1,'2020-06-10 15:57:02'),(16,'exinoid',0,'2020-06-10 15:58:22'),(16,'jdperon',1,'2020-06-10 16:02:44'),(17,'exinoid',0,'2020-06-10 15:58:24'),(18,'AMBISPHAN',0,'2020-06-10 15:55:34'),(18,'caribess',1,'2020-06-10 15:56:43'),(18,'exinoid',0,'2020-06-10 15:58:25'),(18,'jdperon',0,'2020-06-10 16:02:38'),(18,'polylood',1,'2020-06-10 16:04:41'),(18,'promous',1,'2020-06-10 16:05:25'),(18,'tartim',1,'2020-06-10 16:06:44'),(18,'XEROSTRE',1,'2020-06-10 16:08:27'),(19,'exinoid',0,'2020-06-10 15:58:27'),(19,'NEONAGE',0,'2020-06-10 16:11:28'),(19,'polylood',0,'2020-06-10 16:11:40'),(19,'promous',1,'2020-06-10 16:05:31'),(19,'tartim',1,'2020-06-10 16:06:32'),(20,'AMBISPHAN',0,'2020-06-10 15:55:36'),(20,'caribess',1,'2020-06-10 15:56:34'),(20,'exinoid',0,'2020-06-10 15:58:28'),(20,'jdperon',0,'2020-06-10 16:02:32'),(20,'NEONAGE',0,'2020-06-10 16:04:00'),(20,'promous',1,'2020-06-10 16:12:11');
/*!40000 ALTER TABLE `regnavegacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 19:59:45

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
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,1,'2020-06-10 19:41:33','publicado',NULL,'caribess',1),(2,2,'2020-06-10 19:44:34','publicado',NULL,'exinoid',1),(3,3,'2020-06-10 19:44:59','publicado',NULL,'polylood',1),(4,4,'2020-06-10 19:45:20','publicado',NULL,'jdperon',0),(5,5,'2020-06-10 19:45:37','publicado',NULL,'NEONAGE',1),(6,6,'2020-06-10 19:45:52','publicado',NULL,'jdperon',1),(7,7,'2020-06-10 19:46:03','publicado',NULL,'tartim',1),(8,8,'2020-06-10 19:46:20','publicado',NULL,'XEROSTRE',1),(9,9,'2020-06-10 19:46:33','publicado',NULL,'caribess',0),(10,10,'2020-06-10 19:46:48','publicado',NULL,'jdperon',1),(11,11,'2020-06-10 19:47:08','publicado',NULL,'promous',1),(12,12,'2020-06-10 19:47:10','publicado',NULL,'promous',1),(13,13,'2020-06-10 19:48:24','publicado',NULL,'AMBISPHAN',1),(14,14,'2020-06-10 19:47:43','publicado',NULL,'AMBISPHAN',1),(15,15,'2020-06-10 19:49:33','publicado',NULL,'NEONAGE',1),(16,16,'2020-06-10 19:50:00','publicado',NULL,'polylood',1),(17,17,'2020-06-10 19:50:14','publicado',NULL,'tartim',0),(18,18,'2020-06-10 19:50:32','publicado',NULL,'promous',1),(19,19,'2020-06-10 19:50:35','publicado',NULL,'promous',1),(20,20,'2020-06-10 19:50:47','publicado',NULL,'jdperon',1),(21,4,'2020-06-10 19:53:30','denunciado',NULL,'polylood',0),(22,17,'2020-06-10 19:54:20','denunciado',NULL,'polylood',0),(23,9,'2020-06-10 19:54:52','denunciado',NULL,'promous',0),(24,4,'2020-06-10 19:55:54','revision',NULL,'lucasblanco31',0),(25,9,'2020-06-10 19:56:33','revision',NULL,'tsarquis88',1),(26,17,'2020-06-10 19:56:54','revision',NULL,'tsarquis88',1),(27,4,'2020-06-10 19:58:29','invisible',NULL,'matiasmachado7',1);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 19:59:45
