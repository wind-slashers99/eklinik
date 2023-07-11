-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 08:33 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eklinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `berobat`
--

CREATE TABLE `berobat` (
  `id_berobat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `tgl_berobat` date NOT NULL,
  `keluhan` text NOT NULL,
  `diagnosa` varchar(100) NOT NULL,
  `penatalaksaan` enum('Rawat Jalan','Rawat Inap','Rujuk','Lainnya') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berobat`
--

INSERT INTO `berobat` (`id_berobat`, `id_pasien`, `id_dokter`, `tgl_berobat`, `keluhan`, `diagnosa`, `penatalaksaan`) VALUES
(1, 4, 4, '2020-10-17', 'Jatuh', 'Obat Merah', 'Lainnya'),
(3, 1, 3, '2020-10-21', 'Meriang', 'Begadang', 'Rujuk'),
(4, 64, 9, '2023-01-07', 'Kontrol Behel', 'Kontrol Behel', 'Rawat Jalan'),
(5, 77, 9, '2023-01-07', 'Cabut Gigi', 'Cabut Gigi', 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`) VALUES
(1, 'Gani'),
(3, 'Harun'),
(4, 'Kakuki'),
(7, 'dr.Putri'),
(8, 'dr.Tina'),
(9, 'dr. Dila');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `jk_pasien` enum('L','P') NOT NULL,
  `umur_pasien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jk_pasien`, `umur_pasien`) VALUES
(1, 'Manisam', 'P', 20),
(2, 'Nisa', 'P', 21),
(3, 'Hasan', 'P', 22),
(4, 'Waniro', 'P', 12),
(5, 'Irma Husnita Batubara', 'P', 43),
(6, 'M. Ali simangunsang', 'L', 41),
(7, 'Aisyah', 'P', 35),
(8, 'Razen Antrolis', 'L', 30),
(9, 'Sunardi Senat', 'L', 82),
(10, 'Edi Suhendra', 'L', 35),
(11, 'Rismawati', 'P', 20),
(12, 'Desima Hutabarat', 'P', 20),
(13, 'Alesha', 'P', 18),
(14, 'Aira Salsabila', 'P', 14),
(15, 'Nurhayati', 'P', 24),
(16, 'Nur Risya Arcandita', 'P', 6),
(17, 'Yumna', 'P', 8),
(18, 'Nur Aisyah Nst', 'P', 37),
(19, 'Siti Hajar Lubis', 'P', 30),
(20, 'Andika', 'L', 18),
(21, 'Nova Juliati Pasaribu', 'P', 39),
(22, 'Ali Mukhtar Dasopang', 'L', 63),
(23, 'Edi Parulian', 'L', 62),
(24, 'Reka Aritonang', 'P', 20),
(25, 'Romenta Hutajulu', 'P', 28),
(26, 'Josua Nofriande', 'L', 23),
(27, 'Ade Sarah', 'P', 20),
(28, 'Kresna', 'L', 23),
(29, 'Romenta Hutajulu', 'P', 28),
(30, 'Rini Maharani', 'P', 28),
(31, 'M. Aziz', 'L', 16),
(32, 'Trisna Hidayanti', 'P', 30),
(33, 'Indra Suheri', 'L', 57),
(34, 'Akbar Ramadan', 'L', 19),
(35, 'Hasan Basri', 'L', 51),
(36, 'Edi Parulian', 'L', 62),
(37, 'Laila Suhada', 'P', 26),
(38, 'M. Husein Harahap', 'L', 55),
(39, 'Debby Arindi', 'P', 33),
(40, 'Fakri', 'L', 9),
(41, 'Nova Juliati Pasaribu', 'P', 39),
(42, 'Marintan Br.Hutasoit', 'P', 52),
(43, 'Rafa', 'L', 5),
(44, 'Irma Husnita Batubara', 'P', 43),
(45, 'Rifki Faturrahman', 'L', 21),
(46, 'Ester Wartini Sitanggang', 'P', 33),
(47, 'Eni Erita', 'P', 50),
(48, 'Juriadi', 'L', 36),
(49, 'Riki Fadila', 'L', 13),
(50, 'Anita Setyowati', 'P', 34),
(51, 'Anugrah Hairi', 'L', 30),
(52, 'Qurratu Airin', 'P', 39),
(53, 'Nuranggi Mawaddah Nst', 'P', 21),
(54, 'Lisdewi', 'P', 43),
(55, 'M. Yoga', 'L', 8),
(56, 'Lusi', 'P', 40),
(57, 'Diva', 'P', 18),
(58, 'Linda', 'P', 15),
(59, 'Audri Tarigar', 'L', 24),
(60, 'Rizka Dilla Utami', 'P', 19),
(61, 'Sri Hartati Rahayu', 'P', 35),
(62, 'Melia wati', 'P', 37),
(63, 'Lasmi', 'P', 50),
(64, 'Dhiya Nisrina Hanum', 'P', 19),
(65, 'Lasmi', 'P', 50),
(66, 'Zainal Abidin', 'L', 49),
(67, 'Muliadi', 'P', 48),
(68, 'Andika', 'L', 18),
(69, 'Anugrah Hairi', 'L', 30),
(70, 'Dhiya Nisrina Hanum', 'P', 19),
(71, 'Humaira', 'P', 23),
(72, 'Suriyani Oktavia', 'P', 34),
(73, 'Rizka Dilla Utami', 'P', 19),
(74, 'Afsari Dewi', 'P', 28),
(75, 'Surilana', 'P', 4),
(76, 'Lasmi', 'P', 50),
(77, 'Nuriati', 'P', 59),
(78, 'Sulasni S.Pd', 'P', 62),
(79, 'Syara Aida', 'P', 16),
(80, 'Salsa', 'P', 21),
(81, 'Darul SRG', 'L', 32),
(82, 'Salamat', 'L', 27),
(83, 'Gilang', 'L', 6),
(84, 'Rizka Larasati', 'P', 8),
(85, 'Syifa', 'P', 19),
(86, 'Bela', 'P', 17),
(87, 'Zaskia', 'P', 20),
(88, 'Insan', 'L', 23),
(89, 'Cut Mutia', 'P', 21),
(90, 'Hj. Nadima Tambunan', 'P', 75),
(91, 'Mimi', 'L', 32),
(92, 'Alika', 'P', 6),
(93, 'Alya', 'P', 10),
(94, 'Teti', 'P', 52),
(95, 'Hafiz', 'L', 19),
(96, 'Siti Amina', 'P', 55),
(97, 'Fatul Jannah', 'P', 21),
(98, 'Nasya', 'P', 20),
(99, 'Rizky', 'P', 15),
(100, 'Aji', 'L', 22),
(101, 'Firman', 'L', 36),
(102, 'Ibrahim Azmi Srg', 'L', 15),
(103, 'Siti Sarah', 'P', 24),
(104, 'Irma', 'P', 38),
(105, 'Jannah', 'P', 15),
(106, 'Yuridhani', 'P', 49),
(107, 'Ratih', 'P', 15),
(108, 'Fahri', 'L', 13),
(109, 'Joka', 'L', 64),
(110, 'Ayu', 'P', 25),
(111, 'Henni', 'P', 32),
(112, 'Surya', 'L', 36),
(113, 'Sari', 'P', 38),
(114, 'Dodi Susanto', 'L', 39),
(115, 'Rika', 'P', 30),
(116, 'Rahmadan', 'L', 46),
(117, 'Dina', 'P', 20),
(118, 'Novita', 'L', 31),
(119, 'Dinda', 'P', 21),
(120, 'Sarwindo Putra HSB', 'L', 31),
(121, 'Yusri', 'L', 38),
(122, 'Tuslina Turnip', 'P', 56),
(123, 'M. Irfan Barus', 'L', 7),
(124, 'Cewek/Irma', 'P', 30),
(125, 'Anggi', 'L', 23),
(126, 'Ainun', 'P', 26),
(127, 'Azmi Amanda SRG', 'L', 8),
(128, 'Kasno', 'L', 47),
(129, 'Afifa', 'P', 7),
(130, 'M.Fikri', 'L', 6),
(131, 'Tomi', 'L', 25),
(132, 'Fatir', 'L', 7),
(133, 'Aufar', 'L', 7),
(134, 'Naura', 'P', 9),
(135, 'Khania', 'P', 22),
(136, 'Pak Arsal Srg', 'L', 35),
(137, 'Sajida Khatima', 'P', 27),
(138, 'Misdayanti', 'P', 37),
(139, 'Siti Sajida', 'P', 25),
(140, 'Adli', 'P', 7),
(141, 'Elvi', 'P', 28),
(142, 'Yafrita', 'P', 56),
(143, 'Oka', 'L', 35),
(144, 'Abiyan', 'L', 8),
(145, 'Samara', 'P', 6),
(146, 'Ryan', 'L', 37),
(147, 'Wakija', 'P', 50),
(148, 'Putri', 'P', 21),
(149, 'Dila', 'P', 22),
(150, 'Azran', 'L', 17),
(151, 'Wati', 'P', 44),
(152, 'Delon', 'L', 16),
(153, 'Monica', 'P', 49),
(154, 'Nala', 'P', 18),
(155, 'Kanza', 'P', 7),
(156, 'Rusnidar', 'P', 33),
(157, 'Rofid', 'L', 16),
(158, 'Dedi', 'L', 30),
(159, 'Efrita', 'P', 19),
(160, 'Supiati', 'P', 60),
(161, 'Gabriel', 'L', 17),
(162, 'Karina', 'P', 5),
(163, 'Aditya', 'L', 17),
(164, 'Sri Astuti', 'P', 30),
(165, 'Miftah', 'P', 22),
(166, 'Riri', 'P', 23),
(167, 'Eva Susanti', 'P', 17),
(168, 'Mega', 'P', 25),
(169, 'Rahimanur', 'P', 66),
(170, 'Turah', 'P', 53),
(171, 'Eka Srg', 'P', 19),
(172, 'Nina', 'P', 52),
(173, 'Naomi', 'P', 13),
(174, 'Wana', 'P', 22),
(175, 'Ardan', 'L', 5),
(176, 'Meta', 'P', 31),
(177, 'Safali', 'L', 22),
(178, 'Yuni', 'P', 25),
(179, 'Kiki', 'L', 25),
(180, 'Adistya', 'P', 22),
(181, 'Ahmad', 'L', 34),
(182, 'Mahdi', 'L', 49),
(183, 'Khairuna', 'P', 30),
(184, 'Jia', 'P', 7),
(185, 'M. Amri', 'L', 52),
(186, 'Santi', 'P', 43),
(187, 'Siska', 'P', 40),
(188, 'Yogi', 'L', 16),
(189, 'Andien', 'P', 25),
(190, 'Wiwik', 'L', 33),
(191, 'Siti Jamila', 'P', 44),
(192, 'Kurniawan', 'L', 25),
(193, 'Irhas', 'L', 31),
(194, 'Fadlan', 'L', 7),
(195, 'Tuti', 'P', 42),
(196, 'Embun', 'P', 38),
(197, 'Fadil', 'L', 21),
(198, 'Wawi', 'P', 24),
(199, 'Inayah', 'P', 6),
(200, 'Inarah', 'P', 6),
(201, 'Mayka', 'P', 12),
(202, 'Ranggita', 'P', 10),
(203, 'Anisa', 'P', 19),
(204, 'Dimas', 'L', 22),
(205, 'Nurul', 'P', 9),
(206, 'Raudatul', 'P', 10),
(207, 'Gusti Nazwa', 'P', 16),
(208, 'Tarmiji', 'L', 71),
(209, 'Jihan', 'P', 18),
(210, 'Husna', 'P', 13),
(211, 'Arif Hidayat', 'L', 38),
(212, 'Ardi', 'L', 15),
(213, 'Fatima', 'P', 55),
(214, 'Aulia Panjaitan', 'P', 44),
(215, 'Prili', 'P', 7),
(216, 'Lia', 'P', 33),
(217, 'Sabrina', 'P', 14),
(218, 'Abdul Rojak', 'L', 17),
(219, 'Latifah', 'P', 21),
(220, 'Dalwina', 'P', 67),
(221, 'Dirga', 'L', 25),
(222, 'Hafiz', 'L', 3),
(223, 'Deni', 'L', 17),
(224, 'Evita', 'P', 23),
(225, 'Rijal', 'L', 22),
(226, 'Elisa', 'P', 25),
(227, 'Umar', 'L', 51),
(228, 'Sahril Srg', 'L', 76),
(229, 'Sifa', 'P', 21),
(230, 'Toudi', 'L', 31),
(231, 'Fitri', 'P', 28),
(232, 'M. Syahputra', 'L', 29),
(233, 'Nadya', 'P', 11),
(234, 'Agus', 'L', 42),
(235, 'Marlina Srg', 'P', 72),
(236, 'Jenni', 'P', 8),
(237, 'Hendra', 'L', 24),
(238, 'Ningsih', 'P', 33),
(239, 'Ismi Maulida', 'P', 9),
(240, 'Nizwa Faira', 'P', 7),
(241, 'Mawar', 'P', 31),
(242, 'Syahrani', 'P', 19),
(243, 'Ulfa', 'P', 36),
(244, 'Budiono', 'L', 37),
(245, 'Ermi', 'P', 49),
(246, 'Faisal', 'L', 46),
(247, 'Siti Rahma', 'P', 54),
(248, 'Salsabila', 'P', 15),
(249, 'Hesti', 'P', 24),
(250, 'Zahira', 'P', 6),
(251, 'Riskia', 'P', 8),
(252, 'Laila', 'P', 27),
(253, 'Nita', 'P', 33),
(254, 'Ngatiyem', 'P', 57),
(255, 'Kayla', 'P', 13),
(256, 'Habibi', 'L', 7),
(257, 'Iin', 'P', 27),
(258, 'Rohani', 'P', 70),
(259, 'Suci Amelia', 'P', 21),
(260, 'Tengku Soraya M', 'P', 35),
(261, 'Noviani', 'P', 35),
(262, 'Syahrial', 'L', 42),
(263, 'Lovli', 'P', 16),
(264, 'Liswati', 'P', 36),
(265, 'Antoni Srg', 'L', 55),
(266, 'Herman', 'L', 57),
(267, 'Nadira', 'P', 6),
(268, 'Ratna', 'P', 45),
(269, 'Jefri', 'L', 16),
(270, 'Zizan', 'L', 5),
(271, 'Wilson manik', 'L', 53),
(272, 'Nuryati', 'P', 60),
(273, 'Rahul', 'L', 22),
(274, 'Riska', 'P', 4),
(275, 'Reza', 'L', 17),
(276, 'Angga', 'L', 7),
(277, 'Fahrul Rozi', 'L', 24),
(278, 'Ramadani', 'L', 24),
(279, 'Pak Lubis', 'L', 45),
(280, 'Zahra', 'P', 8),
(281, 'Letisya', 'P', 11),
(282, 'Edi', 'L', 33),
(283, 'Warisan Turnip', 'L', 24),
(284, 'Rafi Alfurik', 'L', 9),
(285, 'Grace', 'P', 20),
(286, 'Yola', 'P', 25),
(287, 'Roky', 'L', 21),
(288, 'Halwa', 'P', 6),
(289, 'Arif', 'L', 6),
(290, 'Simanjuntak', 'L', 53),
(291, 'Lestari', 'L', 23),
(292, 'Akifa', 'P', 7),
(293, 'Kayla Putri', 'P', 7),
(294, 'Steven', 'L', 32),
(295, 'Ilmi', 'L', 33),
(296, 'M. Sutan Adha', 'L', 17),
(297, 'Anom', 'P', 31),
(298, 'Aira', 'P', 7),
(299, 'Rana', 'P', 22),
(300, 'Dini', 'P', 22),
(301, 'Alfian Rizky', 'L', 6),
(302, 'Yias Piah', 'L', 30),
(303, 'Sudirman', 'L', 34),
(304, 'M. Rafi Hsb', 'L', 4),
(305, 'Rudi Cahyadi', 'L', 46),
(306, 'Karisa', 'P', 15),
(307, 'Ralin', 'P', 5),
(308, 'Fita', 'P', 35),
(309, 'Ika', 'P', 35),
(310, 'M. Rafi', 'L', 5),
(311, 'Wahyu', 'L', 9),
(312, 'Abdullah Sulaiman', 'L', 17),
(313, 'Fahira', 'P', 56),
(314, 'Faiz', 'L', 18),
(315, 'Amanda', 'L', 16),
(316, 'Yeni', 'P', 36),
(317, 'Sheren', 'P', 27),
(318, 'Risma', 'P', 27),
(319, 'Windy', 'P', 32),
(320, 'Rupi Ayni', 'P', 57),
(321, 'Surya Sanjaya', 'L', 43),
(322, 'Lina', 'P', 47),
(323, 'Uci', 'P', 19),
(324, 'Ramadi', 'L', 20),
(325, 'Suaedah', 'P', 14),
(326, 'Fahrunisya', 'P', 14),
(327, 'Rini', 'P', 28),
(328, 'Gisel', 'P', 17),
(329, 'Abdul Rahman Lbs', 'L', 28),
(330, 'Laurensis Silalahi', 'P', 18),
(331, 'Suryani', 'P', 36),
(332, 'Saifulatif', 'L', 19),
(333, 'Al Azka', 'L', 4),
(334, 'Erik', 'L', 27),
(335, 'Maysarah Lbs', 'P', 32),
(336, 'Ahmad Rifai', 'L', 26),
(337, 'Saiful Arif', 'L', 19),
(338, 'Sampurno Pohan', 'L', 63),
(339, 'Asi', 'P', 11),
(340, 'Atifa', 'P', 7),
(341, 'Khadijah Lbs', 'P', 56),
(342, 'Ali Ibrahim', 'L', 5),
(343, 'Anisa Fitri', 'P', 22),
(344, 'Suwandi', 'L', 27),
(345, 'Prabu', 'L', 14),
(346, 'Nabila', 'P', 5),
(347, 'Aldi Nugroho', 'L', 20),
(348, 'Yulia', 'P', 22),
(349, 'Reni', 'P', 23),
(350, 'Maria', 'P', 20),
(351, 'Fatma', 'P', 22),
(352, 'Bestrika', 'P', 27),
(353, 'Ela', 'P', 33),
(354, 'Danil', 'L', 45),
(355, 'Kahfi', 'L', 5),
(356, 'Hikmal', 'L', 18),
(357, 'Gani Lbs', 'L', 47),
(358, 'Adif', 'L', 11),
(359, 'Aril', 'L', 15),
(360, 'Serli', 'P', 60),
(361, 'Jernih', 'P', 20),
(362, 'Sulhansyah', 'L', 30),
(363, 'Rut Sipahutar', 'P', 27),
(364, 'Novita Sari', 'P', 25),
(365, 'Janter Panjaitan', 'L', 53),
(366, 'Hajib Riziq Hsb', 'L', 3),
(367, 'Yasmin', 'P', 5),
(368, 'Syafiratu Nisya', 'P', 8),
(369, 'Mita', 'P', 26),
(370, 'Intan', 'P', 17),
(371, 'Farhan', 'L', 20),
(372, 'Zahwa', 'P', 19),
(373, 'Carisa', 'P', 12),
(374, 'Ismail Baharudin', 'L', 56),
(375, 'Addini', 'P', 18),
(376, 'Aqila', 'P', 7),
(377, 'Fadli', 'L', 46),
(378, 'Gita', 'P', 23),
(379, 'Bu Mola', 'P', 38),
(380, 'Sulis', 'P', 28),
(381, 'Raina', 'P', 6),
(382, 'Dewi', 'P', 39),
(383, 'Maya', 'P', 24),
(384, 'Senni', 'L', 29),
(385, 'Saugap Sitorus', 'L', 25),
(386, 'Rina', 'P', 27),
(387, 'Azizah', 'P', 27),
(388, 'Farida', 'P', 58),
(389, 'M. Qadar Nst', 'L', 24),
(390, 'Fujiyati', 'P', 57),
(391, 'Alim', 'L', 5),
(392, 'Alexander', 'L', 6),
(393, 'Mukhlas Nur', 'L', 10),
(394, 'Febi', 'P', 20),
(395, 'Seri Mahanum', 'P', 25),
(396, 'Fahrani', 'P', 20),
(397, 'Natasya', 'P', 28),
(398, 'Tina', 'P', 27),
(399, 'Reka', 'P', 19),
(400, 'Diana', 'P', 40),
(401, 'Nelli Lbs', 'P', 48),
(402, 'Rayen Zikri Bayhaqi', 'L', 8),
(403, 'Rafardan', 'L', 4),
(404, 'Dodi', 'L', 44),
(405, 'Yaya Pradita', 'P', 28),
(406, 'Qwilino', 'L', 5),
(407, 'Diki Satrio', 'L', 14),
(408, 'M. Agim', 'L', 19),
(409, 'Irfan', 'L', 27),
(410, 'Fani', 'P', 11),
(411, 'Edi Suardi', 'L', 56),
(412, 'Beby', 'P', 25),
(413, 'Nayla', 'P', 15),
(414, 'Nursyatika', 'P', 12),
(415, 'Aldi', 'L', 24),
(416, 'Aurel', 'P', 39),
(417, 'Alexa', 'P', 5),
(418, 'Suwarni', 'P', 67),
(419, 'Hasan', 'L', 17),
(420, 'Anggun', 'P', 28),
(421, 'Khaibal Khairi', 'L', 23),
(422, 'Nasida Husna', 'P', 14),
(423, 'Miranda', 'P', 22),
(424, 'Roen', 'L', 16),
(425, 'Qanita', 'P', 11),
(426, 'Ismiarti', 'P', 47),
(427, 'Budi', 'L', 26),
(428, 'Ana', 'P', 40),
(429, 'David', 'L', 19),
(430, 'M. Isa Lbs', 'L', 60),
(431, 'Juli', 'P', 35),
(432, 'Indah', 'P', 31),
(433, 'Ida', 'P', 38),
(434, 'Arsen', 'L', 6),
(435, 'Syifa Hrp', 'P', 8),
(436, 'Elfayeti', 'P', 59),
(437, 'Fatania', 'P', 14),
(438, 'Evi', 'P', 47),
(439, 'Kurnia Yasir Hrp', 'L', 33),
(440, 'Rafif', 'L', 11),
(441, 'Katija', 'P', 53),
(442, 'Syafira', 'P', 4),
(443, 'Nica', 'P', 15),
(444, 'Nova', 'P', 30),
(445, 'Tongku', 'L', 43),
(446, 'Ridho', 'L', 23),
(447, 'Faris Adel', 'L', 19),
(448, 'Hamdani', 'L', 55),
(449, 'Hendi', 'L', 37),
(450, 'Cia', 'P', 15),
(451, 'Arsaka', 'L', 6),
(452, 'Aynaya', 'P', 5),
(453, 'Sriyani', 'P', 53),
(454, 'Arifin Akbar', 'L', 7),
(455, 'Nandra', 'L', 52),
(456, 'Eni', 'P', 46),
(457, 'Wahyuni Sianipar', 'P', 37),
(458, 'Anak Wahyuni', 'P', 10),
(459, 'Nurbaiti', 'P', 50),
(460, 'Raya', 'P', 5),
(461, 'Zulafkar', 'L', 44),
(462, 'Fatan', 'L', 7),
(463, 'Mira', 'P', 19),
(464, 'Endang', 'P', 52),
(465, 'Nuraini', 'P', 61),
(466, 'Aulia fadlan', 'P', 24),
(467, 'Putri', 'P', 24),
(468, 'Aulia Fadli', 'P', 24),
(469, 'Husein', 'L', 28),
(470, 'M. Abizar Sitompul', 'L', 5),
(471, 'Nova', 'P', 30),
(472, 'Erwinda Santi', 'P', 31),
(473, 'Alil', 'L', 63),
(474, 'Rusminar', 'P', 65),
(475, 'Eska', 'P', 30),
(476, 'Rahmad Mulia', 'L', 10),
(477, 'Khosyanti', 'P', 20),
(478, 'Siti Kayla', 'P', 20),
(479, 'Satri', 'L', 23),
(480, 'Putra Azmi', 'L', 20),
(481, 'Samsul Bahri Nst', 'L', 50),
(482, 'Ahmad Idris', 'L', 26),
(483, 'Lutfin Bachri', 'L', 9),
(484, 'M. Amarv Alfatih', 'L', 5),
(485, 'Leni', 'P', 59),
(486, 'Rio', 'L', 24),
(487, 'Musa Irwan', 'L', 39),
(488, 'Mika', 'P', 9),
(489, 'Jihan Salsabila', 'P', 8),
(490, 'Dwi Suprastiani', 'P', 27),
(491, 'Yunita', 'P', 30),
(492, 'Suryo Purnomo', 'L', 13),
(493, 'Racio Sinaga', 'L', 16),
(494, 'Jamal', 'L', 40),
(495, 'Loli', 'P', 39),
(496, 'Anita Prilia Sari', 'P', 39),
(497, 'Rizki', 'L', 22),
(498, 'Darwita', 'P', 73),
(499, 'Feti Fatima', 'P', 26),
(500, 'Nur Hafnida', 'P', 44),
(501, 'Amalia', 'P', 24),
(502, 'Iga', 'P', 31),
(503, 'Rasidah', 'P', 57),
(504, 'M. Ginting', 'L', 60),
(505, 'Munazir', 'L', 33),
(506, 'SIgaral Aidal', 'L', 18),
(507, 'Fira', 'P', 24),
(508, 'Firda', 'P', 23),
(509, 'Daniel Saputra', 'L', 22),
(510, 'fakan fadilah', 'L', 18),
(511, 'Zulaini', 'L', 52),
(512, 'Ria Sihombing', 'P', 33),
(513, 'Efendi', 'L', 60),
(514, 'Arya', 'L', 15),
(515, 'Juara Monang', 'L', 29),
(516, 'Sahli Srg', 'L', 62),
(517, 'Zaki', 'L', 10),
(518, 'Ranto', 'L', 44),
(519, 'Nisa', 'P', 29),
(520, 'Yuli', 'P', 29),
(521, 'Audrey', 'P', 7),
(522, 'Oki Mora', 'P', 34),
(523, 'Niki', 'L', 30),
(524, 'Ahmad Roihan', 'L', 39),
(525, 'Tauhid', 'L', 20),
(526, 'Aditia', 'L', 23),
(527, 'Selly', 'P', 20),
(528, 'Yuristia', 'P', 32),
(529, 'Bimbi', 'L', 24),
(530, 'Swalki', 'L', 4),
(531, 'Ahmed Saferuddin', 'L', 55),
(532, 'Ridhona', 'L', 7),
(533, 'Suadi', 'L', 52),
(534, 'Uli', 'P', 18),
(535, 'Murni', 'P', 20),
(536, 'Mukti Taruna', 'L', 22),
(537, 'M. Alisya Dewa', 'L', 12),
(538, 'Syafitri', 'P', 18),
(539, 'Manda', 'P', 30),
(540, 'Susilawati', 'P', 56),
(541, 'Wulan', 'P', 28),
(542, 'Ade', 'P', 37),
(543, 'Yawi', 'P', 55),
(544, 'Aura', 'P', 21),
(545, 'Warda', 'P', 15),
(546, 'Marlina', 'P', 28),
(547, 'Ali Dores', 'L', 36),
(548, 'Khairani', 'P', 22),
(549, 'Mely Dwina', 'P', 22),
(550, 'Asrijul', 'L', 38),
(551, 'Ali Muktar', 'L', 61),
(552, 'Alka', 'L', 6),
(553, 'Frengky', 'L', 45),
(554, 'Misna Salima', 'P', 35),
(555, 'Devi', 'P', 29);

-- --------------------------------------------------------

--
-- Table structure for table `resep_obat`
--

CREATE TABLE `resep_obat` (
  `id_resep` int(11) NOT NULL,
  `id_berobat` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nik_user` bigint(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nik_user`, `username`, `password`, `nama_lengkap`) VALUES
(3, 1234567891011123, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Ridho Pandu'),
(7, 987654321019283, 'Lia', '0eb7b29e307538e202bd733e1df3a34884c5b5a8', 'Eka Satria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berobat`
--
ALTER TABLE `berobat`
  ADD PRIMARY KEY (`id_berobat`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `resep_obat`
--
ALTER TABLE `resep_obat`
  ADD PRIMARY KEY (`id_resep`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_berobat` (`id_berobat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berobat`
--
ALTER TABLE `berobat`
  MODIFY `id_berobat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT for table `resep_obat`
--
ALTER TABLE `resep_obat`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berobat`
--
ALTER TABLE `berobat`
  ADD CONSTRAINT `berobat_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON UPDATE CASCADE,
  ADD CONSTRAINT `berobat_ibfk_2` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Constraints for table `resep_obat`
--
ALTER TABLE `resep_obat`
  ADD CONSTRAINT `resep_obat_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE,
  ADD CONSTRAINT `resep_obat_ibfk_2` FOREIGN KEY (`id_berobat`) REFERENCES `berobat` (`id_berobat`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
