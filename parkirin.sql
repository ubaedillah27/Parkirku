-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2019 at 03:50 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkirin`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `username_admin` varchar(50) NOT NULL,
  `password_admin` varchar(256) NOT NULL,
  `nama_admin` varchar(100) DEFAULT NULL,
  `email_admin` varchar(50) DEFAULT NULL,
  `no_hp_admin` varchar(50) DEFAULT NULL,
  `img_admin` varchar(256) DEFAULT NULL,
  `level_admin` int(11) DEFAULT NULL,
  `create_date_admin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `username_admin`, `password_admin`, `nama_admin`, `email_admin`, `no_hp_admin`, `img_admin`, `level_admin`, `create_date_admin`) VALUES
('A004', 'admin', '$2y$10$/QU9h5JnAxk/KqHkXg6Q0u5LsPLu1pHHdHGnD/WtlKyGRak5amLjm', 'Kang Parkir', 'parkirinaja@gmail.com', '089682261128', 'assets/dist/img/default.png', 2, '0000-00-00 00:00:00'),
('A006', 'owner', '$2y$10$j1lDCDGnkzO01CElfAZe1e9Wxo7pZhwbkPUs5kKSGDq2GHV.aqiUm', 'OWNER', 'owner@parkrinaja.com', '089682261128', 'assets/dist/img/default.png', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keluar`
--

CREATE TABLE `tbl_keluar` (
  `kd_keluar` varchar(50) NOT NULL,
  `kd_masuk` varchar(50) DEFAULT NULL,
  `tgl_jam_masuk` datetime DEFAULT NULL,
  `tgl_jam_keluar` datetime DEFAULT NULL,
  `lama_parkir_keluar` varchar(50) DEFAULT NULL,
  `tarif_keluar` int(11) DEFAULT NULL,
  `total_keluar` int(11) DEFAULT NULL,
  `status_keluar` int(11) DEFAULT NULL,
  `create_keluar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_keluar`
--

INSERT INTO `tbl_keluar` (`kd_keluar`, `kd_masuk`, `tgl_jam_masuk`, `tgl_jam_keluar`, `lama_parkir_keluar`, `tarif_keluar`, `total_keluar`, `status_keluar`, `create_keluar`) VALUES
('K00000001', 'M00000033', '2019-04-22 13:26:38', '2019-04-25 12:21:44', '70 Jam,55 Menit', 150000, 0, 1, 'OWNER'),
('K00000002', 'M00000034', '2019-04-25 12:35:09', '2019-04-25 12:43:08', '0 Jam,7 Menit', 2000, 2000, 1, 'OWNER'),
('K00000003', 'M00000032', '2019-04-17 22:44:53', '2019-04-25 19:44:35', '188 Jam,59 Menit', 6000, 1134000, 1, 'Kang Parkir'),
('K00000004', 'M00000035', '2019-04-25 19:45:41', '2019-04-25 19:46:32', '0 Jam,0 Menit', 350000, 0, 1, 'Kang Parkir');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kendaraan`
--

CREATE TABLE `tbl_kendaraan` (
  `kd_kendaraan` varchar(50) NOT NULL,
  `nama_kendaraan` varchar(50) DEFAULT NULL,
  `harga_kendaraan` int(20) DEFAULT NULL,
  `jenis_kendaraan` int(11) NOT NULL,
  `create_by_kendaraan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kendaraan`
--

INSERT INTO `tbl_kendaraan` (`kd_kendaraan`, `nama_kendaraan`, `harga_kendaraan`, `jenis_kendaraan`, `create_by_kendaraan`) VALUES
('JK001', 'motor', 2000, 1, 'Ubed'),
('JK002', 'mobil', 4000, 1, 'Ubed'),
('JK003', 'Truk Kecil', 6000, 1, 'Ubed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_masuk`
--

CREATE TABLE `tbl_masuk` (
  `kd_masuk` varchar(50) NOT NULL,
  `kd_kendaraan` varchar(50) DEFAULT NULL,
  `plat_masuk` varchar(50) DEFAULT NULL,
  `tgl_masuk` datetime DEFAULT NULL,
  `status_masuk` int(11) DEFAULT NULL,
  `create_masuk` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_keluar`
--
ALTER TABLE `tbl_keluar`
  ADD PRIMARY KEY (`kd_keluar`);

--
-- Indexes for table `tbl_kendaraan`
--
ALTER TABLE `tbl_kendaraan`
  ADD PRIMARY KEY (`kd_kendaraan`);

--
-- Indexes for table `tbl_masuk`
--
ALTER TABLE `tbl_masuk`
  ADD PRIMARY KEY (`kd_masuk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
