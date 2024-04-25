-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: erronka3
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `alokairua`
--

DROP TABLE IF EXISTS `alokairua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alokairua` (
  `id_alokairua` int NOT NULL AUTO_INCREMENT,
  `id_bezeroa` int NOT NULL,
  `id_bizikleta` int NOT NULL,
  `denbora` int NOT NULL,
  `prezioa` float NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_alokairua`,`id_bezeroa`,`id_bizikleta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alokairua`
--

LOCK TABLES `alokairua` WRITE;
/*!40000 ALTER TABLE `alokairua` DISABLE KEYS */;
INSERT INTO `alokairua` VALUES (1,1,1,0,500,'2024-04-22');
/*!40000 ALTER TABLE `alokairua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alokairua_bizileta`
--

DROP TABLE IF EXISTS `alokairua_bizileta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alokairua_bizileta` (
  `prezioa` int NOT NULL,
  `kopurua` int NOT NULL,
  `bizikleta_id_bizikleta` int NOT NULL,
  PRIMARY KEY (`bizikleta_id_bizikleta`),
  CONSTRAINT `fk_alokairua_bizileta_bizikleta1` FOREIGN KEY (`bizikleta_id_bizikleta`) REFERENCES `mydb`.`bizikleta` (`id_bizikleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alokairua_bizileta`
--

LOCK TABLES `alokairua_bizileta` WRITE;
/*!40000 ALTER TABLE `alokairua_bizileta` DISABLE KEYS */;
/*!40000 ALTER TABLE `alokairua_bizileta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berriak`
--

DROP TABLE IF EXISTS `berriak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berriak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(100) NOT NULL,
  `edukia` mediumtext NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berriak`
--

LOCK TABLES `berriak` WRITE;
/*!40000 ALTER TABLE `berriak` DISABLE KEYS */;
INSERT INTO `berriak` VALUES (1,'Bizikletarekin Etorkizun Berdeago Baterantz','Mundu osoko hiriak bizikleta-bideetara jotzen ari dira karbono isuriak murrizteko eta hiri bizigarritasuna hobetzeko.','2024-04-17'),(2,'Berrikuntzak Bizikleta Ekologikoetan','Azkeneko ekobizikletek material biodegradagarriak eta argi eguzki-eraginak dituzte.','2024-04-16'),(3,'Txirrindularitza Ekitaldiak Klima Aldaketarako','Hilabete honetan, hainbat txirrindularitza ekitaldi klima aldaketarako kontzientzia eta funtsak biltzea helburu duten.','2024-04-15'),(4,'Hiriguneetan Bizikletak: Osasun Eta Ingurumena','Bizikletaren erabilera sustatzeak airearen kalitatea hobetzen du eta osasun orokorra sustatzen du.','2024-04-14'),(5,'Bide Berdeak: Bizikletentzako Bide Seguruak','Bide berde berriak bizikletentzat eta oinezkoentzat segurtasun handiagoa eskaintzen dute.','2024-04-13'),(6,'Bizikleta Ekonomia Berdea Sustatzen','Ekonomia berdearen barruan, bizikletak funtsezko rola betetzen dute hiri garraio jasangarri gisa.','2024-04-12'),(7,'Global Warming eta Bizikletak','Ikerketak erakusten dute bizikletaren erabilera masiboak beroketa globala murriztu dezakeela.','2024-04-11'),(8,'Hirietako Mobilitate Jasangarria','Hiri modernoek bizikleta sareak zabaltzen dituzte mobilitate jasangarria bermatzeko.','2024-04-10'),(9,'Haurrak eta Bizikletak: Hezkuntza Ingurumeneko','Eskoletan bizikletaren erabilera sustatzea ingurumenarekiko kontzientzia handitzen du haurrak artean.','2024-04-09'),(10,'Bizikletaren Egun Mundiala','Urtero ospatzen den Bizikletaren Egun Mundialak bizikletaren onurak nabarmentzen ditu ingurumen eta osasunarentzat.','2024-04-08');
/*!40000 ALTER TABLE `berriak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berriaken`
--

DROP TABLE IF EXISTS `berriaken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berriaken` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berriaken`
--

LOCK TABLES `berriaken` WRITE;
/*!40000 ALTER TABLE `berriaken` DISABLE KEYS */;
INSERT INTO `berriaken` VALUES (1,'Towards a Greener Future with Bicycles','Cities around the world are turning to bike lanes to reduce carbon emissions and improve urban livability.','2024-04-17'),(2,'Innovations in Eco-Friendly Bicycles','The latest eco-bicycles feature biodegradable materials and solar-powered functionalities.','2024-04-16'),(3,'Cycling Events for Climate Change','This month, several cycling events aim to raise awareness and funds for climate change.','2024-04-15'),(4,'Bicycles in Urban Centers: Health and Environment','Promoting bicycle use improves air quality and boosts overall health.','2024-04-14'),(5,'Green Paths: Safe Routes for Bicycles','New green paths offer greater safety for cyclists and pedestrians.','2024-04-13'),(6,'Promoting the Green Bicycle Economy','Within the green economy, bicycles play a key role as a sustainable urban transport option.','2024-04-12'),(7,'Global Warming and Bicycles','Studies show that massive use of bicycles can reduce global warming.','2024-04-11'),(8,'Sustainable Mobility in Cities','Modern cities are expanding their bicycle networks to ensure sustainable mobility.','2024-04-10'),(9,'Children and Bicycles: Environmental Education','Promoting the use of bicycles in schools enhances environmental awareness among children.','2024-04-09'),(10,'World Bicycle Day','Annually celebrated World Bicycle Day highlights the benefits of the bicycle for the environment and health.','2024-04-08'),(11,'Towards a Greener Future with Bicycles','Cities around the world are turning to bike lanes to reduce carbon emissions and improve urban livability.','2024-04-17'),(12,'Innovations in Eco-Friendly Bicycles','The latest eco-bicycles feature biodegradable materials and solar-powered functionalities.','2024-04-16'),(13,'Cycling Events for Climate Change','This month, several cycling events aim to raise awareness and funds for climate change.','2024-04-15'),(14,'Bicycles in Urban Centers: Health and Environment','Promoting bicycle use improves air quality and boosts overall health.','2024-04-14'),(15,'Green Paths: Safe Routes for Bicycles','New green paths offer greater safety for cyclists and pedestrians.','2024-04-13'),(16,'Promoting the Green Bicycle Economy','Within the green economy, bicycles play a key role as a sustainable urban transport option.','2024-04-12'),(17,'Global Warming and Bicycles','Studies show that massive use of bicycles can reduce global warming.','2024-04-11'),(18,'Sustainable Mobility in Cities','Modern cities are expanding their bicycle networks to ensure sustainable mobility.','2024-04-10'),(19,'Children and Bicycles: Environmental Education','Promoting the use of bicycles in schools enhances environmental awareness among children.','2024-04-09'),(20,'World Bicycle Day','Annually celebrated World Bicycle Day highlights the benefits of the bicycle for the environment and health.','2024-04-08');
/*!40000 ALTER TABLE `berriaken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berriakes`
--

DROP TABLE IF EXISTS `berriakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berriakes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berriakes`
--

LOCK TABLES `berriakes` WRITE;
/*!40000 ALTER TABLE `berriakes` DISABLE KEYS */;
INSERT INTO `berriakes` VALUES (1,'Hacia un Futuro Más Verde con la Bicicleta','Ciudades de todo el mundo están recurriendo a carriles bici para reducir las emisiones de carbono y mejorar la habitabilidad urbana.','2024-04-17'),(2,'Innovaciones en Bicicletas Ecológicas','Las últimas bicicletas ecológicas cuentan con materiales biodegradables y características solares.','2024-04-16'),(3,'Eventos de Ciclismo para el Cambio Climático','Este mes, varios eventos de ciclismo tienen como objetivo concienciar sobre el cambio climático y recaudar fondos.','2024-04-15'),(4,'Bicicletas en Centros Urbanos: Salud y Medio Ambiente','Fomentar el uso de bicicletas mejora la calidad del aire y promueve la salud general.','2024-04-14'),(5,'Caminos Verdes: Vías Seguras para Bicicletas','Nuevos caminos verdes ofrecen mayor seguridad para ciclistas y peatones.','2024-04-13'),(6,'Fomentando la Economía Verde de la Bicicleta','Dentro de la economía verde, las bicicletas desempeñan un papel esencial como medio de transporte urbano sostenible.','2024-04-12'),(7,'Calentamiento Global y Bicicletas','Los estudios muestran que el uso masivo de bicicletas puede reducir el calentamiento global.','2024-04-11'),(8,'Movilidad Sostenible en Ciudades','Las ciudades modernas expanden sus redes de bicicletas para garantizar una movilidad sostenible.','2024-04-10'),(9,'Niños y Bicicletas: Educación Ambiental','Promover el uso de bicicletas en las escuelas aumenta la conciencia ambiental entre los niños.','2024-04-09'),(10,'Día Mundial de la Bicicleta','El Día Mundial de la Bicicleta, celebrado anualmente, destaca los beneficios de la bicicleta para el medio ambiente y la salud.','2024-04-08'),(11,'Hacia un Futuro Más Verde con la Bicicleta','Ciudades de todo el mundo están recurriendo a carriles bici para reducir las emisiones de carbono y mejorar la habitabilidad urbana.','2024-04-17'),(12,'Innovaciones en Bicicletas Ecológicas','Las últimas bicicletas ecológicas cuentan con materiales biodegradables y características solares.','2024-04-16'),(13,'Eventos de Ciclismo para el Cambio Climático','Este mes, varios eventos de ciclismo tienen como objetivo concienciar sobre el cambio climático y recaudar fondos.','2024-04-15'),(14,'Bicicletas en Centros Urbanos: Salud y Medio Ambiente','Fomentar el uso de bicicletas mejora la calidad del aire y promueve la salud general.','2024-04-14'),(15,'Caminos Verdes: Vías Seguras para Bicicletas','Nuevos caminos verdes ofrecen mayor seguridad para ciclistas y peatones.','2024-04-13'),(16,'Fomentando la Economía Verde de la Bicicleta','Dentro de la economía verde, las bicicletas desempeñan un papel esencial como medio de transporte urbano sostenible.','2024-04-12'),(17,'Calentamiento Global y Bicicletas','Los estudios muestran que el uso masivo de bicicletas puede reducir el calentamiento global.','2024-04-11'),(18,'Movilidad Sostenible en Ciudades','Las ciudades modernas expanden sus redes de bicicletas para garantizar una movilidad sostenible.','2024-04-10'),(19,'Niños y Bicicletas: Educación Ambiental','Promover el uso de bicicletas en las escuelas aumenta la conciencia ambiental entre los niños.','2024-04-09'),(20,'Día Mundial de la Bicicleta','El Día Mundial de la Bicicleta, celebrado anualmente, destaca los beneficios de la bicicleta para el medio ambiente y la salud.','2024-04-08');
/*!40000 ALTER TABLE `berriakes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bezeroa`
--

DROP TABLE IF EXISTS `bezeroa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bezeroa` (
  `id_bezeroa` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(15) NOT NULL,
  `abizena` varchar(15) NOT NULL,
  `telefonoa` int NOT NULL,
  `korreoa` varchar(25) NOT NULL,
  `pasahitza` varchar(10) NOT NULL,
  PRIMARY KEY (`id_bezeroa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bezeroa`
--

LOCK TABLES `bezeroa` WRITE;
/*!40000 ALTER TABLE `bezeroa` DISABLE KEYS */;
INSERT INTO `bezeroa` VALUES (1,'Gorak','Var',22,'1@gmail.com','1'),(3,'Urko','Perez',666666666,'aitor@gmail.eus','6'),(4,'Gorka','Bartolome',655479911,'gorka@gmail.com','a'),(5,'Igor','Viyuela',943262626,'i@gmail.com','45');
/*!40000 ALTER TABLE `bezeroa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bizikleta`
--

DROP TABLE IF EXISTS `bizikleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bizikleta` (
  `id_bizikleta` int NOT NULL,
  `mota` varchar(45) NOT NULL,
  `prezioa` float NOT NULL,
  `egoera` varchar(15) NOT NULL,
  `imagen` mediumtext,
  `descripcion` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id_bizikleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bizikleta`
--

LOCK TABLES `bizikleta` WRITE;
/*!40000 ALTER TABLE `bizikleta` DISABLE KEYS */;
INSERT INTO `bizikleta` VALUES (1,'Bici Electrica',2,'Ondo','https://imbikes.com/8211-medium_default/bicicleta-electrica-mtb-275-devron-riddle-m17.jpg','(Cómodo y una autonomía muy eficiente)'),(2,'Bici Ciudad',3,'Mantenimenduan','https://www.sanferbike.com/videostv/wp-content/uploads/2020/05/LIV-Flourish-2.jpg','(Moda, Disco Doble)'),(3,'Bici Carretera',5,'Ondo','https://d2yn9m4p3q9iyv.cloudfront.net/orbea/2020/orca-aero-m20team-d/thumbs/1000/55cb0.webp','(Comoda y veloz)'),(4,'Bici Ciudad Electrica',3.5,'Ondo','https://batterythings.com/wp-content/uploads/2014/05/elegance-bicicletas-electricas-bicis-barcelona-battery-things-498x500.jpg','(Comoda y ayuda al medioambiente)'),(5,'Bici Montaña',2,'Ondo','https://www.bicismendiz.com/sites/default/files/styles/detalle/public/x10-sram-roja.jpg?itok=5cosCv_1','(Ligeras y con buena amortiguación)'),(6,'BMX',1,'Ondo','https://images.internetstores.de/products//1808782/02/08f5be/Radio_Bikes_Revo_Pro_20__Limited_Edition_schwarz[600x600].jpg?forceSize=true&forceAspectRatio=true&forceAlign=center','(Buena para las bicis)');
/*!40000 ALTER TABLE `bizikleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `langilea`
--

DROP TABLE IF EXISTS `langilea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `langilea` (
  `id_langilea` int NOT NULL,
  `izena` varchar(15) NOT NULL,
  `abizena` varchar(15) NOT NULL,
  `helbidea` varchar(25) NOT NULL,
  `herria` varchar(15) NOT NULL,
  `telf` varchar(10) NOT NULL,
  `korreoa` varchar(25) NOT NULL,
  `pasahitza` varchar(30) NOT NULL,
  `mota` varchar(10) NOT NULL,
  `lokala_id_lokala` int NOT NULL,
  PRIMARY KEY (`id_langilea`,`lokala_id_lokala`),
  KEY `fk_langilea_lokala1_idx` (`lokala_id_lokala`),
  CONSTRAINT `fk_langilea_lokala1` FOREIGN KEY (`lokala_id_lokala`) REFERENCES `lokala` (`id_lokala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `langilea`
--

LOCK TABLES `langilea` WRITE;
/*!40000 ALTER TABLE `langilea` DISABLE KEYS */;
INSERT INTO `langilea` VALUES (1,'Juan','Martínez','Madrid','Madrid','123456789','juan@gmail.com','contraseña123','langilea',1),(2,'María','González','Avenida Central 456','Barcelona','987654321','maria@hotmail.com','adminpass','admin',2),(3,'Pedro','López','Calle Secundaria 789','Valencia','654321987','pedro@gmail.com','mypass','mantenitze',3),(4,'Ana','López','Calle Mayor 567','Sevilla','123456789','ana@hotmail.com','contraseña123','langilea',4),(5,'David','García','Plaza Principal 890','Madrid','987654321','david@gmail.com','adminpass','admin',5),(6,'Elena','Martínez','Avenida Central 123','Barcelona','654321987','elena@hotmail.com','mypass','mantenitze',1),(7,'Javier','Fernández','Calle Secundaria 456','Valencia','147258369','javier@gmail.com','contraseña123','langilea',2),(8,'Laura','Rodríguez','Calle Principal 789','Sevilla','369258147','laura@hotmail.com','adminpass','admin',3),(9,'Carlos','Pérez','Plaza Mayor 234','Madrid','951753824','carlos@gmail.com','mypass','mantenitze',1),(10,'Sara','Gómez','Avenida Central 567','Barcelona','753951824','sara@hotmail.com','contraseña123','langilea',2),(11,'Luis','Sánchez','Calle Principal 901','Valencia','123987456','luis@gmail.com','adminpass','admin',3),(12,'Marina','Gómez','Calle Mayor 234','Sevilla','987654321','marina@hotmail.com','mypass','mantenitze',4),(13,'Pablo','López','Plaza Principal 567','Madrid','654321987','pablo@gmail.com','contraseña123','langilea',5),(14,'Eva','Martínez','Avenida Central 890','Barcelona','147258369','eva@hotmail.com','adminpass','admin',1),(15,'Alberto','García','Calle Secundaria 123','Valencia','369258147','alberto@gmail.com','mypass','mantenitze',2),(16,'Cristina','Fernández','Plaza Mayor 456','Sevilla','951753824','cristina@hotmail.com','contraseña123','langilea',3),(17,'Diego','Rodríguez','Calle Principal 789','Madrid','753951824','diego@gmail.com','adminpass','admin',4),(18,'Nuria','López','Avenida Central 234','Barcelona','123456789','nuria@hotmail.com','mypass','mantenitze',5),(19,'Miguel','Sánchez','Calle Mayor 567','Valencia','987654321','miguel@gmail.com','contraseña123','langilea',1),(20,'Ana','Gómez','Plaza Principal 890','Sevilla','654321987','ana2@hotmail.com','adminpass','admin',2),(21,'Jorge','Martínez','Calle Secundaria 123','Madrid','147258369','jorge@gmail.com','mypass','mantenitze',3),(22,'Sandra','Fernández','Avenida Central 456','Barcelona','369258147','sandra@hotmail.com','contraseña123','langilea',4),(23,'Carlos','García','Calle Mayor 789','Valencia','951753824','carlos2@gmail.com','adminpass','admin',5),(24,'Luisa','López','Plaza Principal 234','Sevilla','753951824','luisa@hotmail.com','mypass','mantenitze',1),(25,'Alberto','Martínez','Calle Principal 567','Madrid','123456789','alberto2@gmail.com','contraseña123','langilea',2),(26,'Elena','Gómez','Avenida Central 890','Barcelona','987654321','elena2@hotmail.com','adminpass','admin',3),(27,'Juan','García','Calle Secundaria 123','Valencia','654321987','juan2@gmail.com','mypass','mantenitze',4),(28,'María','López','Plaza Mayor 456','Sevilla','147258369','maria2@hotmail.com','contraseña123','langilea',5),(29,'Pedro','Martínez','Avenida Central 789','Madrid','369258147','pedro2@gmail.com','adminpass','admin',1),(30,'Sara','García','Calle Mayor 234','Barcelona','951753824','sara2@hotmail.com','mypass','admin',2);
/*!40000 ALTER TABLE `langilea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokal_bizikleta`
--

DROP TABLE IF EXISTS `lokal_bizikleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lokal_bizikleta` (
  `lokala_id_lokala` int NOT NULL,
  `bizikleta_id_bizikleta` int NOT NULL,
  `kopurua` int NOT NULL,
  PRIMARY KEY (`lokala_id_lokala`,`bizikleta_id_bizikleta`),
  KEY `fk_lokala_has_bizikleta_bizikleta1_idx` (`bizikleta_id_bizikleta`),
  KEY `fk_lokala_has_bizikleta_lokala1_idx` (`lokala_id_lokala`),
  CONSTRAINT `fk_lokala_has_bizikleta_bizikleta1` FOREIGN KEY (`bizikleta_id_bizikleta`) REFERENCES `mydb`.`bizikleta` (`id_bizikleta`),
  CONSTRAINT `fk_lokala_has_bizikleta_lokala1` FOREIGN KEY (`lokala_id_lokala`) REFERENCES `mydb`.`lokala` (`id_lokala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokal_bizikleta`
--

LOCK TABLES `lokal_bizikleta` WRITE;
/*!40000 ALTER TABLE `lokal_bizikleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `lokal_bizikleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokala`
--

DROP TABLE IF EXISTS `lokala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lokala` (
  `id_lokala` int NOT NULL,
  `kokapena` varchar(20) NOT NULL,
  PRIMARY KEY (`id_lokala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokala`
--

LOCK TABLES `lokala` WRITE;
/*!40000 ALTER TABLE `lokala` DISABLE KEYS */;
INSERT INTO `lokala` VALUES (1,'Calle Mayor 123'),(2,'Avenida Central 456'),(3,'Calle Secundaria 789'),(4,'Plaza Principal 567'),(5,'Calle Principal 890');
/*!40000 ALTER TABLE `lokala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenua`
--

DROP TABLE IF EXISTS `mantenua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenua` (
  `id_mantenua` int NOT NULL AUTO_INCREMENT,
  `id_langilea` int NOT NULL,
  `id_bizikleta` int NOT NULL,
  `dataHasi` date NOT NULL,
  `dataBukatu` date DEFAULT NULL,
  `egoera` varchar(45) NOT NULL,
  `deskripzioa` varchar(45) NOT NULL,
  PRIMARY KEY (`id_mantenua`,`id_langilea`,`id_bizikleta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenua`
--

LOCK TABLES `mantenua` WRITE;
/*!40000 ALTER TABLE `mantenua` DISABLE KEYS */;
INSERT INTO `mantenua` VALUES (1,1,2,'2024-04-17',NULL,'Ondo','Bizikletaren kanbioak aldatu ditut');
/*!40000 ALTER TABLE `mantenua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tendentziak`
--

DROP TABLE IF EXISTS `tendentziak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tendentziak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(100) NOT NULL,
  `deskripzioa` text NOT NULL,
  `popularitatea` int NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tendentziak`
--

LOCK TABLES `tendentziak` WRITE;
/*!40000 ALTER TABLE `tendentziak` DISABLE KEYS */;
INSERT INTO `tendentziak` VALUES (1,'Hiri Txirrindularitza','Hiri eremuetan txirrindularitza garraio iraunkor gisa igotzea.',95,'2024-04-17'),(2,'E-Bikes','E-bikeek popularitatea irabazten dute lanera joateko eta aisialdirako, erabilera errazagatik eta onura ingurumenalegatik.',90,'2024-04-17'),(3,'Txirrindularitza Azpiegiturak','Txirrindularitza azpiegiturak inbertsioak, hala nola bideak eta aparkalekuak.',85,'2024-04-17'),(4,'Bike Sharing','Munduko hirietan bizikleta partekatze programen hazkundea.',80,'2024-04-17'),(5,'Abentura Bizikletak','Kanpoko zaletasunen artean abentura eta mendiko bizikletak interes handiagoa pizten.',75,'2024-04-17'),(6,'Hiri Txirrindularitza','Hiri eremuetan txirrindularitza garraio iraunkor gisa igotzea.',95,'2024-04-17'),(7,'E-Bikes','E-bikeek popularitatea irabazten dute lanera joateko eta aisialdirako, erabilera errazagatik eta onura ingurumenalegatik.',90,'2024-04-17'),(8,'Txirrindularitza Azpiegiturak','Txirrindularitza azpiegiturak inbertsioak, hala nola bideak eta aparkalekuak.',85,'2024-04-17'),(9,'Bike Sharing','Munduko hirietan bizikleta partekatze programen hazkundea.',80,'2024-04-17'),(10,'Abentura Bizikletak','Kanpoko zaletasunen artean abentura eta mendiko bizikletak interes handiagoa pizten.',75,'2024-04-17'),(11,'Hiri Txirrindularitza','Hiri eremuetan txirrindularitza garraio iraunkor gisa igotzea.',95,'2024-04-17'),(12,'E-Bikes','E-bikeek popularitatea irabazten dute lanera joateko eta aisialdirako, erabilera errazagatik eta onura ingurumenalegatik.',90,'2024-04-17'),(13,'Txirrindularitza Azpiegiturak','Txirrindularitza azpiegiturak inbertsioak, hala nola bideak eta aparkalekuak.',85,'2024-04-17'),(14,'Bike Sharing','Munduko hirietan bizikleta partekatze programen hazkundea.',80,'2024-04-17'),(15,'Abentura Bizikletak','Kanpoko zaletasunen artean abentura eta mendiko bizikletak interes handiagoa pizten.',75,'2024-04-17');
/*!40000 ALTER TABLE `tendentziak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tendentziaken`
--

DROP TABLE IF EXISTS `tendentziaken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tendentziaken` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `popularity` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tendentziaken`
--

LOCK TABLES `tendentziaken` WRITE;
/*!40000 ALTER TABLE `tendentziaken` DISABLE KEYS */;
INSERT INTO `tendentziaken` VALUES (1,'Urban Cycling','The increase of cycling as sustainable transport in urban areas.',95,'2024-04-17'),(2,'E-Bikes','E-bikes are gaining popularity for commuting and leisure, due to their ease of use and environmental benefits.',90,'2024-04-17'),(3,'Cycling Infrastructure','Investments in cycling infrastructure, such as paths and parking.',85,'2024-04-17'),(4,'Bike Sharing','Growth of bike-sharing programs in cities around the world.',80,'2024-04-17'),(5,'Adventure Bikes','A growing interest in adventure and mountain bikes among outdoor enthusiasts.',75,'2024-04-17'),(6,'Urban Cycling','The increase of cycling as sustainable transport in urban areas.',95,'2024-04-17'),(7,'E-Bikes','E-bikes are gaining popularity for commuting and leisure, due to their ease of use and environmental benefits.',90,'2024-04-17'),(8,'Cycling Infrastructure','Investments in cycling infrastructure, such as paths and parking.',85,'2024-04-17'),(9,'Bike Sharing','Growth of bike-sharing programs in cities around the world.',80,'2024-04-17'),(10,'Adventure Bikes','A growing interest in adventure and mountain bikes among outdoor enthusiasts.',75,'2024-04-17'),(11,'Urban Cycling','The increase of cycling as sustainable transport in urban areas.',95,'2024-04-17'),(12,'E-Bikes','E-bikes are gaining popularity for commuting and leisure, due to their ease of use and environmental benefits.',90,'2024-04-17'),(13,'Cycling Infrastructure','Investments in cycling infrastructure, such as paths and parking.',85,'2024-04-17'),(14,'Bike Sharing','Growth of bike-sharing programs in cities around the world.',80,'2024-04-17'),(15,'Adventure Bikes','A growing interest in adventure and mountain bikes among outdoor enthusiasts.',75,'2024-04-17'),(16,'Urban Cycling','The increase of cycling as sustainable transport in urban areas.',95,'2024-04-17'),(17,'E-Bikes','E-bikes are gaining popularity for commuting and leisure, due to their ease of use and environmental benefits.',90,'2024-04-17'),(18,'Cycling Infrastructure','Investments in cycling infrastructure, such as paths and parking.',85,'2024-04-17'),(19,'Bike Sharing','Growth of bike-sharing programs in cities around the world.',80,'2024-04-17'),(20,'Adventure Bikes','A growing interest in adventure and mountain bikes among outdoor enthusiasts.',75,'2024-04-17'),(21,'Urban Cycling','The increase of cycling as sustainable transport in urban areas.',95,'2024-04-17'),(22,'E-Bikes','E-bikes are gaining popularity for commuting and leisure, due to their ease of use and environmental benefits.',90,'2024-04-17'),(23,'Cycling Infrastructure','Investments in cycling infrastructure, such as paths and parking.',85,'2024-04-17'),(24,'Bike Sharing','Growth of bike-sharing programs in cities around the world.',80,'2024-04-17'),(25,'Adventure Bikes','A growing interest in adventure and mountain bikes among outdoor enthusiasts.',75,'2024-04-17'),(26,'Urban Cycling','The increase of cycling as sustainable transport in urban areas.',95,'2024-04-17'),(27,'E-Bikes','E-bikes are gaining popularity for commuting and leisure, due to their ease of use and environmental benefits.',90,'2024-04-17'),(28,'Cycling Infrastructure','Investments in cycling infrastructure, such as paths and parking.',85,'2024-04-17'),(29,'Bike Sharing','Growth of bike-sharing programs in cities around the world.',80,'2024-04-17'),(30,'Adventure Bikes','A growing interest in adventure and mountain bikes among outdoor enthusiasts.',75,'2024-04-17');
/*!40000 ALTER TABLE `tendentziaken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tendentziakes`
--

DROP TABLE IF EXISTS `tendentziakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tendentziakes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` mediumtext,
  `popularidad` int NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tendentziakes`
--

LOCK TABLES `tendentziakes` WRITE;
/*!40000 ALTER TABLE `tendentziakes` DISABLE KEYS */;
INSERT INTO `tendentziakes` VALUES (46,'Ciclismo Urbano','El aumento del ciclismo como transporte sostenible en áreas urbanas.',95,'2024-04-17'),(47,'E-Bikes','Las e-bikes ganan popularidad para ir al trabajo y para el ocio, debido a su facilidad de uso y beneficios ambientales.',90,'2024-04-17'),(48,'Infraestructura Ciclista','Inversiones en infraestructura ciclista, como caminos y estacionamientos.',85,'2024-04-17'),(49,'Compartir Bicicletas','Crecimiento de programas de compartición de bicicletas en ciudades del mundo.',80,'2024-04-17'),(50,'Bicicletas de Aventura','Un creciente interés en bicicletas de aventura y montaña entre los entusiastas al aire libre.',75,'2024-04-17'),(51,'Ciclismo Urbano','El aumento del ciclismo como transporte sostenible en áreas urbanas.',95,'2024-04-17'),(52,'E-Bikes','Las e-bikes ganan popularidad para ir al trabajo y para el ocio, debido a su facilidad de uso y beneficios ambientales.',90,'2024-04-17'),(53,'Infraestructura Ciclista','Inversiones en infraestructura ciclista, como caminos y estacionamientos.',85,'2024-04-17'),(54,'Compartir Bicicletas','Crecimiento de programas de compartición de bicicletas en ciudades del mundo.',80,'2024-04-17'),(55,'Bicicletas de Aventura','Un creciente interés en bicicletas de aventura y montaña entre los entusiastas al aire libre.',75,'2024-04-17'),(56,'Ciclismo Urbano','El aumento del ciclismo como transporte sostenible en áreas urbanas.',95,'2024-04-17'),(57,'E-Bikes','Las e-bikes ganan popularidad para ir al trabajo y para el ocio, debido a su facilidad de uso y beneficios ambientales.',90,'2024-04-17'),(58,'Infraestructura Ciclista','Inversiones en infraestructura ciclista, como caminos y estacionamientos.',85,'2024-04-17'),(59,'Compartir Bicicletas','Crecimiento de programas de compartición de bicicletas en ciudades del mundo.',80,'2024-04-17'),(60,'Bicicletas de Aventura','Un creciente interés en bicicletas de aventura y montaña entre los entusiastas al aire libre.',75,'2024-04-17'),(61,'Ciclismo Urbano','El aumento del ciclismo como transporte sostenible en áreas urbanas.',95,'2024-04-17'),(62,'E-Bikes','Las e-bikes ganan popularidad para ir al trabajo y para el ocio, debido a su facilidad de uso y beneficios ambientales.',90,'2024-04-17'),(63,'Infraestructura Ciclista','Inversiones en infraestructura ciclista, como caminos y estacionamientos.',85,'2024-04-17'),(64,'Compartir Bicicletas','Crecimiento de programas de compartición de bicicletas en ciudades del mundo.',80,'2024-04-17'),(65,'Bicicletas de Aventura','Un creciente interés en bicicletas de aventura y montaña entre los entusiastas al aire libre.',75,'2024-04-17'),(66,'Ciclismo Urbano','El aumento del ciclismo como transporte sostenible en áreas urbanas.',95,'2024-04-17'),(67,'E-Bikes','Las e-bikes ganan popularidad para ir al trabajo y para el ocio, debido a su facilidad de uso y beneficios ambientales.',90,'2024-04-17'),(68,'Infraestructura Ciclista','Inversiones en infraestructura ciclista, como caminos y estacionamientos.',85,'2024-04-17'),(69,'Compartir Bicicletas','Crecimiento de programas de compartición de bicicletas en ciudades del mundo.',80,'2024-04-17'),(70,'Bicicletas de Aventura','Un creciente interés en bicicletas de aventura y montaña entre los entusiastas al aire libre.',75,'2024-04-17');
/*!40000 ALTER TABLE `tendentziakes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-25 12:25:45
