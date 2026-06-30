-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2026 at 12:40 PM
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
-- Database: `db_fitplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kata_sandi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `email`, `kata_sandi`) VALUES
(1, 'hilmi@gmail.com', '11111111'),
(2, 'faizah@gmail.com', '22222222'),
(3, 'desta@gmail.com', '33333333'),
(4, 'salsa@gmail.com', '44444444'),
(5, 'milah@gmail.com', '55555555');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_air`
--

CREATE TABLE `riwayat_air` (
  `id` int(11) NOT NULL,
  `berat` double NOT NULL,
  `aktivitas` varchar(50) NOT NULL,
  `kebutuhan_air` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_air`
--

INSERT INTO `riwayat_air` (`id`, `berat`, `aktivitas`, `kebutuhan_air`, `tanggal`) VALUES
(1, 48, 'Ringan', '1680.0', '2026-06-16 07:03:43'),
(2, 45, 'Berat', '2175.0', '2026-06-26 03:46:58'),
(3, 50, 'Ringan', '1750.0', '2026-06-26 03:47:21'),
(5, 78, 'Berat', '3510.0', '2026-06-29 10:11:25'),
(6, 45, 'Sedang', '1800.0', '2026-06-30 07:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_berat`
--

CREATE TABLE `riwayat_berat` (
  `id` int(11) NOT NULL,
  `berat` double NOT NULL,
  `tinggi` double NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `berat_ideal` double DEFAULT NULL,
  `rekomendasi` text DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_berat`
--

INSERT INTO `riwayat_berat` (`id`, `berat`, `tinggi`, `status`, `berat_ideal`, `rekomendasi`, `tanggal`) VALUES
(1, 45, 160, 'Kurus', 54, 'Perbanyak asupan gizi dan makan teratur.', '2026-06-16 07:07:33'),
(2, 49, 156, 'Berat Badan Ideal ✅', 50.4, 'Pertahankan pola makan dan gaya hidup sehat.', '2026-06-16 07:09:11'),
(3, 55, 150, 'Berat Badan Ideal ✅', 45, 'Pertahankan pola makan dan gaya hidup sehat.', '2026-06-16 07:09:52'),
(4, 45, 160, 'Kurus', 54, 'Perbanyak asupan gizi dan makan teratur.', '2026-06-24 08:01:57'),
(5, 46, 160, 'Kurus', 54, 'Perbanyak asupan gizi dan makan teratur.', '2026-06-26 03:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_kalori`
--

CREATE TABLE `riwayat_kalori` (
  `id` int(11) NOT NULL,
  `usia` int(11) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tinggi` double NOT NULL,
  `berat` double NOT NULL,
  `aktivitas` varchar(50) NOT NULL,
  `kebutuhan_kalori` double NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_kalori`
--

INSERT INTO `riwayat_kalori` (`id`, `usia`, `jenis_kelamin`, `tinggi`, `berat`, `aktivitas`, `kebutuhan_kalori`, `tanggal`) VALUES
(2, 19, 'Wanita', 160, 45, 'Sedang', 1850.7, '2026-06-19 03:30:19'),
(3, 15, 'Wanita', 150, 35, 'Sedang', 1629.825, '2026-06-19 03:31:27'),
(4, 19, 'Wanita', 158, 43, 'Sedang', 1800.325, '2026-06-24 08:08:22'),
(5, 19, 'Wanita', 160, 45, 'Sedang', 1850.7, '2026-06-24 08:09:23'),
(6, 19, 'Wanita', 169, 49, 'Sedang', 1999.8875, '2026-06-26 03:48:32'),
(8, 19, 'Laki-laki', 167, 53, 'Sedang', 2299.8125, '2026-06-30 07:05:28'),
(9, 20, 'Laki-laki', 177, 60, 'Sedang', 2240.1375000000003, '2026-06-30 07:12:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `riwayat_air`
--
ALTER TABLE `riwayat_air`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_berat`
--
ALTER TABLE `riwayat_berat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_kalori`
--
ALTER TABLE `riwayat_kalori`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `riwayat_air`
--
ALTER TABLE `riwayat_air`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `riwayat_berat`
--
ALTER TABLE `riwayat_berat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `riwayat_kalori`
--
ALTER TABLE `riwayat_kalori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
