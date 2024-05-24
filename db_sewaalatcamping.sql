-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_sewaalatcamping
DROP DATABASE IF EXISTS `db_sewaalatcamping`;
CREATE DATABASE IF NOT EXISTS `db_sewaalatcamping` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db_sewaalatcamping`;

-- Dumping structure for table db_sewaalatcamping.tb_barang
DROP TABLE IF EXISTS `tb_barang`;
CREATE TABLE IF NOT EXISTS `tb_barang` (
  `idbarang` int(5) NOT NULL AUTO_INCREMENT,
  `namabarang` varchar(20) NOT NULL,
  `harga` int(10) NOT NULL,
  `jumlah_barang` int(10) NOT NULL,
  `desc` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stok` int(10) DEFAULT NULL,
  `id_kategori` int(10) DEFAULT NULL,
  `hargasewa` decimal(20,0) DEFAULT NULL,
  `hargabeli` decimal(20,0) DEFAULT NULL,
  `fotobarang` mediumblob DEFAULT NULL,
  PRIMARY KEY (`idbarang`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table db_sewaalatcamping.tb_barang: ~51 rows (approximately)
REPLACE INTO `tb_barang` (`idbarang`, `namabarang`, `harga`, `jumlah_barang`, `desc`, `stok`, `id_kategori`, `hargasewa`, `hargabeli`, `fotobarang`) VALUES
	(1, 'Great Outdoor Monodo', 150000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'Great Outdoor Sharp ', 100000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'Rock Dinamcs X-Frame', 120000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'Eiger Transformer 2', 250000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'Merapi Mountain Milk', 170000, 13, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'Tenda Canopi', 155000, 6, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 'Great Outdoor Explor', 130000, 4, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 'Lafuma Campo 2', 230000, 7, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 'Tenda Dome Seinu', 127000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 'Rei 018', 130000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 'Consina Magnum 4', 150000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 'Great Outdoor Fly ai', 180000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 'Tenda Dome Pawon', 184000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 'Great Outdoor Camp 4', 182000, 17, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 'BNIX BN-0 12', 210000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 'Bnix Bn-005', 270000, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 'Tenda Dome Od Tend', 350000, 3, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 'Nature Hike Professi', 310000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 'Great Outdoor Java 3', 190000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 'Lafuma Summertime 3/', 240000, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 'Daypack Consina Lukl', 270000, 4, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 'Daypack Drone 25 L', 350000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 'Deuter Futura 22 L', 310000, 15, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, 'Daypack Consina MC K', 310000, 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 'Daypack Consina Leba', 190000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, 'Jayagiri BP 40 L', 240000, 22, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, 'Jayagiri Amazon 24 4', 240000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, 'Jayagiri Amazon 23 4', 240000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, 'Eiger Gekkota 45 L', 240000, 3, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, 'Deuter Futura Pro 42', 240000, 4, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, 'Consina Centurion 50', 240000, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, 'Kawanda 50 L', 240000, 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(33, 'Gardaba 45+5 L', 240000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(34, 'Zebrawall Rhinoceros', 240000, 6, NULL, NULL, NULL, NULL, NULL, NULL),
	(35, 'Jayagiri Adventure 0', 240000, 7, NULL, NULL, NULL, NULL, NULL, NULL),
	(36, 'Ransel Rangka 60 L', 240000, 8, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, 'Ransel Standart 60 L', 270000, 6, NULL, NULL, NULL, NULL, NULL, NULL),
	(38, 'Ransel Rangka 60 L', 350000, 9, NULL, NULL, NULL, NULL, NULL, NULL),
	(39, 'Drone Rangger 60 L', 310000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
	(40, 'Gravell Catmount 60 ', 310000, 12, NULL, NULL, NULL, NULL, NULL, NULL),
	(41, 'Gravell Sangkareang ', 190000, 11, NULL, NULL, NULL, NULL, NULL, NULL),
	(42, 'Luxor', 1000000, 14, NULL, NULL, NULL, NULL, NULL, NULL),
	(43, 'Giant 60 L', 240000, 16, NULL, NULL, NULL, NULL, NULL, NULL),
	(44, 'Drone Excalibur 60 L', 240000, 16, NULL, NULL, NULL, NULL, NULL, NULL),
	(45, 'Consina Alpinnist 75', 240000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(46, 'Zebra Wall Mammoth 7', 240000, 3, NULL, NULL, NULL, NULL, NULL, NULL),
	(47, 'Consina Expedition 7', 240000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(48, 'Deuter Act Lite 65+1', 240000, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(49, 'Drone Poseidon 85 L', 240000, 4, NULL, NULL, NULL, NULL, NULL, NULL),
	(50, 'Jayagiri Adventure 1', 240000, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(52, 'Jaket Eiger Popcloud', 50000, 10, NULL, NULL, NULL, NULL, NULL, NULL);

-- Dumping structure for table db_sewaalatcamping.tb_detailjual
DROP TABLE IF EXISTS `tb_detailjual`;
CREATE TABLE IF NOT EXISTS `tb_detailjual` (
  `iddetailsewa` int(11) NOT NULL AUTO_INCREMENT,
  `idjual` int(11) NOT NULL,
  `idbarang` int(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `subharga` int(10) NOT NULL,
  PRIMARY KEY (`iddetailsewa`),
  KEY `idjual` (`idjual`),
  KEY `idbarang` (`idbarang`),
  CONSTRAINT `FK_tb_detailjual_tb_barang` FOREIGN KEY (`idbarang`) REFERENCES `tb_barang` (`idbarang`),
  CONSTRAINT `FK_tb_detailjual_tb_penjualan` FOREIGN KEY (`idjual`) REFERENCES `tb_penjualan` (`idjual`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_sewaalatcamping.tb_detailjual: ~0 rows (approximately)

-- Dumping structure for table db_sewaalatcamping.tb_detailsewa
DROP TABLE IF EXISTS `tb_detailsewa`;
CREATE TABLE IF NOT EXISTS `tb_detailsewa` (
  `iddetailsewa` int(11) NOT NULL AUTO_INCREMENT,
  `idsewa` int(11) NOT NULL,
  `idbarang` int(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `subharga` int(10) NOT NULL,
  PRIMARY KEY (`iddetailsewa`),
  KEY `tb_detailsewa_ibfk_1` (`idbarang`),
  KEY `tb_detailsewa_ibfk_2` (`idsewa`),
  CONSTRAINT `tb_detailsewa_ibfk_1` FOREIGN KEY (`idbarang`) REFERENCES `tb_barang` (`idbarang`),
  CONSTRAINT `tb_detailsewa_ibfk_2` FOREIGN KEY (`idsewa`) REFERENCES `tb_penyewaan` (`idsewa`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_sewaalatcamping.tb_detailsewa: ~5 rows (approximately)
REPLACE INTO `tb_detailsewa` (`iddetailsewa`, `idsewa`, `idbarang`, `jumlah`, `subharga`) VALUES
	(1, 2, 26, 1, 240000),
	(4, 6, 26, 1, 240000),
	(5, 6, 14, 1, 182000),
	(16, 16, 26, 1, 240000),
	(17, 17, 26, 1, 240000);

-- Dumping structure for table db_sewaalatcamping.tb_pelanggan
DROP TABLE IF EXISTS `tb_pelanggan`;
CREATE TABLE IF NOT EXISTS `tb_pelanggan` (
  `idpelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idpelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_sewaalatcamping.tb_pelanggan: ~2 rows (approximately)
REPLACE INTO `tb_pelanggan` (`idpelanggan`, `nama_pelanggan`, `alamat`, `tgl_lahir`, `jk`) VALUES
	(2, 'Muhammad Fauzi Ramdani', 'Jl. Terusan soreang RT03/RW06 Kabupaten Bandung', '1998-04-12', 'L'),
	(4, 'testing', 'BJB', '2024-04-26', 'P');

-- Dumping structure for table db_sewaalatcamping.tb_penjualan
DROP TABLE IF EXISTS `tb_penjualan`;
CREATE TABLE IF NOT EXISTS `tb_penjualan` (
  `idjual` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `total` int(20) NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idjual`),
  KEY `iduser` (`iduser`),
  KEY `idpelanggan` (`idpelanggan`),
  CONSTRAINT `FK_tb_penjualan_tb_pelanggan` FOREIGN KEY (`idpelanggan`) REFERENCES `tb_pelanggan` (`idpelanggan`),
  CONSTRAINT `FK_tb_penjualan_tb_user` FOREIGN KEY (`iduser`) REFERENCES `tb_user` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table db_sewaalatcamping.tb_penjualan: ~0 rows (approximately)

-- Dumping structure for table db_sewaalatcamping.tb_penyewaan
DROP TABLE IF EXISTS `tb_penyewaan`;
CREATE TABLE IF NOT EXISTS `tb_penyewaan` (
  `idsewa` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `tanggalsewa` date NOT NULL,
  `tanggalkembali` date NOT NULL,
  `denda` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`idsewa`),
  KEY `idpelanggan` (`idpelanggan`),
  KEY `iduser` (`iduser`) USING BTREE,
  CONSTRAINT `detail_bahan_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `tb_user` (`iduser`),
  CONSTRAINT `tb_penyewaan_ibfk_1` FOREIGN KEY (`idpelanggan`) REFERENCES `tb_pelanggan` (`idpelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table db_sewaalatcamping.tb_penyewaan: ~5 rows (approximately)
REPLACE INTO `tb_penyewaan` (`idsewa`, `iduser`, `idpelanggan`, `tanggalsewa`, `tanggalkembali`, `denda`, `total`, `status`) VALUES
	(2, 60, 2, '2022-07-01', '2022-07-04', 3395000, 7030000, 'kembali'),
	(6, 60, 2, '2022-07-01', '2022-07-05', 3390000, 3812000, 'kembali'),
	(8, 60, 2, '2022-05-05', '2022-06-06', 130000, 240000, 'kembali'),
	(16, 61, 2, '2022-07-02', '2022-07-05', 3390000, 3630000, 'kembali'),
	(17, 61, 2, '2022-06-30', '2022-07-01', 5000, 245000, 'kembali');

-- Dumping structure for table db_sewaalatcamping.tb_user
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table db_sewaalatcamping.tb_user: ~3 rows (approximately)
REPLACE INTO `tb_user` (`iduser`, `username`, `password`, `nama`, `foto`) VALUES
	(60, 'admin', '$2y$10$jrFJc9WMoFoDFiw.wTvLoe38Xj26BVuP2hIyEtMEZEG37PwPrzs3.', 'Admin', '62bae745eb877.jpg'),
	(61, 'aafrzl_', '$2y$10$jrFJc9WMoFoDFiw.wTvLoe38Xj26BVuP2hIyEtMEZEG37PwPrzs3.', 'Afrizal Mufriz Fouji', '62baea2022307.jpg'),
	(62, 'rizal', '$2y$10$iLxww36Nb98.xXUc0W1Aoe8E9eIyPOFZizhCFpPZ.C7Cmfdi47VM2', 'Rizal', '62bfabdc6cd41.png');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
