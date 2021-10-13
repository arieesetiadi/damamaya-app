-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 05:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_damamaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id_pd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pendek_pd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id_pd`, `nama_pd`, `nama_pendek_pd`, `created_at`, `updated_at`) VALUES
('000000', 'Seluruh Perangkat Daerah', 'Seluruh PD', NULL, NULL),
('000001', 'Walikota', '', NULL, NULL),
('000002', 'Wakil Walikota', '', NULL, NULL),
('010001', 'Sekretaris Daerah', 'SEKDA', NULL, NULL),
('011001', 'Bagian Administrasi Pemerintahan (Asisten I)', '', NULL, NULL),
('011101', 'Bagian Pemerintahan ', 'Bag. Pem.', NULL, NULL),
('011201', 'Bagian Hukum Setda Kota Denpasar', 'Bag. Hukum', NULL, NULL),
('011301', 'Bagian Organisasi', 'Bag. Organisasi', NULL, NULL),
('011401', 'Bagian Hubungan Masyarakat dan Protokol', '', NULL, NULL),
('012001', 'Bagian Administrasi Pembangunan (Asisten II)', '', NULL, NULL),
('012101', 'Bagian Perekonomian', '', NULL, NULL),
('012201', 'Bagian Program Pembangunan', '', NULL, NULL),
('012301', 'Bagian Kesejahteraan Rakyat', 'Bag. Kesra', NULL, NULL),
('013001', 'Bagian Administrasi Umum (Asisten III)', '', NULL, NULL),
('013101', 'Bagian Keuangan', '', NULL, NULL),
('013201', 'Bagian Umum', '', NULL, NULL),
('013301', 'Bagian Pengadaan Barang dan Jasa', 'Bag. Pengadaan Barang dan Jasa', NULL, NULL),
('013401', 'Bagian Kerjasama Setda Kota Denpasar', '', NULL, NULL),
('014000', 'Staf Ahli ', '', NULL, NULL),
('030101', 'Dinas Pendidikan, Pemuda dan Olahraga', '', NULL, NULL),
('030201', 'Dinas Kesehatan ', '', NULL, NULL),
('030301', 'Dinas Pekerjaan Umum dan Penataan Ruang', '', NULL, NULL),
('030401', 'Dinas Perumahan, Kawasan Permukiman Dan Pertanahan', '', NULL, NULL),
('030501', 'Dinas Lingkungan Hidup dan Kebersihan', 'DLHK', NULL, NULL),
('030601', 'Dinas Kependudukan dan Pencatatan Sipil ', 'Dinas Dukcapil', NULL, NULL),
('030701', 'Dinas Perhubungan', 'dishub', NULL, NULL),
('03070101', 'UPT. Transportasi Darat', '', NULL, NULL),
('030801', 'Dinas Komunikasi, Informatika dan Statistik', 'DKIS', NULL, NULL),
('03080101', 'Sekretariat Dinas Komunikasi dan Informatika ', '', NULL, NULL),
('0308010101', 'Sub Bagian Umum', '', NULL, NULL),
('0308010102', 'Sub Bagian Kepegawaian', '', NULL, NULL),
('0308010103', 'Sub Bagian Keuangan', '', NULL, NULL),
('03080102', 'Bidang Statistik dan Persandian', '', NULL, NULL),
('0308010201', 'Seksi Analisa Data Statistik', '', NULL, NULL),
('0308010202', 'Seksi Pengelolaan Statistik Sektoral', '', NULL, NULL),
('0308010203', 'Seksi Keamanan Informasi dan Persediaan', '', NULL, NULL),
('03080103', 'Bidang Pengelolaan Smart City', '', NULL, NULL),
('0308010301', 'Seksi Pengelolaan Ekosistem Smart City', '', NULL, NULL),
('0308010302', 'Seksi Pengembangan dan Aplikasi', '', NULL, NULL),
('0308010303', 'Seksi Pengelolaan Data dan Introperabilitas', '', NULL, NULL),
('03080104', 'Bidang E-government', '', NULL, NULL),
('0308010401', 'Seksi tata Kelola E-Goverment', '', NULL, NULL),
('0308010402', 'Seksi Penyebaran Sistem Komunikasi', '', NULL, NULL),
('0308010403', 'Seksi Layanan Infrastruktur dan Teknologi', '', NULL, NULL),
('03080105', 'Bidang Komunikasi dan Informasi Publik', '', NULL, NULL),
('0308010501', 'Seksi Kemitraan dan Komunikasi Informasi Publik', '', NULL, NULL),
('0308010502', 'Seksi Layanan Komunikasi Informasi Publik', '', NULL, NULL),
('0308010503', 'Seksi Pengelolaan Komunikasi Informasi Publik', '', NULL, NULL),
('03080106', 'UPT. Pelayanan Teknis Penyiaran Publik Lokal', '', NULL, NULL),
('0308010601', 'Subag Umum UPT. Pelayanan Teknis Penyiaran Publik Lokal', '', NULL, NULL),
('03080107', 'UPT. Pelayanan Informasi Publik dan PPID', '', NULL, NULL),
('0308010701', 'Subag Umum UPT. Pelayanan Informasi Publik dan PPID', '', NULL, NULL),
('0308010702', 'Operator UPT. Pelayanan Informasi Publik dan PPID', '', NULL, NULL),
('030901', 'Dinas Tenaga Kerja dan Sertifikasi Kompetensi', 'Dinas Tenaga Kerja', NULL, NULL),
('031001', 'Dinas Pertanian', '', NULL, NULL),
('031101', 'Dinas Perikanan dan Ketahanan Pangan', '', NULL, NULL),
('031201', 'Dinas Kebudayaan ', 'Disbud', NULL, NULL),
('031301', 'Dinas Pariwisata', '', NULL, NULL),
('031401', 'Dinas Perindustrian dan Perdagangan ', '', NULL, NULL),
('031501', 'Dinas Koperasi, Usaha Kecil dan Menengah ', '', NULL, NULL),
('031601', 'Badan Pendapatan Daerah', '', NULL, NULL),
('031701', 'Dinas Ketentraman Ketertiban dan Satuan Polisi Pamong Praja ', '', NULL, NULL),
('040101', 'Inspektorat', '', NULL, NULL),
('040201', 'Badan Perencanaan Pembangunan Daerah', 'Bappeda', NULL, NULL),
('040301', 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia', 'BKPSDM', NULL, NULL),
('040501', 'Dinas Pemberdayaan Masyarakat dan Desa Kota', '', NULL, NULL),
('040601', 'Badan Kesatuan Bangsa, Politik dan Perlindungan Masyarakat', '', NULL, NULL),
('040701', 'Dinas Perpustakaan dan Kearsipan', '', NULL, NULL),
('040801', 'Badan Penanggulangan Bencana Daerah (BPBD)', 'BPBD', NULL, NULL),
('040901', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak, Pengendalian Penduduk dan Keluarga Berencana', '', NULL, NULL),
('041001', 'Rumah Sakit Umum Daerah Wangaya', 'RSUD Wangaya', NULL, NULL),
('041101', 'Badan Penelitian Dan Pengembangan', '', NULL, NULL),
('100000', 'Seluruh Desa/Kelurahan', '', NULL, NULL),
('140018', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'Dinas PMPTSP', NULL, NULL),
('14001801', 'Sekretariat Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', '', NULL, NULL),
('1400180101', 'Sub Bagian Umum', '', NULL, NULL),
('170001', 'Kecamatan Denpasar Timur', '', NULL, NULL),
('170002', 'Kecamatan Denpasar Barat', '', NULL, NULL),
('170003', 'Kecamatan Denpasar Selatan', '', NULL, NULL),
('170004', 'Kecamatan Denpasar Utara', '', NULL, NULL),
('200001', 'Kelurahan Dangin Puri', '', NULL, NULL),
('200002', 'Kelurahan Kesiman', '', NULL, NULL),
('200003', 'Kelurahan Penatih', '', NULL, NULL),
('200004', 'Kelurahan Sumerta', '', NULL, NULL),
('200005', 'Kelurahan Tonja', 'Kel. Tonja', NULL, NULL),
('200006', 'Kelurahan Dauh Puri', '', NULL, NULL),
('200007', 'Kelurahan Padangsambian', '', NULL, NULL),
('200008', 'Kelurahan Peguyangan', '', NULL, NULL),
('200009', 'Kelurahan Pemecutan', '', NULL, NULL),
('20001', 'Sekretariat DPRD', '', NULL, NULL),
('200010', 'Kelurahan Ubung', 'Kel. Ubung', NULL, NULL),
('200011', 'Kelurahan Panjer', '', NULL, NULL),
('200012', 'Kelurahan Pedungan', '', NULL, NULL),
('200013', 'Kelurahan Renon', '', NULL, NULL),
('200014', 'Kelurahan Sanur', '', NULL, NULL),
('200015', 'Kelurahan Serangan', '', NULL, NULL),
('200016', 'Kelurahan Sesetan', '', NULL, NULL),
('300001', 'PDAM Kota Denpasar', 'PDAM', NULL, NULL),
('300002', 'PD Parkir Kota Denpasar', 'PD Parkir', NULL, NULL),
('300003', 'PD Pasar Kota Denpasar', 'PD Pasar', NULL, NULL),
('300004', 'Dinas Sosial', '', NULL, NULL),
('300005', 'Badan Pengelola Keuangan dan Aset Daerah', 'BPKAD', NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `kategori_analisa`
--

CREATE TABLE `kategori_analisa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_analisa`
--

INSERT INTO `kategori_analisa` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Analisa 1', NULL, NULL),
(2, 'Analisa 2', NULL, NULL),
(3, 'Analisa 3', NULL, NULL),
(4, 'Analisa 4', NULL, NULL),
(5, 'Analisa 5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pengaduan`
--

CREATE TABLE `kategori_pengaduan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_pengaduan`
--

INSERT INTO `kategori_pengaduan` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pengaduan 1', NULL, NULL),
(2, 'Pengaduan 2', NULL, NULL),
(3, 'Pengaduan 3', NULL, NULL),
(4, 'Pengaduan 4', NULL, NULL),
(5, 'Pengaduan 5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `layanan_analisa_media`
--

CREATE TABLE `layanan_analisa_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `issue_lokal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_nasional` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan_analisa_media`
--

INSERT INTO `layanan_analisa_media` (`id`, `tanggal`, `issue_lokal`, `issue_nasional`, `kategori`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(2, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(3, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(4, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(5, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(6, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(7, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(8, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(9, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(10, '2021-09-13', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(11, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(12, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(13, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(14, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(15, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(16, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-20 01:28:14', '2021-09-20 01:28:14'),
(17, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(18, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(19, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(20, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(21, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(22, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(23, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(24, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(25, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(26, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(27, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(28, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(29, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(30, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(31, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(32, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(33, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(34, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(35, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(36, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(37, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(38, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(39, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-20 01:28:15', '2021-09-20 01:28:15'),
(40, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(41, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(42, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(43, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(44, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(45, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(46, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(47, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(48, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(49, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(50, '2021-09-13', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(51, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(52, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(53, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(54, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(55, '2021-09-13', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(56, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(57, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(58, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(59, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(60, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(61, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(62, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(63, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(64, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-20 01:28:16', '2021-09-20 01:28:16'),
(65, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(66, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(67, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(68, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(69, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(70, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(71, '2021-09-13', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(72, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(73, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(74, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(75, '2021-09-16', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(76, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(77, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(78, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(79, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(80, '2021-09-13', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(81, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(82, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(83, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(84, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(85, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(86, '2021-09-13', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:17', '2021-09-20 01:28:17'),
(87, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(88, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(89, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(90, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(91, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(92, '2021-09-13', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(93, '2021-09-14', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(94, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(95, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(96, '2021-09-15', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(97, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(98, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(99, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(100, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-20 01:28:18', '2021-09-20 01:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_informasi`
--

CREATE TABLE `layanan_informasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_update` year(4) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan_informasi`
--

INSERT INTO `layanan_informasi` (`id`, `nama_pd`, `tahun_update`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Seluruh Perangkat Daerah', 2017, 1, '2021-09-20 01:51:35', '2021-09-20 01:51:35'),
(2, 'Walikota', 2019, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(3, 'Wakil Walikota', 2021, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(4, 'Sekretaris Daerah', 2018, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(5, 'Bagian Administrasi Pemerintahan (Asisten I)', 2019, 1, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(6, 'Bagian Pemerintahan ', 2019, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(7, 'Bagian Hukum Setda Kota Denpasar', 2020, 1, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(8, 'Bagian Organisasi', 2020, 1, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(9, 'Bagian Hubungan Masyarakat dan Protokol', 2017, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(10, 'Bagian Administrasi Pembangunan (Asisten II)', 2019, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(11, 'Bagian Perekonomian', 2018, 1, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(12, 'Bagian Program Pembangunan', 2019, 1, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(13, 'Bagian Kesejahteraan Rakyat', 2018, 1, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(14, 'Bagian Administrasi Umum (Asisten III)', 2021, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(15, 'Bagian Keuangan', 2018, 1, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(16, 'Bagian Umum', 2020, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(17, 'Bagian Pengadaan Barang dan Jasa', 2020, 1, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(18, 'Bagian Kerjasama Setda Kota Denpasar', 2019, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(19, 'Staf Ahli ', 2017, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(20, 'Dinas Pendidikan, Pemuda dan Olahraga', 2018, 1, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(21, 'Dinas Kesehatan ', 2019, 1, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(22, 'Dinas Pekerjaan Umum dan Penataan Ruang', 2017, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(23, 'Dinas Perumahan, Kawasan Permukiman Dan Pertanahan', 2021, 2, '2021-09-20 01:51:36', '2021-09-20 01:51:36'),
(24, 'Dinas Lingkungan Hidup dan Kebersihan', 2020, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(25, 'Dinas Kependudukan dan Pencatatan Sipil ', 2020, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(26, 'Dinas Perhubungan', 2019, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(27, 'UPT. Transportasi Darat', 2019, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(28, 'Dinas Komunikasi, Informatika dan Statistik', 2020, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(29, 'Sekretariat Dinas Komunikasi dan Informatika ', 2021, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(30, 'Sub Bagian Umum', 2020, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(31, 'Sub Bagian Kepegawaian', 2017, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(32, 'Sub Bagian Keuangan', 2018, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(33, 'Bidang Statistik dan Persandian', 2018, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(34, 'Seksi Analisa Data Statistik', 2018, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(35, 'Seksi Pengelolaan Statistik Sektoral', 2019, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(36, 'Seksi Keamanan Informasi dan Persediaan', 2020, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(37, 'Bidang Pengelolaan Smart City', 2019, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(38, 'Seksi Pengelolaan Ekosistem Smart City', 2019, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(39, 'Seksi Pengembangan dan Aplikasi', 2021, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(40, 'Seksi Pengelolaan Data dan Introperabilitas', 2017, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(41, 'Bidang E-government', 2021, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(42, 'Seksi tata Kelola E-Goverment', 2021, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(43, 'Seksi Penyebaran Sistem Komunikasi', 2019, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(44, 'Seksi Layanan Infrastruktur dan Teknologi', 2018, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(45, 'Bidang Komunikasi dan Informasi Publik', 2017, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(46, 'Seksi Kemitraan dan Komunikasi Informasi Publik', 2019, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(47, 'Seksi Layanan Komunikasi Informasi Publik', 2018, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(48, 'Seksi Pengelolaan Komunikasi Informasi Publik', 2017, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(49, 'UPT. Pelayanan Teknis Penyiaran Publik Lokal', 2017, 2, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(50, 'Subag Umum UPT. Pelayanan Teknis Penyiaran Publik Lokal', 2021, 1, '2021-09-20 01:51:37', '2021-09-20 01:51:37'),
(51, 'UPT. Pelayanan Informasi Publik dan PPID', 2020, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(52, 'Subag Umum UPT. Pelayanan Informasi Publik dan PPID', 2019, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(53, 'Operator UPT. Pelayanan Informasi Publik dan PPID', 2017, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(54, 'Dinas Tenaga Kerja dan Sertifikasi Kompetensi', 2019, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(55, 'Dinas Pertanian', 2021, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(56, 'Dinas Perikanan dan Ketahanan Pangan', 2020, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(57, 'Dinas Kebudayaan ', 2019, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(58, 'Dinas Pariwisata', 2021, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(59, 'Dinas Perindustrian dan Perdagangan ', 2020, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(60, 'Dinas Koperasi, Usaha Kecil dan Menengah ', 2018, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(61, 'Badan Pendapatan Daerah', 2018, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(62, 'Dinas Ketentraman Ketertiban dan Satuan Polisi Pamong Praja ', 2018, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(63, 'Inspektorat', 2018, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(64, 'Badan Perencanaan Pembangunan Daerah', 2018, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(65, 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia', 2020, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(66, 'Dinas Pemberdayaan Masyarakat dan Desa Kota', 2019, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(67, 'Badan Kesatuan Bangsa, Politik dan Perlindungan Masyarakat', 2021, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(68, 'Dinas Perpustakaan dan Kearsipan', 2017, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(69, 'Badan Penanggulangan Bencana Daerah (BPBD)', 2021, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(70, 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak, Pengendalian Penduduk dan Keluarga Berencana', 2020, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(71, 'Rumah Sakit Umum Daerah Wangaya', 2020, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(72, 'Badan Penelitian Dan Pengembangan', 2021, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(73, 'Seluruh Desa/Kelurahan', 2020, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(74, 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 2018, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(75, 'Sekretariat Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 2021, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(76, 'Sub Bagian Umum', 2017, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(77, 'Kecamatan Denpasar Timur', 2018, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(78, 'Kecamatan Denpasar Barat', 2020, 2, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(79, 'Kecamatan Denpasar Selatan', 2018, 1, '2021-09-20 01:51:38', '2021-09-20 01:51:38'),
(80, 'Kecamatan Denpasar Utara', 2018, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(81, 'Kelurahan Dangin Puri', 2017, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(82, 'Kelurahan Kesiman', 2017, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(83, 'Kelurahan Penatih', 2020, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(84, 'Kelurahan Sumerta', 2017, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(85, 'Kelurahan Tonja', 2020, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(86, 'Kelurahan Dauh Puri', 2018, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(87, 'Kelurahan Padangsambian', 2020, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(88, 'Kelurahan Peguyangan', 2018, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(89, 'Kelurahan Pemecutan', 2018, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(90, 'Sekretariat DPRD', 2018, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(91, 'Kelurahan Ubung', 2017, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(92, 'Kelurahan Panjer', 2018, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(93, 'Kelurahan Pedungan', 2017, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(94, 'Kelurahan Renon', 2018, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(95, 'Kelurahan Sanur', 2018, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(96, 'Kelurahan Serangan', 2021, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(97, 'Kelurahan Sesetan', 2019, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(98, 'PDAM Kota Denpasar', 2021, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(99, 'PD Parkir Kota Denpasar', 2021, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(100, 'PD Pasar Kota Denpasar', 2018, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(101, 'Dinas Sosial', 2018, 2, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(102, 'Badan Pengelola Keuangan dan Aset Daerah', 2019, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_keamanan_informasi`
--

CREATE TABLE `layanan_keamanan_informasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `link_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `is_tindak_lanjut` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan_keamanan_informasi`
--

INSERT INTO `layanan_keamanan_informasi` (`id`, `tanggal`, `jam`, `link_website`, `status_website`, `keterangan`, `capture`, `id_user`, `is_tindak_lanjut`, `created_at`, `updated_at`) VALUES
(1, '2021-08-18', '21:04:09', 'https://www.google.com/', 'Normal', 'Ada perubahan warna background di beberapa bagian seperti dashboard dan halaman login. Beserta terdapat tulisan yang dimasukan secara ilegal ke dalam website', '1629292132-screenshot.png', 1, NULL, '2021-08-18 13:08:52', '2021-08-18 13:08:52'),
(2, '2021-08-17', '21:09:01', 'https://www.facebook.com/', 'Deface', NULL, '1629292205-screenshot (338).png', 1, NULL, '2021-08-18 13:35:32', '2021-08-18 13:35:32'),
(3, '2021-08-17', '21:09:01', 'https://kominfostatistik.denpasarkota.go.id/', 'Deface', 'Ada perubahan warna di beberapa bagian', '1629292705_screenshot (320).png', 1, 0, '2021-08-18 13:40:39', '2021-08-24 02:27:43'),
(4, '2021-08-19', '09:13:23', 'https://www.denpasarkota.go.id/', 'Tidak Bisa Diakses', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Beatae hic magni atque architecto molestias impedit, placeat alias! Doloribus distinctio laborum corporis numquam ipsa minima vitae dignissimos deleniti esse nulla libero sapiente non, error sed perspiciatis. Repellat odio sed optio? Voluptatibus esse amet corrupti totam? Pariatur dignissimos minima, dolorum', '1629335697_screenshot (340).png', 1, NULL, '2021-08-19 01:14:58', '2021-08-19 01:14:58'),
(8, '2021-08-19', '10:15:43', 'asdad', 'Tidak Bisa Diakses', 'asdasdasdasdasdasdasd asd as as asd as asdasdasdasdasdasdasd asd as as asd as asdasdasdasdasdasdasd asd as as asd as asdasdasdasdasdasdasd asd as as asd as asdasdasdasdasdasdasd asd as as asd as asdasdasdasdasdasdasd asd as as asd as asdasdasdasdasdasdasd asd as as asd as', '1629339531_screenshot (321).png', 2, NULL, '2021-08-19 02:18:52', '2021-08-19 02:18:52'),
(10, '2021-08-19', '14:34:27', 'asdsadasdasd', 'Tidak Bisa Diakses', 'asdadasdasdasd', '1629354880_screenshot (341).png', 1, NULL, '2021-08-19 06:34:40', '2021-08-19 06:34:40'),
(12, '2021-08-19', '16:24:00', 'asdasd', 'Tidak Bisa Diakses', 'asadas', '1629361447_screenshot (344).png', 2, NULL, '2021-08-19 08:24:07', '2021-08-19 08:24:07'),
(18, '2021-08-25', '22:46:06', 'https://kominfostatistik.denpasarkota.go.id/', 'Deface', 'Keterangan laporan', '1629902930_screenshot (357).png', 1, 0, '2021-08-25 14:48:51', '2021-08-28 03:11:03'),
(22, '2021-08-26', '09:05:20', 'https://sion.stikom-bali.ac.id/', 'Normal', 'Keterangan website normal', '1629939960_screenshot (355).png', 1, 0, '2021-08-26 01:06:00', '2021-08-30 10:03:09'),
(24, '2021-08-29', '14:25:16', 'https://laravel.com/', 'Deface', 'Keterangan Laporan', '1630219043_screenshot (364).png', 1, 1, '2021-08-29 06:37:24', '2021-08-29 06:39:27'),
(26, '2021-08-30', '11:11:15', 'http://127.0.0.1:8000/keamanan-informasi/create', 'Deface', 'Keterangan Laporan', '1630293108_screenshot (365).png', 1, 1, '2021-08-30 03:11:49', '2021-08-30 07:37:47'),
(27, '2021-08-30', '11:22:40', 'http://localhost/phpmyadmin/', 'Deface', 'Keterangan Laporan', '1630293952_screenshot (362).png', 1, 0, '2021-08-30 03:25:52', '2021-08-30 10:13:09'),
(31, '2021-09-01', '10:16:52', 'sdfbzdfbdfb', 'Tidak Bisa Diakses', 'dsfvdfvbdfb', '1630462663_2021-08-22 (1).png', 1, NULL, '2021-09-01 02:17:43', '2021-09-01 02:17:43'),
(36, '2021-09-05', '12:15:58', 'wewe', 'Deface', 'wewe', '1630815390_gpp06460.jpg', 1, NULL, '2021-09-05 04:16:33', '2021-09-05 04:16:33'),
(137, '2021-09-19', '11:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(138, '2021-09-14', '17:54:08', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(139, '2021-09-18', '08:54:08', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(140, '2021-09-16', '16:54:08', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(141, '2021-09-13', '09:54:08', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(142, '2021-09-20', '14:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(143, '2021-09-13', '11:54:08', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(144, '2021-09-19', '03:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(145, '2021-09-16', '08:54:08', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(146, '2021-09-15', '13:54:08', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(147, '2021-09-19', '08:54:08', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(148, '2021-09-17', '10:54:08', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(149, '2021-09-19', '12:54:08', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(150, '2021-09-17', '15:54:08', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(151, '2021-09-14', '16:54:08', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(152, '2021-09-14', '03:54:08', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(153, '2021-09-14', '10:54:08', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(154, '2021-09-17', '08:54:08', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(155, '2021-09-15', '12:54:08', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(156, '2021-09-17', '06:54:08', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(157, '2021-09-14', '03:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(158, '2021-09-16', '06:54:08', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(159, '2021-09-16', '08:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(160, '2021-09-13', '13:54:08', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(161, '2021-09-18', '17:54:08', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(162, '2021-09-15', '03:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(163, '2021-09-17', '15:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(164, '2021-09-15', '13:54:08', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(165, '2021-09-14', '16:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:09', '2021-09-20 02:54:09'),
(166, '2021-09-15', '06:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(167, '2021-09-17', '12:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(168, '2021-09-17', '05:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(169, '2021-09-14', '12:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(170, '2021-09-15', '03:54:08', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(171, '2021-09-18', '09:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(172, '2021-09-19', '07:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(173, '2021-09-19', '05:54:08', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(174, '2021-09-17', '16:54:08', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(175, '2021-09-19', '14:54:08', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(176, '2021-09-17', '13:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(177, '2021-09-17', '03:54:08', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(178, '2021-09-14', '17:54:08', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(179, '2021-09-19', '17:54:08', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(180, '2021-09-18', '09:54:08', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(181, '2021-09-15', '14:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(182, '2021-09-20', '16:54:08', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(183, '2021-09-17', '11:54:08', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(184, '2021-09-17', '13:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(185, '2021-09-15', '17:54:08', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(186, '2021-09-20', '09:54:08', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(187, '2021-09-13', '11:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(188, '2021-09-19', '03:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(189, '2021-09-13', '15:54:08', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(190, '2021-09-20', '05:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(191, '2021-09-20', '16:54:08', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(192, '2021-09-18', '08:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(193, '2021-09-19', '09:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(194, '2021-09-19', '11:54:08', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(195, '2021-09-15', '04:54:08', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(196, '2021-09-13', '11:54:08', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(197, '2021-09-13', '08:54:08', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(198, '2021-09-17', '04:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:10', '2021-09-20 02:54:10'),
(199, '2021-09-18', '10:54:08', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(200, '2021-09-20', '04:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(201, '2021-09-16', '05:54:08', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(202, '2021-09-20', '05:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(203, '2021-09-19', '10:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(204, '2021-09-13', '05:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(205, '2021-09-20', '13:54:08', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(206, '2021-09-17', '05:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(207, '2021-09-14', '12:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(208, '2021-09-19', '13:54:08', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(209, '2021-09-20', '10:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(210, '2021-09-20', '10:54:08', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(211, '2021-09-17', '06:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(212, '2021-09-13', '14:54:08', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(213, '2021-09-20', '15:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(214, '2021-09-16', '05:54:08', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(215, '2021-09-15', '17:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(216, '2021-09-19', '03:54:08', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(217, '2021-09-13', '09:54:08', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(218, '2021-09-15', '17:54:08', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(219, '2021-09-14', '06:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(220, '2021-09-20', '14:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(221, '2021-09-19', '03:54:08', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(222, '2021-09-18', '07:54:08', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(223, '2021-09-13', '05:54:08', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(224, '2021-09-20', '10:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(225, '2021-09-18', '11:54:08', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(226, '2021-09-16', '17:54:08', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(227, '2021-09-15', '12:54:08', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(228, '2021-09-14', '14:54:08', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(229, '2021-09-15', '06:54:08', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(230, '2021-09-16', '17:54:08', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(231, '2021-09-17', '08:54:08', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(232, '2021-09-14', '03:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:11', '2021-09-20 02:54:11'),
(233, '2021-09-18', '03:54:08', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:12', '2021-09-20 02:54:12'),
(234, '2021-09-19', '10:54:08', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:12', '2021-09-20 02:54:12'),
(235, '2021-09-17', '13:54:08', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-20 02:54:12', '2021-09-20 02:54:12'),
(236, '2021-09-16', '07:54:08', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:12', '2021-09-20 02:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_konten_subdomain`
--

CREATE TABLE `layanan_konten_subdomain` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_kepuasan_masyarakat` tinyint(1) NOT NULL,
  `agenda` tinyint(1) NOT NULL,
  `foto_kegiatan` tinyint(1) NOT NULL,
  `berita` tinyint(1) NOT NULL,
  `foto_pimpinan` tinyint(1) NOT NULL,
  `struktur_organisasi` tinyint(1) NOT NULL,
  `tupoksi` tinyint(1) NOT NULL,
  `transparansi_anggaran` tinyint(1) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan_konten_subdomain`
--

INSERT INTO `layanan_konten_subdomain` (`id`, `tanggal`, `nama_pd`, `survey_kepuasan_masyarakat`, `agenda`, `foto_kegiatan`, `berita`, `foto_pimpinan`, `struktur_organisasi`, `tupoksi`, `transparansi_anggaran`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '2021-09-13', 'Perangkat Daerah Dummy', 1, 0, 0, 1, 1, 0, 0, 1, 1, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(2, '2021-09-14', 'Perangkat Daerah Dummy', 0, 1, 0, 0, 1, 0, 1, 0, 1, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(3, '2021-09-13', 'Perangkat Daerah Dummy', 0, 1, 0, 1, 0, 0, 1, 1, 2, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(4, '2021-09-14', 'Perangkat Daerah Dummy', 0, 0, 1, 1, 1, 0, 1, 1, 2, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(5, '2021-09-18', 'Perangkat Daerah Dummy', 1, 0, 0, 1, 0, 1, 1, 1, 2, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(6, '2021-09-16', 'Perangkat Daerah Dummy', 1, 0, 0, 0, 0, 0, 1, 0, 1, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(7, '2021-09-13', 'Perangkat Daerah Dummy', 1, 0, 1, 0, 0, 0, 0, 1, 2, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(8, '2021-09-16', 'Perangkat Daerah Dummy', 0, 1, 1, 0, 1, 1, 1, 1, 2, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(9, '2021-09-16', 'Perangkat Daerah Dummy', 0, 1, 1, 0, 0, 1, 1, 1, 1, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(10, '2021-09-16', 'Perangkat Daerah Dummy', 0, 1, 1, 0, 1, 0, 1, 0, 1, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(11, '2021-09-19', 'Perangkat Daerah Dummy', 0, 0, 0, 0, 0, 0, 0, 0, 2, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(12, '2021-09-16', 'Perangkat Daerah Dummy', 1, 1, 0, 1, 0, 1, 1, 0, 2, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(13, '2021-09-20', 'Perangkat Daerah Dummy', 1, 0, 0, 1, 1, 0, 1, 0, 2, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(14, '2021-09-16', 'Perangkat Daerah Dummy', 0, 1, 1, 1, 0, 1, 0, 1, 2, '2021-09-20 01:38:22', '2021-09-20 01:38:22'),
(15, '2021-09-14', 'Perangkat Daerah Dummy', 1, 0, 0, 1, 0, 1, 1, 1, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(16, '2021-09-15', 'Perangkat Daerah Dummy', 1, 1, 0, 1, 1, 0, 1, 0, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(17, '2021-09-19', 'Perangkat Daerah Dummy', 1, 0, 0, 1, 1, 0, 1, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(18, '2021-09-16', 'Perangkat Daerah Dummy', 0, 0, 0, 1, 1, 1, 0, 0, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(19, '2021-09-18', 'Perangkat Daerah Dummy', 1, 1, 1, 0, 1, 1, 1, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(20, '2021-09-18', 'Perangkat Daerah Dummy', 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(21, '2021-09-19', 'Perangkat Daerah Dummy', 1, 0, 0, 1, 1, 0, 0, 0, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(22, '2021-09-19', 'Perangkat Daerah Dummy', 0, 0, 1, 0, 0, 0, 0, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(23, '2021-09-14', 'Perangkat Daerah Dummy', 0, 1, 0, 0, 0, 1, 0, 1, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(24, '2021-09-20', 'Perangkat Daerah Dummy', 1, 0, 1, 1, 0, 0, 0, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(25, '2021-09-19', 'Perangkat Daerah Dummy', 1, 1, 1, 1, 1, 0, 0, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(26, '2021-09-15', 'Perangkat Daerah Dummy', 1, 1, 0, 0, 0, 0, 0, 1, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(27, '2021-09-20', 'Perangkat Daerah Dummy', 1, 0, 1, 0, 0, 0, 1, 0, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(28, '2021-09-13', 'Perangkat Daerah Dummy', 0, 0, 1, 1, 0, 1, 1, 0, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(29, '2021-09-17', 'Perangkat Daerah Dummy', 1, 0, 0, 1, 1, 1, 0, 0, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(30, '2021-09-16', 'Perangkat Daerah Dummy', 1, 0, 1, 1, 0, 0, 0, 0, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(31, '2021-09-15', 'Perangkat Daerah Dummy', 1, 0, 0, 0, 0, 1, 0, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(32, '2021-09-20', 'Perangkat Daerah Dummy', 0, 0, 1, 1, 0, 0, 1, 0, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(33, '2021-09-13', 'Perangkat Daerah Dummy', 0, 1, 0, 1, 1, 0, 1, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(34, '2021-09-19', 'Perangkat Daerah Dummy', 1, 0, 0, 1, 0, 0, 0, 0, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(35, '2021-09-15', 'Perangkat Daerah Dummy', 1, 0, 1, 1, 1, 0, 1, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(36, '2021-09-20', 'Perangkat Daerah Dummy', 1, 0, 1, 1, 0, 0, 1, 0, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(37, '2021-09-15', 'Perangkat Daerah Dummy', 1, 1, 0, 1, 1, 1, 0, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(38, '2021-09-16', 'Perangkat Daerah Dummy', 1, 0, 0, 1, 1, 0, 1, 1, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(39, '2021-09-15', 'Perangkat Daerah Dummy', 0, 1, 0, 1, 0, 0, 1, 1, 1, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(40, '2021-09-18', 'Perangkat Daerah Dummy', 0, 1, 0, 0, 1, 1, 1, 1, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(41, '2021-09-17', 'Perangkat Daerah Dummy', 1, 1, 0, 0, 0, 0, 1, 1, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(42, '2021-09-14', 'Perangkat Daerah Dummy', 0, 0, 1, 0, 1, 1, 1, 1, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(43, '2021-09-18', 'Perangkat Daerah Dummy', 1, 1, 0, 0, 0, 1, 0, 0, 2, '2021-09-20 01:38:23', '2021-09-20 01:38:23'),
(44, '2021-09-19', 'Perangkat Daerah Dummy', 0, 1, 1, 1, 0, 1, 0, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(45, '2021-09-16', 'Perangkat Daerah Dummy', 1, 1, 1, 0, 1, 0, 0, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(46, '2021-09-20', 'Perangkat Daerah Dummy', 0, 0, 1, 0, 0, 1, 1, 0, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(47, '2021-09-17', 'Perangkat Daerah Dummy', 1, 0, 1, 1, 0, 0, 1, 0, 1, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(48, '2021-09-20', 'Perangkat Daerah Dummy', 1, 0, 1, 1, 1, 1, 1, 0, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(49, '2021-09-15', 'Perangkat Daerah Dummy', 1, 0, 1, 0, 1, 1, 1, 0, 1, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(50, '2021-09-19', 'Perangkat Daerah Dummy', 0, 1, 1, 1, 0, 1, 0, 0, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(51, '2021-09-20', 'Perangkat Daerah Dummy', 0, 1, 0, 0, 0, 0, 0, 0, 1, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(52, '2021-09-18', 'Perangkat Daerah Dummy', 0, 1, 0, 0, 1, 1, 0, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(53, '2021-09-20', 'Perangkat Daerah Dummy', 0, 0, 0, 0, 0, 1, 0, 0, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(54, '2021-09-16', 'Perangkat Daerah Dummy', 0, 1, 0, 0, 0, 0, 1, 0, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(55, '2021-09-18', 'Perangkat Daerah Dummy', 1, 1, 0, 0, 1, 0, 0, 1, 1, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(56, '2021-09-17', 'Perangkat Daerah Dummy', 0, 0, 0, 0, 0, 1, 1, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(57, '2021-09-13', 'Perangkat Daerah Dummy', 0, 0, 0, 1, 0, 1, 0, 1, 1, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(58, '2021-09-18', 'Perangkat Daerah Dummy', 0, 0, 1, 0, 1, 0, 0, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(59, '2021-09-20', 'Perangkat Daerah Dummy', 1, 1, 0, 0, 1, 1, 0, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(60, '2021-09-20', 'Perangkat Daerah Dummy', 1, 1, 1, 1, 0, 1, 1, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(61, '2021-09-15', 'Perangkat Daerah Dummy', 1, 1, 1, 0, 1, 0, 0, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(62, '2021-09-13', 'Perangkat Daerah Dummy', 1, 1, 0, 0, 0, 1, 0, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(63, '2021-09-13', 'Perangkat Daerah Dummy', 1, 1, 0, 0, 1, 1, 0, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(64, '2021-09-15', 'Perangkat Daerah Dummy', 0, 0, 0, 0, 0, 1, 0, 0, 1, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(65, '2021-09-13', 'Perangkat Daerah Dummy', 0, 1, 0, 1, 0, 1, 0, 0, 1, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(66, '2021-09-17', 'Perangkat Daerah Dummy', 0, 0, 1, 1, 1, 1, 0, 0, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(67, '2021-09-16', 'Perangkat Daerah Dummy', 0, 0, 0, 0, 1, 1, 0, 1, 2, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(68, '2021-09-20', 'Perangkat Daerah Dummy', 1, 0, 0, 0, 0, 0, 0, 0, 1, '2021-09-20 01:38:24', '2021-09-20 01:38:24'),
(69, '2021-09-17', 'Perangkat Daerah Dummy', 1, 0, 1, 0, 1, 1, 1, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(70, '2021-09-17', 'Perangkat Daerah Dummy', 0, 1, 1, 1, 1, 0, 1, 1, 2, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(71, '2021-09-16', 'Perangkat Daerah Dummy', 0, 0, 1, 1, 0, 1, 0, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(72, '2021-09-13', 'Perangkat Daerah Dummy', 1, 0, 1, 1, 0, 1, 1, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(73, '2021-09-20', 'Perangkat Daerah Dummy', 1, 1, 0, 0, 0, 0, 1, 1, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(74, '2021-09-14', 'Perangkat Daerah Dummy', 0, 0, 1, 1, 0, 0, 0, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(75, '2021-09-14', 'Perangkat Daerah Dummy', 1, 0, 1, 1, 1, 0, 1, 1, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(76, '2021-09-14', 'Perangkat Daerah Dummy', 0, 1, 1, 0, 1, 1, 0, 1, 2, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(77, '2021-09-17', 'Perangkat Daerah Dummy', 1, 1, 1, 1, 0, 0, 0, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(78, '2021-09-16', 'Perangkat Daerah Dummy', 0, 1, 1, 0, 1, 1, 0, 1, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(79, '2021-09-19', 'Perangkat Daerah Dummy', 1, 1, 1, 0, 1, 1, 0, 0, 2, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(80, '2021-09-14', 'Perangkat Daerah Dummy', 0, 1, 1, 0, 0, 1, 0, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(81, '2021-09-17', 'Perangkat Daerah Dummy', 0, 1, 0, 1, 1, 0, 0, 0, 2, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(82, '2021-09-16', 'Perangkat Daerah Dummy', 0, 0, 0, 0, 1, 0, 0, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(83, '2021-09-16', 'Perangkat Daerah Dummy', 1, 1, 1, 0, 1, 0, 1, 1, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(84, '2021-09-20', 'Perangkat Daerah Dummy', 0, 0, 1, 0, 0, 1, 1, 1, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(85, '2021-09-17', 'Perangkat Daerah Dummy', 1, 1, 0, 0, 1, 1, 1, 1, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(86, '2021-09-15', 'Perangkat Daerah Dummy', 0, 1, 1, 1, 1, 0, 1, 0, 2, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(87, '2021-09-16', 'Perangkat Daerah Dummy', 0, 0, 0, 0, 0, 0, 1, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(88, '2021-09-15', 'Perangkat Daerah Dummy', 0, 0, 0, 0, 0, 0, 1, 1, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(89, '2021-09-15', 'Perangkat Daerah Dummy', 1, 0, 1, 0, 1, 1, 0, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(90, '2021-09-13', 'Perangkat Daerah Dummy', 1, 0, 0, 0, 1, 0, 1, 1, 2, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(91, '2021-09-20', 'Perangkat Daerah Dummy', 0, 0, 1, 1, 0, 0, 0, 0, 2, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(92, '2021-09-20', 'Perangkat Daerah Dummy', 1, 0, 1, 0, 1, 1, 0, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(93, '2021-09-16', 'Perangkat Daerah Dummy', 1, 0, 1, 1, 0, 1, 0, 0, 2, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(94, '2021-09-20', 'Perangkat Daerah Dummy', 0, 1, 1, 0, 1, 1, 0, 1, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(95, '2021-09-18', 'Perangkat Daerah Dummy', 0, 0, 0, 1, 1, 0, 0, 0, 1, '2021-09-20 01:38:25', '2021-09-20 01:38:25'),
(96, '2021-09-18', 'Perangkat Daerah Dummy', 0, 0, 0, 0, 0, 1, 0, 1, 2, '2021-09-20 01:38:26', '2021-09-20 01:38:26'),
(97, '2021-09-17', 'Perangkat Daerah Dummy', 1, 0, 1, 0, 0, 0, 1, 1, 1, '2021-09-20 01:38:26', '2021-09-20 01:38:26'),
(98, '2021-09-15', 'Perangkat Daerah Dummy', 1, 1, 1, 0, 0, 1, 1, 0, 1, '2021-09-20 01:38:26', '2021-09-20 01:38:26'),
(99, '2021-09-16', 'Perangkat Daerah Dummy', 1, 0, 1, 0, 0, 1, 1, 1, 1, '2021-09-20 01:38:26', '2021-09-20 01:38:26'),
(100, '2021-09-20', 'Perangkat Daerah Dummy', 1, 1, 1, 0, 1, 1, 1, 1, 1, '2021-09-20 01:38:26', '2021-09-20 01:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_pengaduan_anggaran`
--

CREATE TABLE `layanan_pengaduan_anggaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pelapor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan_pengaduan_anggaran`
--

INSERT INTO `layanan_pengaduan_anggaran` (`id`, `tanggal`, `nama_pelapor`, `topik`, `kategori`, `nama_pd`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '2021-08-14', 'Arie Setiadi', 'Pengembangan Sistem Damamaya', 'Pengaduan 5', 'Dinas Komunikasi, Informatika dan Statistik', 1, '2021-08-14 03:35:30', '2021-08-14 03:35:30'),
(2, '2021-08-08', 'Putu Arie', 'Pembuatan Sistem Gaji', 'Pengaduan 2', 'Dinas Perumahan, Kawasan Permukiman Dan Pertanahan', 1, '2021-08-14 03:36:31', '2021-08-14 03:36:31'),
(3, '2021-08-19', 'Arie Setiadi', 'Pengembangan Sistem Damamaya', 'Pengaduan 5', 'Dinas Komunikasi, Informatika dan Statistik', 2, '2021-08-14 03:35:30', '2021-08-14 03:35:30'),
(4, '2021-08-18', 'Putu Arie', 'Pembuatan Sistem Gaji', 'Pengaduan 2', 'Dinas Perumahan, Kawasan Permukiman Dan Pertanahan', 1, '2021-08-14 03:36:31', '2021-08-14 03:36:31'),
(5, '2021-08-18', 'Arie Setiadi', 'Pengembangan Sistem Damamaya', 'Pengaduan 5', 'Dinas Komunikasi, Informatika dan Statistik', 2, '2021-08-14 03:35:30', '2021-08-14 03:35:30'),
(6, '2021-08-18', 'Putu Arie', 'Pembuatan Sistem Gaji', 'Pengaduan 2', 'Dinas Perumahan, Kawasan Permukiman Dan Pertanahan', 2, '2021-08-14 03:36:31', '2021-08-14 03:36:31'),
(7, '2021-08-19', 'Arie Setiadi', 'Pengembangan Sistem Damamaya', 'Pengaduan 5', 'Dinas Komunikasi, Informatika dan Statistik', 1, '2021-08-14 03:35:30', '2021-08-14 03:35:30'),
(8, '2021-08-18', 'Putu Arie', 'Pembuatan Sistem Gaji', 'Pengaduan 2', 'Dinas Perumahan, Kawasan Permukiman Dan Pertanahan', 1, '2021-08-14 03:36:31', '2021-08-14 03:36:31'),
(9, '2021-08-17', 'Putu Arie', 'Pembuatan Sistem Gaji', 'Pengaduan 2', 'Dinas Perumahan, Kawasan Permukiman Dan Pertanahan', 1, '2021-08-14 03:36:31', '2021-08-14 03:36:31'),
(10, '2021-08-25', 'Tuarie', 'Test Topik', 'Pengaduan 2', 'Sekretariat Dinas Komunikasi dan Informatika', 1, '2021-08-25 00:57:28', '2021-08-25 00:57:28'),
(11, '2021-08-26', 'Putu Arie', 'Topik Laporan', 'Pengaduan 4', 'Bagian Hubungan Masyarakat dan Protokol', 1, '2021-08-26 00:46:37', '2021-08-26 00:46:37'),
(12, '2021-09-03', 'Arie Setiadi', 'Topik Laporan', 'Pengaduan 3', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak, Pengendalian Penduduk dan Keluarga Berencana', 1, '2021-09-03 00:14:50', '2021-09-03 00:14:50'),
(13, '2021-09-17', 'Tuarieeee', 'Topik Judul', 'Pengaduan 3', 'Kecamatan Denpasar Barat', 1, '2021-09-17 00:23:59', '2021-09-17 00:23:59'),
(14, '2021-09-20', 'Nama Pelapor 1', 'Contoh Topik Laporan 1', 'Pengaduan1', 'Perangkat Daerah 1', 2, '2021-09-20 01:13:24', '2021-09-20 01:13:24'),
(15, '2021-09-13', 'Nama Pelapor 2', 'Contoh Topik Laporan 2', 'Pengaduan2', 'Perangkat Daerah 2', 2, '2021-09-20 01:13:24', '2021-09-20 01:13:24'),
(16, '2021-09-15', 'Nama Pelapor 3', 'Contoh Topik Laporan 3', 'Pengaduan3', 'Perangkat Daerah 3', 1, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(17, '2021-09-19', 'Nama Pelapor 4', 'Contoh Topik Laporan 4', 'Pengaduan4', 'Perangkat Daerah 4', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(18, '2021-09-15', 'Nama Pelapor 5', 'Contoh Topik Laporan 5', 'Pengaduan5', 'Perangkat Daerah 5', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(19, '2021-09-13', 'Nama Pelapor 6', 'Contoh Topik Laporan 6', 'Pengaduan6', 'Perangkat Daerah 6', 1, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(20, '2021-09-20', 'Nama Pelapor 7', 'Contoh Topik Laporan 7', 'Pengaduan7', 'Perangkat Daerah 7', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(21, '2021-09-13', 'Nama Pelapor 8', 'Contoh Topik Laporan 8', 'Pengaduan8', 'Perangkat Daerah 8', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(22, '2021-09-18', 'Nama Pelapor 9', 'Contoh Topik Laporan 9', 'Pengaduan9', 'Perangkat Daerah 9', 1, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(23, '2021-09-13', 'Nama Pelapor 10', 'Contoh Topik Laporan 10', 'Pengaduan10', 'Perangkat Daerah 10', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(24, '2021-09-18', 'Nama Pelapor 11', 'Contoh Topik Laporan 11', 'Pengaduan11', 'Perangkat Daerah 11', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(25, '2021-09-17', 'Nama Pelapor 12', 'Contoh Topik Laporan 12', 'Pengaduan12', 'Perangkat Daerah 12', 1, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(26, '2021-09-13', 'Nama Pelapor 13', 'Contoh Topik Laporan 13', 'Pengaduan13', 'Perangkat Daerah 13', 1, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(27, '2021-09-14', 'Nama Pelapor 14', 'Contoh Topik Laporan 14', 'Pengaduan14', 'Perangkat Daerah 14', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(28, '2021-09-13', 'Nama Pelapor 15', 'Contoh Topik Laporan 15', 'Pengaduan15', 'Perangkat Daerah 15', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(29, '2021-09-15', 'Nama Pelapor 16', 'Contoh Topik Laporan 16', 'Pengaduan16', 'Perangkat Daerah 16', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(30, '2021-09-16', 'Nama Pelapor 17', 'Contoh Topik Laporan 17', 'Pengaduan17', 'Perangkat Daerah 17', 1, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(31, '2021-09-13', 'Nama Pelapor 18', 'Contoh Topik Laporan 18', 'Pengaduan18', 'Perangkat Daerah 18', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(32, '2021-09-13', 'Nama Pelapor 19', 'Contoh Topik Laporan 19', 'Pengaduan19', 'Perangkat Daerah 19', 1, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(33, '2021-09-13', 'Nama Pelapor 20', 'Contoh Topik Laporan 20', 'Pengaduan20', 'Perangkat Daerah 20', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(34, '2021-09-14', 'Nama Pelapor 21', 'Contoh Topik Laporan 21', 'Pengaduan21', 'Perangkat Daerah 21', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(35, '2021-09-19', 'Nama Pelapor 22', 'Contoh Topik Laporan 22', 'Pengaduan22', 'Perangkat Daerah 22', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(36, '2021-09-18', 'Nama Pelapor 23', 'Contoh Topik Laporan 23', 'Pengaduan23', 'Perangkat Daerah 23', 2, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(37, '2021-09-17', 'Nama Pelapor 24', 'Contoh Topik Laporan 24', 'Pengaduan24', 'Perangkat Daerah 24', 1, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(38, '2021-09-20', 'Nama Pelapor 25', 'Contoh Topik Laporan 25', 'Pengaduan25', 'Perangkat Daerah 25', 1, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(39, '2021-09-15', 'Nama Pelapor 26', 'Contoh Topik Laporan 26', 'Pengaduan26', 'Perangkat Daerah 26', 1, '2021-09-20 01:13:25', '2021-09-20 01:13:25'),
(40, '2021-09-15', 'Nama Pelapor 27', 'Contoh Topik Laporan 27', 'Pengaduan27', 'Perangkat Daerah 27', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(41, '2021-09-13', 'Nama Pelapor 28', 'Contoh Topik Laporan 28', 'Pengaduan28', 'Perangkat Daerah 28', 1, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(42, '2021-09-19', 'Nama Pelapor 29', 'Contoh Topik Laporan 29', 'Pengaduan29', 'Perangkat Daerah 29', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(43, '2021-09-16', 'Nama Pelapor 30', 'Contoh Topik Laporan 30', 'Pengaduan30', 'Perangkat Daerah 30', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(44, '2021-09-15', 'Nama Pelapor 31', 'Contoh Topik Laporan 31', 'Pengaduan31', 'Perangkat Daerah 31', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(45, '2021-09-13', 'Nama Pelapor 32', 'Contoh Topik Laporan 32', 'Pengaduan32', 'Perangkat Daerah 32', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(46, '2021-09-16', 'Nama Pelapor 33', 'Contoh Topik Laporan 33', 'Pengaduan33', 'Perangkat Daerah 33', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(47, '2021-09-15', 'Nama Pelapor 34', 'Contoh Topik Laporan 34', 'Pengaduan34', 'Perangkat Daerah 34', 1, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(48, '2021-09-16', 'Nama Pelapor 35', 'Contoh Topik Laporan 35', 'Pengaduan35', 'Perangkat Daerah 35', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(49, '2021-09-19', 'Nama Pelapor 36', 'Contoh Topik Laporan 36', 'Pengaduan36', 'Perangkat Daerah 36', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(50, '2021-09-14', 'Nama Pelapor 37', 'Contoh Topik Laporan 37', 'Pengaduan37', 'Perangkat Daerah 37', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(51, '2021-09-18', 'Nama Pelapor 38', 'Contoh Topik Laporan 38', 'Pengaduan38', 'Perangkat Daerah 38', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(52, '2021-09-14', 'Nama Pelapor 39', 'Contoh Topik Laporan 39', 'Pengaduan39', 'Perangkat Daerah 39', 1, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(53, '2021-09-17', 'Nama Pelapor 40', 'Contoh Topik Laporan 40', 'Pengaduan40', 'Perangkat Daerah 40', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(54, '2021-09-13', 'Nama Pelapor 41', 'Contoh Topik Laporan 41', 'Pengaduan41', 'Perangkat Daerah 41', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(55, '2021-09-13', 'Nama Pelapor 42', 'Contoh Topik Laporan 42', 'Pengaduan42', 'Perangkat Daerah 42', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(56, '2021-09-13', 'Nama Pelapor 43', 'Contoh Topik Laporan 43', 'Pengaduan43', 'Perangkat Daerah 43', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(57, '2021-09-15', 'Nama Pelapor 44', 'Contoh Topik Laporan 44', 'Pengaduan44', 'Perangkat Daerah 44', 1, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(58, '2021-09-16', 'Nama Pelapor 45', 'Contoh Topik Laporan 45', 'Pengaduan45', 'Perangkat Daerah 45', 1, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(59, '2021-09-18', 'Nama Pelapor 46', 'Contoh Topik Laporan 46', 'Pengaduan46', 'Perangkat Daerah 46', 1, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(60, '2021-09-19', 'Nama Pelapor 47', 'Contoh Topik Laporan 47', 'Pengaduan47', 'Perangkat Daerah 47', 1, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(61, '2021-09-13', 'Nama Pelapor 48', 'Contoh Topik Laporan 48', 'Pengaduan48', 'Perangkat Daerah 48', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(62, '2021-09-16', 'Nama Pelapor 49', 'Contoh Topik Laporan 49', 'Pengaduan49', 'Perangkat Daerah 49', 1, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(63, '2021-09-20', 'Nama Pelapor 50', 'Contoh Topik Laporan 50', 'Pengaduan50', 'Perangkat Daerah 50', 2, '2021-09-20 01:13:26', '2021-09-20 01:13:26'),
(64, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:32', '2021-09-20 01:16:32'),
(65, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:32', '2021-09-20 01:16:32'),
(66, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:32', '2021-09-20 01:16:32'),
(67, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:32', '2021-09-20 01:16:32'),
(68, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:32', '2021-09-20 01:16:32'),
(69, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:32', '2021-09-20 01:16:32'),
(70, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:32', '2021-09-20 01:16:32'),
(71, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:32', '2021-09-20 01:16:32'),
(72, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:32', '2021-09-20 01:16:32'),
(73, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:32', '2021-09-20 01:16:32'),
(74, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(75, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(76, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(77, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(78, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(79, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(80, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(81, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(82, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(83, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(84, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(85, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(86, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(87, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(88, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(89, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(90, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(91, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(92, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(93, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(94, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(95, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(96, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(97, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(98, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(99, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(100, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(101, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:33', '2021-09-20 01:16:33'),
(102, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(103, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(104, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(105, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(106, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(107, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(108, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(109, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(110, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(111, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(112, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(113, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(114, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(115, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(116, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(117, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(118, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(119, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(120, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(121, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(122, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(123, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(124, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(125, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:34', '2021-09-20 01:16:34'),
(126, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:35', '2021-09-20 01:16:35'),
(127, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:35', '2021-09-20 01:16:35'),
(128, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:35', '2021-09-20 01:16:35'),
(129, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:35', '2021-09-20 01:16:35'),
(130, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:35', '2021-09-20 01:16:35'),
(131, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:35', '2021-09-20 01:16:35'),
(132, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:35', '2021-09-20 01:16:35'),
(133, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:35', '2021-09-20 01:16:35'),
(134, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:35', '2021-09-20 01:16:35'),
(135, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(136, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(137, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(138, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(139, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(140, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(141, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(142, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(143, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(144, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(145, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(146, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(147, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(148, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(149, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(150, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(151, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(152, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(153, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(154, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:36', '2021-09-20 01:16:36'),
(155, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:37', '2021-09-20 01:16:37'),
(156, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:37', '2021-09-20 01:16:37'),
(157, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:37', '2021-09-20 01:16:37'),
(158, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:37', '2021-09-20 01:16:37'),
(159, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:37', '2021-09-20 01:16:37'),
(160, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:37', '2021-09-20 01:16:37'),
(161, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:37', '2021-09-20 01:16:37'),
(162, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:16:37', '2021-09-20 01:16:37'),
(163, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:16:37', '2021-09-20 01:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_pengaduan_pro`
--

CREATE TABLE `layanan_pengaduan_pro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pelapor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan_pengaduan_pro`
--

INSERT INTO `layanan_pengaduan_pro` (`id`, `tanggal`, `nama_pelapor`, `topik`, `kategori`, `nama_pd`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(2, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(3, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(4, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(5, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(6, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(7, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(8, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(9, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(10, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(11, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(12, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(13, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:45', '2021-09-20 01:20:45'),
(14, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(15, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(16, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(17, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(18, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(19, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(20, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(21, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(22, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(23, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(24, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(25, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(26, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(27, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(28, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(29, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(30, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(31, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(32, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:46', '2021-09-20 01:20:46'),
(33, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(34, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(35, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(36, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(37, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(38, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(39, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(40, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(41, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(42, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(43, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(44, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(45, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(46, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(47, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(48, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(49, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(50, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(51, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(52, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(53, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(54, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(55, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(56, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(57, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(58, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(59, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(60, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:47', '2021-09-20 01:20:47'),
(61, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(62, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(63, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(64, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(65, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(66, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(67, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(68, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(69, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(70, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(71, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(72, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(73, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(74, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(75, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(76, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(77, '2021-09-17', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(78, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(79, '2021-09-18', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(80, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(81, '2021-09-13', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(82, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(83, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(84, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:48', '2021-09-20 01:20:48'),
(85, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(86, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(87, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(88, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(89, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(90, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(91, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(92, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(93, '2021-09-19', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(94, '2021-09-16', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(95, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(96, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 3', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(97, '2021-09-20', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 5', 'Perangkat Daerah Dummy', 2, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(98, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 1', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(99, '2021-09-15', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 2', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49'),
(100, '2021-09-14', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Pengaduan 4', 'Perangkat Daerah Dummy', 1, '2021-09-20 01:20:49', '2021-09-20 01:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_pinjam_ruangan`
--

CREATE TABLE `layanan_pinjam_ruangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `peminjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan_pinjam_ruangan`
--

INSERT INTO `layanan_pinjam_ruangan` (`id`, `tanggal`, `jam_mulai`, `jam_selesai`, `peminjam`, `keterangan`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '2021-09-11', '11:38:00', '13:38:00', 'Tuarie', 'Review website Damamaya', 1, '2021-09-09 00:38:33', '2021-09-09 00:38:33'),
(2, '2021-09-15', '09:10:00', '12:10:00', 'Tuarie', 'Rapat Penting', 1, '2021-09-09 11:12:18', '2021-09-09 11:12:18'),
(3, '2021-09-11', '13:33:00', '16:33:00', 'Bidang TIK', 'Keteranga rapat', 1, '2021-09-10 00:35:07', '2021-09-10 00:35:07'),
(4, '2021-09-13', '10:00:00', '12:00:00', 'Tuarie', 'Pinjam Ruangan', 1, '2021-09-12 07:34:09', '2021-09-12 07:34:09'),
(5, '2021-09-13', '12:00:00', '14:00:00', 'Tuarie', 'Keterangan', 1, '2021-09-13 03:19:42', '2021-09-13 03:19:42'),
(6, '2021-09-16', '10:00:00', '13:00:00', 'Bidang TIK', 'Rapat Penting', 1, '2021-09-14 00:31:49', '2021-09-14 00:31:49'),
(7, '2021-09-17', '10:00:00', '13:00:00', 'Bidang PIP', 'Rapat Penting Sekali', 1, '2021-09-14 04:57:47', '2021-09-14 04:57:47'),
(8, '2021-09-13', '15:00:00', '16:00:00', 'Bidang TIK', 'Rapat Cukup Penting', 1, '2021-09-14 04:59:13', '2021-09-14 04:59:13'),
(9, '2021-09-14', '12:42:00', '13:42:00', 'Tuarie', 'Penting', 1, '2021-09-14 05:41:00', '2021-09-14 05:41:00'),
(10, '2021-09-15', '14:00:00', '15:00:00', 'Bidang TIK', 'Rapat Penting Banget', 1, '2021-09-14 06:08:53', '2021-09-14 06:08:53'),
(11, '2021-09-14', '14:00:00', '15:00:00', 'Bidang PKP', 'Rapat Penting', 1, '2021-09-14 06:18:35', '2021-09-14 06:18:35'),
(12, '2021-09-14', '09:00:00', '10:00:00', 'Bidang TIK', 'Rapat Penting TIK', 1, '2021-09-14 06:35:47', '2021-09-14 06:35:47'),
(13, '2021-09-20', '10:00:00', '13:00:00', 'Bidang TIK', 'Rapat Pentingg', 1, '2021-09-17 00:36:54', '2021-09-17 00:36:54'),
(14, '2021-09-22', '11:00:00', '13:00:00', 'Bidang PIP', 'Rapat Penting', 2, '2021-09-20 02:12:30', '2021-09-20 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_tindak_lanjut`
--

CREATE TABLE `layanan_tindak_lanjut` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_keamanan` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response_time` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan_tindak_lanjut`
--

INSERT INTO `layanan_tindak_lanjut` (`id`, `id_keamanan`, `tanggal`, `jam`, `keterangan`, `capture`, `response_time`, `id_user`, `created_at`, `updated_at`) VALUES
(25, 26, '2021-08-29', '14:37:14', 'dfdsfsdfsd Baru', '1630317815_screenshot (363).png', 0, 1, '2021-08-30 07:37:47', '2021-08-30 10:03:36');

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
(3, '2021_07_22_001614_create_pengaduan_pro_table', 1),
(4, '2021_07_22_022310_create_pengaduan_anggaran_table', 1),
(5, '2021_07_22_090754_create_kategori_table', 1),
(6, '2021_07_22_091811_create_instansi_table', 1),
(7, '2021_07_24_010510_create_informasi_table', 1),
(8, '2021_07_24_143944_create_analisa_media_table', 1),
(10, '2021_07_26_010800_create_konten_subdomain_table', 1),
(11, '2021_08_13_003906_create_kategori_pengaduan_table', 1),
(12, '2021_08_13_004043_create_kategori_analisa_table', 1),
(13, '2021_07_24_230031_create_layanan_keamanan_informasi_table', 2),
(14, '2021_08_20_104848_create_layanan_tindak_lanjut_table', 3),
(16, '2021_09_07_133637_create_pinjam_ruangan_table', 4);

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
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `gender`, `role_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Arie Setiadi', 'admin@gmail.com', 'l', 1, '$2y$10$TaTNQ3y4rm6QfjLwvgs2SeJR9Dc.MWCpX8cJ8a6CLivLM0PKYELl6', 'vwrfvNu84U52CKJCNbdm6lDeCMU46zwCVuR0Jzg19S7Tm4fkgaqUsHMwMyjm', '2021-07-19 13:37:47', '2021-07-21 08:30:33'),
(2, 'petugas', 'Putri Ayu', 'petugas@gmail.com', 'p', 2, '$2y$10$u7hNiHReevwor5Kv6t1BQO1/XXnEw/egFr.gjo.MaV9Vu1qzw2icG', 'SGnpaIbYCVobmniCZtSHkAsXwKBcM0LUZirXGEdjvFJMSnfmqvGaQzHOQa6E', '2021-07-19 13:37:47', '2021-07-21 19:02:24'),
(3, 'bidang', 'Adi Suyasa', 'bidang@gmail.com', 'l', 3, '$2y$10$lTIwQ7hxJTvOg.lRkvM4Jes.5zBYt8WU3cq0U8d/LBm2KvUK7dXli', '', '2021-07-19 13:37:47', '2021-07-21 19:07:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_analisa`
--
ALTER TABLE `kategori_analisa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_pengaduan`
--
ALTER TABLE `kategori_pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_analisa_media`
--
ALTER TABLE `layanan_analisa_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_informasi`
--
ALTER TABLE `layanan_informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_keamanan_informasi`
--
ALTER TABLE `layanan_keamanan_informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_konten_subdomain`
--
ALTER TABLE `layanan_konten_subdomain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_pengaduan_anggaran`
--
ALTER TABLE `layanan_pengaduan_anggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_pengaduan_pro`
--
ALTER TABLE `layanan_pengaduan_pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_pinjam_ruangan`
--
ALTER TABLE `layanan_pinjam_ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_tindak_lanjut`
--
ALTER TABLE `layanan_tindak_lanjut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_analisa`
--
ALTER TABLE `kategori_analisa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori_pengaduan`
--
ALTER TABLE `kategori_pengaduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `layanan_analisa_media`
--
ALTER TABLE `layanan_analisa_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `layanan_informasi`
--
ALTER TABLE `layanan_informasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `layanan_keamanan_informasi`
--
ALTER TABLE `layanan_keamanan_informasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `layanan_konten_subdomain`
--
ALTER TABLE `layanan_konten_subdomain`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `layanan_pengaduan_anggaran`
--
ALTER TABLE `layanan_pengaduan_anggaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `layanan_pengaduan_pro`
--
ALTER TABLE `layanan_pengaduan_pro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `layanan_pinjam_ruangan`
--
ALTER TABLE `layanan_pinjam_ruangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `layanan_tindak_lanjut`
--
ALTER TABLE `layanan_tindak_lanjut`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
