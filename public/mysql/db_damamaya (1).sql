-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 05:23 PM
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
(1, 'Wistle Blowing', NULL, NULL),
(2, 'Konseling Covid 19', NULL, NULL),
(3, 'Covid 19', NULL, NULL),
(4, 'Layanan Publik', NULL, NULL),
(5, 'Lingkungan', NULL, NULL),
(6, 'Infrastruktur', NULL, NULL),
(7, 'Lalu Lintas', NULL, NULL),
(8, 'Sosial & Tenaga Kerja', NULL, NULL),
(9, 'Klinik Pengelolaan Keuangan Daerah', NULL, NULL),
(10, 'Lain - lain', NULL, NULL);

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
(100, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-20 01:28:18', '2021-09-20 01:28:18'),
(101, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(102, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(103, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(104, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(105, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(106, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(107, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(108, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(109, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(110, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(111, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(112, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(113, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(114, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:14', '2021-09-24 00:38:14'),
(115, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(116, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(117, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(118, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(119, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(120, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(121, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(122, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(123, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(124, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(125, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(126, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(127, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(128, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(129, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(130, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(131, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(132, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(133, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(134, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(135, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-24 00:38:15', '2021-09-24 00:38:15'),
(136, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(137, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(138, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(139, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(140, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(141, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(142, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(143, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(144, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(145, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(146, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(147, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(148, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(149, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(150, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(151, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(152, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(153, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(154, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(155, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(156, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(157, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(158, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-24 00:38:16', '2021-09-24 00:38:16'),
(159, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(160, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(161, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(162, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(163, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(164, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(165, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(166, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(167, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(168, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(169, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(170, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(171, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(172, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(173, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(174, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(175, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(176, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(177, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(178, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(179, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(180, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(181, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(182, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(183, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(184, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-24 00:38:17', '2021-09-24 00:38:17'),
(185, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(186, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(187, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(188, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(189, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(190, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(191, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(192, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(193, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(194, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(195, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(196, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(197, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(198, '2021-09-17', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(199, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(200, '2021-09-18', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-24 00:38:18', '2021-09-24 00:38:18'),
(201, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(202, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(203, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(204, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(205, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(206, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(207, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(208, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(209, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(210, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(211, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(212, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(213, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(214, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(215, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(216, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(217, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(218, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(219, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(220, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(221, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(222, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(223, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(224, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(225, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-26 05:43:43', '2021-09-26 05:43:43'),
(226, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(227, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(228, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(229, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(230, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(231, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(232, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(233, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(234, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(235, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(236, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(237, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(238, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(239, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(240, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(241, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(242, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(243, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(244, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(245, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(246, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(247, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(248, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-26 05:43:44', '2021-09-26 05:43:44'),
(249, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(250, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(251, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(252, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(253, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(254, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(255, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(256, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(257, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(258, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(259, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(260, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(261, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(262, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(263, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(264, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(265, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(266, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(267, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(268, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(269, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(270, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(271, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(272, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(273, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(274, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-26 05:43:45', '2021-09-26 05:43:45'),
(275, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(276, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(277, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(278, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(279, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(280, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(281, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(282, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(283, '2021-09-20', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(284, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(285, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(286, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(287, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(288, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(289, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(290, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(291, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(292, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(293, '2021-09-19', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(294, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(295, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(296, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-26 05:43:46', '2021-09-26 05:43:46'),
(297, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-26 05:43:47', '2021-09-26 05:43:47'),
(298, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:47', '2021-09-26 05:43:47'),
(299, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-26 05:43:47', '2021-09-26 05:43:47'),
(300, '2021-09-21', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-26 05:43:47', '2021-09-26 05:43:47'),
(301, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-29 14:58:44', '2021-09-29 14:58:44'),
(302, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:44', '2021-09-29 14:58:44'),
(303, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(304, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(305, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(306, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(307, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(308, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(309, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(310, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(311, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(312, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(313, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(314, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(315, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(316, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(317, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(318, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(319, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(320, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(321, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(322, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(323, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(324, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(325, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(326, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(327, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(328, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:45', '2021-09-29 14:58:45'),
(329, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(330, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(331, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(332, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(333, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(334, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(335, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(336, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(337, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(338, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(339, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(340, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(341, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(342, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(343, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(344, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(345, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(346, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(347, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(348, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(349, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(350, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(351, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(352, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(353, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(354, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:46', '2021-09-29 14:58:46'),
(355, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(356, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(357, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(358, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(359, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(360, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(361, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(362, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(363, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(364, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(365, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(366, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(367, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(368, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(369, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(370, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(371, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(372, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(373, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(374, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(375, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(376, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(377, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(378, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(379, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(380, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(381, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(382, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-29 14:58:47', '2021-09-29 14:58:47'),
(383, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(384, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(385, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(386, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(387, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(388, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(389, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(390, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(391, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(392, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(393, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(394, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(395, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(396, '2021-09-24', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:48', '2021-09-29 14:58:48');
INSERT INTO `layanan_analisa_media` (`id`, `tanggal`, `issue_lokal`, `issue_nasional`, `kategori`, `id_user`, `created_at`, `updated_at`) VALUES
(397, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(398, '2021-09-22', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(399, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(400, '2021-09-23', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-09-29 14:58:48', '2021-09-29 14:58:48'),
(401, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(402, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(403, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(404, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(405, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(406, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(407, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(408, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(409, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(410, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(411, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(412, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(413, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(414, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(415, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(416, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(417, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(418, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(419, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(420, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(421, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(422, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(423, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:38', '2021-10-01 23:05:38'),
(424, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(425, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(426, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(427, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(428, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(429, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(430, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(431, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(432, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(433, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(434, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(435, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(436, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(437, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(438, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(439, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(440, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(441, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(442, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(443, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(444, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(445, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-01 23:05:39', '2021-10-01 23:05:39'),
(446, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(447, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(448, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(449, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(450, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(451, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(452, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(453, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(454, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(455, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(456, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(457, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(458, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(459, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(460, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(461, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(462, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(463, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-01 23:05:40', '2021-10-01 23:05:40'),
(464, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(465, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(466, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(467, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(468, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(469, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(470, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(471, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(472, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(473, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(474, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(475, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(476, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(477, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(478, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(479, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(480, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(481, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(482, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:41', '2021-10-01 23:05:41'),
(483, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(484, '2021-09-25', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(485, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(486, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(487, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(488, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(489, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(490, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(491, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(492, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(493, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(494, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(495, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(496, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(497, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(498, '2021-09-26', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(499, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(500, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-01 23:05:42', '2021-10-01 23:05:42'),
(501, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:06', '2021-10-04 01:07:06'),
(502, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(503, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(504, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(505, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(506, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(507, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(508, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(509, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(510, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(511, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(512, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(513, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(514, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(515, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(516, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-04 01:07:07', '2021-10-04 01:07:07'),
(517, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(518, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(519, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(520, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(521, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(522, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(523, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(524, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(525, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(526, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(527, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(528, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(529, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(530, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(531, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(532, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(533, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(534, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(535, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(536, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:08', '2021-10-04 01:07:08'),
(537, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(538, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(539, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(540, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(541, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(542, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(543, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(544, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(545, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(546, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(547, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(548, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(549, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(550, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(551, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(552, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(553, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(554, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(555, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(556, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:09', '2021-10-04 01:07:09'),
(557, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(558, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(559, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(560, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(561, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(562, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(563, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(564, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(565, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(566, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(567, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(568, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(569, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(570, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(571, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(572, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(573, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(574, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(575, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:10', '2021-10-04 01:07:10'),
(576, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(577, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 1, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(578, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(579, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(580, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(581, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(582, '2021-09-28', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(583, '2021-09-27', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(584, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 1, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(585, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(586, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(587, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(588, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(589, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(590, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-04 01:07:11', '2021-10-04 01:07:11'),
(591, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:12', '2021-10-04 01:07:12'),
(592, '2021-10-03', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 5', 2, '2021-10-04 01:07:12', '2021-10-04 01:07:12'),
(593, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 1', 2, '2021-10-04 01:07:12', '2021-10-04 01:07:12'),
(594, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 2, '2021-10-04 01:07:12', '2021-10-04 01:07:12'),
(595, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 2, '2021-10-04 01:07:12', '2021-10-04 01:07:12'),
(596, '2021-10-02', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:12', '2021-10-04 01:07:12'),
(597, '2021-10-01', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 2, '2021-10-04 01:07:12', '2021-10-04 01:07:12'),
(598, '2021-09-29', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 2', 1, '2021-10-04 01:07:12', '2021-10-04 01:07:12'),
(599, '2021-09-30', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 4', 1, '2021-10-04 01:07:12', '2021-10-04 01:07:12'),
(600, '2021-10-04', 'Issue Lokal Dummy', 'Issue Nasional Dummy', 'Analisa 3', 1, '2021-10-04 01:07:12', '2021-10-04 01:07:12'),
(601, '2021-10-04', 'Test Issue Lokal', 'Test Issue Nasional', 'Analisa 3', 1, '2021-10-04 01:44:09', '2021-10-04 01:44:09');

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
(102, 'Badan Pengelola Keuangan dan Aset Daerah', 2019, 1, '2021-09-20 01:51:39', '2021-09-20 01:51:39'),
(103, 'Seluruh Perangkat Daerah', 2021, 1, '2021-10-04 02:03:41', '2021-10-04 02:03:41');

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
(26, '2021-08-30', '11:11:15', 'http://127.0.0.1:8000/keamanan-informasi/create', 'Deface', 'Keterangan Laporan', '1630293108_screenshot (365).png', 1, 0, '2021-08-30 03:11:49', '2021-10-05 15:07:06'),
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
(236, '2021-09-16', '07:54:08', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-20 02:54:12', '2021-09-20 02:54:12'),
(237, '2021-09-22', '05:37:40', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:40', '2021-09-24 00:37:40'),
(238, '2021-09-20', '08:37:40', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:40', '2021-09-24 00:37:40'),
(239, '2021-09-18', '10:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:40', '2021-09-24 00:37:40'),
(240, '2021-09-19', '03:37:40', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:40', '2021-09-24 00:37:40'),
(241, '2021-09-22', '09:37:40', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:40', '2021-09-24 00:37:40'),
(242, '2021-09-18', '10:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:40', '2021-09-24 00:37:40'),
(243, '2021-09-19', '01:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:40', '2021-09-24 00:37:40'),
(244, '2021-09-23', '05:37:40', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:40', '2021-09-24 00:37:40'),
(245, '2021-09-18', '15:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:40', '2021-09-24 00:37:40'),
(246, '2021-09-18', '09:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:40', '2021-09-24 00:37:40'),
(247, '2021-09-23', '14:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(248, '2021-09-18', '02:37:40', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(249, '2021-09-19', '14:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(250, '2021-09-20', '09:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(251, '2021-09-24', '06:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(252, '2021-09-19', '12:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(253, '2021-09-24', '04:37:40', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(254, '2021-09-18', '02:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(255, '2021-09-20', '10:37:40', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(256, '2021-09-18', '08:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(257, '2021-09-24', '01:37:40', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(258, '2021-09-20', '13:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(259, '2021-09-18', '07:37:40', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(260, '2021-09-19', '02:37:40', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(261, '2021-09-19', '08:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(262, '2021-09-22', '06:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(263, '2021-09-18', '06:37:40', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(264, '2021-09-21', '01:37:40', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(265, '2021-09-24', '06:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(266, '2021-09-22', '10:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(267, '2021-09-17', '04:37:40', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(268, '2021-09-24', '05:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(269, '2021-09-18', '02:37:40', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(270, '2021-09-21', '11:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(271, '2021-09-24', '03:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(272, '2021-09-21', '06:37:40', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(273, '2021-09-20', '12:37:40', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(274, '2021-09-17', '09:37:40', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:41', '2021-09-24 00:37:41'),
(275, '2021-09-19', '14:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(276, '2021-09-20', '05:37:40', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(277, '2021-09-21', '12:37:40', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(278, '2021-09-17', '08:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(279, '2021-09-17', '02:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(280, '2021-09-23', '14:37:40', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(281, '2021-09-19', '03:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(282, '2021-09-19', '06:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(283, '2021-09-17', '13:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(284, '2021-09-24', '02:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(285, '2021-09-17', '04:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(286, '2021-09-19', '01:37:40', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(287, '2021-09-21', '02:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(288, '2021-09-18', '09:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(289, '2021-09-21', '04:37:40', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(290, '2021-09-23', '08:37:40', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(291, '2021-09-17', '13:37:40', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(292, '2021-09-19', '12:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(293, '2021-09-21', '04:37:40', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(294, '2021-09-24', '12:37:40', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(295, '2021-09-21', '05:37:40', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(296, '2021-09-18', '02:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(297, '2021-09-24', '04:37:40', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(298, '2021-09-17', '09:37:40', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(299, '2021-09-19', '08:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(300, '2021-09-24', '11:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(301, '2021-09-23', '08:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(302, '2021-09-19', '11:37:40', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:42', '2021-09-24 00:37:42'),
(303, '2021-09-23', '03:37:40', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(304, '2021-09-22', '08:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(305, '2021-09-23', '09:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(306, '2021-09-17', '06:37:40', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(307, '2021-09-23', '15:37:40', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(308, '2021-09-17', '15:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(309, '2021-09-19', '04:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(310, '2021-09-23', '06:37:40', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(311, '2021-09-20', '12:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(312, '2021-09-18', '07:37:40', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(313, '2021-09-24', '06:37:40', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(314, '2021-09-21', '11:37:40', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(315, '2021-09-18', '07:37:40', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(316, '2021-09-22', '09:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(317, '2021-09-21', '14:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(318, '2021-09-19', '02:37:40', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(319, '2021-09-24', '04:37:40', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(320, '2021-09-24', '05:37:40', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(321, '2021-09-23', '12:37:40', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(322, '2021-09-24', '04:37:40', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(323, '2021-09-18', '09:37:40', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(324, '2021-09-17', '14:37:40', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(325, '2021-09-18', '09:37:40', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(326, '2021-09-21', '12:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(327, '2021-09-23', '07:37:40', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(328, '2021-09-22', '05:37:40', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:43', '2021-09-24 00:37:43'),
(329, '2021-09-22', '10:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:44', '2021-09-24 00:37:44'),
(330, '2021-09-20', '14:37:40', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:44', '2021-09-24 00:37:44'),
(331, '2021-09-23', '02:37:40', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:44', '2021-09-24 00:37:44'),
(332, '2021-09-21', '03:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-24 00:37:44', '2021-09-24 00:37:44'),
(333, '2021-09-17', '02:37:40', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:44', '2021-09-24 00:37:44'),
(334, '2021-09-20', '04:37:40', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:44', '2021-09-24 00:37:44'),
(335, '2021-09-24', '06:37:40', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:44', '2021-09-24 00:37:44'),
(336, '2021-09-17', '11:37:40', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-24 00:37:44', '2021-09-24 00:37:44'),
(337, '2021-09-26', '18:43:59', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(338, '2021-09-24', '14:43:59', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(339, '2021-09-25', '14:43:59', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(340, '2021-09-24', '06:43:59', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(341, '2021-09-26', '17:43:59', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(342, '2021-09-21', '12:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(343, '2021-09-26', '16:43:59', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(344, '2021-09-25', '15:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(345, '2021-09-24', '15:43:59', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(346, '2021-09-24', '14:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(347, '2021-09-20', '18:43:59', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(348, '2021-09-26', '09:43:59', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(349, '2021-09-25', '10:43:59', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(350, '2021-09-19', '19:43:59', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(351, '2021-09-24', '07:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(352, '2021-09-23', '14:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(353, '2021-09-25', '09:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(354, '2021-09-26', '09:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:43:59', '2021-09-26 05:43:59'),
(355, '2021-09-26', '14:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(356, '2021-09-20', '13:43:59', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(357, '2021-09-25', '11:43:59', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(358, '2021-09-21', '20:43:59', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(359, '2021-09-20', '15:43:59', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(360, '2021-09-22', '07:43:59', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(361, '2021-09-21', '10:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(362, '2021-09-25', '14:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(363, '2021-09-26', '12:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(364, '2021-09-22', '17:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(365, '2021-09-19', '18:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(366, '2021-09-22', '18:43:59', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(367, '2021-09-21', '15:43:59', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(368, '2021-09-22', '11:43:59', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(369, '2021-09-24', '15:43:59', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(370, '2021-09-25', '20:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(371, '2021-09-25', '15:43:59', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(372, '2021-09-26', '09:43:59', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:00', '2021-09-26 05:44:00'),
(373, '2021-09-25', '13:43:59', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(374, '2021-09-26', '11:43:59', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(375, '2021-09-20', '16:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(376, '2021-09-21', '19:43:59', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(377, '2021-09-21', '08:43:59', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(378, '2021-09-19', '15:43:59', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(379, '2021-09-20', '13:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(380, '2021-09-19', '11:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(381, '2021-09-21', '19:43:59', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(382, '2021-09-26', '15:43:59', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(383, '2021-09-20', '14:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(384, '2021-09-22', '10:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(385, '2021-09-19', '08:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(386, '2021-09-26', '16:43:59', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(387, '2021-09-26', '14:43:59', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(388, '2021-09-25', '07:43:59', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(389, '2021-09-21', '10:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(390, '2021-09-20', '15:43:59', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(391, '2021-09-26', '13:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(392, '2021-09-22', '10:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(393, '2021-09-19', '15:43:59', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(394, '2021-09-25', '12:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:01', '2021-09-26 05:44:01'),
(395, '2021-09-23', '12:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(396, '2021-09-21', '06:43:59', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(397, '2021-09-21', '16:43:59', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02');
INSERT INTO `layanan_keamanan_informasi` (`id`, `tanggal`, `jam`, `link_website`, `status_website`, `keterangan`, `capture`, `id_user`, `is_tindak_lanjut`, `created_at`, `updated_at`) VALUES
(398, '2021-09-23', '12:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(399, '2021-09-26', '16:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(400, '2021-09-19', '16:43:59', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(401, '2021-09-21', '19:43:59', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(402, '2021-09-26', '08:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(403, '2021-09-26', '09:43:59', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(404, '2021-09-24', '16:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(405, '2021-09-23', '12:43:59', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(406, '2021-09-24', '13:43:59', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(407, '2021-09-24', '12:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(408, '2021-09-19', '11:43:59', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(409, '2021-09-24', '08:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(410, '2021-09-22', '18:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(411, '2021-09-22', '19:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(412, '2021-09-22', '07:43:59', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(413, '2021-09-21', '20:43:59', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(414, '2021-09-22', '20:43:59', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(415, '2021-09-22', '06:43:59', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(416, '2021-09-22', '10:43:59', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:02', '2021-09-26 05:44:02'),
(417, '2021-09-25', '18:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(418, '2021-09-24', '17:43:59', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(419, '2021-09-22', '11:43:59', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(420, '2021-09-22', '11:43:59', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(421, '2021-09-19', '13:43:59', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(422, '2021-09-21', '09:43:59', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(423, '2021-09-21', '09:43:59', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(424, '2021-09-19', '20:43:59', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(425, '2021-09-21', '19:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(426, '2021-09-24', '13:43:59', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(427, '2021-09-25', '19:43:59', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(428, '2021-09-23', '08:43:59', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(429, '2021-09-25', '07:43:59', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(430, '2021-09-21', '11:43:59', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(431, '2021-09-23', '11:43:59', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(432, '2021-09-24', '19:43:59', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(433, '2021-09-22', '11:43:59', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:03', '2021-09-26 05:44:03'),
(434, '2021-09-25', '17:43:59', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-26 05:44:04', '2021-09-26 05:44:04'),
(435, '2021-09-23', '13:43:59', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:04', '2021-09-26 05:44:04'),
(436, '2021-09-26', '11:43:59', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-26 05:44:04', '2021-09-26 05:44:04'),
(437, '2021-09-29', '15:59:00', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(438, '2021-09-23', '05:59:00', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(439, '2021-09-29', '15:59:00', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(440, '2021-09-28', '20:59:00', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(441, '2021-09-27', '20:59:00', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(442, '2021-09-24', '05:59:00', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(443, '2021-09-27', '15:59:00', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(444, '2021-09-23', '02:59:00', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(445, '2021-09-28', '03:59:00', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(446, '2021-09-27', '18:59:00', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(447, '2021-09-23', '03:59:00', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(448, '2021-09-28', '04:59:00', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(449, '2021-09-22', '20:59:00', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(450, '2021-09-24', '16:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(451, '2021-09-29', '02:59:00', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(452, '2021-09-23', '16:59:00', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:00', '2021-09-29 14:59:00'),
(453, '2021-09-23', '04:59:00', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(454, '2021-09-24', '16:59:00', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(455, '2021-09-24', '18:59:00', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(456, '2021-09-25', '01:59:00', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(457, '2021-09-27', '20:59:00', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(458, '2021-09-26', '00:59:00', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(459, '2021-09-24', '19:59:00', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(460, '2021-09-28', '19:59:00', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(461, '2021-09-25', '16:59:00', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(462, '2021-09-23', '19:59:00', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(463, '2021-09-29', '22:59:00', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(464, '2021-09-22', '02:59:00', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(465, '2021-09-24', '03:59:00', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(466, '2021-09-28', '18:59:00', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(467, '2021-09-26', '00:59:00', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(468, '2021-09-22', '02:59:00', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(469, '2021-09-26', '00:59:00', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(470, '2021-09-22', '17:59:00', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(471, '2021-09-26', '19:59:00', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(472, '2021-09-28', '21:59:00', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(473, '2021-09-26', '00:59:00', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(474, '2021-09-26', '18:59:00', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:01', '2021-09-29 14:59:01'),
(475, '2021-09-24', '05:59:00', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(476, '2021-09-24', '16:59:00', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(477, '2021-09-22', '05:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(478, '2021-09-28', '21:59:00', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(479, '2021-09-22', '00:59:00', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(480, '2021-09-22', '23:59:00', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(481, '2021-09-23', '17:59:00', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(482, '2021-09-27', '21:59:00', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(483, '2021-09-24', '19:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(484, '2021-09-25', '05:59:00', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(485, '2021-09-25', '21:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(486, '2021-09-24', '17:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(487, '2021-09-27', '23:59:00', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(488, '2021-09-27', '04:59:00', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(489, '2021-09-23', '01:59:00', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(490, '2021-09-25', '17:59:00', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(491, '2021-09-22', '00:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(492, '2021-09-22', '20:59:00', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(493, '2021-09-24', '15:59:00', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(494, '2021-09-28', '00:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(495, '2021-09-27', '23:59:00', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(496, '2021-09-28', '22:59:00', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(497, '2021-09-26', '03:59:00', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(498, '2021-09-24', '22:59:00', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(499, '2021-09-22', '00:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:02', '2021-09-29 14:59:02'),
(500, '2021-09-24', '04:59:00', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(501, '2021-09-27', '16:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(502, '2021-09-26', '16:59:00', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(503, '2021-09-23', '18:59:00', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(504, '2021-09-24', '17:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(505, '2021-09-28', '15:59:00', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(506, '2021-09-26', '15:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(507, '2021-09-22', '20:59:00', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(508, '2021-09-25', '15:59:00', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(509, '2021-09-25', '18:59:00', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(510, '2021-09-27', '01:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(511, '2021-09-29', '15:59:00', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(512, '2021-09-25', '21:59:00', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(513, '2021-09-25', '03:59:00', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(514, '2021-09-26', '16:59:00', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(515, '2021-09-28', '21:59:00', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(516, '2021-09-26', '21:59:00', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(517, '2021-09-25', '15:59:00', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(518, '2021-09-29', '22:59:00', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(519, '2021-09-28', '04:59:00', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(520, '2021-09-25', '04:59:00', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(521, '2021-09-29', '00:59:00', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:03', '2021-09-29 14:59:03'),
(522, '2021-09-25', '02:59:00', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(523, '2021-09-22', '00:59:00', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(524, '2021-09-25', '21:59:00', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(525, '2021-09-22', '16:59:00', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(526, '2021-09-22', '17:59:00', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(527, '2021-09-28', '03:59:00', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(528, '2021-09-25', '21:59:00', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(529, '2021-09-24', '01:59:00', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(530, '2021-09-24', '01:59:00', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(531, '2021-09-28', '03:59:00', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(532, '2021-09-26', '23:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(533, '2021-09-29', '16:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(534, '2021-09-23', '15:59:00', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(535, '2021-09-24', '17:59:00', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(536, '2021-09-27', '17:59:00', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-09-29 14:59:04', '2021-09-29 14:59:04'),
(537, '2021-10-02', '02:05:52', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:52', '2021-10-01 23:05:52'),
(538, '2021-09-28', '08:05:52', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:52', '2021-10-01 23:05:52'),
(539, '2021-09-30', '02:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:52', '2021-10-01 23:05:52'),
(540, '2021-09-28', '08:05:52', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:52', '2021-10-01 23:05:52'),
(541, '2021-09-30', '08:05:52', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:52', '2021-10-01 23:05:52'),
(542, '2021-09-26', '14:05:52', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:52', '2021-10-01 23:05:52'),
(543, '2021-09-28', '13:05:52', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:52', '2021-10-01 23:05:52'),
(544, '2021-09-28', '09:05:52', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:52', '2021-10-01 23:05:52'),
(545, '2021-09-30', '11:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:52', '2021-10-01 23:05:52'),
(546, '2021-10-01', '02:05:52', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:52', '2021-10-01 23:05:52'),
(547, '2021-10-01', '05:05:52', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(548, '2021-09-25', '07:05:52', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(549, '2021-10-02', '08:05:52', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(550, '2021-09-29', '05:05:52', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(551, '2021-09-27', '00:05:52', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(552, '2021-10-02', '10:05:52', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(553, '2021-09-27', '13:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(554, '2021-10-02', '09:05:52', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(555, '2021-09-28', '02:05:52', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(556, '2021-09-26', '07:05:52', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(557, '2021-09-28', '09:05:52', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(558, '2021-10-02', '07:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(559, '2021-09-27', '13:05:52', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(560, '2021-09-29', '02:05:52', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(561, '2021-09-26', '12:05:52', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(562, '2021-09-30', '05:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(563, '2021-09-25', '07:05:52', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(564, '2021-10-01', '07:05:52', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(565, '2021-09-25', '09:05:52', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(566, '2021-10-02', '12:05:52', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(567, '2021-10-02', '04:05:52', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(568, '2021-09-27', '13:05:52', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(569, '2021-09-26', '00:05:52', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(570, '2021-09-26', '00:05:52', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(571, '2021-09-29', '02:05:52', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(572, '2021-09-28', '00:05:52', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:53', '2021-10-01 23:05:53'),
(573, '2021-09-25', '04:05:52', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(574, '2021-09-25', '02:05:52', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(575, '2021-09-28', '14:05:52', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(576, '2021-09-26', '01:05:52', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(577, '2021-09-29', '08:05:52', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(578, '2021-09-26', '05:05:52', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(579, '2021-09-26', '05:05:52', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(580, '2021-09-28', '06:05:52', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(581, '2021-09-29', '10:05:52', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(582, '2021-09-30', '03:05:52', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(583, '2021-10-02', '11:05:52', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(584, '2021-09-28', '03:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(585, '2021-09-26', '08:05:52', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(586, '2021-09-27', '00:05:52', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(587, '2021-09-26', '08:05:52', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(588, '2021-09-27', '09:05:52', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(589, '2021-09-29', '03:05:52', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(590, '2021-09-30', '05:05:52', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(591, '2021-09-28', '06:05:52', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(592, '2021-09-26', '01:05:52', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(593, '2021-10-01', '05:05:52', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(594, '2021-09-26', '00:05:52', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:54', '2021-10-01 23:05:54'),
(595, '2021-09-27', '12:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(596, '2021-09-26', '02:05:52', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(597, '2021-09-26', '09:05:52', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(598, '2021-09-27', '00:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(599, '2021-10-01', '10:05:52', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(600, '2021-09-30', '02:05:52', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(601, '2021-09-28', '07:05:52', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(602, '2021-10-02', '06:05:52', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(603, '2021-09-25', '05:05:52', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(604, '2021-09-29', '00:05:52', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(605, '2021-09-27', '02:05:52', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(606, '2021-09-29', '13:05:52', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(607, '2021-09-29', '13:05:52', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(608, '2021-09-27', '03:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(609, '2021-09-28', '03:05:52', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(610, '2021-10-02', '12:05:52', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(611, '2021-09-26', '09:05:52', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(612, '2021-09-27', '05:05:52', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(613, '2021-10-02', '01:05:52', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(614, '2021-10-02', '06:05:52', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:55', '2021-10-01 23:05:55'),
(615, '2021-09-28', '06:05:52', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(616, '2021-09-29', '10:05:52', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(617, '2021-09-26', '13:05:52', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(618, '2021-10-02', '05:05:52', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(619, '2021-09-29', '05:05:52', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(620, '2021-10-01', '14:05:52', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(621, '2021-09-30', '04:05:52', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(622, '2021-09-28', '00:05:52', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(623, '2021-09-28', '00:05:52', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(624, '2021-09-27', '14:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(625, '2021-09-30', '01:05:52', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(626, '2021-09-30', '11:05:52', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(627, '2021-09-26', '10:05:52', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(628, '2021-09-27', '06:05:52', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(629, '2021-09-30', '13:05:52', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(630, '2021-09-30', '07:05:52', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(631, '2021-09-25', '06:05:52', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(632, '2021-09-30', '12:05:52', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(633, '2021-09-25', '05:05:52', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(634, '2021-09-25', '13:05:52', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(635, '2021-09-29', '05:05:52', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:56', '2021-10-01 23:05:56'),
(636, '2021-10-02', '10:05:52', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-01 23:05:57', '2021-10-01 23:05:57'),
(637, '2021-10-02', '12:07:24', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(638, '2021-10-04', '06:07:25', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(639, '2021-09-30', '11:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(640, '2021-09-30', '10:07:25', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(641, '2021-09-28', '05:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(642, '2021-09-28', '14:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(643, '2021-09-29', '10:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(644, '2021-09-28', '16:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(645, '2021-09-27', '11:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(646, '2021-10-03', '11:07:25', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(647, '2021-10-03', '16:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(648, '2021-10-04', '13:07:25', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(649, '2021-10-02', '08:07:25', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(650, '2021-10-01', '05:07:25', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(651, '2021-09-30', '11:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:25', '2021-10-04 01:07:25'),
(652, '2021-09-29', '05:07:25', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(653, '2021-09-28', '11:07:25', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(654, '2021-10-03', '16:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(655, '2021-09-28', '08:07:25', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(656, '2021-10-02', '13:07:25', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(657, '2021-09-29', '02:07:25', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(658, '2021-10-02', '03:07:25', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(659, '2021-09-30', '15:07:25', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(660, '2021-09-29', '08:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(661, '2021-10-04', '13:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(662, '2021-10-01', '10:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(663, '2021-09-29', '03:07:25', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(664, '2021-10-01', '07:07:25', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(665, '2021-09-28', '06:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(666, '2021-10-01', '06:07:25', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(667, '2021-09-28', '10:07:25', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(668, '2021-09-29', '16:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(669, '2021-09-30', '02:07:25', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(670, '2021-10-02', '16:07:25', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:26', '2021-10-04 01:07:26'),
(671, '2021-09-29', '11:07:25', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(672, '2021-09-27', '15:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(673, '2021-10-02', '07:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(674, '2021-09-29', '08:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(675, '2021-09-27', '06:07:25', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27');
INSERT INTO `layanan_keamanan_informasi` (`id`, `tanggal`, `jam`, `link_website`, `status_website`, `keterangan`, `capture`, `id_user`, `is_tindak_lanjut`, `created_at`, `updated_at`) VALUES
(676, '2021-09-29', '03:07:25', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(677, '2021-09-30', '16:07:25', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(678, '2021-09-28', '15:07:25', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(679, '2021-09-28', '08:07:25', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(680, '2021-10-04', '11:07:25', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(681, '2021-09-27', '15:07:25', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(682, '2021-10-03', '07:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(683, '2021-10-01', '16:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(684, '2021-09-29', '08:07:25', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(685, '2021-10-02', '06:07:25', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(686, '2021-09-28', '03:07:25', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(687, '2021-09-29', '08:07:25', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(688, '2021-10-04', '02:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:27', '2021-10-04 01:07:27'),
(689, '2021-09-30', '06:07:25', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(690, '2021-10-02', '16:07:25', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(691, '2021-10-03', '12:07:25', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(692, '2021-09-30', '10:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(693, '2021-10-02', '11:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(694, '2021-10-03', '03:07:25', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(695, '2021-09-29', '05:07:25', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(696, '2021-09-28', '05:07:25', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(697, '2021-10-01', '07:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(698, '2021-09-30', '04:07:25', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(699, '2021-09-29', '04:07:25', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(700, '2021-10-04', '02:07:25', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(701, '2021-10-03', '16:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(702, '2021-10-03', '07:07:25', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(703, '2021-10-01', '04:07:25', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(704, '2021-09-29', '03:07:25', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(705, '2021-10-04', '03:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(706, '2021-09-29', '10:07:25', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(707, '2021-10-01', '15:07:25', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(708, '2021-10-02', '12:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(709, '2021-10-04', '16:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:28', '2021-10-04 01:07:28'),
(710, '2021-10-02', '05:07:25', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(711, '2021-09-30', '04:07:25', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(712, '2021-09-28', '08:07:25', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(713, '2021-10-03', '04:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(714, '2021-10-04', '15:07:25', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(715, '2021-10-03', '05:07:25', 'https://twitter.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(716, '2021-10-04', '15:07:25', 'https://facebook.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(717, '2021-09-29', '14:07:25', 'https://twitter.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(718, '2021-10-01', '13:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(719, '2021-09-27', '08:07:25', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(720, '2021-09-28', '16:07:25', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(721, '2021-09-30', '11:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(722, '2021-09-29', '16:07:25', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(723, '2021-10-03', '14:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(724, '2021-10-04', '10:07:25', 'https://google.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(725, '2021-09-29', '15:07:25', 'https://google.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(726, '2021-10-01', '02:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(727, '2021-09-30', '12:07:25', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:29', '2021-10-04 01:07:29'),
(728, '2021-10-04', '15:07:25', 'https://instagram.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:30', '2021-10-04 01:07:30'),
(729, '2021-10-04', '14:07:25', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:30', '2021-10-04 01:07:30'),
(730, '2021-10-03', '03:07:25', 'https://instagram.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:30', '2021-10-04 01:07:30'),
(731, '2021-10-03', '04:07:25', 'https://instagram.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:30', '2021-10-04 01:07:30'),
(732, '2021-10-04', '11:07:25', 'https://facebook.com', 'Tidak Bisa Diakses', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:30', '2021-10-04 01:07:30'),
(733, '2021-09-30', '05:07:25', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:30', '2021-10-04 01:07:30'),
(734, '2021-09-29', '09:07:25', 'https://google.com', 'Normal', 'Keterangan Dummy', '1630293952_screenshot (362).png', 1, NULL, '2021-10-04 01:07:30', '2021-10-04 01:07:30'),
(735, '2021-09-27', '05:07:25', 'https://twitter.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, NULL, '2021-10-04 01:07:30', '2021-10-04 01:07:30'),
(736, '2021-10-01', '05:07:25', 'https://facebook.com', 'Deface', 'Keterangan Dummy', '1630293952_screenshot (362).png', 2, 0, '2021-10-04 01:07:30', '2021-10-04 02:54:28'),
(737, '2021-10-04', '10:21:10', 'https://www.google.com/', 'Deface', 'Keterangan Laporan', '1633314148_screenshot (409).png', 1, 1, '2021-10-04 02:22:29', '2021-10-04 02:25:16'),
(738, '2021-10-05', '22:36:57', 'Test', 'Deface', 'Test', '1633444632_tes 4.png', 1, NULL, '2021-10-05 14:37:12', '2021-10-05 14:37:12'),
(739, '2021-10-05', '22:44:03', 'uhuh', 'Deface', 'Test Deface', '1633445064_test 5.png', 1, 0, '2021-10-05 14:44:24', '2021-10-05 15:19:39'),
(740, '2021-10-05', '23:03:08', 'baru', 'Deface', 'Keterangan Baru', '1633446210_screenshot (402).png', 1, 1, '2021-10-05 15:03:30', '2021-10-05 15:04:19'),
(741, '2021-10-05', '23:20:06', 'Testttttttt', 'Tidak Bisa Diakses', 'Keterangan Web', '1633447224_tes 3.png', 1, 1, '2021-10-05 15:20:24', '2021-10-05 15:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_konten_subdomain`
--

CREATE TABLE `layanan_konten_subdomain` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan_konten_subdomain`
--

INSERT INTO `layanan_konten_subdomain` (`id`, `tanggal`, `nama_pd`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '2021-09-29', 'Bagian Administrasi Pembangunan (Asisten II)', 1, '2021-09-29 02:47:42', '2021-09-29 02:47:42'),
(2, '2021-09-29', 'Bagian Pemerintahan', 1, '2021-09-29 04:03:04', '2021-09-29 04:03:04'),
(3, '2021-09-29', 'Bagian Hukum Setda Kota Denpasar', 1, '2021-09-29 09:00:43', '2021-09-29 09:00:43'),
(4, '2021-09-30', 'PDAM Kota Denpasar', 1, '2021-09-30 00:43:06', '2021-09-30 00:43:06'),
(5, '2021-10-01', 'Sekretariat Dinas Komunikasi dan Informatika', 1, '2021-10-01 04:20:08', '2021-10-01 04:20:08'),
(6, '2021-10-01', 'Rumah Sakit Umum Daerah Wangaya', 1, '2021-10-01 04:23:09', '2021-10-01 04:23:09'),
(7, '2021-10-01', 'Bagian Administrasi Pembangunan (Asisten II)', 1, '2021-10-01 04:30:36', '2021-10-01 04:30:36'),
(8, '2021-10-01', 'Bagian Administrasi Pemerintahan (Asisten I)', 1, '2021-10-01 14:58:35', '2021-10-01 14:58:35'),
(9, '2021-10-04', 'Sekretariat Dinas Komunikasi dan Informatika', 1, '2021-10-04 01:47:42', '2021-10-04 01:47:42'),
(10, '2021-10-04', 'PDAM Kota Denpasar', 1, '2021-10-04 01:51:30', '2021-10-04 01:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_konten_subdomain_status`
--

CREATE TABLE `layanan_konten_subdomain_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_konten` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_uptodate` tinyint(1) DEFAULT NULL,
  `tanggal_update` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan_konten_subdomain_status`
--

INSERT INTO `layanan_konten_subdomain_status` (`id`, `id_konten`, `name`, `status`, `is_uptodate`, `tanggal_update`, `created_at`, `updated_at`) VALUES
(1, 1, 'Survey Kepuasan Masyarakat', 1, NULL, '2021-09-03', '2021-09-29 02:47:43', '2021-09-29 02:47:43'),
(2, 1, 'Transparansi Anggaran', 1, NULL, '2021-09-10', '2021-09-29 02:47:43', '2021-09-29 02:47:43'),
(3, 1, 'Foto Kegiatan', 1, NULL, '2021-09-03', '2021-09-29 02:47:43', '2021-09-29 02:47:43'),
(4, 1, 'Berita', 1, NULL, '2021-09-07', '2021-09-29 02:47:43', '2021-09-29 02:47:43'),
(5, 1, 'Struktur Organisasi', 1, 1, NULL, '2021-09-29 02:47:43', '2021-09-29 02:47:43'),
(6, 1, 'Foto Pimpinan', 1, 1, NULL, '2021-09-29 02:47:43', '2021-09-29 02:47:43'),
(7, 1, 'Tupoksi', 1, 1, NULL, '2021-09-29 02:47:43', '2021-09-29 02:47:43'),
(8, 1, 'Agenda', 1, 1, NULL, '2021-09-29 02:47:43', '2021-09-29 02:47:43'),
(9, 2, 'Survey Kepuasan Masyarakat', 1, NULL, '2021-09-08', '2021-09-29 04:03:05', '2021-09-29 04:03:05'),
(10, 2, 'Transparansi Anggaran', 1, NULL, '2021-09-05', '2021-09-29 04:03:05', '2021-09-29 04:03:05'),
(11, 2, 'Foto Kegiatan', 0, NULL, '2021-09-08', '2021-09-29 04:03:05', '2021-09-29 04:03:05'),
(12, 2, 'Berita', 1, NULL, '2021-09-03', '2021-09-29 04:03:05', '2021-09-29 04:03:05'),
(13, 2, 'Struktur Organisasi', 1, 0, NULL, '2021-09-29 04:03:05', '2021-09-29 04:03:05'),
(14, 2, 'Foto Pimpinan', 1, 0, NULL, '2021-09-29 04:03:05', '2021-09-29 04:03:05'),
(15, 2, 'Tupoksi', 1, 0, NULL, '2021-09-29 04:03:05', '2021-09-29 04:03:05'),
(16, 2, 'Agenda', 1, 1, NULL, '2021-09-29 04:03:05', '2021-09-29 04:03:05'),
(17, 3, 'Survey Kepuasan Masyarakat', 1, NULL, '2021-09-04', '2021-09-29 09:00:44', '2021-09-29 09:00:44'),
(18, 3, 'Transparansi Anggaran', 1, NULL, '2021-09-01', '2021-09-29 09:00:44', '2021-09-29 09:00:44'),
(19, 3, 'Foto Kegiatan', 1, NULL, '2021-08-30', '2021-09-29 09:00:44', '2021-09-29 09:00:44'),
(20, 3, 'Berita', 1, NULL, '2021-08-30', '2021-09-29 09:00:44', '2021-09-29 09:00:44'),
(21, 3, 'Struktur Organisasi', 0, 1, NULL, '2021-09-29 09:00:44', '2021-09-29 09:00:44'),
(22, 3, 'Foto Pimpinan', 0, 1, NULL, '2021-09-29 09:00:44', '2021-09-29 09:00:44'),
(23, 3, 'Tupoksi', 1, 0, NULL, '2021-09-29 09:00:44', '2021-09-29 09:00:44'),
(24, 3, 'Agenda', 0, 1, NULL, '2021-09-29 09:00:44', '2021-09-29 09:00:44'),
(25, 4, 'Survey Kepuasan Masyarakat', 0, NULL, NULL, '2021-09-30 00:43:06', '2021-09-30 00:43:06'),
(26, 4, 'Transparansi Anggaran', 0, NULL, NULL, '2021-09-30 00:43:06', '2021-09-30 00:43:06'),
(27, 4, 'Foto Kegiatan', 0, NULL, NULL, '2021-09-30 00:43:06', '2021-09-30 00:43:06'),
(28, 4, 'Berita', 0, NULL, NULL, '2021-09-30 00:43:07', '2021-09-30 00:43:07'),
(29, 4, 'Struktur Organisasi', 0, 0, NULL, '2021-09-30 00:43:07', '2021-09-30 00:43:07'),
(30, 4, 'Foto Pimpinan', 0, 0, NULL, '2021-09-30 00:43:07', '2021-09-30 00:43:07'),
(31, 4, 'Tupoksi', 0, 0, NULL, '2021-09-30 00:43:07', '2021-09-30 00:43:07'),
(32, 4, 'Agenda', 0, 0, NULL, '2021-09-30 00:43:07', '2021-09-30 00:43:07'),
(33, 5, 'Survey Kepuasan Masyarakat', 0, NULL, NULL, '2021-10-01 04:20:08', '2021-10-01 04:20:08'),
(34, 5, 'Transparansi Anggaran', 0, NULL, NULL, '2021-10-01 04:20:08', '2021-10-01 04:20:08'),
(35, 5, 'Foto Kegiatan', 0, NULL, NULL, '2021-10-01 04:20:08', '2021-10-01 04:20:08'),
(36, 5, 'Berita', 0, NULL, NULL, '2021-10-01 04:20:08', '2021-10-01 04:20:08'),
(37, 5, 'Struktur Organisasi', 0, 0, NULL, '2021-10-01 04:20:08', '2021-10-01 04:20:08'),
(38, 5, 'Foto Pimpinan', 0, 0, NULL, '2021-10-01 04:20:08', '2021-10-01 04:20:08'),
(39, 5, 'Tupoksi', 0, 0, NULL, '2021-10-01 04:20:08', '2021-10-01 04:20:08'),
(40, 5, 'Agenda', 0, 0, NULL, '2021-10-01 04:20:08', '2021-10-01 04:20:08'),
(41, 6, 'Survey Kepuasan Masyarakat', 1, NULL, '2021-10-01', '2021-10-01 04:23:09', '2021-10-01 04:23:09'),
(42, 6, 'Transparansi Anggaran', 1, NULL, '2021-09-29', '2021-10-01 04:23:09', '2021-10-01 04:23:09'),
(43, 6, 'Foto Kegiatan', 1, NULL, '2021-09-27', '2021-10-01 04:23:09', '2021-10-01 04:23:09'),
(44, 6, 'Berita', 1, NULL, '2021-09-28', '2021-10-01 04:23:09', '2021-10-01 04:23:09'),
(45, 6, 'Struktur Organisasi', 1, 1, NULL, '2021-10-01 04:23:09', '2021-10-01 04:23:09'),
(46, 6, 'Foto Pimpinan', 1, 1, NULL, '2021-10-01 04:23:09', '2021-10-01 04:23:09'),
(47, 6, 'Tupoksi', 1, 1, NULL, '2021-10-01 04:23:09', '2021-10-01 04:23:09'),
(48, 6, 'Agenda', 1, 1, NULL, '2021-10-01 04:23:09', '2021-10-01 04:23:09'),
(49, 7, 'Survey Kepuasan Masyarakat', 1, NULL, '2021-10-01', '2021-10-01 04:30:36', '2021-10-01 04:30:36'),
(50, 7, 'Transparansi Anggaran', 1, NULL, '2021-09-27', '2021-10-01 04:30:36', '2021-10-01 04:30:36'),
(51, 7, 'Foto Kegiatan', 1, NULL, '2021-09-27', '2021-10-01 04:30:36', '2021-10-01 04:30:36'),
(52, 7, 'Berita', 1, NULL, '2021-09-27', '2021-10-01 04:30:36', '2021-10-01 04:30:36'),
(53, 7, 'Struktur Organisasi', 1, 0, NULL, '2021-10-01 04:30:37', '2021-10-01 04:30:37'),
(54, 7, 'Foto Pimpinan', 1, 0, NULL, '2021-10-01 04:30:37', '2021-10-01 04:30:37'),
(55, 7, 'Tupoksi', 1, 0, NULL, '2021-10-01 04:30:37', '2021-10-01 04:30:37'),
(56, 7, 'Agenda', 1, 0, NULL, '2021-10-01 04:30:37', '2021-10-01 04:30:37'),
(57, 8, 'Survey Kepuasan Masyarakat', 1, NULL, '2021-09-27', '2021-10-01 14:58:35', '2021-10-01 14:58:35'),
(58, 8, 'Transparansi Anggaran', 1, NULL, '2021-09-28', '2021-10-01 14:58:35', '2021-10-01 14:58:35'),
(59, 8, 'Foto Kegiatan', 0, NULL, NULL, '2021-10-01 14:58:35', '2021-10-01 14:58:35'),
(60, 8, 'Berita', 1, NULL, '2021-10-05', '2021-10-01 14:58:35', '2021-10-01 14:58:35'),
(61, 8, 'Struktur Organisasi', 1, 0, NULL, '2021-10-01 14:58:35', '2021-10-01 14:58:35'),
(62, 8, 'Foto Pimpinan', 1, 0, NULL, '2021-10-01 14:58:35', '2021-10-01 14:58:35'),
(63, 8, 'Tupoksi', 1, 0, NULL, '2021-10-01 14:58:35', '2021-10-01 14:58:35'),
(64, 8, 'Agenda', 0, 0, NULL, '2021-10-01 14:58:35', '2021-10-01 14:58:35'),
(65, 9, 'Survey Kepuasan Masyarakat', 1, NULL, '2021-10-01', '2021-10-04 01:47:42', '2021-10-04 01:47:42'),
(66, 9, 'Transparansi Anggaran', 1, NULL, '2021-10-03', '2021-10-04 01:47:42', '2021-10-04 01:47:42'),
(67, 9, 'Foto Kegiatan', 0, NULL, NULL, '2021-10-04 01:47:42', '2021-10-04 01:47:42'),
(68, 9, 'Berita', 0, NULL, NULL, '2021-10-04 01:47:42', '2021-10-04 01:47:42'),
(69, 9, 'Struktur Organisasi', 1, 1, NULL, '2021-10-04 01:47:42', '2021-10-04 01:47:42'),
(70, 9, 'Foto Pimpinan', 1, 1, NULL, '2021-10-04 01:47:42', '2021-10-04 01:47:42'),
(71, 9, 'Tupoksi', 0, 0, NULL, '2021-10-04 01:47:42', '2021-10-04 01:47:42'),
(72, 9, 'Agenda', 0, 0, NULL, '2021-10-04 01:47:43', '2021-10-04 01:47:43'),
(73, 10, 'Survey Kepuasan Masyarakat', 0, NULL, NULL, '2021-10-04 01:51:31', '2021-10-04 01:51:31'),
(74, 10, 'Transparansi Anggaran', 1, NULL, '2021-10-02', '2021-10-04 01:51:31', '2021-10-04 01:51:31'),
(75, 10, 'Foto Kegiatan', 1, NULL, '2021-09-30', '2021-10-04 01:51:31', '2021-10-04 01:51:31'),
(76, 10, 'Berita', 0, NULL, NULL, '2021-10-04 01:51:31', '2021-10-04 01:51:31'),
(77, 10, 'Struktur Organisasi', 1, 1, NULL, '2021-10-04 01:51:31', '2021-10-04 01:51:31'),
(78, 10, 'Foto Pimpinan', 1, 1, NULL, '2021-10-04 01:51:31', '2021-10-04 01:51:31'),
(79, 10, 'Tupoksi', 1, 0, NULL, '2021-10-04 01:51:31', '2021-10-04 01:51:31'),
(80, 10, 'Agenda', 1, 0, NULL, '2021-10-04 01:51:31', '2021-10-04 01:51:31');

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
(1, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Seksi Kemitraan dan Komunikasi Informasi Publik', 1, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(2, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Bagian Kerjasama Setda Kota Denpasar', 2, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(3, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Dinas Tenaga Kerja dan Sertifikasi Kompetensi', 1, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(4, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Seksi Analisa Data Statistik', 2, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(5, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'PDAM Kota Denpasar', 1, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(6, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Bagian Keuangan', 2, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(7, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Bidang Statistik dan Persandian', 1, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(8, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Inspektorat', 1, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(9, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Kelurahan Panjer', 2, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(10, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Kecamatan Denpasar Barat', 1, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(11, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Bagian Administrasi Pembangunan (Asisten II)', 1, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(12, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Bagian Administrasi Pembangunan (Asisten II)', 2, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(13, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Dinas Koperasi, Usaha Kecil dan Menengah ', 2, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(14, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Kelurahan Kesiman', 2, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(15, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Kelurahan Ubung', 2, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(16, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Kelurahan Peguyangan', 2, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(17, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Kelurahan Peguyangan', 2, '2021-10-05 02:23:47', '2021-10-05 02:23:47'),
(18, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(19, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Seksi Penyebaran Sistem Komunikasi', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(20, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 2, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(21, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Seksi Keamanan Informasi dan Persediaan', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(22, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Seksi Pengelolaan Data dan Introperabilitas', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(23, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'UPT. Transportasi Darat', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(24, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Dinas Pekerjaan Umum dan Penataan Ruang', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(25, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Kelurahan Dauh Puri', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(26, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Seksi Pengelolaan Data dan Introperabilitas', 2, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(27, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Bagian Hukum Setda Kota Denpasar', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(28, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Seksi Pengelolaan Statistik Sektoral', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(29, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Dinas Perhubungan', 2, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(30, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Kecamatan Denpasar Barat', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(31, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Badan Perencanaan Pembangunan Daerah', 2, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(32, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Bagian Administrasi Pemerintahan (Asisten I)', 2, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(33, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Seksi Pengelolaan Komunikasi Informasi Publik', 2, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(34, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Dinas Perhubungan', 2, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(35, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Seksi Pengelolaan Data dan Introperabilitas', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(36, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Sub Bagian Kepegawaian', 2, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(37, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Kelurahan Sesetan', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(38, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Badan Penanggulangan Bencana Daerah (BPBD)', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(39, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Bagian Kerjasama Setda Kota Denpasar', 1, '2021-10-05 02:23:48', '2021-10-05 02:23:48'),
(40, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Dinas Pendidikan, Pemuda dan Olahraga', 2, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(41, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Kecamatan Denpasar Utara', 2, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(42, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Seksi Pengembangan dan Aplikasi', 2, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(43, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Kelurahan Serangan', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(44, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'PDAM Kota Denpasar', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(45, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Kelurahan Sumerta', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(46, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Seksi Pengembangan dan Aplikasi', 2, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(47, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Badan Kesatuan Bangsa, Politik dan Perlindungan Masyarakat', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(48, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Seksi Keamanan Informasi dan Persediaan', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(49, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Badan Penanggulangan Bencana Daerah (BPBD)', 2, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(50, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Badan Perencanaan Pembangunan Daerah', 2, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(51, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Seksi Pengembangan dan Aplikasi', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(52, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Kelurahan Sanur', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(53, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Dinas Kebudayaan ', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(54, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Subag Umum UPT. Pelayanan Teknis Penyiaran Publik Lokal', 2, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(55, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Bagian Organisasi', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(56, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Bagian Organisasi', 2, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(57, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Kelurahan Kesiman', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(58, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'UPT. Pelayanan Teknis Penyiaran Publik Lokal', 2, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(59, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Kelurahan Panjer', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(60, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Kecamatan Denpasar Timur', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(61, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Bagian Hubungan Masyarakat dan Protokol', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(62, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Bagian Kesejahteraan Rakyat', 1, '2021-10-05 02:23:49', '2021-10-05 02:23:49'),
(63, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Seluruh Perangkat Daerah', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(64, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Bidang Pengelolaan Smart City', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(65, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Kelurahan Padangsambian', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(66, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(67, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Operator UPT. Pelayanan Informasi Publik dan PPID', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(68, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Dinas Perhubungan', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(69, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Sub Bagian Umum', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(70, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Bagian Organisasi', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(71, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Bagian Pengadaan Barang dan Jasa', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(72, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Dinas Komunikasi, Informatika dan Statistik', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(73, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Bidang Statistik dan Persandian', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(74, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Badan Penanggulangan Bencana Daerah (BPBD)', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(75, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Bidang Komunikasi dan Informasi Publik', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(76, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Dinas Perhubungan', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(77, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Kelurahan Ubung', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(78, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Dinas Pendidikan, Pemuda dan Olahraga', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(79, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Dinas Kependudukan dan Pencatatan Sipil ', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(80, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Bagian Hubungan Masyarakat dan Protokol', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(81, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Sekretariat DPRD', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(82, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Bagian Hukum Setda Kota Denpasar', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(83, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Dinas Perhubungan', 1, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(84, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Kelurahan Padangsambian', 2, '2021-10-05 02:23:50', '2021-10-05 02:23:50'),
(85, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Walikota', 1, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(86, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Kecamatan Denpasar Utara', 2, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(87, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Badan Pengelola Keuangan dan Aset Daerah', 1, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(88, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Kelurahan Pedungan', 1, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(89, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Kelurahan Tonja', 2, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(90, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Seksi Penyebaran Sistem Komunikasi', 2, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(91, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Kelurahan Renon', 1, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(92, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Bagian Umum', 2, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(93, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Dinas Pekerjaan Umum dan Penataan Ruang', 1, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(94, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Dinas Pemberdayaan Masyarakat dan Desa Kota', 1, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(95, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Dinas Ketentraman Ketertiban dan Satuan Polisi Pamong Praja ', 1, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(96, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Bagian Organisasi', 1, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(97, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Seksi Layanan Infrastruktur dan Teknologi', 1, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(98, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Bagian Kesejahteraan Rakyat', 2, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(99, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Dinas Perpustakaan dan Kearsipan', 2, '2021-10-05 02:23:51', '2021-10-05 02:23:51'),
(100, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'PDAM Kota Denpasar', 1, '2021-10-05 02:23:51', '2021-10-05 02:23:51');

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
(1, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Kelurahan Sumerta', 2, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(2, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Sekretariat Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(3, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Kelurahan Sanur', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(4, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Bagian Umum', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(5, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Dinas Pemberdayaan Masyarakat dan Desa Kota', 2, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(6, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Dinas Kebudayaan ', 2, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(7, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'UPT. Transportasi Darat', 2, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(8, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Bagian Administrasi Pemerintahan (Asisten I)', 2, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(9, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Seksi Kemitraan dan Komunikasi Informasi Publik', 2, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(10, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Dinas Perpustakaan dan Kearsipan', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(11, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Kelurahan Sanur', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(12, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Walikota', 2, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(13, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Seluruh Perangkat Daerah', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(14, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Seksi Keamanan Informasi dan Persediaan', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(15, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'PD Pasar Kota Denpasar', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(16, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Dinas Ketentraman Ketertiban dan Satuan Polisi Pamong Praja ', 2, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(17, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Kelurahan Pedungan', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(18, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Kelurahan Sumerta', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(19, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Kelurahan Penatih', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(20, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Kelurahan Dauh Puri', 1, '2021-10-05 02:23:38', '2021-10-05 02:23:38'),
(21, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'PD Parkir Kota Denpasar', 2, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(22, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Dinas Kebudayaan ', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(23, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Seksi Pengelolaan Ekosistem Smart City', 2, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(24, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'UPT. Pelayanan Teknis Penyiaran Publik Lokal', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(25, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Sekretariat DPRD', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(26, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Bagian Keuangan', 2, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(27, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Dinas Perumahan, Kawasan Permukiman Dan Pertanahan', 2, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(28, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Subag Umum UPT. Pelayanan Teknis Penyiaran Publik Lokal', 2, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(29, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Subag Umum UPT. Pelayanan Teknis Penyiaran Publik Lokal', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(30, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak, Pengendalian Penduduk dan Keluarga Berencana', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(31, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Bagian Administrasi Umum (Asisten III)', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(32, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'PD Pasar Kota Denpasar', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(33, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Bagian Program Pembangunan', 2, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(34, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'UPT. Pelayanan Informasi Publik dan PPID', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(35, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Kelurahan Sumerta', 2, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(36, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Seksi tata Kelola E-Goverment', 2, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(37, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Dinas Kesehatan ', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(38, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Bagian Umum', 2, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(39, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Badan Perencanaan Pembangunan Daerah', 2, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(40, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(41, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Bagian Umum', 1, '2021-10-05 02:23:39', '2021-10-05 02:23:39'),
(42, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Dinas Lingkungan Hidup dan Kebersihan', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(43, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Seksi Pengelolaan Statistik Sektoral', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(44, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'PDAM Kota Denpasar', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(45, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Sub Bagian Kepegawaian', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(46, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Bagian Program Pembangunan', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(47, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Kelurahan Padangsambian', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(48, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Kelurahan Sumerta', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(49, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Dinas Ketentraman Ketertiban dan Satuan Polisi Pamong Praja ', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(50, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Sub Bagian Keuangan', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(51, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Bidang Pengelolaan Smart City', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(52, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Staf Ahli ', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(53, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Dinas Koperasi, Usaha Kecil dan Menengah ', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(54, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Badan Perencanaan Pembangunan Daerah', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(55, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'PD Pasar Kota Denpasar', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(56, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Dinas Pekerjaan Umum dan Penataan Ruang', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(57, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Badan Pendapatan Daerah', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(58, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Sekretariat Dinas Komunikasi dan Informatika ', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(59, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Bagian Program Pembangunan', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(60, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Bagian Keuangan', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(61, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Dinas Pemberdayaan Masyarakat dan Desa Kota', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(62, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Dinas Perpustakaan dan Kearsipan', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(63, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Kelurahan Renon', 1, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(64, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Kelurahan Penatih', 2, '2021-10-05 02:23:40', '2021-10-05 02:23:40'),
(65, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Kelurahan Padangsambian', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(66, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Bidang E-government', 1, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(67, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Dinas Komunikasi, Informatika dan Statistik', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(68, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Bagian Hukum Setda Kota Denpasar', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(69, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Seluruh Perangkat Daerah', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(70, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Bagian Organisasi', 1, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(71, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Badan Pengelola Keuangan dan Aset Daerah', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(72, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Wakil Walikota', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(73, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Dinas Lingkungan Hidup dan Kebersihan', 1, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(74, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Wakil Walikota', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(75, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Kelurahan Kesiman', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(76, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Bagian Perekonomian', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(77, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Kelurahan Ubung', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(78, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Bagian Umum', 1, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(79, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Dinas Perikanan dan Ketahanan Pangan', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(80, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Dinas Perpustakaan dan Kearsipan', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(81, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Wistle Blowing', 'Dinas Kesehatan ', 1, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(82, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Kelurahan Dangin Puri', 2, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(83, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Sekretaris Daerah', 1, '2021-10-05 02:23:41', '2021-10-05 02:23:41'),
(84, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Infrastruktur', 'Kelurahan Pemecutan', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(85, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Dinas Komunikasi, Informatika dan Statistik', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(86, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Konseling Covid 19', 'Bagian Hukum Setda Kota Denpasar', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(87, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'UPT. Pelayanan Informasi Publik dan PPID', 2, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(88, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Kelurahan Kesiman', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(89, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Klinik Pengelolaan Keuangan Daerah', 'Seluruh Perangkat Daerah', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(90, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lingkungan', 'Kelurahan Tonja', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(91, '2021-09-28', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Kecamatan Denpasar Utara', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(92, '2021-09-29', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Seksi Layanan Komunikasi Informasi Publik', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(93, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Sekretariat Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(94, '2021-10-02', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Covid 19', 'Kelurahan Pemecutan', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(95, '2021-10-01', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Layanan Publik', 'Operator UPT. Pelayanan Informasi Publik dan PPID', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(96, '2021-10-05', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Sosial & Tenaga Kerja', 'Bidang Pengelolaan Smart City', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(97, '2021-09-30', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Dinas Kependudukan dan Pencatatan Sipil ', 2, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(98, '2021-10-04', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lalu Lintas', 'Seluruh Perangkat Daerah', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(99, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Dinas Perpustakaan dan Kearsipan', 1, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(100, '2021-10-03', 'Nama Pelapor Dummy', 'Topik Laporan Dummy ', 'Lain - lain', 'Dinas Kesehatan ', 2, '2021-10-05 02:23:42', '2021-10-05 02:23:42'),
(101, '2021-10-05', 'Tuarie', 'Test Topik', 'Pilih Kategori', 'Bagian Administrasi Pemerintahan (Asisten I)', 1, '2021-10-05 02:44:46', '2021-10-05 02:44:46');

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
(1, '2021-10-11', '11:38:00', '13:38:00', 'Tuarie', 'Review website Damamaya', 1, '2021-09-09 00:38:33', '2021-09-09 00:38:33'),
(2, '2021-10-15', '09:10:00', '12:10:00', 'Tuarie', 'Rapat Penting', 1, '2021-09-09 11:12:18', '2021-09-09 11:12:18'),
(4, '2021-10-13', '10:00:00', '12:00:00', 'Tuarie', 'Pinjam Ruangan', 1, '2021-09-12 07:34:09', '2021-09-12 07:34:09'),
(5, '2021-10-13', '12:00:00', '14:00:00', 'Tuarie', 'Keterangan', 1, '2021-09-13 03:19:42', '2021-09-13 03:19:42'),
(6, '2021-10-16', '10:00:00', '13:00:00', 'Bidang TIK', 'Rapat Penting', 1, '2021-09-14 00:31:49', '2021-09-14 00:31:49'),
(7, '2021-10-17', '10:00:00', '13:00:00', 'Bidang PIP', 'Rapat Penting Sekali', 1, '2021-09-14 04:57:47', '2021-09-14 04:57:47'),
(8, '2021-10-13', '15:00:00', '16:00:00', 'Bidang TIK', 'Rapat Cukup Penting', 1, '2021-09-14 04:59:13', '2021-09-14 04:59:13'),
(9, '2021-10-14', '12:42:00', '13:42:00', 'Tuarie', 'Penting', 1, '2021-09-14 05:41:00', '2021-09-14 05:41:00'),
(10, '2021-10-15', '14:00:00', '15:00:00', 'Bidang TIK', 'Rapat Penting Banget', 1, '2021-09-14 06:08:53', '2021-09-14 06:08:53'),
(11, '2021-10-14', '14:00:00', '15:00:00', 'Bidang PKP', 'Rapat Penting', 1, '2021-09-14 06:18:35', '2021-09-14 06:18:35'),
(12, '2021-10-14', '09:00:00', '10:00:00', 'Bidang TIK', 'Rapat Penting TIK', 1, '2021-09-14 06:35:47', '2021-09-14 06:35:47'),
(13, '2021-10-20', '10:00:00', '13:00:00', 'Bidang TIK', 'Rapat Pentingg', 1, '2021-09-17 00:36:54', '2021-09-17 00:36:54'),
(14, '2021-10-22', '11:00:00', '13:00:00', 'Bidang PIP', 'Rapat Penting', 2, '2021-09-20 02:12:30', '2021-09-20 02:12:30'),
(15, '2021-10-27', '10:00:00', '13:00:00', 'Bidang TIK', 'Rapat Penting', 1, '2021-09-24 00:45:32', '2021-09-24 00:45:32'),
(16, '2021-10-28', '13:00:00', '15:00:00', 'Bidang PIP', 'Rapat Cukup Penting', 1, '2021-09-24 00:47:04', '2021-09-24 00:47:04'),
(17, '2021-10-30', '10:00:00', '13:00:00', 'Bidang TIK', 'Rapat Penting', 1, '2021-09-30 00:48:51', '2021-09-30 00:48:51'),
(18, '2021-10-01', '10:00:00', '12:00:00', 'Bidang PKP', 'Rapat Cukup Penting', 1, '2021-09-30 00:49:52', '2021-09-30 00:49:52'),
(19, '2021-10-30', '13:00:00', '16:00:00', 'Bidang PIP', 'Rapat Penting', 1, '2021-09-30 00:51:43', '2021-09-30 00:51:43'),
(20, '2021-10-05', '10:00:00', '12:00:00', 'Bidang TIK', 'Rapat Penting', 1, '2021-10-04 02:08:10', '2021-10-04 02:08:10');

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
(37, 737, '2021-10-04', '10:23:54', 'Keterangan Tindak Lanjut', '1633314315_screenshot (408).png', 0, 1, '2021-10-04 02:25:16', '2021-10-04 02:25:16'),
(40, 740, '2021-10-06', '23:03:31', 'TIndak Lanjut Mantap', '1633446258_screenshot (402).png', 2, 1, '2021-10-05 15:04:19', '2021-10-05 15:22:57'),
(41, 741, '2021-10-06', '23:20:25', 'Sudah bener', '1633447311_tes 3.png', 0, 1, '2021-10-05 15:21:03', '2021-10-05 15:21:51');

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
(11, '2021_08_13_003906_create_kategori_pengaduan_table', 1),
(12, '2021_08_13_004043_create_kategori_analisa_table', 1),
(13, '2021_07_24_230031_create_layanan_keamanan_informasi_table', 2),
(14, '2021_08_20_104848_create_layanan_tindak_lanjut_table', 3),
(16, '2021_09_07_133637_create_pinjam_ruangan_table', 5),
(24, '2021_09_26_081813_create_konten_subdomain_status_table', 7),
(25, '2021_07_26_010800_create_konten_subdomain_table', 8);

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
-- Indexes for table `layanan_konten_subdomain_status`
--
ALTER TABLE `layanan_konten_subdomain_status`
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
-- AUTO_INCREMENT for table `kategori_analisa`
--
ALTER TABLE `kategori_analisa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori_pengaduan`
--
ALTER TABLE `kategori_pengaduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `layanan_analisa_media`
--
ALTER TABLE `layanan_analisa_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;

--
-- AUTO_INCREMENT for table `layanan_informasi`
--
ALTER TABLE `layanan_informasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `layanan_keamanan_informasi`
--
ALTER TABLE `layanan_keamanan_informasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=742;

--
-- AUTO_INCREMENT for table `layanan_konten_subdomain`
--
ALTER TABLE `layanan_konten_subdomain`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `layanan_konten_subdomain_status`
--
ALTER TABLE `layanan_konten_subdomain_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `layanan_pengaduan_anggaran`
--
ALTER TABLE `layanan_pengaduan_anggaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `layanan_pengaduan_pro`
--
ALTER TABLE `layanan_pengaduan_pro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `layanan_pinjam_ruangan`
--
ALTER TABLE `layanan_pinjam_ruangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `layanan_tindak_lanjut`
--
ALTER TABLE `layanan_tindak_lanjut`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
