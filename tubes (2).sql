-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2017 at 04:05 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

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
  `fk` varchar(1000) NOT NULL,
  `luas` varchar(10) NOT NULL,
  `km` varchar(20) NOT NULL,
  `fu` varchar(1000) NOT NULL,
  `parkir` varchar(100) NOT NULL,
  `al` varchar(1000) NOT NULL,
  `ket` varchar(1000) NOT NULL,
  `cp` varchar(12) NOT NULL,
  `alm` varchar(1000) NOT NULL,
  `jum` int(5) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_kost`
--

INSERT INTO `detail_kost` (`kode`, `nama_kost`, `fk`, `luas`, `km`, `fu`, `parkir`, `al`, `ket`, `cp`, `alm`, `jum`, `harga`) VALUES
(1, 'Kost Putri', 'Bed, AC, Almari, Meja Belajar', '3 x 3', 'Kamar Mandi Luar', 'Dapur, Ruang Tamu, Kulkas', 'Parkir Motor', 'Warung Makan, ATM, Kampus, Halte', 'Tamu cowok dilarang masuk, Free wifi', '081234567899', 'Jl. Mendung, Jebres, Gendingan, Barat Kampus UNS, Surakarta, Jawa Tengah', 8, 8500000),
(2, 'Kost Putri \"AURELIA\"', 'AC, Bed, Meja Belajar, Lampu Belajar, Kursi Belajar, Rak Buku, Almari', '3 x 4', 'Kamar Mandi Luar', 'Dapur, Ruang Santai, Ruang Tamu', 'Mobil dan Motor', 'Warung Makan, ATM, Indomart, Kampus', 'Bersih, Rapi, Anti Banjir', '08976523187', 'Kampung Kaplingan Gulon RT. 1 RW. 21, Kelurahan Jebres, Kecamatan Jebres, Solo, Jawa Tengah', 11, 400000),
(3, 'Kost Bunga', 'AC, Bed, Meja Belajar, Lampu Belajar, Kursi Belajar, Rak Buku, Almari, Meja Rias', '4 x 4', 'Kamar Mandi Dalam', 'Dapur, Ruang Santai, Ruang Tamu, Ruang Jemur', 'Mobil dan Motor', 'Warung Makan, ATM, Indomart, Kampus, Halte, Warnet', 'Bersih, Rapi, Anti Banjir, Harum, Free Wifi dan Listrik', '081254728394', 'Jalan Halimun 2 Panggungrejo RT. 03 RW. 23, Jebres, Surakarta, Jawa Tengah', 12, 620000);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `no` int(1) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `pesan` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`no`, `nama`, `telp`, `pesan`) VALUES
(1, 'Almira', '085878010155', 'Apakah setiap kost-an ada jam malamnya?'),
(33, 'Ve', '085327659001', 'Mohon menambah jumlah kost yang lain. Terimakasih'),
(35, 'Intan', '087611028365', 'Kira-kira, berapa jauh perlajanan dari Kost Putri Aurelia ke UNS?'),
(36, 'Hanna', '081234567890', 'Apakah tidak ada kos yang lain?');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(3) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `notelp` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `username`, `notelp`, `email`, `password`) VALUES
(6, 'Vani', 'vaniqq', '08139275638', 'vani@gmail.com', '098'),
(7, 'Ferina', 'ferin', '08164724539', 'ferinunyu@gmail.com', 'fer'),
(9, 'Greyson', 'greysonchance', '087625391010', 'greysonc@gmail.com', 'greyson'),
(15, 'Amalia Vena', 'veniall', '085327659001', 've@gmail.com', 've'),
(16, 'Hanna Khaerunisa', 'hanna', '081234567890', 'hanna.k@gmail.com', 'hanna');

-- --------------------------------------------------------

--
-- Table structure for table `pemesan`
--

CREATE TABLE `pemesan` (
  `id` int(3) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `nama_kost` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesan`
--

INSERT INTO `pemesan` (`id`, `nama`, `username`, `telp`, `nama_kost`) VALUES
(1, 'Noor Azizah', 'sasa', '089157192321', 'Kost Putri'),
(2, 'Amalia Vena', 'veniall', '085327659001', 'Kost Putri \"AURELIA\"'),
(3, 'Hanna Khaerunnisa', 'hanna', '081234567890', 'Kost Bunga');

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
(1, 'Sekar', 'sekarsy', 2147483647, 'sekar@gmailcom', '123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_kost`
--
ALTER TABLE `detail_kost`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_kost`
--
ALTER TABLE `detail_kost`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `no` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `pemesan`
--
ALTER TABLE `pemesan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
