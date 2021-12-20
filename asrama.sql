-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 05:59 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asrama`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kamar_kos`
--

CREATE TABLE `kamar_kos` (
  `tipe_kmr` varchar(50) NOT NULL,
  `fasilitas` text,
  `stm_byr` enum('Cash','Cicil') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar_kos`
--

INSERT INTO `kamar_kos` (`tipe_kmr`, `fasilitas`, `stm_byr`) VALUES
('3 x 4', '1. Kamar Mandi Dalam2. penjaga', 'Cicil');

-- --------------------------------------------------------

--
-- Table structure for table `pemilik_kos`
--

CREATE TABLE `pemilik_kos` (
  `id_pmk` int(11) NOT NULL,
  `nama_pmk` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `foto_kos` text NOT NULL,
  `biaya_kmr` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemilik_kos`
--

INSERT INTO `pemilik_kos` (`id_pmk`, `nama_pmk`, `alamat`, `foto_kos`, `biaya_kmr`) VALUES
(1, 'Muamar Amnan', 'Poasia', 'images (1).jpeg', 'Rp 350.000,00'),
(2, 'Helmi Adam', 'Perdos', 'images (2).jpeg', 'Rp 450.000,00');

-- --------------------------------------------------------

--
-- Table structure for table `penyewa_kos`
--

CREATE TABLE `penyewa_kos` (
  `no_ktp` varchar(100) NOT NULL,
  `nama_pyw` varchar(50) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `peraturan_kos` text,
  `kesanggupan_byr` enum('Cash','Cicil') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyewa_kos`
--

INSERT INTO `penyewa_kos` (`no_ktp`, `nama_pyw`, `no_hp`, `peraturan_kos`, `kesanggupan_byr`) VALUES
('7403134606060201', 'Januardin Danu', '085397779827', 'Tidak Boleh Bawa Pacar', 'Cicil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kamar_kos`
--
ALTER TABLE `kamar_kos`
  ADD PRIMARY KEY (`tipe_kmr`);

--
-- Indexes for table `pemilik_kos`
--
ALTER TABLE `pemilik_kos`
  ADD PRIMARY KEY (`id_pmk`);

--
-- Indexes for table `penyewa_kos`
--
ALTER TABLE `penyewa_kos`
  ADD PRIMARY KEY (`no_ktp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemilik_kos`
--
ALTER TABLE `pemilik_kos`
  MODIFY `id_pmk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
