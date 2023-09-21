-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 02:03 AM
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
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beranda`
--

INSERT INTO `beranda` (`id`, `image1`, `judul`, `sub_judul`, `content`, `created_at`) VALUES
('1', 'photos/moreheader_1695183629170.jpg', 'Gastronita', 'Menjelajah Gastronomi Bandung Barat bersama Renita', '<p>Gastronita adalah sistem informasi gastronomi di Kabupaten Bandung Barat berbasis website. Website ini berisi informasi gastronomi di 16 kecamatan di Kabupaten Bandung Barat. Renita berharap dengan adanya website ini akan bermanfaat bagi wisatawan yang akan mencoba atraksi wisata gastronomi di Kabupaten Bandung Barat dan menambah informasi mengenai segala kompenen yang terdapat di kuliner tersebut.</p>', '2023-08-23 03:40:51');

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
('060267a4-a000-47cd-aee1-10c8e8296bc9', 'parongpong', 'photos/ocbc_1694674791185.png', 'photos/bjb_1694674791187.png', '<p>ps</p>', '2023-09-14 06:59:51'),
('1b3c3c0a-952b-4115-81ee-e1131d1e906f', 'konzcamatanss', 'photos/1693969807254.png', 'photos/1693969807285.jpg', 'konztent', '2023-09-06 03:10:07'),
('2367c76b-0cc0-45e6-9fbf-a33283d898a5', 'aa', 'photos/mandiri_1695107920771.png', 'photos/bca_1695107922406.png', '<p>asd</p>', '2023-09-12 08:33:51'),
('29f9faab-d80c-4e0a-9b58-28c96e6712f8', 'wajin', 'photos/bni_1694507487579.png', 'photos/bca_1694507487579.png', '', '2023-09-12 08:31:27'),
('2c9b7fb5-b620-4499-9c1a-5877ba31d213', 'acdc aha ehe', 'photos/bsi_1695110219287.png', 'photos/ocbc_1695179554667.png', '<p>coni</p>', '2023-08-25 03:54:44'),
('38bc407b-35fc-4e15-82e8-4b66e5884478', 'konzcamatan', 'photos/0.png_1693880182700.png', 'photos/istockphoto-1142851476-612x612.jpg_1693880182705.jpg', 'konztent', '2023-09-05 02:16:22'),
('5a937da1-b12c-473b-914d-a4965c8f29b4', 'heading', 'photos/02_BTN_MasterBrand_1694512388197.jpg', 'photos/ocbc_1694512388202.png', '<h1>sdaadasdasd</h1><p>asdadsd</p><h6>asdasdasd</h6>', '2023-09-12 09:53:08'),
('65b97f76-d955-4900-9308-8d0ec368b849', 'konzcamatans', 'photos/0.png_1693880326374.png', 'photos/istockphoto-1142851476-612x612.jpg_1693880326381.jpg', 'konztent', '2023-09-05 02:18:46'),
('a1', 'ngamprah', 'photos/1693972706128.png', 'photos/1693980694597.png', '<p><span class=\"ql-size-large\">asdasdasdas</span>asdasdasd<span class=\"ql-size-small\">asdasd</span><span class=\"ql-size-huge\">asdasdasdasd</span></p>', '2023-08-23 02:42:19'),
('a2', 'batujajars', 'photos/mandiri_1695108448131.png', 'photos/bjb_1695108587198.png', '<p>kecamatan batujajarsjbjj<span class=\"ql-font-monospace\">asdasd</span></p>', '2023-08-23 02:42:48');

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
('17e9cbd4-67d3-453c-80ac-54f570413863', 'makonznans', 'kudapan', 'photos/1694413707495.jpeg', 'photos/1694413971045.jpeg', 'coni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cikancung', '2023-09-11 06:23:41', '1b3c3c0a-952b-4115-81ee-e1131d1e906f'),
('1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'asdasd', 'kudapan', 'photos/wajit_1695201981401.jpg', 'photos/wajit_1695201981401.jpg', '<p>asdasdasd</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdasd', '2023-09-20 09:26:21', 'a2'),
('55957925-0db4-4e60-b058-96d3cd9182aa', 'kondapan', 'kudapan', 'photos/map-lembang_1695201525444.jpg', 'photos/wajit_1695201525447.jpg', '<p>kondapancontent</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kondapan2', '2023-09-20 09:18:45', '2c9b7fb5-b620-4499-9c1a-5877ba31d213'),
('714cd897-1878-4c46-ae7d-84ea00cdc97d', 'kudapan batujajar', 'kudapan', 'photos/wajit_1695201656354.jpg', 'photos/wajit_1695201656354.jpg', '<h1>HAHAHHA</h1>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'batujajar barat', '2023-09-20 09:20:56', 'a2'),
('9ec101ea-7ce9-4bb6-a1dc-fd257587b72e', 'nama_makanans', 'menu', 'photos/WhatsApp Image 2023-08-23 at 14.03.53.jpeg_1693886535672.jpeg', 'photos/0.png_1693886535673.png', 'contentss', NULL, NULL, NULL, NULL, NULL, NULL, '44bb1bd7-eabe-47ca-ac35-8c8e6d125714', NULL, '2023-09-05 04:02:15', NULL),
('ab54e6e1-8ceb-4ffa-9d41-57ca93a223b1', 'mugiman', 'kudapan', 'photos/preview_1695199509960.jpg', 'photos/moreheader_1695199517460.jpg', '<p>contents2</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cikandang', '2023-09-20 08:03:39', '2c9b7fb5-b620-4499-9c1a-5877ba31d213'),
('c7168dc0-f6e3-4656-ac74-a98ef4ec8bec', 'nama_makanans', 'kudapan', 'photos/Desain tanpa judul (1)_page-0001.jpg_1693882472133.jpg', 'photos/0.png_1693882472136.png', 'contentss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cikandang', '2023-09-05 02:54:32', NULL),
('dba1fddd-5c18-4d46-99a7-47861af4ba65', 'mugiman2', 'kudapan', 'photos/F5Y8r-QbMAAFOvV_1695197019919.jpeg', 'photos/Riverside High School Computer Club_1695197019919.jpg', 'contentss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cikandang', '2023-09-20 08:03:39', '2c9b7fb5-b620-4499-9c1a-5877ba31d213'),
('m1', 'ketan bakar', 'kudapan', 'mi1', 'mi2', 'filosopi', 'memasak', 'bahan baku', 'mencicipi', 'menghidangkan', 'pengalaman unik', 'etika dan etiket', NULL, 'lembang no. 55', '2023-08-23 02:47:12', 'a1'),
('m2', 'menukonzzz', 'menu', 'mi1', 'mi2', 'coni', 'memasak', 'bahan baku', 'mencicipi', 'menghidangkan', 'pengalaman unik', 'etika dan etiket', '44bb1bd7-eabe-47ca-ac35-8c8e6d125714', NULL, '2023-08-23 02:50:28', NULL),
('m3', 'nasli liwet 2', 'menu', 'mi1', 'mi2', 'filosopi', 'memasak', 'bahan baku', 'mencicipi', 'menghidangkan', 'pengalaman unik', 'etika dan etiket', 'rm1', NULL, '2023-08-23 03:07:35', NULL);

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
('44bb1bd7-eabe-47ca-ac35-8c8e6d125714', 'nama_rumah_makans', '2c9b7fb5-b620-4499-9c1a-5877ba31d213', 'photos/Desain tanpa judul (2)_page-0001.jpg_1693883284376.jpg', 'photos/0.png_1693883284382.png', 'contentss', 'cikandang', '2023-09-05 03:08:04'),
('rm1', 'RM Balibu', '38bc407b-35fc-4e15-82e8-4b66e5884478', 'photos/1694073350426.jpg', 'photos/1694073633707.png', 'content', 'alamat', '2023-08-23 02:44:09');

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
('a1c7ccc7-8f22-4ed3-a4bd-41e825d03107', 'gastro_1695184479777.jpeg', 'photos/gastro_1695184479777.jpeg', '2023-09-20 04:34:39'),
('b7cd4efb-3af8-4d0b-8aa6-e20453c753de', 'wajit_1695185030257.jpg', 'photos/wajit_1695185030257.jpg', '2023-09-20 04:43:50');

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
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kecamatan_un` (`kecamatan`);

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
