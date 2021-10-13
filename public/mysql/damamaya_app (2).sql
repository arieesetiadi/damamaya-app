-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2021 at 01:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damamaya_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Instansi 1', NULL, NULL),
(2, 'Instansi 2', NULL, NULL),
(3, 'Instansi 3', NULL, NULL),
(4, 'Instansi 4', NULL, NULL),
(5, 'Instansi 5', NULL, NULL),
(6, 'Instansi 6', NULL, NULL),
(7, 'Instansi 7', NULL, NULL),
(8, 'Instansi 8', NULL, NULL),
(9, 'Instansi 9', NULL, NULL),
(10, 'Instansi 10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kategori 1', NULL, NULL),
(2, 'Kategori 2', NULL, NULL),
(3, 'Kategori 3', NULL, NULL),
(4, 'Kategori 4', NULL, NULL),
(5, 'Kategori 5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_07_20_051046_create_roles_table', 1),
(3, '2021_07_22_001614_create_pengaduan_pro_table', 2),
(4, '2021_07_22_022310_create_pengaduan_anggaran_table', 3),
(5, '2021_07_22_090754_create_kategori_table', 4),
(6, '2021_07_22_091811_create_instansi_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan_anggaran`
--

CREATE TABLE `pengaduan_anggaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nama_pelapor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instansi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaduan_anggaran`
--

INSERT INTO `pengaduan_anggaran` (`id`, `tgl_pengaduan`, `nama_pelapor`, `topik`, `kategori`, `instansi`, `created_at`, `updated_at`) VALUES
(1, '2021-07-22', 'Nama Pelapor 1', 'Topik 1', 'Kategori 1', 'Instansi 1', '2021-07-21 08:00:00', '2021-07-21 08:00:00'),
(2, '2021-07-22', 'Nama Pelapor 2', 'Topik 2', 'Kategori 2', 'Instansi 2', '2021-07-21 08:00:00', '2021-07-21 08:00:00'),
(3, '2021-07-22', 'Nama Pelapor 3', 'Topik 3', 'Kategori 3', 'Instansi 3', '2021-07-21 08:00:00', '2021-07-21 08:00:00'),
(4, '2021-07-22', 'Nama Pelapor 4', 'Topik 4', 'Kategori 4', 'Instansi 4', '2021-07-21 08:00:00', '2021-07-21 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan_pro`
--

CREATE TABLE `pengaduan_pro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nama_pelapor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instansi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaduan_pro`
--

INSERT INTO `pengaduan_pro` (`id`, `tgl_pengaduan`, `nama_pelapor`, `topik`, `kategori`, `instansi`, `created_at`, `updated_at`) VALUES
(1, '2021-07-22', 'Nama Pelapor 1', 'Topik 1', 'Kategori 1', 'Instansi 1', '2021-07-21 16:00:00', '2021-07-21 16:00:00'),
(2, '2021-07-22', 'Nama Pelapor 2', 'Topik 2', 'Kategori 2', 'Instansi 2', '2021-07-21 16:00:00', '2021-07-21 16:00:00'),
(3, '2021-07-22', 'Nama Pelapor 3', 'Topik 3', 'Kategori 3', 'Instansi 3', '2021-07-21 16:00:00', '2021-07-21 16:00:00'),
(4, '2021-07-22', 'Nama Pelapor 4', 'Topik 4', 'Kategori 4', 'Instansi 4', '2021-07-21 16:00:00', '2021-07-21 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Petugas'),
(3, 'Bidang');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('l','p') COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `gender`, `role_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Arie Setiadi', 'admin@gmail.com', 'l', 1, '$2y$10$TaTNQ3y4rm6QfjLwvgs2SeJR9Dc.MWCpX8cJ8a6CLivLM0PKYELl6', '2021-07-19 21:37:47', '2021-07-21 16:30:33'),
(2, 'petugas', 'Putri Ayu', 'petugas@gmail.com', 'p', 2, '$2y$10$u7hNiHReevwor5Kv6t1BQO1/XXnEw/egFr.gjo.MaV9Vu1qzw2icG', '2021-07-19 21:37:47', '2021-07-22 03:02:24'),
(3, 'bidang', 'Adi Suyasa', 'bidang@gmail.com', 'l', 3, '$2y$10$lTIwQ7hxJTvOg.lRkvM4Jes.5zBYt8WU3cq0U8d/LBm2KvUK7dXli', '2021-07-19 21:37:47', '2021-07-22 03:07:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaduan_anggaran`
--
ALTER TABLE `pengaduan_anggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaduan_pro`
--
ALTER TABLE `pengaduan_pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengaduan_anggaran`
--
ALTER TABLE `pengaduan_anggaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengaduan_pro`
--
ALTER TABLE `pengaduan_pro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
