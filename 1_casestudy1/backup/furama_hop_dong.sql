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
-- Table structure for table `hop_dong`
--

DROP TABLE IF EXISTS `hop_dong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hop_dong` (
  `ma_hop_dong` int NOT NULL,
  `ngay_lam_hop_dong` datetime DEFAULT NULL,
  `ngay_ket_thuc` datetime DEFAULT NULL,
  `tien_dat_coc` double DEFAULT NULL,
  `ma_nhan_vien` int DEFAULT NULL,
  `ma_khach_hang` int DEFAULT NULL,
  `ma_dich_vu` int DEFAULT NULL,
  PRIMARY KEY (`ma_hop_dong`),
  KEY `ma_nhan_vien` (`ma_nhan_vien`),
  KEY `ma_khach_hang` (`ma_khach_hang`),
  KEY `ma_dich_vu` (`ma_dich_vu`),
  CONSTRAINT `hop_dong_ibfk_1` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma_nhan_vien`),
  CONSTRAINT `hop_dong_ibfk_2` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`),
  CONSTRAINT `hop_dong_ibfk_3` FOREIGN KEY (`ma_dich_vu`) REFERENCES `dich_vu` (`ma_dich_vu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hop_dong`
--

LOCK TABLES `hop_dong` WRITE;
/*!40000 ALTER TABLE `hop_dong` DISABLE KEYS */;
INSERT INTO `hop_dong` VALUES (1,'2020-12-08 00:00:00','2020-12-08 00:00:00',0,3,1,3),(2,'2020-07-14 00:00:00','2020-07-21 00:00:00',200000,7,3,1),(3,'2021-03-15 00:00:00','2021-03-17 00:00:00',50000,3,4,2),(4,'2021-01-14 00:00:00','2021-01-18 00:00:00',100000,7,5,5),(5,'2021-07-14 00:00:00','2021-07-15 00:00:00',0,7,2,6),(6,'2021-06-01 00:00:00','2021-06-03 00:00:00',0,7,7,6),(7,'2021-09-02 00:00:00','2021-09-05 00:00:00',100000,7,4,4),(8,'2021-06-17 00:00:00','2021-06-18 00:00:00',150000,3,4,1),(9,'2020-11-19 00:00:00','2020-11-19 00:00:00',0,3,4,3),(10,'2021-04-12 00:00:00','2021-04-14 00:00:00',0,10,3,5),(11,'2021-04-25 00:00:00','2021-04-25 00:00:00',0,2,2,1),(12,'2021-05-25 00:00:00','2021-05-27 00:00:00',0,7,10,1);
/*!40000 ALTER TABLE `hop_dong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16 16:37:52
