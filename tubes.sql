-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2017 at 05:03 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_kost`
--

CREATE TABLE `detail_kost` (
  `kode` int(10) NOT NULL,
  `nama_kost` varchar(20) NOT NULL,
  `fk` varchar(100) NOT NULL,
  `luas` varchar(10) NOT NULL,
  `km` varchar(20) NOT NULL,
  `fu` varchar(30) NOT NULL,
  `parkir` varchar(100) NOT NULL,
  `al` varchar(300) NOT NULL,
  `ket` varchar(30) NOT NULL,
  `cp` varchar(12) NOT NULL,
  `alm` varchar(50) NOT NULL,
  `jum` int(5) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_kost`
--

INSERT INTO `detail_kost` (`kode`, `nama_kost`, `fk`, `luas`, `km`, `fu`, `parkir`, `al`, `ket`, `cp`, `alm`, `jum`, `harga`) VALUES
(1, 'Kost Putri', 'Bed, AC, Almari, Meja Belajar', '3 x 3', 'Kamar Mandi Luar', 'Dapur, Ruang Tamu, Kulkas', 'Parkir Motor', 'Warung Makan, ATM, Kampus, Hal', 'Tamu cowok dilarang masuk, fre', '081234567899', 'Jl. Mendung, Jebres, Gendingan, Barat Kampus UNS, ', 8, 8500000);

-- --------------------------------------------------------

--
-- Table structure for table `kost_baru`
--

CREATE TABLE `kost_baru` (
  `kode` int(10) NOT NULL,
  `nama_kost` varchar(20) NOT NULL,
  `fk` varchar(1000) DEFAULT NULL,
  `luas` int(5) DEFAULT NULL,
  `km` varchar(20) DEFAULT NULL,
  `fu` varchar(1000) DEFAULT NULL,
  `parkir` varchar(100) DEFAULT NULL,
  `al` varchar(1000) DEFAULT NULL,
  `ket` varchar(1000) DEFAULT NULL,
  `cp` int(12) DEFAULT NULL,
  `alm` varchar(100) DEFAULT NULL,
  `jum` int(20) DEFAULT NULL,
  `harga` int(10) NOT NULL,
  `foto` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kost_baru`
--

INSERT INTO `kost_baru` (`kode`, `nama_kost`, `fk`, `luas`, `km`, `fu`, `parkir`, `al`, `ket`, `cp`, `alm`, `jum`, `harga`, `foto`) VALUES
(1, 'jeruk', 'ac, wifi', 200, 'dalam', 'dapur', 'mobil', 'atm', 'bersih', 2147483647, 'nutrisari', 5, 500000, 0x776b776b776b);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `notelp` int(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `notelp`, `email`, `password`, `level`) VALUES
(1, 'Sekar', 'sekarsy', 2147483647, 'sekar@gmailcom', '123', 'admin'),
(2, 'Sasa', 'sasa', 2147483647, 'sasa@gmailcom', '234', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(32) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama`, `email`, `level`) VALUES
(1, 'admin', '123', 'Administrator', 'admin@gmail.com', 1),
(2, 'dosen', '234', 'Dosen', 'dosen@gmail.com', 2),
(3, 'mahasiswa', '345', 'Mahasiswa', 'mahasiswa@gmail.com', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_kost`
--
ALTER TABLE `detail_kost`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `kost_baru`
--
ALTER TABLE `kost_baru`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_kost`
--
ALTER TABLE `detail_kost`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kost_baru`
--
ALTER TABLE `kost_baru`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
