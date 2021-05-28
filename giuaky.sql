-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2021 at 04:30 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giuaky`
--

-- --------------------------------------------------------

--
-- Table structure for table `ChiTietHoaDon`
--

CREATE TABLE `ChiTietHoaDon` (
  `MaCTHD` int(11) NOT NULL,
  `MaHD` int(11) NOT NULL,
  `MaHH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `HangHoa`
--

CREATE TABLE `HangHoa` (
  `MaHH` int(20) NOT NULL,
  `TenHH` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `HoaDon`
--

CREATE TABLE `HoaDon` (
  `MaHD` int(20) NOT NULL,
  `NgayLapHD` timestamp NOT NULL DEFAULT current_timestamp(),
  `MaKH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Loai`
--

CREATE TABLE `Loai` (
  `MaLoai` int(20) NOT NULL,
  `TenLoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ChiTietHoaDon`
--
ALTER TABLE `ChiTietHoaDon`
  ADD PRIMARY KEY (`MaCTHD`);

--
-- Indexes for table `HangHoa`
--
ALTER TABLE `HangHoa`
  ADD PRIMARY KEY (`MaHH`);

--
-- Indexes for table `HoaDon`
--
ALTER TABLE `HoaDon`
  ADD PRIMARY KEY (`MaHD`);

--
-- Indexes for table `Loai`
--
ALTER TABLE `Loai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ChiTietHoaDon`
--
ALTER TABLE `ChiTietHoaDon`
  MODIFY `MaCTHD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `HangHoa`
--
ALTER TABLE `HangHoa`
  MODIFY `MaHH` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `HoaDon`
--
ALTER TABLE `HoaDon`
  MODIFY `MaHD` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Loai`
--
ALTER TABLE `Loai`
  MODIFY `MaLoai` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
