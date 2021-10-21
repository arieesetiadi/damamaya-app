-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2021 at 11:51 AM
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
-- Table structure for table `website_subdomains`
--

CREATE TABLE `website_subdomains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_subdomains`
--

INSERT INTO `website_subdomains` (`id`, `link_website`, `created_at`, `updated_at`) VALUES
(1, 'absensi.denpasarkota.go.id', NULL, NULL),
(2, 'agama.denpasarkota.go.id', NULL, NULL),
(3, 'aksarabali.denpasarkota.go.id', NULL, NULL),
(4, 'akuwaras.denpasarkota.go.id', NULL, NULL),
(5, 'amatya.denpasarkota.go.id', NULL, NULL),
(6, 'antrianonline.denpasarkota.go.id', NULL, NULL),
(7, 'arsip.denpasarkota.go.id', NULL, NULL),
(8, 'arsipdpupr.denpasarkota.go.id', NULL, NULL),
(9, 'aspirasi.dprd.denpasarkota.go.id', NULL, NULL),
(10, 'atcs.denpasarkota.go.id', NULL, NULL),
(11, 'balidenpasartrading.com', NULL, NULL),
(12, 'bankdata.denpasarkota.go.id', NULL, NULL),
(13, 'bapenda.denpasarkota.go.id', NULL, NULL),
(14, 'bit.denpasarkota.go.id', NULL, NULL),
(15, 'bkpp.denpasarkota.go.id', NULL, NULL),
(16, 'bkpsdm.denpasarkota.go.id', NULL, NULL),
(17, 'bpkad.denpasarkota.go.id', NULL, NULL),
(18, 'bpm.denpasarkota.go.id', NULL, NULL),
(19, 'bulanbungkarno.denpasarkota.go.id', NULL, NULL),
(20, 'bumdesa.denpasarkota.go.id', NULL, NULL),
(21, 'bursakerja.denpasarkota.go.id', NULL, NULL),
(22, 'bussekolah.denpasarkota.go.id', NULL, NULL),
(23, 'cantikpkk.denpasarkota.go.id', NULL, NULL),
(24, 'cctvkir.denpasarkota.go.id', NULL, NULL),
(25, 'cekcovid19.denpasarkota.go.id', NULL, NULL),
(26, 'citytour.denpasarkota.go.id', NULL, NULL),
(27, 'cloud.denpasarkota.go.id', NULL, NULL),
(28, 'cloudbappeda.denpasarkota.go.id', NULL, NULL),
(29, 'cloudptsp.denpasarkota.go.id', NULL, NULL),
(30, 'covid19.denpasarkota.go.id', NULL, NULL),
(31, 'creativecity.denpasarkota.go.id', NULL, NULL),
(32, 'culture.denpasarkota.go.id', NULL, NULL),
(33, 'dama.denpasarkota.go.id', NULL, NULL),
(34, 'damakesmas.denpasarkota.go.id', NULL, NULL),
(35, 'damamandala.denpasarkota.go.id', NULL, NULL),
(36, 'damamaya.denpasarkota.go.id', NULL, NULL),
(37, 'damapancana.denpasarkota.go.id', NULL, NULL),
(38, 'danginpuri.denpasarkota.go.id', NULL, NULL),
(39, 'danginpurikaja.denpasarkota.go.id', NULL, NULL),
(40, 'danginpurikangin.denpasarkota.go.id', NULL, NULL),
(41, 'danginpurikauh.denpasarkota.go.id', NULL, NULL),
(42, 'danginpuriklod.denpasarkota.go.id', NULL, NULL),
(43, 'dasi.denpasarkota.go.id', NULL, NULL),
(44, 'dauhpuri.denpasarkota.go.id', NULL, NULL),
(45, 'dauhpurikaja.denpasarkota.go.id', NULL, NULL),
(46, 'dauhpurikangin.denpasarkota.go.id', NULL, NULL),
(47, 'dauhpurikauh.denpasarkota.go.id', NULL, NULL),
(48, 'dauhpuriklod.denpasarkota.go.id', NULL, NULL),
(49, 'dcloud.denpasarkota.go.id', NULL, NULL),
(50, 'demodata.denpasarkota.go.id', NULL, NULL),
(51, 'denbar.denpasarkota.go.id', NULL, NULL),
(52, 'densel.denpasarkota.go.id', NULL, NULL),
(53, 'dentim.denpasarkota.go.id', NULL, NULL),
(54, 'denut.denpasarkota.go.id', NULL, NULL),
(55, 'desac.denpasarkota.go.id', NULL, NULL),
(56, 'dewanpendidikan.denpasarkota.go.id', NULL, NULL),
(57, 'diaspora.denpasarkota.go.id', NULL, NULL),
(58, 'dinasperijinan.denpasarkota.go.id', NULL, NULL),
(59, 'dinkes.denpasarkota.go.id', NULL, NULL),
(60, 'divos.denpasarkota.go.id', NULL, NULL),
(61, 'dota.denpasarkota.go.id', NULL, NULL),
(62, 'dprd.denpasarkota.go.id', NULL, NULL),
(63, 'e-harmoni.denpasarkota.go.id', NULL, NULL),
(64, 'ekinerja.denpasarkota.go.id', NULL, NULL),
(65, 'e-pajak.denpasarkota.go.id', NULL, NULL),
(66, 'eparuman.denpasarkota.go.id', NULL, NULL),
(67, 'eproc.denpasarkota.go.id', NULL, NULL),
(68, 'ertlh.denpasarkota.go.id', NULL, NULL),
(69, 'esewakadharma.denpasarkota.go.id', NULL, NULL),
(70, 'esign.denpasarkota.go.id', NULL, NULL),
(71, 'esign.env.denpasarkota.go.id', NULL, NULL),
(72, 'esurat.denpasarkota.go.id', NULL, NULL),
(73, 'forumanak.denpasarkota.go.id', NULL, NULL),
(74, 'ftp.denpasarkota.go.id', NULL, NULL),
(75, 'geo.demodata.denpasarkota.go.id', NULL, NULL),
(76, 'geoportal.denpasarkota.go.id', NULL, NULL),
(77, 'giskop.denpasarkota.go.id', NULL, NULL),
(78, 'hargapasar.denpasarkota.go.id', NULL, NULL),
(79, 'identik.denpasarkota.go.id', NULL, NULL),
(80, 'infopasar.denpasarkota.go.id', NULL, NULL),
(81, 'infopdam.denpasarkota.go.id', NULL, NULL),
(82, 'infrastruktur.denpasarkota.go.id', NULL, NULL),
(83, 'innovationday.denpasarkota.go.id', NULL, NULL),
(84, 'inspektorat.denpasarkota.go.id', NULL, NULL),
(85, 'jagabaya.denpasarkota.go.id', NULL, NULL),
(86, 'jdih.denpasarkota.go.id', NULL, NULL),
(87, 'jdihdprd.denpasarkota.go.id ', NULL, NULL),
(88, 'kb.denpasarkota.go.id', NULL, NULL),
(89, 'kebudayaan.denpasarkota.go.id', NULL, NULL),
(90, 'kependudukan.denpasarkota.go.id', NULL, NULL),
(91, 'kerjasama.denpasarkota.go.id', NULL, NULL),
(92, 'kesbangpol.denpasarkota.go.id', NULL, NULL),
(93, 'kesiman.denpasarkota.go.id', NULL, NULL),
(94, 'kesimankertalangu.denpasarkota.go.id', NULL, NULL),
(95, 'kesimanpetilan.denpasarkota.go.id', NULL, NULL),
(96, 'kir.denpasarkota.go.id', NULL, NULL),
(97, 'kir.denpasarkota.go.id', NULL, NULL),
(98, 'kkks.denpasarkota.go.id', NULL, NULL),
(99, 'kominfo.denpasarkota.go.id', NULL, NULL),
(100, 'kominfostatistik.denpasarkota.go.id', NULL, NULL),
(101, 'koni.denpasarkota.go.id', NULL, NULL),
(102, 'koperasi.denpasarkota.go.id', NULL, NULL),
(103, 'kotatangguh.denpasarkota.go.id', NULL, NULL),
(104, 'kpa.denpasarkota.go.id', NULL, NULL),
(105, 'kpndharmawiguna.denpasarkota.go.id', NULL, NULL),
(106, 'laporkdrt.denpasarkota.go.id', NULL, NULL),
(107, 'layananhi.denpasarkota.go.id', NULL, NULL),
(108, 'lh.denpasarkota.go.id', NULL, NULL),
(109, 'litbang.denpasarkota.go.id', NULL, NULL),
(110, 'mayasitekmas.denpasarkota.go.id', NULL, NULL),
(111, 'midep.denpasarkota.go.id', NULL, NULL),
(112, 'monalisa.denpasarkota.go.id', NULL, NULL),
(113, 'padangsambian.denpasarkota.go.id', NULL, NULL),
(114, 'padangsambiankaja.denpasarkota.go.id', NULL, NULL),
(115, 'padangsambianklod.denpasarkota.go.id', NULL, NULL),
(116, 'pajak.denpasarkota.go.id', NULL, NULL),
(117, 'panjer.denpasarkota.go.id', NULL, NULL),
(118, 'pariwisata.denpasarkota.go.id', NULL, NULL),
(119, 'paud.denpasarkota.go.id', NULL, NULL),
(120, 'pauddentim.denpasarkota.go.id', NULL, NULL),
(121, 'pdam.denpasarkota.go.id', NULL, NULL),
(122, 'pdparkir.denpasarkota.go.id', NULL, NULL),
(123, 'pdpasar.denpasarkota.go.id', NULL, NULL),
(124, 'pedungan.denpasarkota.go.id', NULL, NULL),
(125, 'peguyangan.denpasarkota.go.id', NULL, NULL),
(126, 'peguyangankaja.denpasarkota.go.id', NULL, NULL),
(127, 'peguyangankangin.denpasarkota.go.id', NULL, NULL),
(128, 'pemecutan.denpasarkota.go.id', NULL, NULL),
(129, 'pemecutankaja.denpasarkota.go.id', NULL, NULL),
(130, 'pemecutankelod.denpasarkota.go.id', NULL, NULL),
(131, 'pemogan.denpasarkota.go.id', NULL, NULL),
(132, 'penanggulanganbencana.denpasarkota.go.id', NULL, NULL),
(133, 'penatih.denpasarkota.go.id', NULL, NULL),
(134, 'penatihdanginpuri.denpasarkota.go.id', NULL, NULL),
(135, 'pendapatan.denpasarkota.go.id', NULL, NULL),
(136, 'pendidikan.denpasarkota.go.id', NULL, NULL),
(137, 'pengaduan.denpasarkota.go.id', NULL, NULL),
(138, 'pengaduan.denpasarkota.go.id', NULL, NULL),
(139, 'perhubungan.denpasarkota.go.id', NULL, NULL),
(140, 'perijinan.denpasarkota.go.id', NULL, NULL),
(141, 'perikanan.denpasarkota.go.id', NULL, NULL),
(142, 'perindag.denpasarkota.go.id', NULL, NULL),
(143, 'perkim.denpasarkota.go.id', NULL, NULL),
(144, 'pertanian.denpasarkota.go.id', NULL, NULL),
(145, 'perumdapasar.denpasarkota.go.id', NULL, NULL),
(146, 'pkk.denpasarkota.go.id', NULL, NULL),
(147, 'pmi.denpasarkota.go.id', NULL, NULL),
(148, 'ppid.denpasarkota.go.id', NULL, NULL),
(149, 'pu.denpasarkota.go.id', NULL, NULL),
(150, 'pusatdata.denpasarkota.go.id', NULL, NULL),
(151, 'puskesmasdenbar1.denpasarkota.go.id', NULL, NULL),
(152, 'puskesmasdenbar2.denpasarkota.go.id', NULL, NULL),
(153, 'puskesmasdensel1.denpasarkota.go.id', NULL, NULL),
(154, 'puskesmasdensel2.denpasarkota.go.id', NULL, NULL),
(155, 'puskesmasdensel3.denpasarkota.go.id', NULL, NULL),
(156, 'puskesmasdensel4.denpasarkota.go.id', NULL, NULL),
(157, 'puskesmasdentim1.denpasarkota.go.id', NULL, NULL),
(158, 'puskesmasdentim2.denpasarkota.go.id', NULL, NULL),
(159, 'puskesmasdenut1.denpasarkota.go.id', NULL, NULL),
(160, 'puskesmasdenut12.denpasarkota.go.id', NULL, NULL),
(161, 'puskesmasdenut19.denpasarkota.go.id', NULL, NULL),
(162, 'puskesmasdenut2.denpasarkota.go.id', NULL, NULL),
(163, 'puskesmasdenut20.denpasarkota.go.id', NULL, NULL),
(164, 'puskesmasdenut3.denpasarkota.go.id', NULL, NULL),
(165, 'pustakamade.denpasarkota.go.id', NULL, NULL),
(166, 'radio.denpasarkota.go.id', NULL, NULL),
(167, 'reform.denpasarkota.go.id', NULL, NULL),
(168, 'renon.denpasarkota.go.id', NULL, NULL),
(169, 'rkas.denpasarkota.go.id', NULL, NULL),
(170, 'rsudwangaya.denpasarkota.go.id', NULL, NULL),
(171, 'rujukanonline.denpasarkota.go.id', NULL, NULL),
(172, 'rujukanonline.denpasarkota.go.id', NULL, NULL),
(173, 'safecity.denpasarkota.go.id', NULL, NULL),
(174, 'sanur.denpasarkota.go.id', NULL, NULL),
(175, 'sanurkaja.denpasarkota.go.id', NULL, NULL),
(176, 'sanurkauh.denpasarkota.go.id', NULL, NULL),
(177, 'satudata.denpasarkota.go.id', NULL, NULL),
(178, 'sdtv.denpasarkota.go.id', NULL, NULL),
(179, 'serangan.denpasarkota.go.id', NULL, NULL),
(180, 'sesetan.denpasarkota.go.id', NULL, NULL),
(181, 'setda.denpasarkota.go.id', NULL, NULL),
(182, 'siap.denpasarkota.go.id', NULL, NULL),
(183, 'sidakarya.denpasarkota.go.id', NULL, NULL),
(184, 'sidandaniti.denpasarkota.go.id', NULL, NULL),
(185, 'sidarling.denpasarkota.go.id', NULL, NULL),
(186, 'sidi.denpasarkota.go.id', NULL, NULL),
(187, 'sidok.denpasarkota.go.id', NULL, NULL),
(188, 'sidoping.denpasarkota.go.id', NULL, NULL),
(189, 'sijuna.denpasarkota.go.id', NULL, NULL),
(190, 'simdik.denpasarkota.go.id', NULL, NULL),
(191, 'simkesbang.denpasarkota.go.id', NULL, NULL),
(192, 'simonev.denpasarkota.go.id', NULL, NULL),
(193, 'simpeg.denpasarkota.go.id', NULL, NULL),
(194, 'simponi.denpasarkota.go.id', NULL, NULL),
(195, 'simyandes.denpasarkota.go.id', NULL, NULL),
(196, 'simyandu.denpasarkota.go.id', NULL, NULL),
(197, 'sinjab.denpasarkota.go.id', NULL, NULL),
(198, 'sinkrondapodik.denpasarkota.go.id', NULL, NULL),
(199, 'sipapa.denpasarkota.go.id', NULL, NULL),
(200, 'sipoint.denpasarkota.go.id', NULL, NULL),
(201, 'sipone.denpasarkota.go.id', NULL, NULL),
(202, 'sirekon.denpasarkota.go.id', NULL, NULL),
(203, 'smartcity.denpasarkota.go.id', NULL, NULL),
(204, 'sosial.denpasarkota.go.id', NULL, NULL),
(205, 'spbe.denpasarkota.go.id', NULL, NULL),
(206, 'sso.denpasarkota.go.id', NULL, NULL),
(207, 'stafahli.denpasarkota.go.id', NULL, NULL),
(208, 'sumerta.denpasarkota.go.id', NULL, NULL),
(209, 'sumertakaja.denpasarkota.go.id', NULL, NULL),
(210, 'sumertakauh.denpasarkota.go.id', NULL, NULL),
(211, 'sumertaklod.denpasarkota.go.id', NULL, NULL),
(212, 'tangkalhoax.denpasarkota.go.id', NULL, NULL),
(213, 'taringdukcapil.denpasarkota.go.id', NULL, NULL),
(214, 'tegalharum.denpasarkota.go.id', NULL, NULL),
(215, 'tegalkertha.denpasarkota.go.id', NULL, NULL),
(216, 'tenagakerja.denpasarkota.go.id', NULL, NULL),
(217, 'tnde.denpasarkota.go.id', NULL, NULL),
(218, 'tonja.denpasarkota.go.id', NULL, NULL),
(219, 'trantib.denpasarkota.go.id', NULL, NULL),
(220, 'ubung.denpasarkota.go.id', NULL, NULL),
(221, 'ubungkaja.denpasarkota.go.id', NULL, NULL),
(222, 'ukmdiskop.denpasarkota.go.id', NULL, NULL),
(223, 'ulp.denpasarkota.go.id', NULL, NULL),
(224, 'widyasastra.denpasarkota.go.id', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `website_subdomains`
--
ALTER TABLE `website_subdomains`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `website_subdomains`
--
ALTER TABLE `website_subdomains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
