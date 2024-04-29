-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 11:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewaalatcamping`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--
-- Creation: Apr 29, 2024 at 08:51 AM
--

CREATE TABLE `barang` (
  `id_barang` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `desc` varchar(5000) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL,
  `id_kategori` int(10) DEFAULT NULL,
  `hargasewa` decimal(20,0) DEFAULT NULL,
  `hargabeli` decimal(20,0) DEFAULT NULL,
  `fotobarang` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `barang`:
--   `id_kategori`
--       `kategoribarang` -> `id_kategori`
--

-- --------------------------------------------------------

--
-- Table structure for table `beli`
--
-- Creation: Apr 29, 2024 at 08:33 AM
--

CREATE TABLE `beli` (
  `id_beli` int(10) NOT NULL,
  `id_customer` int(10) DEFAULT NULL,
  `id_barang` int(10) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `harga` decimal(20,0) DEFAULT NULL,
  `total` decimal(20,0) DEFAULT NULL,
  `tgl_beli` datetime DEFAULT NULL,
  `no_invoice` int(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `beli`:
--   `id_barang`
--       `barang` -> `id_barang`
--   `id_customer`
--       `user` -> `user_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `buktitransferbeli`
--
-- Creation: Apr 29, 2024 at 08:41 AM
--

CREATE TABLE `buktitransferbeli` (
  `id_fotobuktibeli` int(10) NOT NULL,
  `id_beli` int(10) DEFAULT NULL,
  `foto_buktibl` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `buktitransferbeli`:
--   `id_beli`
--       `beli` -> `id_beli`
--

-- --------------------------------------------------------

--
-- Table structure for table `buktitransfersewa`
--
-- Creation: Apr 29, 2024 at 08:41 AM
--

CREATE TABLE `buktitransfersewa` (
  `id_fotobuktisewa` int(11) NOT NULL,
  `id_sewa` int(11) DEFAULT NULL,
  `foto_buktisw` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `buktitransfersewa`:
--   `id_sewa`
--       `sewa` -> `id_sewa`
--

-- --------------------------------------------------------

--
-- Table structure for table `foto_barang`
--
-- Creation: Apr 29, 2024 at 08:41 AM
--

CREATE TABLE `foto_barang` (
  `id_foto_barang` int(10) NOT NULL,
  `id_barang` int(10) DEFAULT NULL,
  `foto_barang` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `foto_barang`:
--   `id_barang`
--       `barang` -> `id_barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategoribarang`
--
-- Creation: Apr 29, 2024 at 08:41 AM
--

CREATE TABLE `kategoribarang` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `kategoribarang`:
--

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--
-- Creation: Apr 29, 2024 at 08:43 AM
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(10) NOT NULL,
  `id_barang` int(10) DEFAULT NULL,
  `id_customer` int(10) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `sewaorbeli` enum('sewa','beli') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `keranjang`:
--   `id_barang`
--       `barang` -> `id_barang`
--   `id_customer`
--       `user` -> `user_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_beli`
--
-- Creation: Apr 29, 2024 at 08:45 AM
--

CREATE TABLE `riwayat_beli` (
  `id_riwayatbeli` int(10) NOT NULL,
  `id_beli` int(10) DEFAULT NULL,
  `id_customer` int(10) DEFAULT NULL,
  `id_barang` int(10) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `harga` decimal(20,0) DEFAULT NULL,
  `total` decimal(20,0) DEFAULT NULL,
  `tgl_beli` datetime DEFAULT NULL,
  `no_invoice` int(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `riwayat_beli`:
--   `id_barang`
--       `barang` -> `id_barang`
--   `id_beli`
--       `beli` -> `id_beli`
--   `id_customer`
--       `user` -> `user_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_sewa`
--
-- Creation: Apr 29, 2024 at 08:47 AM
--

CREATE TABLE `riwayat_sewa` (
  `id_riwayatsewa` int(10) NOT NULL,
  `id_sewa` int(10) DEFAULT NULL,
  `id_customer` int(10) DEFAULT NULL,
  `id_barang` int(10) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `total` decimal(20,0) DEFAULT NULL,
  `tgl_sewa` datetime DEFAULT NULL,
  `tgl_kembali` datetime DEFAULT NULL,
  `no_invoice` int(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `riwayat_sewa`:
--   `id_sewa`
--       `sewa` -> `id_sewa`
--   `id_barang`
--       `beli` -> `id_beli`
--   `id_customer`
--       `user` -> `user_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--
-- Creation: Apr 29, 2024 at 08:50 AM
--

CREATE TABLE `sewa` (
  `id_sewa` int(10) NOT NULL,
  `id_customer` int(10) DEFAULT NULL,
  `id_barang` int(10) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `tgl_sewa` datetime DEFAULT NULL,
  `tgl_kembali` datetime DEFAULT NULL,
  `no_invoice` int(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `sewa`:
--   `id_barang`
--       `barang` -> `id_barang`
--   `id_customer`
--       `user` -> `user_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Apr 29, 2024 at 08:54 AM
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` enum('customer','admin') DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `ktp` mediumblob DEFAULT NULL,
  `fotoprofil` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `user`:
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `beli`
--
ALTER TABLE `beli`
  ADD PRIMARY KEY (`id_beli`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `buktitransferbeli`
--
ALTER TABLE `buktitransferbeli`
  ADD PRIMARY KEY (`id_fotobuktibeli`),
  ADD KEY `id_beli` (`id_beli`);

--
-- Indexes for table `buktitransfersewa`
--
ALTER TABLE `buktitransfersewa`
  ADD PRIMARY KEY (`id_fotobuktisewa`),
  ADD KEY `FK_buktitransfersewa_sewa` (`id_sewa`);

--
-- Indexes for table `foto_barang`
--
ALTER TABLE `foto_barang`
  ADD PRIMARY KEY (`id_foto_barang`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `kategoribarang`
--
ALTER TABLE `kategoribarang`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `riwayat_beli`
--
ALTER TABLE `riwayat_beli`
  ADD PRIMARY KEY (`id_riwayatbeli`),
  ADD KEY `id_beli` (`id_beli`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `riwayat_sewa`
--
ALTER TABLE `riwayat_sewa`
  ADD PRIMARY KEY (`id_riwayatsewa`),
  ADD KEY `id_sewa` (`id_sewa`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id_sewa`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `FK_tbbarang_kategoribarang` FOREIGN KEY (`id_kategori`) REFERENCES `kategoribarang` (`id_kategori`);

--
-- Constraints for table `beli`
--
ALTER TABLE `beli`
  ADD CONSTRAINT `FK_tbbeli_tbbarang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `FK_tbbeli_user` FOREIGN KEY (`id_customer`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `buktitransferbeli`
--
ALTER TABLE `buktitransferbeli`
  ADD CONSTRAINT `FK_buktitransferbeli_tbbeli` FOREIGN KEY (`id_beli`) REFERENCES `beli` (`id_beli`);

--
-- Constraints for table `buktitransfersewa`
--
ALTER TABLE `buktitransfersewa`
  ADD CONSTRAINT `FK_buktitransfersewa_sewa` FOREIGN KEY (`id_sewa`) REFERENCES `sewa` (`id_sewa`);

--
-- Constraints for table `foto_barang`
--
ALTER TABLE `foto_barang`
  ADD CONSTRAINT `FK_foto_barang_tbbarang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `FK_keranjang_tbbarang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `FK_keranjang_user` FOREIGN KEY (`id_customer`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `riwayat_beli`
--
ALTER TABLE `riwayat_beli`
  ADD CONSTRAINT `FK_riwayat_beli_tbbarang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `FK_riwayat_beli_tbbeli` FOREIGN KEY (`id_beli`) REFERENCES `beli` (`id_beli`),
  ADD CONSTRAINT `FK_riwayat_beli_user` FOREIGN KEY (`id_customer`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `riwayat_sewa`
--
ALTER TABLE `riwayat_sewa`
  ADD CONSTRAINT `FK_riwayat_sewa_sewa` FOREIGN KEY (`id_sewa`) REFERENCES `sewa` (`id_sewa`),
  ADD CONSTRAINT `FK_riwayat_sewa_tbbeli` FOREIGN KEY (`id_barang`) REFERENCES `beli` (`id_beli`),
  ADD CONSTRAINT `FK_riwayat_sewa_user` FOREIGN KEY (`id_customer`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `sewa`
--
ALTER TABLE `sewa`
  ADD CONSTRAINT `FK_sewa_tbbarang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `FK_sewa_user` FOREIGN KEY (`id_customer`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
