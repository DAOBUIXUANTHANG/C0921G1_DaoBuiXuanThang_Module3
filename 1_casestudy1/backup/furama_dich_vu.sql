-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: furama
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `dich_vu`
--

DROP TABLE IF EXISTS `dich_vu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dich_vu` (
  `ma_dich_vu` int NOT NULL,
  `ten_dich_vu` varchar(45) DEFAULT NULL,
  `dien_tich` int DEFAULT NULL,
  `chi_phi_thue` double DEFAULT NULL,
  `so_nguoi_toi_da` int DEFAULT NULL,
  `ma_kieu_thue` int DEFAULT NULL,
  `ma_loai_dich_vu` int DEFAULT NULL,
  `tieu_chuan_phong` varchar(45) DEFAULT NULL,
  `mo_ta_tien_nghi_khac` varchar(45) DEFAULT NULL,
  `dien_tich_ho_boi` double DEFAULT NULL,
  `so_tang` int DEFAULT NULL,
  PRIMARY KEY (`ma_dich_vu`),
  KEY `ma_kieu_thue` (`ma_kieu_thue`),
  KEY `ma_loai_dich_vu` (`ma_loai_dich_vu`),
  CONSTRAINT `dich_vu_ibfk_1` FOREIGN KEY (`ma_kieu_thue`) REFERENCES `kieu_thue` (`ma_kieu_thue`),
  CONSTRAINT `dich_vu_ibfk_2` FOREIGN KEY (`ma_loai_dich_vu`) REFERENCES `loai_dich_vu` (`ma_loai_dich_vu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dich_vu`
--

LOCK TABLES `dich_vu` WRITE;
/*!40000 ALTER TABLE `dich_vu` DISABLE KEYS */;
INSERT INTO `dich_vu` VALUES (1,'Villa Beach Front',25000,10000000,10,3,1,'vip','Có hồ bơi',500,4),(2,'House Princess 01',14000,5000000,7,2,2,'vip','Có thêm bếp nướng',NULL,3),(3,'Room Twin 01',5000,1000000,2,4,3,'normal','Có tivi',NULL,NULL),(4,'Villa No Beach Front',22000,9000000,8,3,1,'normal','Có hồ bơi',300,3),(5,'House Princess 02',10000,4000000,5,3,2,'normal','Có thêm bếp nướng',NULL,2),(6,'Room Twin 02',3000,900000,2,4,3,'normal','Có tivi',NULL,NULL);
/*!40000 ALTER TABLE `dich_vu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16 16:37:51
