CREATE DATABASE  IF NOT EXISTS `red_telecom` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `red_telecom`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: red_telecom
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `clasificacion`
--

DROP TABLE IF EXISTS `clasificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clasificacion` (
  `id_clasificacion` int NOT NULL AUTO_INCREMENT,
  `nombre_clasificacion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_clasificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clasificacion`
--

LOCK TABLES `clasificacion` WRITE;
/*!40000 ALTER TABLE `clasificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `clasificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compania`
--

DROP TABLE IF EXISTS `compania`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compania` (
  `id_compania` int NOT NULL AUTO_INCREMENT,
  `nombre_compania` varchar(45) NOT NULL,
  PRIMARY KEY (`id_compania`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compania`
--

LOCK TABLES `compania` WRITE;
/*!40000 ALTER TABLE `compania` DISABLE KEYS */;
/*!40000 ALTER TABLE `compania` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `id_equipo` int NOT NULL AUTO_INCREMENT,
  `modelo_equipo` varchar(45) NOT NULL,
  `software_version` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_nodo`
--

DROP TABLE IF EXISTS `estado_nodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_nodo` (
  `id_estado_nodo` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estado_nodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_nodo`
--

LOCK TABLES `estado_nodo` WRITE;
/*!40000 ALTER TABLE `estado_nodo` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado_nodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel`
--

DROP TABLE IF EXISTS `nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel` (
  `id_nivel` int NOT NULL AUTO_INCREMENT,
  `nombre_nivel` varchar(45) NOT NULL,
  PRIMARY KEY (`id_nivel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodo`
--

DROP TABLE IF EXISTS `nodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nodo` (
  `id_nodo` int NOT NULL AUTO_INCREMENT,
  `nombre_nodo` varchar(15) NOT NULL,
  `ip_nodo` varchar(15) NOT NULL,
  `peid` int DEFAULT NULL,
  PRIMARY KEY (`id_nodo`),
  UNIQUE KEY `nombre_nodo_UNIQUE` (`nombre_nodo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodo`
--

LOCK TABLES `nodo` WRITE;
/*!40000 ALTER TABLE `nodo` DISABLE KEYS */;
INSERT INTO `nodo` VALUES (1,'ava','123.123.123.123',NULL),(2,'roa','321.321.321.321',NULL);
/*!40000 ALTER TABLE `nodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `red`
--

DROP TABLE IF EXISTS `red`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `red` (
  `id_red` int NOT NULL AUTO_INCREMENT,
  `nombre_red` varchar(45) NOT NULL,
  PRIMARY KEY (`id_red`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `red`
--

LOCK TABLES `red` WRITE;
/*!40000 ALTER TABLE `red` DISABLE KEYS */;
/*!40000 ALTER TABLE `red` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `id_vendor` int NOT NULL AUTO_INCREMENT,
  `nombre_vendor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_vendor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'cisco'),(2,'huawei'),(3,'juniper');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-17 16:26:08
