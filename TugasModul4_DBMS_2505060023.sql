-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: rombel2
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `biodata_mhs`
--

DROP TABLE IF EXISTS `biodata_mhs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biodata_mhs` (
  `NPM` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `No_HP` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`NPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata_mhs`
--

LOCK TABLES `biodata_mhs` WRITE;
/*!40000 ALTER TABLE `biodata_mhs` DISABLE KEYS */;
INSERT INTO `biodata_mhs` VALUES ('25010','Marcelo','SOLO',NULL,'L','08567'),('25050','Dimas Galih Prakoso','Kebumen','dimsgg@','L','0888'),('25067','Angger','Magelang',NULL,'L','0987'),('25099','Bara','Magelang',NULL,'L','08665');
/*!40000 ALTER TABLE `biodata_mhs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen` (
  `NAMA` varchar(20) NOT NULL,
  `NIP` char(5) NOT NULL,
  `TEMPAT_LAHIR` varchar(20) NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL,
  `NO_HP` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`NIP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `NPM` char(5) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `No_Hp` varchar(25) NOT NULL,
  PRIMARY KEY (`NPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('A001','Dimas','Kebumen','2007-05-12','L','08785349'),('A002','Angger','Magelang','2006-04-17','L','08776543'),('A003','BBara','Magelang','2007-09-24','L','08312456'),('A005','Marcelo','Solo','2007-07-16','L','08310990');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswaa`
--

DROP TABLE IF EXISTS `mahasiswaa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswaa` (
  `MAHASISWA_ID` int(11) NOT NULL,
  `NAMA_MAHASISWA` varchar(30) NOT NULL,
  `JURUSAN` varchar(30) NOT NULL,
  `MATKUL` varchar(40) NOT NULL,
  `NILAI` decimal(10,2) DEFAULT NULL,
  `NPM` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MAHASISWA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswaa`
--

LOCK TABLES `mahasiswaa` WRITE;
/*!40000 ALTER TABLE `mahasiswaa` DISABLE KEYS */;
/*!40000 ALTER TABLE `mahasiswaa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahsswa`
--

DROP TABLE IF EXISTS `mahsswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahsswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahsswa`
--

LOCK TABLES `mahsswa` WRITE;
/*!40000 ALTER TABLE `mahsswa` DISABLE KEYS */;
INSERT INTO `mahsswa` VALUES ('250601','Munada','Informatika'),('250602','Pangestu','Teknologi Informasi'),('250603','Dimas','Teknologi Informasi'),('250604','Ucup','Teknik Komputer'),('250605','Angger','Teknik Komputer');
/*!40000 ALTER TABLE `mahsswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mata_kuliah`
--

DROP TABLE IF EXISTS `mata_kuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mata_kuliah` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Dosen_NIP` char(5) NOT NULL,
  `Nama_Matkul` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Dosen_NIP` (`Dosen_NIP`),
  CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`Dosen_NIP`) REFERENCES `dosen` (`NIP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mata_kuliah`
--

LOCK TABLES `mata_kuliah` WRITE;
/*!40000 ALTER TABLE `mata_kuliah` DISABLE KEYS */;
/*!40000 ALTER TABLE `mata_kuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai_mahasiswa`
--

DROP TABLE IF EXISTS `nilai_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai_mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(10) DEFAULT NULL,
  `mata_kuliah` varchar(50) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai_mahasiswa`
--

LOCK TABLES `nilai_mahasiswa` WRITE;
/*!40000 ALTER TABLE `nilai_mahasiswa` DISABLE KEYS */;
INSERT INTO `nilai_mahasiswa` VALUES (1,'22001','Basis Data',85),(2,'22001','Algoritma',90),(3,'22002','Basis Data',78),(4,'22002','Algoritma',82),(5,'22003','Basis Data',88),(6,'22003','Algoritma',91),(7,'22004','Basis Data',75),(8,'22005','Algoritma',80);
/*!40000 ALTER TABLE `nilai_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai_mahsswa`
--

DROP TABLE IF EXISTS `nilai_mahsswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai_mahsswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(10) DEFAULT NULL,
  `mata_kuliah` varchar(20) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai_mahsswa`
--

LOCK TABLES `nilai_mahsswa` WRITE;
/*!40000 ALTER TABLE `nilai_mahsswa` DISABLE KEYS */;
INSERT INTO `nilai_mahsswa` VALUES (1,'250601','Basis Data',90),(2,'250601','Kalkulus',85),(3,'250602','Basis Data',87),(4,'250602','Kalkulus',85),(5,'250603','Basis Data',84),(6,'250603','Kalkulus',80),(7,'250604','Basis Data',79),(8,'250605','Kalkulus',88);
/*!40000 ALTER TABLE `nilai_mahsswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-11 10:50:24
