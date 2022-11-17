-- MariaDB dump 10.19  Distrib 10.9.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: proveedores
-- ------------------------------------------------------
-- Server version	10.9.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulo` (
  `id` int(11) NOT NULL,
  `id_articulo` char(50) DEFAULT NULL,
  `descripcion` char(200) DEFAULT NULL,
  `entrega` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `minimo` int(11) DEFAULT NULL,
  `zona_proveedorId` int(11) NOT NULL,
  `subcategoriaID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zona_proveedorId` (`zona_proveedorId`),
  KEY `subcategoriaID` (`subcategoriaID`),
  CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`zona_proveedorId`) REFERENCES `zona_proveedor` (`id`),
  CONSTRAINT `articulo_ibfk_2` FOREIGN KEY (`subcategoriaID`) REFERENCES `subcategoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` char(100) DEFAULT NULL,
  `proveedorId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedorId` (`proveedorId`),
  CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`proveedorId`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES
(1,'Servicios de comida y bebida para empleados',1),
(2,'Servicios de comida y bebida para empleados',2),
(3,'Servicios de comida y bebida para empleados',3),
(4,'Servicios de comida y bebida para empleados',4),
(5,'Servicios de comida y bebida para empleados',5),
(6,'Servicios de comida y bebida para empleados',6),
(7,'Servicios de comida y bebida para empleados',7),
(8,'Servicios de comida y bebida para empleados',8),
(9,'Servicios de comida y bebida para empleados',9),
(10,'Servicios de comida y bebida para empleados',10),
(11,'Servicios de comida y bebida para empleados',11),
(12,'Servicios de comida y bebida para empleados',12);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `rut` char(15) DEFAULT NULL,
  `nombre` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES
(1,'76961994-1','CAMASI SPA'),
(2,'76581678-5','BJ COFFEE BREAK LIMITADA'),
(3,'08989042-K','MARITZA PAOLA VIGNOLO PERALTA'),
(4,'76811111-1','LA OPIPERIA SPA'),
(5,'13514277-8','SILVANA SOLEDAD BRUZON LERDON'),
(6,'76338026-2','DONA ISIDORA EVENTOS LIMITADA'),
(7,'8375218-1','CHRISTIAN ADOLFO MUELLER MATURANA'),
(8,'76505053-7','EVENTOS Y BANQUETERÍA BAGNA CAUDA SPA'),
(9,'18915739-8','DIEGO NICOLAS CABRERA POBLETE'),
(10,'08375218-1','CHRISTIAN ADOLFO MUELLER MATURANA'),
(11,'77026352-2','IL KFE EVENTOS SPA'),
(12,'10354004-6','PATRICIO ANTONIO TORO MORALES');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategoria`
--

DROP TABLE IF EXISTS `subcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategoria` (
  `id` int(11) NOT NULL,
  `nombre` char(150) DEFAULT NULL,
  `categoriaId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoriaId` (`categoriaId`),
  CONSTRAINT `subcategoria_ibfk_1` FOREIGN KEY (`categoriaId`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategoria`
--

LOCK TABLES `subcategoria` WRITE;
/*!40000 ALTER TABLE `subcategoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zona`
--

DROP TABLE IF EXISTS `zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zona` (
  `id` int(11) NOT NULL,
  `nombre` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona`
--

LOCK TABLES `zona` WRITE;
/*!40000 ALTER TABLE `zona` DISABLE KEYS */;
INSERT INTO `zona` VALUES
(1,'Viña del Mar'),
(2,'Concepcion'),
(3,'Santiago'),
(4,'Rancagua');
/*!40000 ALTER TABLE `zona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zona_proveedor`
--

DROP TABLE IF EXISTS `zona_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zona_proveedor` (
  `id` int(11) NOT NULL,
  `zonaID` int(11) NOT NULL,
  `proveedorId` int(11) NOT NULL,
  `vencimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zonaID` (`zonaID`),
  KEY `proveedorId` (`proveedorId`),
  CONSTRAINT `zona_proveedor_ibfk_1` FOREIGN KEY (`zonaID`) REFERENCES `zona` (`id`),
  CONSTRAINT `zona_proveedor_ibfk_2` FOREIGN KEY (`proveedorId`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona_proveedor`
--

LOCK TABLES `zona_proveedor` WRITE;
/*!40000 ALTER TABLE `zona_proveedor` DISABLE KEYS */;
INSERT INTO `zona_proveedor` VALUES
(1,1,1,'2023-04-05'),
(2,1,2,'2023-04-05'),
(3,1,3,'2023-04-05'),
(4,1,4,'2023-04-05'),
(5,2,5,'2023-04-05'),
(6,3,6,'2023-04-05'),
(7,3,7,'2023-04-05'),
(8,2,8,'2023-04-05'),
(9,3,9,'2023-04-05'),
(10,3,10,'2023-04-05'),
(11,3,11,'2023-04-05'),
(12,3,12,'2023-04-22'),
(13,1,12,'2023-04-22');
/*!40000 ALTER TABLE `zona_proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-17 10:10:54
