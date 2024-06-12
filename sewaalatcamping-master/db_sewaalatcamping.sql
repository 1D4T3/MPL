-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 05:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sewaalatcamping`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `idbarang` int(5) NOT NULL,
  `namabarang` varchar(20) NOT NULL,
  `harga` int(10) NOT NULL,
  `jumlah_barang` int(10) NOT NULL,
  `desc` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stok` int(10) DEFAULT NULL,
  `id_kategori` int(10) DEFAULT NULL,
  `hargasewa` decimal(20,0) DEFAULT NULL,
  `hargabeli` decimal(20,0) DEFAULT NULL,
  `fotobarang` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`idbarang`, `namabarang`, `harga`, `jumlah_barang`, `desc`, `stok`, `id_kategori`, `hargasewa`, `hargabeli`, `fotobarang`) VALUES
(1, 'Great Outdoor Monodo', 150000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Great Outdoor Sharp ', 100000, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Rock Dinamcs X-Frame', 120000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Eiger Transformer 2', 250000, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Merapi Mountain Milk', 170000, 13, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Tenda Canopi', 155000, 6, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Great Outdoor Explor', 130000, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Lafuma Campo 2', 230000, 7, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Tenda Dome Seinu', 127000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Rei 018', 130000, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Consina Magnum 4', 150000, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Great Outdoor Fly ai', 180000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Tenda Dome Pawon', 184000, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Great Outdoor Camp 4', 182000, 12, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'BNIX BN-0 12', 210000, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Bnix Bn-005', 270000, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Tenda Dome Od Tend', 350000, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Nature Hike Professi', 310000, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Great Outdoor Java 3', 190000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Lafuma Summertime 3/', 240000, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Daypack Consina Lukl', 270000, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Daypack Drone 25 L', 350000, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Deuter Futura 22 L', 310000, 13, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Daypack Consina MC K', 310000, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Daypack Consina Leba', 190000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Jayagiri BP 40 L', 240000, 13, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'TESagiri Amazon 24 4', 240000, 9, NULL, NULL, NULL, NULL, NULL, NULL),
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
(41, 'Gravell Sangkareang ', 190000, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Giant 60 L', 240000, 14, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Drone Excalibur 60 L', 240000, 14, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Consina Alpinnist 75', 240000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Zebra Wall Mammoth 7', 240000, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Consina Expedition 7', 240000, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Deuter Act Lite 65+1', 240000, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Drone Poseidon 85 L', 240000, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Jayagiri Adventure 1', 240000, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Jaket Eiger Popcloud', 50000, 9, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_detailjual`
--

CREATE TABLE `tb_detailjual` (
  `iddetailsewa` int(11) NOT NULL,
  `idjual` int(11) NOT NULL,
  `idbarang` int(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `subharga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_detailjual`
--

INSERT INTO `tb_detailjual` (`iddetailsewa`, `idjual`, `idbarang`, `jumlah`, `subharga`) VALUES
(1, 1, 14, 1, 182000),
(2, 2, 43, 1, 240000),
(3, 3, 2, 1, 100000),
(4, 4, 23, 1, 310000),
(5, 5, 26, 1, 240000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_detailsewa`
--

CREATE TABLE `tb_detailsewa` (
  `iddetailsewa` int(11) NOT NULL,
  `idsewa` int(11) NOT NULL,
  `idbarang` int(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `subharga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_detailsewa`
--

INSERT INTO `tb_detailsewa` (`iddetailsewa`, `idsewa`, `idbarang`, `jumlah`, `subharga`) VALUES
(1, 2, 26, 1, 240000),
(4, 6, 26, 1, 240000),
(5, 6, 14, 1, 182000),
(16, 16, 26, 1, 240000),
(17, 17, 26, 1, 240000),
(18, 18, 26, 1, 240000),
(19, 19, 26, 1, 240000),
(20, 20, 26, 1, 240000),
(21, 21, 26, 1, 240000),
(22, 21, 14, 1, 182000),
(23, 21, 23, 1, 310000),
(24, 21, 41, 1, 190000),
(25, 22, 26, 1, 240000),
(27, 24, 43, 1, 240000),
(28, 25, 26, 1, 240000),
(29, 26, 26, 1, 240000),
(30, 27, 4, 1, 250000),
(31, 28, 10, 1, 130000),
(32, 29, 11, 1, 150000),
(33, 30, 13, 1, 184000),
(34, 31, 14, 1, 182000),
(35, 32, 26, 1, 240000),
(37, 34, 26, 1, 240000),
(38, 35, 44, 1, 240000),
(39, 36, 44, 1, 240000),
(40, 36, 14, 1, 182000),
(41, 37, 26, 1, 240000),
(42, 38, 15, 1, 210000),
(43, 39, 52, 1, 50000),
(44, 40, 43, 1, 240000),
(45, 41, 18, 1, 310000),
(46, 42, 22, 1, 350000),
(47, 43, 40, 1, 310000),
(48, 44, 27, 1, 240000),
(49, 45, 14, 1, 182000),
(50, 46, 27, 1, 240000),
(51, 47, 43, 1, 240000),
(52, 48, 14, 1, 182000),
(53, 48, 23, 1, 310000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`idpelanggan`, `nama_pelanggan`, `alamat`, `tgl_lahir`, `jk`) VALUES
(2, 'Muhammad Fauzi Ramdani', 'Jl. Terusan soreang RT03/RW06 Kabupaten Bandunga', '1998-04-12', 'L'),
(4, 'Tester', 'Banjar', '2024-04-26', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `idjual` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `total` int(20) NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`idjual`, `iduser`, `idpelanggan`, `total`, `status`) VALUES
(1, 60, 4, 182000, 'jual'),
(2, 63, 4, 240000, 'jual'),
(3, 63, 2, 100000, 'jual'),
(4, 63, 2, 310000, 'jual'),
(5, 63, 2, 240000, 'jual');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyewaan`
--

CREATE TABLE `tb_penyewaan` (
  `idsewa` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `tanggalsewa` date NOT NULL,
  `tanggalkembali` date NOT NULL,
  `denda` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_penyewaan`
--

INSERT INTO `tb_penyewaan` (`idsewa`, `iduser`, `idpelanggan`, `tanggalsewa`, `tanggalkembali`, `denda`, `total`, `status`) VALUES
(2, 60, 2, '2022-07-01', '2022-07-04', 3395000, 7030000, 'kembali'),
(6, 60, 2, '2022-07-01', '2022-07-05', 3390000, 3812000, 'kembali'),
(8, 60, 2, '2022-05-05', '2022-06-06', 130000, 240000, 'kembali'),
(16, 61, 2, '2022-07-02', '2022-07-05', 3390000, 3630000, 'kembali'),
(17, 61, 2, '2022-06-30', '2022-07-01', 5000, 245000, 'kembali'),
(18, 60, 4, '2024-05-23', '2024-05-24', 0, 240000, 'kembali'),
(19, 60, 4, '2024-05-23', '2024-05-24', 20000, 260000, 'kembali'),
(20, 60, 4, '2024-05-23', '2024-05-22', 0, 240000, 'sewa'),
(21, 60, 4, '2024-05-28', '2024-05-28', 0, 922000, 'sewa'),
(22, 60, 4, '2024-05-01', '2024-05-01', 0, 240000, 'sewa'),
(23, 60, 4, '2024-05-01', '2024-05-01', 0, 1000000, 'sewa'),
(24, 60, 4, '2024-05-01', '2024-04-30', 0, 240000, 'sewa'),
(25, 60, 4, '2024-05-28', '2024-05-28', 0, 240000, 'sewa'),
(26, 60, 4, '2024-05-28', '2024-05-28', 0, 240000, 'sewa'),
(27, 60, 4, '2024-05-01', '2024-04-30', 0, 250000, 'sewa'),
(28, 60, 4, '2024-05-01', '2024-05-01', 0, 130000, 'sewa'),
(29, 60, 4, '2024-05-01', '2024-05-01', 0, 150000, 'sewa'),
(30, 60, 4, '2024-05-28', '2024-05-28', 0, 184000, 'sewa'),
(31, 60, 4, '2024-05-28', '2024-05-28', 0, 182000, 'sewa'),
(32, 60, 4, '2024-05-28', '2024-05-28', 0, 240000, 'sewa'),
(33, 60, 4, '2024-05-30', '2024-05-28', 0, 1000000, 'sewa'),
(34, 60, 4, '2024-05-28', '2024-05-28', 0, 240000, 'sewa'),
(35, 60, 4, '2024-05-28', '2024-05-28', 0, 240000, 'sewa'),
(36, 60, 4, '2024-05-28', '2024-05-28', 0, 422000, 'sewa'),
(37, 60, 4, '2024-05-28', '2024-05-28', 0, 240000, 'sewa'),
(38, 60, 4, '2024-05-23', '2024-05-17', 0, 210000, 'sewa'),
(39, 60, 4, '2024-05-16', '2024-05-15', 0, 50000, 'sewa'),
(40, 60, 2, '2024-05-30', '2024-05-29', 70000, 310000, 'kembali'),
(41, 60, 4, '2024-05-30', '2024-05-29', 0, 310000, 'sewa'),
(42, 60, 4, '2024-05-31', '2024-05-30', 0, 350000, 'sewa'),
(43, 60, 2, '2024-06-12', '2024-06-13', 0, 310000, 'kembali'),
(44, 63, 2, '2024-06-12', '2024-06-13', 0, 240000, 'kembali'),
(45, 63, 2, '2024-06-28', '2024-06-22', 0, 182000, 'sewa'),
(46, 63, 4, '2024-06-12', '2024-06-30', 0, 240000, 'sewa'),
(47, 63, 4, '2024-06-12', '2024-06-30', 0, 240000, 'kembali'),
(48, 63, 4, '2024-06-13', '2024-06-28', 0, 492000, 'kembali');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`iduser`, `username`, `password`, `nama`, `foto`) VALUES
(60, 'admin', '$2y$10$jrFJc9WMoFoDFiw.wTvLoe38Xj26BVuP2hIyEtMEZEG37PwPrzs3.', 'Admin', '62bae745eb877.jpg'),
(61, 'aafrzl_', '$2y$10$jrFJc9WMoFoDFiw.wTvLoe38Xj26BVuP2hIyEtMEZEG37PwPrzs3.', 'Afrizal Mufriz Fouji', '62baea2022307.jpg'),
(62, 'rizal', '$2y$10$iLxww36Nb98.xXUc0W1Aoe8E9eIyPOFZizhCFpPZ.C7Cmfdi47VM2', 'Rizal', '62bfabdc6cd41.png'),
(63, 'admina', '$argon2id$v=19$m=65536,t=4,p=1$L09VeHdpZnlqb2d4YTA4Nw$Ey0i7mNMJbyDqyrmluSYqSRlZCjyluJ2uJBvWLu+21w', 'Adminaa', '6669a45499d4b.png'),
(64, 'Tester', '$argon2id$v=19$m=65536,t=4,p=1$OVVWQWtHT1BpaFBDVGVmVA$J9QzVIlzo9hKmymB+yUBjs5ySvaj5yZE+Evl4gthlb8', 'Tester', '6669a4e3ad98d.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indexes for table `tb_detailjual`
--
ALTER TABLE `tb_detailjual`
  ADD PRIMARY KEY (`iddetailsewa`),
  ADD KEY `idjual` (`idjual`),
  ADD KEY `idbarang` (`idbarang`);

--
-- Indexes for table `tb_detailsewa`
--
ALTER TABLE `tb_detailsewa`
  ADD PRIMARY KEY (`iddetailsewa`),
  ADD KEY `tb_detailsewa_ibfk_1` (`idbarang`),
  ADD KEY `tb_detailsewa_ibfk_2` (`idsewa`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`idjual`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `idpelanggan` (`idpelanggan`);

--
-- Indexes for table `tb_penyewaan`
--
ALTER TABLE `tb_penyewaan`
  ADD PRIMARY KEY (`idsewa`),
  ADD KEY `idpelanggan` (`idpelanggan`),
  ADD KEY `iduser` (`iduser`) USING BTREE;

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `idbarang` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tb_detailjual`
--
ALTER TABLE `tb_detailjual`
  MODIFY `iddetailsewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_detailsewa`
--
ALTER TABLE `tb_detailsewa`
  MODIFY `iddetailsewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  MODIFY `idjual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_penyewaan`
--
ALTER TABLE `tb_penyewaan`
  MODIFY `idsewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_detailjual`
--
ALTER TABLE `tb_detailjual`
  ADD CONSTRAINT `FK_tb_detailjual_tb_barang` FOREIGN KEY (`idbarang`) REFERENCES `tb_barang` (`idbarang`),
  ADD CONSTRAINT `FK_tb_detailjual_tb_penjualan` FOREIGN KEY (`idjual`) REFERENCES `tb_penjualan` (`idjual`);

--
-- Constraints for table `tb_detailsewa`
--
ALTER TABLE `tb_detailsewa`
  ADD CONSTRAINT `tb_detailsewa_ibfk_1` FOREIGN KEY (`idbarang`) REFERENCES `tb_barang` (`idbarang`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_detailsewa_ibfk_2` FOREIGN KEY (`idsewa`) REFERENCES `tb_penyewaan` (`idsewa`);

--
-- Constraints for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD CONSTRAINT `FK_tb_penjualan_tb_pelanggan` FOREIGN KEY (`idpelanggan`) REFERENCES `tb_pelanggan` (`idpelanggan`),
  ADD CONSTRAINT `FK_tb_penjualan_tb_user` FOREIGN KEY (`iduser`) REFERENCES `tb_user` (`iduser`);

--
-- Constraints for table `tb_penyewaan`
--
ALTER TABLE `tb_penyewaan`
  ADD CONSTRAINT `detail_bahan_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `tb_user` (`iduser`),
  ADD CONSTRAINT `tb_penyewaan_ibfk_1` FOREIGN KEY (`idpelanggan`) REFERENCES `tb_pelanggan` (`idpelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
