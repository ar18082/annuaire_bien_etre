-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 11:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `annuaire_bien_etre`
--

-- --------------------------------------------------------

--
-- Table structure for table `abus`
--

CREATE TABLE `abus` (
  `id` int(11) NOT NULL,
  `internaute_id` int(11) DEFAULT NULL,
  `commentaire_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `encodage` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bloc`
--

CREATE TABLE `bloc` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorie_de_services`
--

CREATE TABLE `categorie_de_services` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `en_avant` tinyint(1) DEFAULT NULL,
  `valide` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorie_de_services`
--

INSERT INTO `categorie_de_services` (`id`, `nom`, `description`, `en_avant`, `valide`) VALUES
(1, 'Coiffure', 'Pour une coupe de cheveux réussie et une mise en beauté capillaire, découvrez les meilleurs salons de coiffure près de chez vous.\r\n', NULL, NULL),
(2, 'Remise en forme', 'Pour prendre soin de votre corps et de votre santé, rien de tel qu\'une remise en forme régulière. Des coachs sportifs professionnels et des salles de sport équipées vous accompagneront pour atteindre vos objectifs.', NULL, NULL),
(3, 'Institut de beauté', 'Pour une peau resplendissante et une relaxation totale, les instituts de beauté sont l\'endroit idéal. Des esthéticiennes qualifiées vous proposent des soins du visage, des massages, des épilations et bien plus encore.\r\n', NULL, NULL),
(4, 'Thermes', 'Les thermes sont des centres de bien-être où vous pourrez vous détendre dans des piscines thermales, des saunas et des bains à remous. Profitez d\'un moment de relaxation totale pour apaiser votre corps et votre esprit.', NULL, NULL),
(5, 'Nutrition', 'Une alimentation saine est la base d\'un corps sain et d\'un esprit sain. Des nutritionnistes et des diététiciens professionnels vous guideront dans votre cheminement vers une alimentation équilibrée et adaptée à vos besoins.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `code_postal`
--

CREATE TABLE `code_postal` (
  `id` int(11) NOT NULL,
  `code_postal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `code_postal`
--

INSERT INTO `code_postal` (`id`, `code_postal`) VALUES
(1, '5300'),
(2, '5680'),
(3, '5590'),
(4, '6723'),
(5, '6851'),
(6, '1970'),
(7, '4263'),
(8, '4610'),
(9, '4190'),
(10, '4800'),
(11, '4260'),
(12, '7503'),
(13, '6534'),
(14, '7031'),
(15, '7333'),
(16, '6596'),
(17, '6463'),
(18, '6594'),
(19, '7030'),
(20, '1330'),
(21, '1476'),
(22, '5640'),
(23, '5575'),
(24, '6671'),
(25, '6698'),
(26, '6832'),
(27, '6838'),
(28, '6922'),
(29, '4877'),
(30, '4450'),
(31, '4790'),
(32, '4650'),
(33, '4100'),
(34, '7610'),
(35, '7131'),
(36, '7522'),
(37, '6280'),
(38, '7322'),
(39, '7803'),
(40, '6543'),
(41, '7601'),
(42, '6591'),
(43, '6560'),
(44, '1340'),
(45, '1474'),
(46, '5560'),
(47, '5646'),
(48, '5020'),
(49, '5573'),
(50, '5100'),
(51, '6672'),
(52, '6747'),
(53, '6767'),
(54, '6813'),
(55, '6830'),
(56, '6833'),
(57, '6870'),
(58, '1640'),
(59, '9600'),
(60, '4607'),
(61, '4730'),
(62, '4180'),
(63, '4351'),
(64, '4560'),
(65, '4431'),
(66, '4780'),
(67, '4654'),
(68, '7784'),
(69, '7624'),
(70, '7712'),
(71, '7301'),
(72, '6592'),
(73, '1404'),
(74, '1435'),
(75, '5621'),
(76, '5010'),
(77, '5503'),
(78, '5543'),
(79, '5336'),
(80, '6600'),
(81, '6921'),
(82, '6941'),
(83, '6951'),
(84, '6960'),
(85, '4860'),
(86, '4367'),
(87, '4102'),
(88, '4160'),
(89, '4721'),
(90, '4711'),
(91, '4672'),
(92, '4890'),
(93, '4042'),
(94, '4600'),
(95, '6060'),
(96, '6099'),
(97, '7050'),
(98, '7904'),
(99, '1300'),
(100, '5574'),
(101, '5081'),
(102, '6741'),
(103, '6800'),
(104, '6820'),
(105, '6953'),
(106, '4400'),
(107, '4602'),
(108, '4682'),
(109, '4837'),
(110, '4340'),
(111, '4601'),
(112, '4550'),
(113, '4000'),
(114, '4770'),
(115, '4621'),
(116, '7020'),
(117, '7300'),
(118, '7970'),
(119, '7110'),
(120, '6531'),
(121, '7780'),
(122, '7531'),
(123, '7520'),
(124, '1320'),
(125, '5376'),
(126, '5641'),
(127, '5340'),
(128, '6663'),
(129, '6666'),
(130, '6810'),
(131, '6887'),
(132, '4432'),
(133, '4120'),
(134, '4161'),
(135, '4783'),
(136, '4032'),
(137, '4257'),
(138, '4852'),
(139, '4470'),
(140, '7801'),
(141, '7850'),
(142, '6150'),
(143, '7331'),
(144, '7620'),
(145, '7060'),
(146, '7000'),
(147, '7870'),
(148, '7533'),
(149, '7062'),
(150, '7711'),
(151, '7190'),
(152, '7532'),
(153, '1410'),
(154, '1480'),
(155, '5333'),
(156, '5080'),
(157, '3790'),
(158, '6661'),
(159, '6680'),
(160, '6823'),
(161, '6824'),
(162, '6850'),
(163, '6852'),
(164, '4784'),
(165, '4980'),
(166, '4830'),
(167, '4053'),
(168, '4720'),
(169, '7510'),
(170, '7860'),
(171, '7782'),
(172, '6223'),
(173, '1367'),
(174, '1457'),
(175, '1461'),
(176, '5589'),
(177, '5537'),
(178, '5651'),
(179, '6660'),
(180, '6742'),
(181, '4253'),
(182, '4101'),
(183, '4960'),
(184, '4791'),
(185, '4420'),
(186, '6110'),
(187, '6210'),
(188, '6530'),
(189, '7643'),
(190, '6041'),
(191, '6542'),
(192, '7011'),
(193, '1370'),
(194, '1401'),
(195, '1430'),
(196, '5363'),
(197, '5555'),
(198, '5501'),
(199, '5024'),
(200, '5031'),
(201, '5377'),
(202, '3792'),
(203, '6670'),
(204, '6980'),
(205, '4141'),
(206, '4841'),
(207, '4350'),
(208, '4280'),
(209, '4623'),
(210, '4254'),
(211, '4317'),
(212, '4218'),
(213, '7160'),
(214, '7760'),
(215, '6061'),
(216, '7134'),
(217, '7941'),
(218, '7940'),
(219, '7021'),
(220, '6441'),
(221, '7621'),
(222, '1342'),
(223, '1440'),
(224, '1460'),
(225, '5372'),
(226, '5544'),
(227, '5330'),
(228, '5521'),
(229, '4590'),
(230, '4121'),
(231, '4900'),
(232, '4261'),
(233, '4653'),
(234, '7861'),
(235, '6044'),
(236, '6511'),
(237, '7642'),
(238, '6120'),
(239, '7070'),
(240, '1301'),
(241, '1470'),
(242, '1473'),
(243, '5502'),
(244, '5380'),
(245, '5563'),
(246, '5670'),
(247, '6686'),
(248, '6750'),
(249, '6760'),
(250, '6971'),
(251, '4577'),
(252, '4834'),
(253, '4162'),
(254, '4990'),
(255, '4050'),
(256, '4557'),
(257, '4681'),
(258, '6533'),
(259, '6221'),
(260, '7880'),
(261, '6593'),
(262, '7191'),
(263, '6500'),
(264, '6142'),
(265, '7862'),
(266, '7600'),
(267, '7504'),
(268, '6220'),
(269, '1341'),
(270, '5576'),
(271, '5540'),
(272, '5362'),
(273, '5570'),
(274, '5334'),
(275, '6790'),
(276, '6940'),
(277, '1950'),
(278, '4620'),
(279, '4171'),
(280, '4041'),
(281, '7320'),
(282, '7973'),
(283, '7100'),
(284, '7012'),
(285, '7380'),
(286, '5352'),
(287, '5022'),
(288, '5542'),
(289, '6662'),
(290, '6700'),
(291, '6724'),
(292, '6856'),
(293, '6972'),
(294, '4181'),
(295, '4700'),
(296, '4347'),
(297, '4652'),
(298, '7740'),
(299, '6200'),
(300, '6030'),
(301, '7618'),
(302, '7912'),
(303, '6590'),
(304, '6461'),
(305, '1332'),
(306, '1402'),
(307, '5620'),
(308, '6681'),
(309, '6717'),
(310, '6761'),
(311, '6840'),
(312, '4670'),
(313, '4500'),
(314, '4870'),
(315, '4970'),
(316, '4360'),
(317, '7512'),
(318, '6031'),
(319, '7911'),
(320, '7548'),
(321, '6111'),
(322, '7502'),
(323, '6222'),
(324, '1348'),
(325, '1472'),
(326, '5310'),
(327, '5032'),
(328, '5361'),
(329, '6781'),
(330, '4520'),
(331, '4030'),
(332, '4357'),
(333, '4845'),
(334, '4051'),
(335, '7140'),
(336, '7500'),
(337, '7370'),
(338, '7750'),
(339, '6182'),
(340, '7700'),
(341, '7506'),
(342, '7170'),
(343, '5140'),
(344, '5360'),
(345, '6692'),
(346, '6721'),
(347, '6780'),
(348, '6997'),
(349, '4840'),
(350, '4210'),
(351, '4130'),
(352, '4480'),
(353, '7823'),
(354, '7804'),
(355, '7330'),
(356, '6140'),
(357, '7334'),
(358, '7387'),
(359, '7041'),
(360, '7830'),
(361, '1360'),
(362, '5541'),
(363, '5644'),
(364, '5374'),
(365, '5504'),
(366, '5562'),
(367, '3717'),
(368, '6640'),
(369, '6929'),
(370, '1630'),
(371, '4760'),
(372, '4802'),
(373, '4631'),
(374, '4633'),
(375, '4630'),
(376, '6470'),
(377, '7971'),
(378, '7010'),
(379, '7181'),
(380, '7972'),
(381, '7641'),
(382, '5364'),
(383, '5520'),
(384, '6673'),
(385, '6834'),
(386, '6836'),
(387, '6920'),
(388, '6924'),
(389, '6986'),
(390, '1547'),
(391, '4761'),
(392, '4651'),
(393, '4570'),
(394, '4950'),
(395, '4701'),
(396, '7513'),
(397, '7603'),
(398, '6462'),
(399, '7024'),
(400, '7022'),
(401, '7890'),
(402, '7608'),
(403, '7133'),
(404, '5012'),
(405, '5351'),
(406, '5561'),
(407, '3791'),
(408, '6687'),
(409, '6688'),
(410, '6730'),
(411, '4801'),
(412, '4287'),
(413, '4983'),
(414, '4750'),
(415, '4342'),
(416, '4671'),
(417, '4460'),
(418, '4820'),
(419, '7622'),
(420, '6464'),
(421, '7811'),
(422, '7534'),
(423, '6141'),
(424, '7543'),
(425, '7611'),
(426, '7943'),
(427, '7090'),
(428, '6230'),
(429, '7063'),
(430, '6211'),
(431, '1325'),
(432, '1421'),
(433, '1490'),
(434, '5530'),
(435, '5150'),
(436, '6812'),
(437, '6890'),
(438, '6900'),
(439, '6950'),
(440, '6990'),
(441, '1780'),
(442, '4880'),
(443, '4031'),
(444, '4684'),
(445, '4910'),
(446, '7080'),
(447, '7332'),
(448, '6460'),
(449, '7742'),
(450, '7141'),
(451, '7061'),
(452, '5370'),
(453, '5350'),
(454, '5500'),
(455, '5572'),
(456, '5550'),
(457, '5522'),
(458, '5002'),
(459, '5524'),
(460, '3793'),
(461, '8957'),
(462, '6821'),
(463, '6983'),
(464, '4690'),
(465, '4731'),
(466, '4771'),
(467, '6532'),
(468, '7812'),
(469, '6250'),
(470, '6020'),
(471, '7910'),
(472, '7906'),
(473, '7866'),
(474, '1390'),
(475, '1471'),
(476, '5523'),
(477, '5190'),
(478, '5354'),
(479, '5630'),
(480, '5004'),
(481, '5170'),
(482, '6762'),
(483, '6792'),
(484, '6853'),
(485, '6970'),
(486, '4728'),
(487, '4452'),
(488, '4683'),
(489, '4530'),
(490, '4052'),
(491, '4451'),
(492, '7340'),
(493, '6180'),
(494, '7542'),
(495, '7501'),
(496, '6536'),
(497, '6440'),
(498, '7538'),
(499, '6240'),
(500, '7623'),
(501, '6075'),
(502, '7730'),
(503, '6183'),
(504, '7536'),
(505, '6032'),
(506, '7822'),
(507, '5001'),
(508, '5650'),
(509, '5332'),
(510, '5000'),
(511, '5580'),
(512, '6674'),
(513, '6720'),
(514, '6743'),
(515, '6927'),
(516, '6982'),
(517, '4140'),
(518, '4458'),
(519, '4680'),
(520, '7942'),
(521, '6001'),
(522, '6010'),
(523, '6238'),
(524, '7321'),
(525, '7810'),
(526, '7951'),
(527, '7950'),
(528, '1450'),
(529, '1495'),
(530, '5003'),
(531, '6630'),
(532, '6637'),
(533, '6690'),
(534, '6831'),
(535, '1620'),
(536, '4632'),
(537, '4821'),
(538, '4252'),
(539, '4099'),
(540, '4987'),
(541, '4250'),
(542, '4710'),
(543, '7900'),
(544, '7521'),
(545, '7743'),
(546, '6000'),
(547, '6224'),
(548, '7390'),
(549, '1380'),
(550, '1400'),
(551, '5070'),
(552, '5600'),
(553, '5660'),
(554, '3798'),
(555, '6704'),
(556, '6782'),
(557, '6791'),
(558, '6952'),
(559, '4540'),
(560, '4122'),
(561, '4782'),
(562, '4217'),
(563, '4300'),
(564, '7511'),
(565, '7033'),
(566, '7802'),
(567, '7040'),
(568, '7864'),
(569, '6181'),
(570, '6567'),
(571, '7382'),
(572, '7350'),
(573, '7130'),
(574, '7901'),
(575, '1310'),
(576, '1315'),
(577, '1331'),
(578, '5571'),
(579, '5564'),
(580, '8587'),
(581, '6706'),
(582, '6740'),
(583, '4170'),
(584, '4861'),
(585, '4850'),
(586, '4537'),
(587, '4606'),
(588, '4831'),
(589, '4219'),
(590, '4608'),
(591, '4453'),
(592, '7120'),
(593, '7540'),
(594, '7604'),
(595, '7530'),
(596, '7602'),
(597, '7180'),
(598, '6043'),
(599, '7903'),
(600, '1350'),
(601, '1357'),
(602, '5030'),
(603, '5021'),
(604, '6811'),
(605, '6860'),
(606, '6880'),
(607, '6984'),
(608, '6987'),
(609, '4163'),
(610, '4851'),
(611, '4020'),
(612, '4920'),
(613, '7034'),
(614, '7800'),
(615, '6540'),
(616, '7032'),
(617, '6042'),
(618, '6040'),
(619, '7783'),
(620, '5060'),
(621, '5101'),
(622, '5353'),
(623, '6769'),
(624, '4624'),
(625, '4040'),
(626, '4430'),
(627, '7863'),
(628, '7640'),
(629, '7781'),
(630, '1420'),
(631, '1428');

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `prestataire_id` int(11) DEFAULT NULL,
  `internaute_id` int(11) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `contenu` varchar(255) DEFAULT NULL,
  `cote` int(11) DEFAULT NULL,
  `encodage` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230114152926', '2023-01-14 15:30:25', 2620),
('DoctrineMigrations\\Version20230114161917', '2023-01-14 16:20:03', 200),
('DoctrineMigrations\\Version20230114162350', '2023-01-14 16:24:32', 161),
('DoctrineMigrations\\Version20230305161615', '2023-03-05 16:16:27', 1200),
('DoctrineMigrations\\Version20230309190505', '2023-03-09 19:05:19', 967),
('DoctrineMigrations\\Version20230425161001', '2023-04-25 16:11:02', 1480),
('DoctrineMigrations\\Version20230429142536', '2023-04-29 14:25:57', 1525),
('DoctrineMigrations\\Version20230429153401', '2023-04-29 15:34:14', 263),
('DoctrineMigrations\\Version20230508195101', '2023-05-08 19:51:14', 1069),
('DoctrineMigrations\\Version20230513141954', '2023-05-13 14:20:41', 1157),
('DoctrineMigrations\\Version20230521104754', '2023-05-21 10:48:03', 1077),
('DoctrineMigrations\\Version20230521115102', '2023-05-21 11:51:14', 241),
('DoctrineMigrations\\Version20230521140645', '2023-05-21 14:06:52', 99),
('DoctrineMigrations\\Version20230521144329', '2023-05-21 14:43:38', 127),
('DoctrineMigrations\\Version20230521145757', '2023-05-21 14:58:05', 207),
('DoctrineMigrations\\Version20230521182150', '2023-05-21 18:22:00', 1160);

-- --------------------------------------------------------

--
-- Table structure for table `favori`
--

CREATE TABLE `favori` (
  `id` int(11) NOT NULL,
  `presataire_id` int(11) DEFAULT NULL,
  `internaute_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `internaute_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `prestataire_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `internaute_id`, `image_name`, `prestataire_id`, `categorie_id`) VALUES
(1, 1, 'internaute1.jpg', NULL, NULL),
(2, NULL, 'logo_prestataire_10.webp', 10, NULL),
(3, NULL, 'coiffure.jpeg', NULL, 1),
(4, NULL, 'institut_beaute.jpg', NULL, 3),
(5, NULL, 'thermes.jpg', NULL, 4),
(6, NULL, 'remise_en_forme.jpg', NULL, 2),
(7, NULL, 'nutrition.jpg', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `internaute`
--

CREATE TABLE `internaute` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `internaute`
--

INSERT INTO `internaute` (`id`, `nom`, `prenom`, `newsletter`) VALUES
(1, 'Rizzo', 'Antonino', NULL),
(2, 'Rizzo', 'Antoine', NULL),
(3, 'toto', 'titi', NULL),
(4, 'toto', 'titi', NULL),
(5, 'toto', 'titi', NULL),
(6, 'toto', 'Antonino', NULL),
(7, 'toto', 'Antonino', NULL),
(8, 'Rizzo', 'titi', NULL),
(9, 'toto', 'fff', NULL),
(10, 'Rizzo', 'cho', NULL),
(11, 'Rizzo', 'Antonino', NULL),
(12, 'Rizzo', '\'rrrgr', NULL),
(13, 'Rizzo', 'rttyyyu', NULL),
(14, 'toto', 'totototot', NULL),
(15, 'rizzo', 'antonino a', NULL),
(16, 'Rizzo', 'Antonino', NULL),
(17, 'Rizzo', 'Antonino', NULL),
(18, 'Rizzo', 'Antonino', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:21:\\\"Sendin emails is fun \\\";i:1;s:5:\\\"utf-8\\\";i:2;s:29:\\\"<p>see twig intergration </p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:17:\\\"Hello@exemple.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@exemple.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:23:\\\"Time for Symfony Mailer\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-04 17:01:15', '2023-03-04 17:01:15', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:21:\\\"Sendin emails is fun \\\";i:1;s:5:\\\"utf-8\\\";i:2;s:29:\\\"<p>see twig intergration </p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:17:\\\"Hello@exemple.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@exemple.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:23:\\\"Time for Symfony Mailer\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-04 17:06:33', '2023-03-04 17:06:33', NULL),
(3, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:21:\\\"Sendin emails is fun \\\";i:1;s:5:\\\"utf-8\\\";i:2;s:29:\\\"<p>see twig intergration </p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:14:\\\"ar18082@me.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@exemple.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:23:\\\"Time for Symfony Mailer\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-04 18:17:36', '2023-03-04 18:17:36', NULL),
(4, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:21:\\\"Sendin emails is fun \\\";i:1;s:5:\\\"utf-8\\\";i:2;s:29:\\\"<p>see twig intergration </p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:14:\\\"ar18082@me.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@exemple.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:23:\\\"Time for Symfony Mailer\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-04 18:17:42', '2023-03-04 18:17:42', NULL),
(5, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:17:\\\"hello@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-04 18:42:05', '2023-03-04 18:42:05', NULL),
(6, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:17:\\\"hello@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 12:31:52', '2023-03-05 12:31:52', NULL),
(7, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 12:34:42', '2023-03-05 12:34:42', NULL),
(8, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 12:35:52', '2023-03-05 12:35:52', NULL),
(9, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 12:58:44', '2023-03-05 12:58:44', NULL),
(10, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 12:58:53', '2023-03-05 12:58:53', NULL),
(11, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 13:00:13', '2023-03-05 13:00:13', NULL),
(12, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 13:00:50', '2023-03-05 13:00:50', NULL),
(13, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 13:02:48', '2023-03-05 13:02:48', NULL),
(14, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 13:11:16', '2023-03-05 13:11:16', NULL);
INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(15, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:10:\\\"on est ok \\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 13:11:59', '2023-03-05 13:11:59', NULL),
(16, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:10:\\\"on est ok \\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 13:19:41', '2023-03-05 13:19:41', NULL),
(17, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:10:\\\"on est ok \\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:26:\\\"antonino.noreply@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 13:20:55', '2023-03-05 13:20:55', NULL),
(18, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:10:\\\"on est ok \\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:26:\\\"antonino.noreply@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 13:26:49', '2023-03-05 13:26:49', NULL),
(19, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:10:\\\"on est ok \\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:28:\\\"antonino.noreply@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:26:\\\"antonino.noreply@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-05 13:40:39', '2023-03-05 13:40:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `publication` date DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `document_pdf` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `bloc_id` int(11) DEFAULT NULL,
  `internaute_id` int(11) DEFAULT NULL,
  `ordre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prestataire`
--

CREATE TABLE `prestataire` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `site_internet` varchar(255) DEFAULT NULL,
  `numtel` varchar(255) DEFAULT NULL,
  `numtva` varchar(255) DEFAULT NULL,
  `utilisateur_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prestataire`
--

INSERT INTO `prestataire` (`id`, `nom`, `site_internet`, `numtel`, `numtva`, `utilisateur_id`, `categorie_id`) VALUES
(1, 'DB esthétique', 'www.test.be', '+3288012282', '0664519383', 40, 4),
(2, 'DB esthétique', 'www.test.be', '+3288012282', '0664519383', 35, 3),
(3, 'DB esthétique', NULL, '+3288012282', '0664519383', 37, 2),
(4, 'arweb', NULL, '+3288012282', '45454545545436', 39, 5),
(5, 'arweb1', 'www.test.be', '+3288012282', '0664519383', 43, 4),
(9, 'arweb2', 'www.test.be', '+3288012282', '0664519383', 44, 2),
(10, 'esi-informatique', 'https://www.esi-informatique.com/', '+3288012282', '0664519383', 45, 2),
(11, 'esi-web', 'https://www.esi-informatique.com/', '+3288012282', '0664519383', 46, 1),
(14, 'bestweb', 'www.test.be', '+3288012282', '0664519383', 47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `categorie_de_services_id` int(11) DEFAULT NULL,
  `prestataire_id` int(11) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `document_pdf` longblob DEFAULT NULL,
  `debut` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `affichage_de` date DEFAULT NULL,
  `affichage_jusque` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposer`
--

CREATE TABLE `proposer` (
  `id` int(11) NOT NULL,
  `categorie_de_services_id` int(11) DEFAULT NULL,
  `prestataire_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `region_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `region_name`) VALUES
(1, 'Namur'),
(2, 'Luxembourg'),
(3, 'Brabant flamand'),
(4, 'Liège'),
(5, 'Hainaut'),
(6, 'Brabant wallon'),
(7, 'Flandre orientale'),
(8, 'Limbourg'),
(9, 'Flandre occidentale');

-- --------------------------------------------------------

--
-- Table structure for table `stage`
--

CREATE TABLE `stage` (
  `id` int(11) NOT NULL,
  `prestataire_id` int(11) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tarif` varchar(255) DEFAULT NULL,
  `info_complementaire` varchar(255) DEFAULT NULL,
  `debut` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `affichage_de` date DEFAULT NULL,
  `affichage_jusque` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `internaute_id` int(11) DEFAULT NULL,
  `prestataire_id` int(11) DEFAULT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `adresse_number` varchar(255) DEFAULT NULL,
  `adresse_rue` varchar(255) DEFAULT NULL,
  `inscription` date NOT NULL,
  `type_utilisateur` varchar(255) DEFAULT NULL,
  `nb_essais_infructueux` int(11) DEFAULT NULL,
  `banni` tinyint(1) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `inscript_confirm` tinyint(1) NOT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `code_postal_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `internaute_id`, `prestataire_id`, `email`, `roles`, `password`, `adresse_number`, `adresse_rue`, `inscription`, `type_utilisateur`, `nb_essais_infructueux`, `banni`, `is_verified`, `inscript_confirm`, `ville_id`, `region_id`, `code_postal_id`) VALUES
(1, NULL, NULL, 'test@test.be', '[]', '$2y$13$ZJFBOL6abjv8BsSceWeJNuFRirjHoLnPnTP22tYLEG8alSBw1UFrS', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(2, NULL, NULL, 'testtest@test.be', '[]', '$2y$13$vX9ZIeiTaHHuskNSmjWt6O.snd4QvgoIW8RXknLshpXl4oCwIwqdy', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(3, NULL, NULL, 'test3@test.be', '[]', '$2y$13$Ay49m9erRGs.uke9Yo1t6uEDYJxXducHeCk/ouTerutOJ6SmTvP42', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(4, NULL, NULL, 'test4@test.be', '[]', '$2y$13$FlHta9qMIa7.26sQB/2mueJID3g7qYesgOm77.KkMP8.2fW0ghQDy', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(5, NULL, NULL, 'test5@test.be', '[]', '$2y$13$2BaA2IfY.pyBVir4pMVQ4eJViT23XL8fwr6iu4Aked8v8fG7uo0wi', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(6, NULL, NULL, 'test001@test.be', '[]', '$2y$13$h68UOugaHRIQ7gUBC4bkfe8QQLDadrQFV0B5Udkf0zugFGVuBL9Da', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(7, NULL, NULL, 'ar18082@me.com', '[]', '$2y$13$IxnaHQCbAjE7asGdtCkzw.GFqbcjSu1lxv2mVGb.Vedh5BE/LM.WO', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(8, NULL, NULL, 'ar18083@me.com', '[]', '$2y$13$4Cm5P9PLuQ0Ul0AHDtjvDO7rUoca7iZM0xYXm3B0TTlfoaTlaeDXO', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(9, NULL, NULL, 'ar18000@me.com', '[]', '$2y$13$IawIpJgcWSB2KJFYhSbkYez5CsWbmkbWfItGDzFFhEoS3LZf9vmjO', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(10, NULL, NULL, 'ar18111@me.com', '[]', '$2y$13$PCQxxjLI56wwKEZPYUSosOzw8Umgww/D4VXP5TxnESS77eeMTMMEq', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(11, NULL, NULL, 'aaaranerfr1@me.com', '[]', '$2y$13$GHBXw1ZQVt00dMxla4IJwu0YwvW/iRqX6iRHWssj.BPT.MhUbA.ge', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(12, NULL, NULL, 'fzffrgrgrgg@flmf.com', '[]', '$2y$13$ZBaacZROPos4wnd4rl8AYOIgJYSn8q23P0BzGpq.yz/tSTEmmlSUW', NULL, NULL, '2023-03-05', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(13, NULL, NULL, 'arve@ave.be', '[]', '$2y$13$a8zKyd5geVFQjiWVnij95OoauU/BvCuuSQ1AJ0s8ADGlGpJ4s93QW', NULL, NULL, '2023-03-09', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(14, NULL, NULL, 'herve@ave.be', '[]', '$2y$13$7Z3oZJ6BsRYCcrFksJj.COd1WnVboG2x1jXWZJxOvZ/QcL3H6Ftk.', NULL, NULL, '2023-03-09', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(15, NULL, NULL, 'debo@dee.be', '[]', '$2y$13$ZQuVn8fFMB5xS7NqzcQbauPszUReNAFZuDWsrmas9lkkzL0vajdS2', NULL, NULL, '2023-03-09', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(16, NULL, NULL, 'ar180@me.com', '[]', '$2y$13$qiI2KpGbi4rTX1fsr2xyheLPDglCPe8BgOw6Fd7/U/mPWCZ6WHOQe', NULL, NULL, '2023-03-09', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(17, NULL, NULL, 'dddd@aa.be', '[]', '$2y$13$po.36nXIrWwdqslmPHY2B.I6gd3PRWGQBSMTt71ZmwXZ2YoIpfbYK', NULL, NULL, '2023-03-09', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(18, NULL, NULL, 'test11111@test.be', '[]', '$2y$13$.jUkPmrOJ.UoEGBkvue0uu2RbxEYcwOFcOzzG1XPhkBr3cSo7T54q', NULL, NULL, '2023-04-15', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(19, NULL, NULL, 'test00001@test.be', '[]', '$2y$13$gIlHcf1frXZ7ZHiOzeRdD.Av1n94B5CqvuMhznWTLFtRCTEME1RJe', NULL, NULL, '2023-04-15', NULL, NULL, 0, 0, 0, NULL, NULL, NULL),
(20, NULL, NULL, 'test00002@test.be', '[]', '$2y$13$INtpHW.WJxBAEbGLEtzf4evXJnJzbCN5MwXBJ5XacOKcIrE6D/37q', NULL, NULL, '2023-04-15', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(21, NULL, NULL, 'test00003@test.be', '[]', '$2y$13$dFobrkXwZcJA3RlgklnOcuqCyFS35kyFKmWJcCeazNMWsqgcjtTOS', NULL, NULL, '2023-04-15', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(22, NULL, NULL, 'test00004@test.be', '[]', '$2y$13$ZvlewA.Id0ukCNhlcXUBSOoMqd1WQzYTUv94EN1ps8kzx3ZuesNrq', NULL, NULL, '2023-04-15', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(23, NULL, NULL, 'test00005@test.be', '[]', '$2y$13$gXwATn8RSCuFWsRxCR1GHOg9F7KP5CS0HuqnvX.1WuuZi5/HgM1we', NULL, NULL, '2023-04-17', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(24, NULL, NULL, 'test00010@test.be', '[]', '$2y$13$Tsm3V0FRl7V4z0KGT.VHCu/nKI/KoWxc/LTB3mS7owBcDkiEqGjlC', NULL, NULL, '2023-04-23', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(25, NULL, NULL, 'anto@me.com', '[]', '$2y$13$v8lSVeCxepwXd8lw7Z6R.edv1JUrQbFpg4HKhYCrILJzA6bASPqdG', NULL, NULL, '2023-05-06', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(26, NULL, NULL, 'anto1@me.com', '[]', '$2y$13$Bq90pEQBI/P0bBQvtWocPeqT8bkq46Gyvx0QmNyYJxhLhetFeuyge', NULL, NULL, '2023-05-06', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(27, NULL, NULL, 'anto2@me.com', '[]', '$2y$13$0NbTZ32EXrazVzwPMpG3y.IFI93jD.TSgWUhXwd10DvDb72tUQTP2', NULL, NULL, '2023-05-06', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(28, NULL, NULL, 'antoine@me.com', '[]', '$2y$13$go8BYKaCIheZh8yjisWmY.6X3IYTnc21LVydwWjWcJE1YkxzR/9Ae', NULL, NULL, '2023-05-07', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(29, NULL, NULL, 'antoine1@me.com', '[]', '$2y$13$2yJnFCmPNOvN/pW9LaAhouxxOMqjYND958ZUPBjtRBlbTJ9M4LPEm', NULL, NULL, '2023-05-07', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(30, NULL, NULL, 'antoine2@me.com', '[]', '$2y$13$e/st2YzR95jD7FgtymctUO95JJOPmEDDS3kF/6C27RbYImpl8VuRC', NULL, NULL, '2023-05-07', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(31, NULL, NULL, 'antoine3@me.com', '[]', '$2y$13$UeJEhYOyXe/3rknXojdtF.qQik/DT7zW/KTZYUdxxs9fyC2MwhSU.', NULL, NULL, '2023-05-07', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(32, 6, NULL, 'antoine4@me.com', '[]', '$2y$13$alfSguwVylF5M7Dpvd9mpexkXIz8/jCUNoCCWWgbR./ETo0VuqDqe', '11', 'Cité du onze novembre 101', '2023-05-07', NULL, NULL, 0, 1, 1, NULL, NULL, NULL),
(33, 8, NULL, 'antoine5@me.com', '[]', '$2y$13$fcMPedDpAnhT.ZrbdGUScOSpmBPw1Auj5FkPhbfL2B.Y/VzVUZo82', '22', 'Cité du onze novembre 101', '2023-05-07', NULL, NULL, 0, 1, 1, NULL, NULL, NULL),
(34, 9, NULL, 'antoine6@me.com', '[\"ROLE_INTERNAUTE\"]', '$2y$13$YuebQO2DyyUk1hSQ3jHECukWHzzVGy2vfaHn6NbU0aoWBQbMr/1ZK', '101', 'Cité du onze novembre', '2023-05-07', NULL, NULL, 0, 1, 1, NULL, NULL, NULL),
(35, NULL, 2, 'antoine7@me.com', '[\"ROLE_PRESTATAIRE\"]', '$2y$13$y8Vok/Ntm15BZ7WNucoqJOqESb/JTeXHSGmnJFL1Yei3bSnjJSeTO', '12', 'rue des babares', '2023-05-07', NULL, NULL, 0, 1, 1, 184, 4, 33),
(36, NULL, NULL, 'antoine8@me.com', '[]', '$2y$13$3X5qjE/zpqxMrdA8DY08OOW.flmTCA9..O8gsAn5BbE/WuI0WTRHu', NULL, NULL, '2023-05-07', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(37, NULL, 3, 'antoine9@me.com', '[\"ROLE_PRESTATAIRE\"]', '$2y$13$uyO2cLN1GTdqtLu6cGH2c.XNEWrvqbLbx/zNvL4rEPBOj.zJdj7ia', '1', 'Cité du onze novembre 101', '2023-05-07', NULL, NULL, 0, 1, 1, 184, 4, 33),
(38, NULL, NULL, 'antoine10@me.com', '[\"ROLE_PRESTATAIRE\"]', '$2y$13$0DrSGSQ85ja21T1c/.EMX.iA7sOS16CoiwzYv22Tfb.xvVT5vHqKW', '2', 'rtrgrg', '2023-05-07', NULL, NULL, 0, 1, 1, NULL, NULL, NULL),
(39, NULL, 4, 'antoine11@me.com', '[\"ROLE_PRESTATAIRE\"]', '$2y$13$dyrFqoBU/W83idIUtmAHreydzS.QN02aPoGx9xnUNsXcAI3lilJ6q', '100', 'Cité du onze novembre 101', '2023-05-07', NULL, NULL, 0, 1, 1, 184, 4, 33),
(40, NULL, 1, 'Antoine12@me.com', '[\"ROLE_PRESTATAIRE\"]', '$2y$13$bxx6nZDFmblFtqcg4HOw4OZy8oko6z//R3T9eOsMjaMtGB5ZFLByG', '4', 'Cité du onze novembre 101', '2023-05-07', NULL, NULL, 0, 1, 1, 184, 4, 33),
(41, 15, NULL, 'antoine13@me.com', '[\"ROLE_INTERNAUTE\"]', '$2y$13$wgaWRpWA/upaJnsr9SdNuOpbDtEiy5DabXGlUXAGaslPlGqnQkCF2', '12', 'cite des fleurs', '2023-05-08', NULL, NULL, 0, 1, 1, NULL, NULL, NULL),
(42, 13, NULL, 'antoine14@me.com', '[\"ROLE_INTERNAUTE\"]', '$2y$13$xJrttk0ZQ76Lt/5jCPgDn.zg.zw9Jz6.U3Pnpr.4bqrso4xtx96VC', '1', 'Cité du onze novembre 101', '2023-05-08', NULL, NULL, 0, 1, 1, 184, 4, 33),
(43, NULL, 5, 'antoine15@me.com', '[]', '$2y$13$YX4RamAjHMb2GdKd0Bk8YOyrbo2klkL7lnfrmvL9NrcI26WBLBQ4O', NULL, NULL, '2023-05-13', NULL, NULL, 0, 1, 0, 184, 4, 33),
(44, NULL, 9, 'antoine16@me.com', '[\"ROLE_PRESTATAIRE\"]', '$2y$13$UlIehfBjpjwr62d/KRdAJuaWb.WfCj6DULQFMsN.m3w53svm2wXQO', '101', 'Cité du onze novembre', '2023-05-13', NULL, NULL, 0, 1, 1, 184, 4, 33),
(45, NULL, 10, 'antoine17@me.com', '[\"ROLE_PRESTATAIRE\"]', '$2y$13$EQGa6S219YHejFc1rEVLnuM50uDDEKq84KNctQNAklEJfdxFLYawK', '101', 'Cité du onze novembre', '2023-05-21', NULL, NULL, 0, 1, 1, 455, 4, 10),
(46, NULL, NULL, 'antoine18@me.com', '[]', '$2y$13$/qEDXKmQy2nIZhtOjIgwlONVJeP4urUG1U2gOXmTRHi.slH49jkvC', NULL, NULL, '2023-05-21', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(47, NULL, NULL, 'antoine19@me.com', '[]', '$2y$13$j0760qA8IcV/ViSxmhcqG.TUrq/WimG4pfXxuB6oG0PMiyPrOiiKa', NULL, NULL, '2023-05-21', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(48, NULL, NULL, 'antoine20@me.com', '[]', '$2y$13$d2BmzjAcgXpfD7Yrh9EiyO1CZvzJaWw6O4szaZFCbmptuK.apzlTS', NULL, NULL, '2023-05-21', NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(49, 1, NULL, 'antoine21@me.com', '[\"ROLE_INTERNAUTE\"]', '$2y$13$x2vTYDn0JqQXDaXNa4YILukSrQ0BpOcvYkzv1IkRbv/i5Yuxpnopy', '101', 'Cité du onze novembre', '2023-05-21', NULL, NULL, 0, 1, 1, 300, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `code_postal_id` int(11) DEFAULT NULL,
  `ville_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ville`
--

INSERT INTO `ville` (`id`, `region_id`, `code_postal_id`, `ville_name`) VALUES
(1, 1, 1, 'Andenne'),
(2, 1, 2, 'Doische'),
(3, 1, 3, 'Ciney'),
(4, 2, 4, 'Habay'),
(5, 2, 5, 'Paliseul'),
(6, 3, 6, 'Wezembeek-Oppem'),
(7, 4, 7, 'Braives'),
(8, 4, 8, 'Beyne-Heusay'),
(9, 4, 9, 'Ferrières'),
(10, 4, 10, 'Verviers'),
(11, 4, 11, 'Braives'),
(12, 5, 12, 'Tournai'),
(13, 5, 13, 'Thuin'),
(14, 5, 14, 'Mons'),
(15, 5, 15, 'Saint-Ghislain'),
(16, 5, 16, 'Momignies'),
(17, 5, 17, 'Chimay'),
(18, 5, 18, 'Momignies'),
(19, 5, 19, 'Mons'),
(20, 6, 20, 'Rixensart'),
(21, 6, 21, 'Genappe'),
(22, 1, 22, 'Mettet'),
(23, 1, 23, 'Gedinne'),
(24, 2, 24, 'Gouvy'),
(25, 2, 25, 'Vielsalm'),
(26, 2, 26, 'Bouillon'),
(27, 2, 27, 'Bouillon'),
(28, 2, 28, 'Wellin'),
(29, 4, 29, 'Olne'),
(30, 4, 30, 'Juprelle'),
(31, 4, 31, 'Burg-Reuland'),
(32, 4, 32, 'Herve'),
(33, 4, 33, 'Seraing'),
(34, 5, 34, 'Rumes'),
(35, 5, 35, 'Binche'),
(36, 5, 36, 'Tournai'),
(37, 5, 37, 'Gerpinnes'),
(38, 5, 38, 'Bernissart'),
(39, 5, 39, 'Ath'),
(40, 5, 40, 'Lobbes'),
(41, 5, 41, 'Péruwelz'),
(42, 5, 42, 'Momignies'),
(43, 5, 43, 'Erquelinnes'),
(44, 6, 44, 'Ottignies-Louvain-la-Neuve'),
(45, 6, 45, 'Genappe'),
(46, 1, 46, 'Houyet'),
(47, 1, 47, 'Mettet'),
(48, 1, 48, 'Namur'),
(49, 1, 49, 'Beauraing'),
(50, 1, 50, 'Namur'),
(51, 2, 51, 'Gouvy'),
(52, 2, 52, 'Saint-Léger'),
(53, 2, 53, 'Rouvroy'),
(54, 2, 54, 'Chiny'),
(55, 2, 55, 'Bouillon'),
(56, 2, 56, 'Bouillon'),
(57, 2, 57, 'Saint-Hubert'),
(58, 3, 58, 'Rhode-Saint-Genèse'),
(59, 7, 59, 'Renaix'),
(60, 4, 60, 'Dalhem'),
(61, 4, 61, 'Raeren'),
(62, 4, 62, 'Hamoir'),
(63, 4, 63, 'Remicourt'),
(64, 4, 64, 'Clavier'),
(65, 4, 65, 'Ans'),
(66, 4, 66, 'Saint-Vith'),
(67, 4, 67, 'Herve'),
(68, 5, 68, 'Comines-Warneton'),
(69, 5, 69, 'Brunehaut'),
(70, 5, 70, 'Mouscron'),
(71, 5, 39, 'Ath'),
(72, 5, 71, 'Boussu'),
(73, 5, 72, 'Momignies'),
(74, 6, 73, 'Nivelles'),
(75, 6, 74, 'Mont-Saint-Guibert'),
(76, 1, 75, 'Florennes'),
(77, 1, 76, 'Namur'),
(78, 1, 77, 'Dinant'),
(79, 1, 78, 'Hastière'),
(80, 1, 79, 'Assesse'),
(81, 2, 80, 'Bastogne'),
(82, 2, 81, 'Wellin'),
(83, 2, 82, 'Durbuy'),
(84, 2, 83, 'Nassogne'),
(85, 2, 84, 'Manhay'),
(86, 4, 85, 'Pepinster'),
(87, 4, 86, 'Crisnée'),
(88, 4, 87, 'Seraing'),
(89, 4, 88, 'Anthisnes'),
(90, 4, 89, 'La Calamine'),
(91, 4, 90, 'Lontzen'),
(92, 4, 91, 'Blegny'),
(93, 4, 92, 'Thimister-Clermont'),
(94, 4, 93, 'Herstal'),
(95, 4, 94, 'Visé'),
(96, 5, 95, 'Charleroi'),
(97, 5, 96, 'Fleurus'),
(98, 5, 97, 'Jurbise'),
(99, 5, 98, 'Leuze-en-Hainaut'),
(100, 6, 99, 'Wavre'),
(101, 1, 100, 'Beauraing'),
(102, 1, 101, 'La Bruyère'),
(103, 2, 102, 'Étalle'),
(104, 2, 103, 'Libramont-Chevigny'),
(105, 2, 104, 'Florenville'),
(106, 2, 105, 'Nassogne'),
(107, 4, 106, 'Flémalle'),
(108, 4, 107, 'Visé'),
(109, 4, 108, 'Oupeye'),
(110, 4, 109, 'Baelen'),
(111, 4, 110, 'Awans'),
(112, 4, 111, 'Visé'),
(113, 4, 112, 'Nandrin'),
(114, 4, 113, 'Liège'),
(115, 4, 114, 'Amblève'),
(116, 4, 115, 'Fléron'),
(117, 5, 116, 'Mons'),
(118, 5, 117, 'Boussu'),
(119, 5, 118, 'Belœil'),
(120, 5, 119, 'La Louvière'),
(121, 5, 120, 'Thuin'),
(122, 5, 121, 'Comines-Warneton'),
(123, 5, 122, 'Tournai'),
(124, 5, 123, 'Tournai'),
(125, 6, 124, 'Beauvechain'),
(126, 1, 125, 'Havelange'),
(127, 1, 126, 'Mettet'),
(128, 1, 127, 'Gesves'),
(129, 2, 128, 'Houffalize'),
(130, 2, 129, 'Houffalize'),
(131, 2, 130, 'Chiny'),
(132, 2, 131, 'Herbeumont'),
(133, 4, 132, 'Ans'),
(134, 4, 133, 'Neupré'),
(135, 4, 113, 'Liège'),
(136, 4, 134, 'Anthisnes'),
(137, 4, 135, 'Saint-Vith'),
(138, 4, 136, 'Liège'),
(139, 4, 137, 'Berloz'),
(140, 4, 138, 'Plombières'),
(141, 4, 139, 'Saint-Georges-sur-Meuse'),
(142, 5, 140, 'Ath'),
(143, 5, 141, 'Silly'),
(144, 5, 142, 'Anderlues'),
(145, 5, 143, 'Saint-Ghislain'),
(146, 5, 144, 'Brunehaut'),
(147, 5, 145, 'Soignies'),
(148, 5, 146, 'Mons'),
(149, 5, 147, 'Lens'),
(150, 5, 148, 'Tournai'),
(151, 5, 149, 'Soignies'),
(152, 5, 150, 'Mouscron'),
(153, 5, 151, 'Écaussinnes'),
(154, 5, 152, 'Tournai'),
(155, 6, 153, 'Waterloo'),
(156, 6, 154, 'Tubize'),
(157, 1, 155, 'Assesse'),
(158, 1, 156, 'La Bruyère'),
(159, 8, 157, 'Fourons'),
(160, 2, 158, 'Houffalize'),
(161, 2, 159, 'Sainte-Ode'),
(162, 2, 160, 'Florenville'),
(163, 2, 161, 'Florenville'),
(164, 2, 162, 'Paliseul'),
(165, 2, 163, 'Paliseul'),
(166, 4, 164, 'Saint-Vith'),
(167, 4, 165, 'Trois-Ponts'),
(168, 4, 166, 'Limbourg'),
(169, 4, 167, 'Chaudfontaine'),
(170, 4, 168, 'La Calamine'),
(171, 5, 169, 'Tournai'),
(172, 5, 170, 'Lessines'),
(173, 5, 171, 'Comines-Warneton'),
(174, 5, 172, 'Fleurus'),
(175, 6, 173, 'Ramillies'),
(176, 6, 174, 'Walhain'),
(177, 6, 175, 'Ittre'),
(178, 1, 176, 'Rochefort'),
(179, 1, 177, 'Anhée'),
(180, 1, 178, 'Walcourt'),
(181, 2, 179, 'Houffalize'),
(182, 2, 180, 'Étalle'),
(183, 4, 181, 'Geer'),
(184, 4, 182, 'Seraing'),
(185, 4, 183, 'Malmedy'),
(186, 4, 184, 'Burg-Reuland'),
(187, 4, 185, 'Saint-Nicolas'),
(188, 5, 186, 'Montigny-le-Tilleul'),
(189, 5, 187, 'Les Bons Villers'),
(190, 5, 188, 'Thuin'),
(191, 5, 189, 'Antoing'),
(192, 5, 190, 'Charleroi'),
(193, 5, 191, 'Lobbes'),
(194, 5, 192, 'Mons'),
(195, 6, 193, 'Jodoigne'),
(196, 6, 194, 'Nivelles'),
(197, 6, 195, 'Rebecq'),
(198, 1, 196, 'Hamois'),
(199, 1, 197, 'Bièvre'),
(200, 1, 198, 'Dinant'),
(201, 1, 199, 'Namur'),
(202, 1, 200, 'Gembloux'),
(203, 1, 201, 'Somme-Leuze'),
(204, 8, 202, 'Fourons'),
(205, 2, 203, 'Gouvy'),
(206, 2, 204, 'La Roche-en-Ardenne'),
(207, 4, 205, 'Sprimont'),
(208, 4, 206, 'Welkenraedt'),
(209, 4, 207, 'Remicourt'),
(210, 4, 208, 'Hannut'),
(211, 4, 209, 'Fléron'),
(212, 4, 210, 'Geer'),
(213, 4, 211, 'Faimes'),
(214, 4, 212, 'Héron'),
(215, 5, 213, 'Chapelle-lez-Herlaimont'),
(216, 5, 214, 'Celles'),
(217, 5, 215, 'Charleroi'),
(218, 5, 216, 'Binche'),
(219, 5, 217, 'Brugelette'),
(220, 5, 218, 'Brugelette'),
(221, 5, 219, 'Mons'),
(222, 5, 220, 'Froidchapelle'),
(223, 5, 221, 'Brunehaut'),
(224, 6, 222, 'Ottignies-Louvain-la-Neuve'),
(225, 6, 223, 'Braine-le-Château'),
(226, 6, 224, 'Ittre'),
(227, 1, 225, 'Havelange'),
(228, 1, 226, 'Hastière'),
(229, 1, 227, 'Assesse'),
(230, 1, 228, 'Onhaye'),
(231, 4, 229, 'Ouffet'),
(232, 4, 32, 'Herve'),
(233, 4, 230, 'Neupré'),
(234, 4, 231, 'Spa'),
(235, 4, 232, 'Braives'),
(236, 4, 233, 'Herve'),
(237, 5, 234, 'Lessines'),
(238, 5, 235, 'Charleroi'),
(239, 5, 236, 'Beaumont'),
(240, 5, 237, 'Antoing'),
(241, 5, 238, 'Ham-sur-Heure-Nalinnes'),
(242, 5, 239, 'Le Rœulx'),
(243, 6, 240, 'Wavre'),
(244, 6, 241, 'Genappe'),
(245, 6, 242, 'Genappe'),
(246, 1, 243, 'Dinant'),
(247, 1, 244, 'Fernelmont'),
(248, 1, 245, 'Houyet'),
(249, 1, 246, 'Viroinval'),
(250, 2, 247, 'Bertogne'),
(251, 2, 248, 'Musson'),
(252, 2, 249, 'Virton'),
(253, 2, 250, 'Tenneville'),
(254, 4, 66, 'Saint-Vith'),
(255, 4, 251, 'Modave'),
(256, 4, 252, 'Limbourg'),
(257, 4, 253, 'Anthisnes'),
(258, 4, 254, 'Lierneux'),
(259, 4, 255, 'Chaudfontaine'),
(260, 4, 256, 'Tinlot'),
(261, 4, 32, 'Herve'),
(262, 4, 257, 'Oupeye'),
(263, 5, 258, 'Thuin'),
(264, 5, 259, 'Fleurus'),
(265, 5, 260, 'Flobecq'),
(266, 5, 261, 'Momignies'),
(267, 5, 262, 'Écaussinnes'),
(268, 5, 263, 'Beaumont'),
(269, 5, 264, 'Fontaine-l\'Évêque'),
(270, 5, 265, 'Lessines'),
(271, 5, 266, 'Péruwelz'),
(272, 5, 267, 'Tournai'),
(273, 5, 268, 'Fleurus'),
(274, 6, 269, 'Ottignies-Louvain-la-Neuve'),
(275, 1, 270, 'Beauraing'),
(276, 1, 271, 'Hastière'),
(277, 1, 272, 'Hamois'),
(278, 1, 273, 'Beauraing'),
(279, 1, 274, 'Assesse'),
(280, 2, 179, 'Houffalize'),
(281, 2, 275, 'Aubange'),
(282, 2, 276, 'Durbuy'),
(283, 3, 277, 'Kraainem'),
(284, 4, 278, 'Fléron'),
(285, 4, 279, 'Comblain-au-Pont'),
(286, 4, 280, 'Herstal'),
(287, 5, 281, 'Bernissart'),
(288, 5, 282, 'Belœil'),
(289, 5, 283, 'La Louvière'),
(290, 5, 284, 'Mons'),
(291, 5, 285, 'Quiévrain'),
(292, 1, 286, 'Ohey'),
(293, 1, 287, 'Namur'),
(294, 1, 288, 'Hastière'),
(295, 2, 289, 'Houffalize'),
(296, 2, 290, 'Arlon'),
(297, 2, 291, 'Habay'),
(298, 2, 292, 'Paliseul'),
(299, 2, 293, 'Tenneville'),
(300, 4, 11, 'Braives'),
(301, 4, 294, 'Hamoir'),
(302, 4, 295, 'Eupen'),
(303, 4, 296, 'Fexhe-le-Haut-Clocher'),
(304, 4, 297, 'Herve'),
(305, 5, 298, 'Pecq'),
(306, 5, 299, 'Châtelet'),
(307, 5, 300, 'Charleroi'),
(308, 5, 301, 'Rumes'),
(309, 5, 302, 'Frasnes-lez-Anvaing'),
(310, 5, 303, 'Momignies'),
(311, 5, 304, 'Chimay'),
(312, 6, 305, 'Rixensart'),
(313, 6, 306, 'Nivelles'),
(314, 1, 307, 'Florennes'),
(315, 2, 308, 'Sainte-Ode'),
(316, 2, 309, 'Attert'),
(317, 2, 310, 'Virton'),
(318, 2, 311, 'Neufchâteau'),
(319, 4, 312, 'Blegny'),
(320, 4, 313, 'Huy'),
(321, 4, 314, 'Olne'),
(322, 4, 315, 'Stavelot'),
(323, 4, 316, 'Oreye'),
(324, 5, 317, 'Tournai'),
(325, 5, 318, 'Charleroi'),
(326, 5, 319, 'Frasnes-lez-Anvaing'),
(327, 5, 320, 'Tournai'),
(328, 5, 321, 'Montigny-le-Tilleul'),
(329, 5, 322, 'Tournai'),
(330, 5, 323, 'Fleurus'),
(331, 6, 99, 'Wavre'),
(332, 6, 324, 'Mont-Saint-Guibert'),
(333, 6, 325, 'Genappe'),
(334, 1, 326, 'Éghezée'),
(335, 1, 327, 'Gembloux'),
(336, 1, 328, 'Hamois'),
(337, 2, 329, 'Messancy'),
(338, 2, 55, 'Bouillon'),
(339, 4, 330, 'Wanze'),
(340, 4, 331, 'Liège'),
(341, 4, 332, 'Donceel'),
(342, 4, 333, 'Jalhay'),
(343, 4, 334, 'Chaudfontaine'),
(344, 5, 335, 'Morlanwelz'),
(345, 5, 336, 'Tournai'),
(346, 5, 337, 'Dour'),
(347, 5, 338, 'Mont-de-l\'Enclus'),
(348, 5, 339, 'Courcelles'),
(349, 5, 340, 'Mouscron'),
(350, 5, 341, 'Tournai'),
(351, 5, 342, 'Manage'),
(352, 1, 343, 'Sombreffe'),
(353, 1, 344, 'Hamois'),
(354, 2, 345, 'Vielsalm'),
(355, 2, 346, 'Habay'),
(356, 2, 347, 'Messancy'),
(357, 2, 348, 'Érezée'),
(358, 4, 349, 'Welkenraedt'),
(359, 4, 350, 'Burdinne'),
(360, 4, 351, 'Esneux'),
(361, 4, 352, 'Engis'),
(362, 5, 353, 'Ath'),
(363, 5, 354, 'Ath'),
(364, 5, 355, 'Saint-Ghislain'),
(365, 5, 356, 'Fontaine-l\'Évêque'),
(366, 5, 357, 'Saint-Ghislain'),
(367, 5, 358, 'Honnelles'),
(368, 5, 359, 'Quévy'),
(369, 5, 360, 'Silly'),
(370, 6, 361, 'Perwez'),
(371, 1, 362, 'Hastière'),
(372, 1, 363, 'Mettet'),
(373, 1, 364, 'Havelange'),
(374, 1, 365, 'Dinant'),
(375, 1, 366, 'Houyet'),
(376, 8, 367, 'Herstappe'),
(377, 2, 368, 'Vaux-sur-Sûre'),
(378, 2, 369, 'Daverdisse'),
(379, 3, 370, 'Linkebeek'),
(380, 4, 371, 'Bullange'),
(381, 4, 372, 'Verviers'),
(382, 4, 373, 'Soumagne'),
(383, 4, 374, 'Soumagne'),
(384, 4, 375, 'Soumagne'),
(385, 5, 376, 'Sivry-Rance'),
(386, 5, 377, 'Belœil'),
(387, 5, 378, 'Mons'),
(388, 5, 379, 'Seneffe'),
(389, 5, 380, 'Belœil'),
(390, 5, 381, 'Antoing'),
(391, 1, 382, 'Hamois'),
(392, 1, 383, 'Onhaye'),
(393, 2, 384, 'Gouvy'),
(394, 2, 104, 'Florenville'),
(395, 2, 385, 'Bouillon'),
(396, 2, 386, 'Bouillon'),
(397, 2, 387, 'Wellin'),
(398, 2, 388, 'Wellin'),
(399, 2, 389, 'La Roche-en-Ardenne'),
(400, 3, 390, 'Biévène'),
(401, 4, 391, 'Bullange'),
(402, 4, 392, 'Herve'),
(403, 4, 393, 'Marchin'),
(404, 4, 394, 'Waimes'),
(405, 4, 395, 'Eupen'),
(406, 5, 396, 'Tournai'),
(407, 5, 397, 'Péruwelz'),
(408, 5, 398, 'Chimay'),
(409, 5, 399, 'Mons'),
(410, 5, 400, 'Mons'),
(411, 5, 401, 'Ellezelles'),
(412, 5, 402, 'Péruwelz'),
(413, 5, 403, 'Binche'),
(414, 1, 404, 'Namur'),
(415, 1, 405, 'Ohey'),
(416, 1, 406, 'Houyet'),
(417, 8, 407, 'Fourons'),
(418, 2, 408, 'Bertogne'),
(419, 2, 409, 'Bertogne'),
(420, 2, 410, 'Tintigny'),
(421, 4, 411, 'Verviers'),
(422, 4, 412, 'Lincent'),
(423, 4, 413, 'Trois-Ponts'),
(424, 4, 61, 'Raeren'),
(425, 4, 414, 'Butgenbach'),
(426, 4, 415, 'Awans'),
(427, 4, 416, 'Blegny'),
(428, 4, 417, 'Grâce-Hollogne'),
(429, 4, 418, 'Dison'),
(430, 5, 419, 'Brunehaut'),
(431, 5, 420, 'Chimay'),
(432, 5, 421, 'Ath'),
(433, 5, 422, 'Tournai'),
(434, 5, 423, 'Fontaine-l\'Évêque'),
(435, 5, 424, 'Tournai'),
(436, 5, 425, 'Rumes'),
(437, 5, 426, 'Brugelette'),
(438, 5, 427, 'Braine-le-Comte'),
(439, 5, 428, 'Pont-à-Celles'),
(440, 5, 429, 'Soignies'),
(441, 5, 430, 'Les Bons Villers'),
(442, 6, 431, 'Chaumont-Gistoux'),
(443, 6, 432, 'Braine-l\'Alleud'),
(444, 6, 433, 'Court-Saint-Étienne'),
(445, 1, 434, 'Yvoir'),
(446, 1, 435, 'Floreffe'),
(447, 2, 436, 'Chiny'),
(448, 2, 437, 'Libin'),
(449, 2, 438, 'Marche-en-Famenne'),
(450, 2, 439, 'Nassogne'),
(451, 2, 440, 'Hotton'),
(452, 3, 441, 'Wemmel'),
(453, 4, 442, 'Aubel'),
(454, 4, 443, 'Liège'),
(455, 4, 10, 'Verviers'),
(456, 4, 444, 'Oupeye'),
(457, 4, 445, 'Theux'),
(458, 5, 446, 'Frameries'),
(459, 5, 447, 'Saint-Ghislain'),
(460, 5, 448, 'Chimay'),
(461, 5, 449, 'Pecq'),
(462, 5, 450, 'Morlanwelz'),
(463, 5, 451, 'Soignies'),
(464, 1, 452, 'Havelange'),
(465, 1, 453, 'Ohey'),
(466, 1, 454, 'Dinant'),
(467, 1, 48, 'Namur'),
(468, 1, 455, 'Beauraing'),
(469, 1, 456, 'Vresse-sur-Semois'),
(470, 1, 457, 'Onhaye'),
(471, 1, 458, 'Namur'),
(472, 1, 459, 'Onhaye'),
(473, 8, 460, 'Fourons'),
(474, 9, 461, 'Messines'),
(475, 2, 462, 'Florenville'),
(476, 2, 463, 'La Roche-en-Ardenne'),
(477, 4, 464, 'Bassenge'),
(478, 4, 465, 'Raeren'),
(479, 4, 466, 'Amblève'),
(480, 5, 467, 'Thuin'),
(481, 5, 468, 'Ath'),
(482, 5, 469, 'Aiseau-Presles'),
(483, 5, 470, 'Charleroi'),
(484, 5, 471, 'Frasnes-lez-Anvaing'),
(485, 5, 472, 'Leuze-en-Hainaut'),
(486, 5, 473, 'Lessines'),
(487, 6, 474, 'Grez-Doiceau'),
(488, 6, 475, 'Genappe'),
(489, 1, 476, 'Onhaye'),
(490, 1, 344, 'Hamois'),
(491, 1, 477, 'Jemeppe-sur-Sambre'),
(492, 1, 478, 'Ohey'),
(493, 1, 479, 'Cerfontaine'),
(494, 1, 480, 'Namur'),
(495, 1, 481, 'Profondeville'),
(496, 2, 482, 'Virton'),
(497, 2, 483, 'Aubange'),
(498, 2, 484, 'Paliseul'),
(499, 2, 485, 'Tenneville'),
(500, 4, 486, 'La Calamine'),
(501, 4, 32, 'Herve'),
(502, 4, 487, 'Juprelle'),
(503, 4, 488, 'Oupeye'),
(504, 4, 489, 'Villers-le-Bouillet'),
(505, 4, 490, 'Chaudfontaine'),
(506, 4, 491, 'Juprelle'),
(507, 5, 492, 'Colfontaine'),
(508, 5, 493, 'Courcelles'),
(509, 5, 494, 'Tournai'),
(510, 5, 495, 'Tournai'),
(511, 5, 496, 'Thuin'),
(512, 5, 497, 'Froidchapelle'),
(513, 5, 498, 'Tournai'),
(514, 5, 499, 'Farciennes'),
(515, 5, 500, 'Brunehaut'),
(516, 5, 300, 'Charleroi'),
(517, 5, 501, 'Fleurus'),
(518, 5, 502, 'Estaimpuis'),
(519, 5, 503, 'Courcelles'),
(520, 5, 504, 'Tournai'),
(521, 5, 505, 'Charleroi'),
(522, 5, 506, 'Ath'),
(523, 1, 507, 'Namur'),
(524, 1, 508, 'Walcourt'),
(525, 1, 509, 'Assesse'),
(526, 1, 510, 'Namur'),
(527, 1, 511, 'Rochefort'),
(528, 2, 512, 'Gouvy'),
(529, 2, 513, 'Habay'),
(530, 2, 514, 'Étalle'),
(531, 2, 515, 'Tellin'),
(532, 2, 516, 'La Roche-en-Ardenne'),
(533, 4, 517, 'Sprimont'),
(534, 4, 518, 'Juprelle'),
(535, 4, 519, 'Oupeye'),
(536, 5, 520, 'Brugelette'),
(537, 5, 521, 'Charleroi'),
(538, 5, 522, 'Charleroi'),
(539, 5, 523, 'Pont-à-Celles'),
(540, 5, 524, 'Bernissart'),
(541, 5, 525, 'Ath'),
(542, 5, 526, 'Chièvres'),
(543, 5, 527, 'Chièvres'),
(544, 6, 528, 'Chastre'),
(545, 6, 529, 'Villers-la-Ville'),
(546, 1, 530, 'Namur'),
(547, 2, 531, 'Martelange'),
(548, 2, 532, 'Fauvillers'),
(549, 2, 533, 'Vielsalm'),
(550, 2, 534, 'Bouillon'),
(551, 3, 535, 'Drogenbos'),
(552, 4, 536, 'Soumagne'),
(553, 4, 537, 'Dison'),
(554, 4, 538, 'Geer'),
(555, 4, 539, 'Awans'),
(556, 4, 540, 'Stoumont'),
(557, 4, 541, 'Geer'),
(558, 4, 542, 'Lontzen'),
(559, 5, 543, 'Leuze-en-Hainaut'),
(560, 5, 188, 'Thuin'),
(561, 5, 544, 'Tournai'),
(562, 5, 545, 'Pecq'),
(563, 5, 546, 'Charleroi'),
(564, 5, 547, 'Fleurus'),
(565, 5, 548, 'Quaregnon'),
(566, 6, 549, 'Lasne'),
(567, 6, 550, 'Nivelles'),
(568, 1, 227, 'Assesse'),
(569, 1, 551, 'Fosses-la-Ville'),
(570, 1, 552, 'Philippeville'),
(571, 1, 553, 'Couvin'),
(572, 8, 554, 'Fourons'),
(573, 2, 533, 'Vielsalm'),
(574, 2, 555, 'Arlon'),
(575, 2, 556, 'Messancy'),
(576, 2, 557, 'Aubange'),
(577, 2, 558, 'Nassogne'),
(578, 4, 559, 'Amay'),
(579, 4, 560, 'Neupré'),
(580, 4, 561, 'Saint-Vith'),
(581, 4, 562, 'Héron'),
(582, 4, 563, 'Waremme'),
(583, 5, 564, 'Tournai'),
(584, 5, 565, 'Mons'),
(585, 5, 566, 'Ath'),
(586, 5, 567, 'Quévy'),
(587, 5, 568, 'Lessines'),
(588, 5, 569, 'Courcelles'),
(589, 5, 570, 'Merbes-le-Château'),
(590, 5, 571, 'Quiévrain'),
(591, 5, 572, 'Hensies'),
(592, 5, 573, 'Binche'),
(593, 5, 574, 'Leuze-en-Hainaut'),
(594, 5, 187, 'Les Bons Villers'),
(595, 6, 575, 'La Hulpe'),
(596, 6, 576, 'Incourt'),
(597, 6, 577, 'Rixensart'),
(598, 1, 578, 'Beauraing'),
(599, 1, 579, 'Houyet'),
(600, 9, 580, 'Espierres-Helchin'),
(601, 2, 581, 'Arlon'),
(602, 2, 582, 'Étalle'),
(603, 2, 387, 'Wellin'),
(604, 4, 583, 'Comblain-au-Pont'),
(605, 4, 584, 'Pepinster'),
(606, 4, 585, 'Plombières'),
(607, 4, 375, 'Soumagne'),
(608, 4, 586, 'Verlaine'),
(609, 4, 587, 'Dalhem'),
(610, 4, 588, 'Limbourg'),
(611, 4, 589, 'Wasseiges'),
(612, 4, 590, 'Dalhem'),
(613, 4, 591, 'Juprelle'),
(614, 5, 573, 'Binche'),
(615, 5, 592, 'Estinnes'),
(616, 5, 593, 'Tournai'),
(617, 5, 594, 'Péruwelz'),
(618, 5, 595, 'Tournai'),
(619, 5, 596, 'Péruwelz'),
(620, 5, 597, 'Seneffe'),
(621, 5, 598, 'Charleroi'),
(622, 5, 599, 'Leuze-en-Hainaut'),
(623, 6, 600, 'Orp-Jauche'),
(624, 6, 601, 'Hélécine'),
(625, 1, 383, 'Onhaye'),
(626, 1, 602, 'Gembloux'),
(627, 1, 603, 'Namur'),
(628, 8, 157, 'Fourons'),
(629, 2, 604, 'Chiny'),
(630, 2, 605, 'Léglise'),
(631, 2, 606, 'Bertrix'),
(632, 2, 607, 'La Roche-en-Ardenne'),
(633, 2, 608, 'Rendeux'),
(634, 4, 609, 'Anthisnes'),
(635, 4, 610, 'Plombières'),
(636, 4, 611, 'Liège'),
(637, 4, 612, 'Aywaille'),
(638, 5, 613, 'Mons'),
(639, 5, 614, 'Ath'),
(640, 5, 615, 'Lobbes'),
(641, 5, 616, 'Mons'),
(642, 5, 617, 'Charleroi'),
(643, 5, 618, 'Charleroi'),
(644, 5, 619, 'Comines-Warneton'),
(645, 6, 324, 'Ottignies-Louvain-la-Neuve'),
(646, 1, 46, 'Houyet'),
(647, 1, 620, 'Sambreville'),
(648, 1, 273, 'Beauraing'),
(649, 1, 621, 'Namur'),
(650, 1, 622, 'Ohey'),
(651, 2, 623, 'Meix-devant-Virton'),
(652, 4, 624, 'Fléron'),
(653, 4, 625, 'Herstal'),
(654, 4, 626, 'Ans'),
(655, 5, 627, 'Lessines'),
(656, 5, 628, 'Antoing'),
(657, 5, 629, 'Comines-Warneton'),
(658, 6, 630, 'Braine-l\'Alleud'),
(659, 6, 631, 'Braine-l\'Alleud'),
(660, 6, 241, 'Genappe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abus`
--
ALTER TABLE `abus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_72C9FD01CAF41882` (`internaute_id`),
  ADD KEY `IDX_72C9FD01BA9CD190` (`commentaire_id`);

--
-- Indexes for table `bloc`
--
ALTER TABLE `bloc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorie_de_services`
--
ALTER TABLE `categorie_de_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code_postal`
--
ALTER TABLE `code_postal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_67F068BCBE3DB2B7` (`prestataire_id`),
  ADD KEY `IDX_67F068BCCAF41882` (`internaute_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `favori`
--
ALTER TABLE `favori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EF85A2CC36DE9A7E` (`presataire_id`),
  ADD KEY `IDX_EF85A2CCCAF41882` (`internaute_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E01FBE6ABCF5E72D` (`categorie_id`),
  ADD KEY `IDX_E01FBE6ACAF41882` (`internaute_id`),
  ADD KEY `IDX_E01FBE6ABE3DB2B7` (`prestataire_id`);

--
-- Indexes for table `internaute`
--
ALTER TABLE `internaute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_462CE4F55582E9C0` (`bloc_id`),
  ADD UNIQUE KEY `UNIQ_462CE4F5CAF41882` (`internaute_id`);

--
-- Indexes for table `prestataire`
--
ALTER TABLE `prestataire`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_60A26480FB88E14F` (`utilisateur_id`),
  ADD KEY `IDX_60A26480BCF5E72D` (`categorie_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C11D7DD14A81A587` (`categorie_de_services_id`),
  ADD KEY `IDX_C11D7DD1BE3DB2B7` (`prestataire_id`);

--
-- Indexes for table `proposer`
--
ALTER TABLE `proposer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_21866C154A81A587` (`categorie_de_services_id`),
  ADD KEY `IDX_21866C15BE3DB2B7` (`prestataire_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C27C9369BE3DB2B7` (`prestataire_id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D1C63B3E7927C74` (`email`),
  ADD KEY `IDX_1D1C63B3CAF41882` (`internaute_id`),
  ADD KEY `IDX_1D1C63B3BE3DB2B7` (`prestataire_id`),
  ADD KEY `IDX_1D1C63B3A73F0036` (`ville_id`),
  ADD KEY `IDX_1D1C63B398260155` (`region_id`),
  ADD KEY `IDX_1D1C63B3B2B59251` (`code_postal_id`);

--
-- Indexes for table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_43C3D9C398260155` (`region_id`),
  ADD KEY `IDX_43C3D9C3B2B59251` (`code_postal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abus`
--
ALTER TABLE `abus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bloc`
--
ALTER TABLE `bloc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorie_de_services`
--
ALTER TABLE `categorie_de_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `code_postal`
--
ALTER TABLE `code_postal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;

--
-- AUTO_INCREMENT for table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favori`
--
ALTER TABLE `favori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `internaute`
--
ALTER TABLE `internaute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prestataire`
--
ALTER TABLE `prestataire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposer`
--
ALTER TABLE `proposer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stage`
--
ALTER TABLE `stage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=661;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abus`
--
ALTER TABLE `abus`
  ADD CONSTRAINT `FK_72C9FD01BA9CD190` FOREIGN KEY (`commentaire_id`) REFERENCES `commentaire` (`id`),
  ADD CONSTRAINT `FK_72C9FD01CAF41882` FOREIGN KEY (`internaute_id`) REFERENCES `internaute` (`id`);

--
-- Constraints for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BCBE3DB2B7` FOREIGN KEY (`prestataire_id`) REFERENCES `prestataire` (`id`),
  ADD CONSTRAINT `FK_67F068BCCAF41882` FOREIGN KEY (`internaute_id`) REFERENCES `internaute` (`id`);

--
-- Constraints for table `favori`
--
ALTER TABLE `favori`
  ADD CONSTRAINT `FK_EF85A2CC36DE9A7E` FOREIGN KEY (`presataire_id`) REFERENCES `prestataire` (`id`),
  ADD CONSTRAINT `FK_EF85A2CCCAF41882` FOREIGN KEY (`internaute_id`) REFERENCES `internaute` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_E01FBE6ABCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie_de_services` (`id`),
  ADD CONSTRAINT `FK_E01FBE6ABE3DB2B7` FOREIGN KEY (`prestataire_id`) REFERENCES `prestataire` (`id`),
  ADD CONSTRAINT `FK_E01FBE6ACAF41882` FOREIGN KEY (`internaute_id`) REFERENCES `internaute` (`id`);

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `FK_462CE4F55582E9C0` FOREIGN KEY (`bloc_id`) REFERENCES `bloc` (`id`),
  ADD CONSTRAINT `FK_462CE4F5CAF41882` FOREIGN KEY (`internaute_id`) REFERENCES `internaute` (`id`);

--
-- Constraints for table `prestataire`
--
ALTER TABLE `prestataire`
  ADD CONSTRAINT `FK_60A26480BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie_de_services` (`id`),
  ADD CONSTRAINT `FK_60A26480FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Constraints for table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `FK_C11D7DD14A81A587` FOREIGN KEY (`categorie_de_services_id`) REFERENCES `categorie_de_services` (`id`),
  ADD CONSTRAINT `FK_C11D7DD1BE3DB2B7` FOREIGN KEY (`prestataire_id`) REFERENCES `prestataire` (`id`);

--
-- Constraints for table `proposer`
--
ALTER TABLE `proposer`
  ADD CONSTRAINT `FK_21866C154A81A587` FOREIGN KEY (`categorie_de_services_id`) REFERENCES `categorie_de_services` (`id`),
  ADD CONSTRAINT `FK_21866C15BE3DB2B7` FOREIGN KEY (`prestataire_id`) REFERENCES `prestataire` (`id`);

--
-- Constraints for table `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `FK_C27C9369BE3DB2B7` FOREIGN KEY (`prestataire_id`) REFERENCES `prestataire` (`id`);

--
-- Constraints for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `FK_1D1C63B398260155` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  ADD CONSTRAINT `FK_1D1C63B3A73F0036` FOREIGN KEY (`ville_id`) REFERENCES `ville` (`id`),
  ADD CONSTRAINT `FK_1D1C63B3B2B59251` FOREIGN KEY (`code_postal_id`) REFERENCES `code_postal` (`id`),
  ADD CONSTRAINT `FK_1D1C63B3BE3DB2B7` FOREIGN KEY (`prestataire_id`) REFERENCES `prestataire` (`id`),
  ADD CONSTRAINT `FK_1D1C63B3CAF41882` FOREIGN KEY (`internaute_id`) REFERENCES `internaute` (`id`);

--
-- Constraints for table `ville`
--
ALTER TABLE `ville`
  ADD CONSTRAINT `FK_43C3D9C398260155` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  ADD CONSTRAINT `FK_43C3D9C3B2B59251` FOREIGN KEY (`code_postal_id`) REFERENCES `code_postal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
