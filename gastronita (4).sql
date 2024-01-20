-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 06:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gastronita`
--

-- --------------------------------------------------------

--
-- Table structure for table `beranda`
--

CREATE TABLE `beranda` (
  `id` varchar(100) NOT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `judul` text DEFAULT NULL,
  `sub_judul` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `instagram` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beranda`
--

INSERT INTO `beranda` (`id`, `image1`, `judul`, `sub_judul`, `content`, `instagram`, `email`, `created_at`, `logo`) VALUES
('1', 'photos/kasir_1705728503940.png', 'KARI AM', 'Menjelajah Gastronomi Bandung Barat bersama Renita', '<p><strong>Gastronita adalah </strong>sistem informasi gastronomi di Kabupaten Bandung Barat berbasis website. Website ini berisi informasi gastronomi di 16 kecamatan di Kabupaten Bandung Barat. Renita berharap dengan adanya website ini akan bermanfaat bagi wisatawan yang akan mencoba atraksi wisata gastronomi di Kabupaten Bandung Barat dan menambah informasi mengenai segala kompenen yang terdapat di kuliner tersebut.</p><p><br></p><h2>Apasih bang gastronita itu?</h2><p>asdasdasd</p>', 'https://instagram.com/mugitrash', 'mugipangestu41@gmail.com', '2023-08-23 03:40:51', 'photos/ttd_1705728479246.png');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` varchar(100) NOT NULL,
  `tanggal_berita` timestamp NULL DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `judul` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `tanggal_berita`, `penulis`, `content`, `created_at`, `image1`, `status`, `judul`) VALUES
('9b0462cf-bd30-49f4-b506-8eecac4a3de5', '2023-09-25 17:00:00', 'asdasd', '<p>asdasd</p>', '2023-09-26 10:04:42', 'photos/1240120_720_1695722682139.jpg', 1, 'asdasd'),
('e5864e63-d256-4a5b-a837-bc0cc6e75554', '2023-09-04 17:00:00', 'sssss', '<p><strong>ssss<span class=\"ql-cursor\">﻿</span></strong></p>', '2023-09-26 10:07:22', 'photos/1240120_720_1695722842305.jpg', 1, 'ABCD');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` varchar(100) NOT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `kecamatan`, `image1`, `image2`, `content`, `created_at`) VALUES
('2c9b7fb5-b620-4499-9c1a-5877ba31d213', 'Yang bener aja..', 'photos/moreheader_1695720682210.jpg', 'photos/ocbc_1695179554667.png', '<p>coni</p>', '2023-08-25 03:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` varchar(100) NOT NULL,
  `id_makanan` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `id_makanan`, `nama`, `komentar`, `rating`, `created_at`) VALUES
('cbfcf00a-7e80-4c93-ace4-4874a3b71f00', 'ab54e6e1-8ceb-4ffa-9d41-57ca93a223b1', 'nama2', 'test2', 4, '2023-09-25 08:56:36'),
('cd9e8a9e-a261-4720-a241-d849aa6c20bb', 'ab54e6e1-8ceb-4ffa-9d41-57ca93a223b1', 'nama2', 'test2', 4, '2023-10-04 03:10:28'),
('ce87b152-2c5d-4133-8858-9487f5cd6a86', '55957925-0db4-4e60-b058-96d3cd9182aa', 'KONZ', 'KONZ banget bang', 5, '2023-09-26 06:47:21'),
('d9dedc2d-b7da-4249-b7da-d274431503e7', 'ab54e6e1-8ceb-4ffa-9d41-57ca93a223b1', 'nama', 'test', 3, '2023-09-25 08:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `id` varchar(100) NOT NULL,
  `nama_makanan` varchar(100) DEFAULT NULL,
  `tipe_makanan` varchar(100) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `filosopi` text DEFAULT NULL,
  `memasak` text DEFAULT NULL,
  `bahan_baku` text DEFAULT NULL,
  `mencicipi` text DEFAULT NULL,
  `menghidangkan` text DEFAULT NULL,
  `pengalaman_unik` text DEFAULT NULL,
  `etika_dan_etiket` text DEFAULT NULL,
  `id_rumah_makan` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `id_kecamatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id`, `nama_makanan`, `tipe_makanan`, `image1`, `image2`, `filosopi`, `memasak`, `bahan_baku`, `mencicipi`, `menghidangkan`, `pengalaman_unik`, `etika_dan_etiket`, `id_rumah_makan`, `alamat`, `created_at`, `id_kecamatan`) VALUES
('55957925-0db4-4e60-b058-96d3cd9182aa', 'kondapan', 'kudapan', 'photos/map-lembang_1695201525444.jpg', 'photos/wajit_1695201525447.jpg', '<p><strong style=\"color: rgb(0, 0, 0);\">Jakarta -</strong><span style=\"color: rgb(0, 0, 0);\"> Kaesang Pangarep ditetapkan sebagai Ketum Partai Solidaritas Indonesia (PSI). KPU mengatakan PSI harus melakukan pendaftaran perubahan kepengurusan ke Kemenkumham.</span></p><p><span style=\"color: rgb(0, 0, 0);\">\"Apabila partai politik peserta pemilu melakukan perubahan atau penggantian jabatan ketua parpol, maka partai politik tersebut harus melakukan pendaftaran perubahan kepengurusan ke Kementerian Hukum dan HAM RI,\" kata kata Ketua Divisi Teknis KPU RI Idham Holik saat dihubungi, Rabu (25/9/2023).</span></p><p><br></p><p><span style=\"color: rgb(0, 0, 0);\">Baca artikel detiknews, \"Kaesang Jadi Ketum PSI, KPU: Harus Daftar Ubah Kepengurusan ke Kemenkumham\" selengkapnya&nbsp;</span><a href=\"https://news.detik.com/pemilu/d-6950714/kaesang-jadi-ketum-psi-kpu-harus-daftar-ubah-kepengurusan-ke-kemenkumham\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0);\">https://news.detik.com/pemilu/d-6950714/kaesang-jadi-ketum-psi-kpu-harus-daftar-ubah-kepengurusan-ke-kemenkumham</a><span style=\"color: rgb(0, 0, 0);\">.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pusdatin | https://maps.app.goo.gl/ZyBUGc8UEv8c3RG3A | 08993100016', '2023-09-20 09:18:45', '2c9b7fb5-b620-4499-9c1a-5877ba31d213'),
('ab54e6e1-8ceb-4ffa-9d41-57ca93a223b1', 'mugiman', 'kudapan', 'photos/preview_1695199509960.jpg', 'photos/moreheader_1695199517460.jpg', '<h2>Filosopi</h2><p class=\"ql-align-justify\">Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi.</p><p class=\"ql-align-justify\"><br></p><h2 class=\"ql-align-justify\">Cara Membuat</h2><p class=\"ql-align-justify\">Ini adalah cara membuat konzz....</p><p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACAQMAAACjTyRkAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjAAIAAAQAASDSLW8AAAAASUVORK5CYII=\"></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pusdatin | https://maps.app.goo.gl/ZyBUGc8UEv8c3RG3A | 08993100016', '2023-09-20 08:03:39', '2c9b7fb5-b620-4499-9c1a-5877ba31d213'),
('dba1fddd-5c18-4d46-99a7-47861af4ba65', 'mugiman2', 'kudapan', 'photos/F5Y8r-QbMAAFOvV_1695197019919.jpeg', 'photos/Riverside High School Computer Club_1695197019919.jpg', '<p>contentss</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pusdatin | https://maps.app.goo.gl/ZyBUGc8UEv8c3RG3A | 08993100016', '2023-09-20 08:03:39', '2c9b7fb5-b620-4499-9c1a-5877ba31d213'),
('de2b75ab-7e86-4fb4-aed0-fe0ac469a03a', 'kari ayam', 'menu', 'photos/GBR_eifbsAABDux_1705460151115.jpeg', 'photos/digital-orange-technology-background-vector_1705460282133.jpg', '<p>tes</p>', NULL, NULL, NULL, NULL, NULL, NULL, '44bb1bd7-eabe-47ca-ac35-8c8e6d125714', NULL, '2024-01-17 02:55:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rumah_makan`
--

CREATE TABLE `rumah_makan` (
  `id` varchar(100) NOT NULL,
  `nama_rumah_makan` varchar(100) DEFAULT NULL,
  `id_kecamatan` varchar(100) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rumah_makan`
--

INSERT INTO `rumah_makan` (`id`, `nama_rumah_makan`, `id_kecamatan`, `image1`, `image2`, `content`, `alamat`, `created_at`) VALUES
('44bb1bd7-eabe-47ca-ac35-8c8e6d125714', 'RM renita', '2c9b7fb5-b620-4499-9c1a-5877ba31d213', 'photos/moreheader_1695720695189.jpg', 'photos/bsi_1695266198553.png', '<p>contentss</p>', 'Pusdatin | https://maps.app.goo.gl/ZyBUGc8UEv8c3RG3A | 08993100016', '2023-09-05 03:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `slider_beranda`
--

CREATE TABLE `slider_beranda` (
  `id` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider_beranda`
--

INSERT INTO `slider_beranda` (`id`, `image`, `link`, `created_at`) VALUES
('932f49cf-f693-4216-b290-7fc7c921886f', 'moreheader_1695720695189_1705728537315.jpg', 'photos/moreheader_1695720695189_1705728537315.jpg', '2024-01-20 05:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `created_at`) VALUES
('1', 'mugitrash', '9e1965e089d5b37334945aca16cd93e6', '2023-08-23 04:06:05'),
('b952750b-1d2c-4af7-827f-9d954eab70ad', 'renita', '2a17731826edd7111390deae84b4c604', '2023-09-11 02:58:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beranda`
--
ALTER TABLE `beranda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kecamatan_un` (`kecamatan`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentar_FK` (`id_makanan`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `makanan_FK` (`id_kecamatan`),
  ADD KEY `makanan_FK_1` (`id_rumah_makan`);

--
-- Indexes for table `rumah_makan`
--
ALTER TABLE `rumah_makan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rumah_makan_FK` (`id_kecamatan`);

--
-- Indexes for table `slider_beranda`
--
ALTER TABLE `slider_beranda`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_FK` FOREIGN KEY (`id_makanan`) REFERENCES `makanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `makanan`
--
ALTER TABLE `makanan`
  ADD CONSTRAINT `makanan_FK` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `makanan_FK_1` FOREIGN KEY (`id_rumah_makan`) REFERENCES `rumah_makan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rumah_makan`
--
ALTER TABLE `rumah_makan`
  ADD CONSTRAINT `rumah_makan_FK` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
