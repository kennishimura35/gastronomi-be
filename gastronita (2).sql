-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 06:29 AM
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
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beranda`
--

INSERT INTO `beranda` (`id`, `image1`, `judul`, `sub_judul`, `content`, `created_at`, `logo`) VALUES
('1', 'photos/moreheader_1695183629170.jpg', 'Gastronita', 'Menjelajah Gastronomi Bandung Barat bersama Renita', '<p><strong>Gastronita adalah </strong>sistem informasi gastronomi di Kabupaten Bandung Barat berbasis website. Website ini berisi informasi gastronomi di 16 kecamatan di Kabupaten Bandung Barat. Renita berharap dengan adanya website ini akan bermanfaat bagi wisatawan yang akan mencoba atraksi wisata gastronomi di Kabupaten Bandung Barat dan menambah informasi mengenai segala kompenen yang terdapat di kuliner tersebut.</p><p><br></p><h2>Apasih bang gastronita itu?</h2><p>asdasdasd</p>', '2023-08-23 03:40:51', 'photos/A (1)_1695722163101.png');

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
('060267a4-a000-47cd-aee1-10c8e8296bc9', 'parongpong', 'photos/ocbc_1694674791185.png', 'photos/bjb_1694674791187.png', '<p>ps</p>', '2023-09-14 06:59:51'),
('1b3c3c0a-952b-4115-81ee-e1131d1e906f', 'konzcamatanss', 'photos/1693969807254.png', 'photos/1693969807285.jpg', 'konztent', '2023-09-06 03:10:07'),
('2367c76b-0cc0-45e6-9fbf-a33283d898a5', 'aa', 'photos/mandiri_1695107920771.png', 'photos/bca_1695107922406.png', '<p>asd</p>', '2023-09-12 08:33:51'),
('29f9faab-d80c-4e0a-9b58-28c96e6712f8', 'wajin', 'photos/bni_1694507487579.png', 'photos/bca_1694507487579.png', '', '2023-09-12 08:31:27'),
('2c9b7fb5-b620-4499-9c1a-5877ba31d213', 'acdc aha ehe', 'photos/moreheader_1695720682210.jpg', 'photos/ocbc_1695179554667.png', '<p>coni</p>', '2023-08-25 03:54:44'),
('34e23bdf-b4b1-4c5f-91f5-3b260c73538c', 'Gunung Halu', 'photos/WIN_20230605_11_36_44_Pro_1695360831809.jpg', 'photos/WIN_20230605_11_36_44_Pro_1695360832058.jpg', '<p><strong>hahahaha</strong></p>', '2023-09-22 05:33:52'),
('38bc407b-35fc-4e15-82e8-4b66e5884478', 'konzcamatan', 'photos/preview_1695264035464.jpg', 'photos/wajit_1695264050187.jpg', 'konztent', '2023-09-05 02:16:22'),
('5a937da1-b12c-473b-914d-a4965c8f29b4', 'heading', 'photos/02_BTN_MasterBrand_1694512388197.jpg', 'photos/ocbc_1694512388202.png', '<h1>sdaadasdasd</h1><p>asdadsd</p><h6>asdasdasd</h6>', '2023-09-12 09:53:08'),
('65b97f76-d955-4900-9308-8d0ec368b849', 'konzcamatans', 'photos/0.png_1693880326374.png', 'photos/istockphoto-1142851476-612x612.jpg_1693880326381.jpg', 'konztent', '2023-09-05 02:18:46'),
('a1', 'ngamprah', 'photos/1693972706128.png', 'photos/1693980694597.png', '<p><span class=\"ql-size-large\">asdasdasdas</span>asdasdasd<span class=\"ql-size-small\">asdasd</span><span class=\"ql-size-huge\">asdasdasdasd</span></p>', '2023-08-23 02:42:19'),
('a2', 'batujajars', 'photos/mandiri_1695108448131.png', 'photos/bjb_1695108587198.png', '<p>kecamatan batujajarsjbjj<span class=\"ql-font-monospace\">asdasd</span></p>', '2023-08-23 02:42:48');

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
('09014314-5eb1-47ae-bf30-696e82eef172', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'Yongki Ariwibowo', 'Nice', 4, '2023-09-26 02:48:35'),
('0c6f064d-68ce-40be-9657-986ced46a598', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'testtest', 'testtest', 4, '2023-09-26 02:44:56'),
('0eb5251d-2f01-428f-bb21-cb4c737f8fce', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'Panjang Panjang ', 'Test panjang guys.. Test panjang guys.. Test panjang guys.. Test panjang guys.. hehehehehehe', 4, '2023-09-27 03:01:01'),
('2a07d6fd-88d9-416d-8078-fd7355bcf9a4', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'asdasdasdasdasds', 'adasdsdas', 4, '2023-09-27 02:54:14'),
('6a11557c-90d1-42ac-a5c0-ab094a2b0809', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'Ende', 'Enak guys', 5, '2023-10-01 07:43:21'),
('861ed668-6fdf-4a9b-a484-8a20db2e46a6', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'Jeremy Tetty', 'Jjejejejejej', 3, '2023-09-26 02:49:32'),
('8ba3c4a1-6334-486e-b892-dc3c38850a6b', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'Yogi Permana', 'Hmmm....', 3, '2023-09-26 02:36:25'),
('914bb91a-0f0a-46bb-b5e5-8d24d5db6204', '714cd897-1878-4c46-ae7d-84ea00cdc97d', 'Joni', 'Enak', 4, '2023-09-25 16:31:46'),
('b8a1a142-37e0-451d-b78b-aed5157a2f85', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'Boriel L', 'Hmmmmmmmm...', 3, '2023-09-26 02:40:56'),
('cbfcf00a-7e80-4c93-ace4-4874a3b71f00', 'ab54e6e1-8ceb-4ffa-9d41-57ca93a223b1', 'nama2', 'test2', 4, '2023-09-25 08:56:36'),
('ce87b152-2c5d-4133-8858-9487f5cd6a86', '55957925-0db4-4e60-b058-96d3cd9182aa', 'KONZ', 'KONZ banget bang', 5, '2023-09-26 06:47:21'),
('d22a18f8-be46-4291-be33-24d2bfed2911', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'Ronie Sahari Duahari', 'Kureng..', 2, '2023-09-26 02:42:49'),
('d9dedc2d-b7da-4249-b7da-d274431503e7', 'ab54e6e1-8ceb-4ffa-9d41-57ca93a223b1', 'nama', 'test', 3, '2023-09-25 08:54:11'),
('f0517145-1f66-4f66-a39a-bd40b96bdeb3', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'Sony R', 'Enak banget', 5, '2023-09-25 16:27:17'),
('f5cd1dab-c2a6-466a-ad14-b27998892562', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'Renita Afni', 'Enak cukup mumpuni', 3, '2023-09-25 16:30:53'),
('f8aae22f-0ed7-401a-a8b4-409bba78ffeb', '1ab947d3-9d01-4cea-b6eb-1440389bf8d3', 'Randy Asharila', 'Enak banget bang..', 3, '2023-09-26 02:39:15');

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
('4ae63a3a-10f9-4191-9b05-591cdbccbd86', 'HMM', 'kudapan', 'photos/wajit_1695350846536.jpg', 'photos/map-lembang_1695350846537.jpg', '<p><strong>HMMMMMMM</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HMM', '2023-09-22 02:47:26', '38bc407b-35fc-4e15-82e8-4b66e5884478'),
('55957925-0db4-4e60-b058-96d3cd9182aa', 'kondapan', 'kudapan', 'photos/map-lembang_1695201525444.jpg', 'photos/wajit_1695201525447.jpg', '<p><strong style=\"color: rgb(0, 0, 0);\">Jakarta -</strong><span style=\"color: rgb(0, 0, 0);\"> Kaesang Pangarep ditetapkan sebagai Ketum Partai Solidaritas Indonesia (PSI). KPU mengatakan PSI harus melakukan pendaftaran perubahan kepengurusan ke Kemenkumham.</span></p><p><span style=\"color: rgb(0, 0, 0);\">\"Apabila partai politik peserta pemilu melakukan perubahan atau penggantian jabatan ketua parpol, maka partai politik tersebut harus melakukan pendaftaran perubahan kepengurusan ke Kementerian Hukum dan HAM RI,\" kata kata Ketua Divisi Teknis KPU RI Idham Holik saat dihubungi, Rabu (25/9/2023).</span></p><p><br></p><p><span style=\"color: rgb(0, 0, 0);\">Baca artikel detiknews, \"Kaesang Jadi Ketum PSI, KPU: Harus Daftar Ubah Kepengurusan ke Kemenkumham\" selengkapnya&nbsp;</span><a href=\"https://news.detik.com/pemilu/d-6950714/kaesang-jadi-ketum-psi-kpu-harus-daftar-ubah-kepengurusan-ke-kemenkumham\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0);\">https://news.detik.com/pemilu/d-6950714/kaesang-jadi-ketum-psi-kpu-harus-daftar-ubah-kepengurusan-ke-kemenkumham</a><span style=\"color: rgb(0, 0, 0);\">.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kondapan2', '2023-09-20 09:18:45', '2c9b7fb5-b620-4499-9c1a-5877ba31d213'),
('714cd897-1878-4c46-ae7d-84ea00cdc97d', 'kudapan batujajar', 'kudapan', 'photos/wajit_1695201656354.jpg', 'photos/wajit_1695201656354.jpg', '<h1>HAHAHHA</h1>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'batujajar barat', '2023-09-20 09:20:56', 'a2'),
('ab54e6e1-8ceb-4ffa-9d41-57ca93a223b1', 'mugiman', 'kudapan', 'photos/preview_1695199509960.jpg', 'photos/moreheader_1695199517460.jpg', '<h2>Filosopi</h2><p class=\"ql-align-justify\">Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi.Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi. Ini adalah filosopi.</p><p class=\"ql-align-justify\"><br></p><h2 class=\"ql-align-justify\">Cara Membuat</h2><p class=\"ql-align-justify\">Ini adalah cara membuat konzz....</p><p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACAQMAAACjTyRkAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjAAIAAAQAASDSLW8AAAAASUVORK5CYII=\"></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kp ciburial nasdjajdasjjasd', '2023-09-20 08:03:39', '2c9b7fb5-b620-4499-9c1a-5877ba31d213'),
('c7168dc0-f6e3-4656-ac74-a98ef4ec8bec', 'nama_makanans', 'kudapan', 'photos/Desain tanpa judul (1)_page-0001.jpg_1693882472133.jpg', 'photos/0.png_1693882472136.png', 'contentss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cikandang', '2023-09-05 02:54:32', NULL),
('dba1fddd-5c18-4d46-99a7-47861af4ba65', 'mugiman2', 'kudapan', 'photos/F5Y8r-QbMAAFOvV_1695197019919.jpeg', 'photos/Riverside High School Computer Club_1695197019919.jpg', 'contentss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cikandang', '2023-09-20 08:03:39', '2c9b7fb5-b620-4499-9c1a-5877ba31d213'),
('m1', 'ketan bakar', 'kudapan', 'mi1', 'mi2', 'filosopi', 'memasak', 'bahan baku', 'mencicipi', 'menghidangkan', 'pengalaman unik', 'etika dan etiket', NULL, 'lembang no. 55', '2023-08-23 02:47:12', 'a1');

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
('0fca2ac1-202c-4c38-8f94-cc0db863e4be', 'aa1', '38bc407b-35fc-4e15-82e8-4b66e5884478', 'photos/btn_1695265506570.png', 'photos/mandiri_1695265514562.png', '<p>aa3</p>', 'aa2', '2023-09-21 02:56:48'),
('44bb1bd7-eabe-47ca-ac35-8c8e6d125714', 'Gastronomi Activity by Renita', '2c9b7fb5-b620-4499-9c1a-5877ba31d213', 'photos/moreheader_1695720695189.jpg', 'photos/bsi_1695266198553.png', '<p>contentss</p>', 'cikandang', '2023-09-05 03:08:04'),
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
('3f818e8e-55ef-4263-ba87-0175bfec09ca', 'moreheader_1695485284318.jpg', 'photos/moreheader_1695485284318.jpg', '2023-09-23 16:08:04'),
('e933a43a-33cf-4632-8f18-3e3e5d1bb228', 'kbb_1695649663926.jpg', 'photos/kbb_1695649663926.jpg', '2023-09-25 13:47:43');

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
