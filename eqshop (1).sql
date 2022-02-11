-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 09:24 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eqshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drzava` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vlasnik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `ime`, `drzava`, `vlasnik`, `opis`) VALUES
(1, 'Asus', 'DE', 'Charlie', NULL),
(2, 'Lenovo', 'DE', 'Smitz', NULL),
(3, 'HP', 'USA', 'Packard', NULL),
(4, 'Dell', 'FR', 'LUI', NULL),
(5, 'Apple', 'USA', 'Jobs', NULL),
(6, 'Logitech', 'SUI', 'Borel', NULL),
(7, 'Legion', 'DE', 'Ernest', NULL),
(8, 'Samsung', 'IT', 'Nichols', NULL),
(9, 'Canyon', 'BA', 'Damir', NULL),
(10, 'Acer', 'IT', 'Pablo', NULL),
(11, 'Philips', 'HR', 'Filip', NULL),
(12, 'Kingston', 'USA', 'Mathew', NULL),
(13, 'Crucial', 'BA', 'Ajla', NULL),
(14, 'Adata', 'HR', 'Lovric', NULL),
(15, 'Beats', 'FR', 'Karabatic', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kod` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `cijena` int(11) NOT NULL,
  `kupac` int(11) NOT NULL,
  `proizvod` int(11) NOT NULL,
  `slanje` int(11) NOT NULL,
  `opis` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `kod`, `datum`, `cijena`, `kupac`, `proizvod`, `slanje`, `opis`) VALUES
(1, 2531, '2019-01-20 23:35:51', 2522, 150, 62, 2, 'Dodaj opis pošiljke'),
(2, 459, '2019-01-20 23:40:51', 3103, 75, 59, 3, 'Dodaj opis pošiljke'),
(3, 1808, '2019-01-20 23:50:51', 2370, 36, 73, 1, 'Dodaj opis pošiljke'),
(4, 1820, '2019-01-21 23:35:51', 609, 32, 100, 2, 'Dodaj opis pošiljke'),
(5, 1387, '2019-01-22 23:35:51', 2155, 83, 61, 3, 'Dodaj opis pošiljke'),
(6, 1237, '2019-01-24 23:35:51', 2495, 105, 137, 1, 'Dodaj opis pošiljke'),
(7, 2978, '2019-01-25 23:35:51', 2813, 38, 16, 3, 'Dodaj opis pošiljke'),
(8, 476, '2019-01-26 23:35:51', 1519, 92, 17, 3, 'Dodaj opis pošiljke'),
(9, 1044, '2019-01-27 23:35:51', 1331, 73, 93, 3, 'Dodaj opis pošiljke'),
(10, 166, '2019-01-28 23:35:51', 2402, 78, 42, 1, 'Dodaj opis pošiljke'),
(11, 1937, '2019-01-29 23:35:51', 2524, 89, 3, 2, 'Dodaj opis pošiljke'),
(12, 145, '2019-01-29 23:45:51', 1934, 90, 74, 3, 'Dodaj opis pošiljke'),
(13, 708, '2019-01-30 23:35:51', 1480, 86, 117, 1, 'Dodaj opis pošiljke'),
(14, 1153, '2019-02-01 23:35:51', 3798, 46, 27, 1, 'Dodaj opis pošiljke'),
(15, 1496, '2019-02-02 23:35:51', 2617, 126, 148, 2, 'Dodaj opis pošiljke'),
(16, 373, '2019-02-04 23:35:51', 2646, 113, 114, 3, 'Dodaj opis pošiljke'),
(17, 1468, '2019-02-05 23:45:51', 2862, 106, 44, 3, 'Dodaj opis pošiljke'),
(18, 1186, '2019-02-05 23:35:51', 706, 84, 87, 2, 'Dodaj opis pošiljke'),
(19, 327, '2019-02-06 23:35:51', 2884, 68, 31, 1, 'Dodaj opis pošiljke'),
(20, 2645, '2019-02-07 23:35:51', 2961, 62, 98, 1, 'Dodaj opis pošiljke'),
(21, 51, '2019-02-07 23:45:51', 2343, 82, 136, 3, 'Dodaj opis pošiljke'),
(22, 406, '2019-03-21 23:35:51', 1306, 134, 23, 1, 'Dodaj opis pošiljke'),
(23, 883, '2019-03-22 23:35:51', 1814, 61, 109, 1, 'Dodaj opis pošiljke'),
(24, 757, '2019-03-24 23:35:51', 3978, 92, 57, 2, 'Dodaj opis pošiljke'),
(25, 797, '2019-03-25 23:35:51', 720, 110, 146, 3, 'Dodaj opis pošiljke'),
(26, 89, '2019-03-26 23:35:51', 856, 126, 67, 1, 'Dodaj opis pošiljke'),
(27, 2322, '2019-03-01 23:35:51', 1961, 142, 3, 3, 'Dodaj opis pošiljke'),
(28, 2640, '2019-03-02 23:35:51', 1396, 3, 77, 1, 'Dodaj opis pošiljke'),
(29, 207, '2019-03-03 23:35:51', 1201, 150, 68, 1, 'Dodaj opis pošiljke'),
(30, 385, '2019-03-04 23:35:51', 1311, 37, 140, 3, 'Dodaj opis pošiljke'),
(31, 2870, '2019-03-04 23:45:51', 752, 73, 135, 3, 'Dodaj opis pošiljke'),
(32, 1869, '2019-03-05 23:35:51', 3993, 125, 117, 3, 'Dodaj opis pošiljke'),
(33, 695, '2019-03-05 23:55:51', 1870, 95, 35, 3, 'Dodaj opis pošiljke'),
(34, 2375, '2019-03-05 23:45:51', 2982, 71, 138, 1, 'Dodaj opis pošiljke'),
(35, 1746, '2019-03-06 23:35:51', 3464, 4, 78, 1, 'Dodaj opis pošiljke'),
(36, 411, '2019-03-07 23:35:51', 2803, 76, 47, 2, 'Dodaj opis pošiljke'),
(37, 1279, '2022-01-20 23:35:51', 1368, 46, 29, 2, 'Dodaj opis pošiljke'),
(38, 1998, '2022-01-20 23:35:51', 2287, 102, 117, 1, 'Dodaj opis pošiljke'),
(39, 2192, '2021-01-01 07:24:51', 2066, 34, 23, 1, 'Dodaj opis pošiljke'),
(40, 1026, '2021-01-02 16:37:51', 3665, 13, 70, 1, 'Dodaj opis pošiljke'),
(41, 696, '2021-01-03 08:24:51', 2343, 53, 101, 3, 'Dodaj opis pošiljke'),
(42, 610, '2021-01-04 09:35:51', 2197, 112, 75, 3, 'Dodaj opis pošiljke'),
(43, 486, '2021-01-05 17:30:51', 3815, 13, 76, 3, 'Dodaj opis pošiljke'),
(44, 2178, '2021-01-06 09:24:51', 3750, 102, 54, 1, 'Dodaj opis pošiljke'),
(45, 1623, '2021-01-07 12:24:51', 1124, 79, 109, 3, 'Dodaj opis pošiljke'),
(46, 1452, '2021-01-08 18:24:51', 1262, 95, 80, 1, 'Dodaj opis pošiljke'),
(47, 269, '2021-01-08 19:24:51', 659, 113, 133, 1, 'Dodaj opis pošiljke'),
(48, 1879, '2021-01-09 14:24:51', 554, 117, 85, 1, 'Dodaj opis pošiljke'),
(49, 559, '2021-01-10 16:17:51', 400, 4, 26, 1, 'Dodaj opis pošiljke'),
(50, 2826, '2021-01-11 16:30:51', 2367, 63, 117, 3, 'Dodaj opis pošiljke'),
(51, 1126, '2021-01-12 11:24:51', 2197, 73, 10, 3, 'Dodaj opis pošiljke'),
(52, 150, '2021-01-13 06:25:51', 3827, 53, 90, 3, 'Dodaj opis pošiljke'),
(53, 351, '2021-01-14 15:24:51', 2520, 68, 111, 1, 'Dodaj opis pošiljke'),
(54, 2977, '2021-01-15 13:24:51', 2306, 66, 3, 3, 'Dodaj opis pošiljke'),
(55, 1039, '2021-01-16 15:24:51', 3941, 57, 14, 2, 'Dodaj opis pošiljke'),
(56, 2185, '2021-01-17 16:24:51', 3368, 35, 44, 2, 'Dodaj opis pošiljke'),
(57, 2335, '2022-01-20 23:35:51', 845, 125, 12, 2, 'Dodaj opis pošiljke'),
(58, 2952, '2020-01-01 15:24:51', 3873, 41, 114, 3, 'Dodaj opis pošiljke'),
(59, 1066, '2020-01-12 13:24:51', 369, 31, 57, 1, 'Dodaj opis pošiljke'),
(60, 1184, '2020-01-13 14:24:51', 473, 122, 45, 1, 'Dodaj opis pošiljke'),
(61, 2406, '2020-06-19 12:25:51', 3451, 30, 28, 2, 'Dodaj opis pošiljke'),
(62, 2641, '2020-06-19 01:31:51', 3561, 72, 112, 1, 'Dodaj opis pošiljke'),
(63, 448, '2020-06-19 08:24:51', 1759, 117, 137, 2, 'Dodaj opis pošiljke'),
(64, 1585, '2020-06-17 09:24:51', 2208, 44, 93, 3, 'Dodaj opis pošiljke'),
(65, 1942, '2020-06-16 10:38:51', 851, 55, 116, 3, 'Dodaj opis pošiljke'),
(66, 1565, '2020-06-15 11:18:51', 3192, 43, 101, 2, 'Dodaj opis pošiljke'),
(67, 831, '2020-05-15 15:24:51', 2102, 91, 16, 3, 'Dodaj opis pošiljke'),
(68, 593, '2020-05-15 16:54:51', 3372, 21, 20, 2, 'Dodaj opis pošiljke'),
(69, 1483, '2020-05-04 11:44:51', 692, 38, 4, 1, 'Dodaj opis pošiljke'),
(70, 263, '2020-05-03 20:24:51', 933, 147, 122, 1, 'Dodaj opis pošiljke'),
(71, 1689, '2020-05-03 19:30:51', 2420, 29, 122, 2, 'Dodaj opis pošiljke'),
(72, 991, '2020-05-02 18:24:51', 1545, 45, 113, 3, 'Dodaj opis pošiljke'),
(73, 382, '2020-01-01 15:24:51', 377, 131, 98, 2, 'Dodaj opis pošiljke'),
(74, 1268, '2020-01-02 13:24:51', 422, 104, 56, 1, 'Dodaj opis pošiljke'),
(75, 1110, '2020-01-03 14:24:51', 2023, 149, 5, 3, 'Dodaj opis pošiljke'),
(76, 2605, '2020-01-04 12:24:51', 2433, 67, 18, 1, 'Dodaj opis pošiljke'),
(77, 822, '2020-01-05 01:24:51', 1148, 130, 77, 1, 'Dodaj opis pošiljke'),
(78, 1537, '2020-01-06 08:24:51', 2947, 28, 94, 1, 'Dodaj opis pošiljke'),
(79, 2679, '2020-01-03 09:24:51', 481, 108, 74, 1, 'Dodaj opis pošiljke'),
(80, 52, '2020-01-05 10:24:51', 2515, 90, 146, 2, 'Dodaj opis pošiljke'),
(81, 1119, '2020-01-12 11:18:51', 1228, 46, 141, 2, 'Dodaj opis pošiljke'),
(82, 731, '2020-01-12 15:24:51', 3277, 41, 51, 2, 'Dodaj opis pošiljke'),
(83, 280, '2020-01-11 16:54:51', 3558, 125, 123, 3, 'Dodaj opis pošiljke'),
(84, 2776, '2020-01-01 11:44:51', 3413, 22, 108, 3, 'Dodaj opis pošiljke'),
(85, 1199, '2020-01-07 20:24:51', 3909, 108, 23, 1, 'Dodaj opis pošiljke'),
(86, 2006, '2020-01-08 19:30:51', 3735, 41, 140, 2, 'Dodaj opis pošiljke'),
(87, 1460, '2020-01-09 18:24:51', 2822, 56, 67, 3, 'Dodaj opis pošiljke'),
(88, 980, '2021-01-01 15:24:51', 3804, 1, 49, 3, 'Dodaj opis pošiljke'),
(89, 30, '2021-01-01 13:24:51', 640, 109, 70, 2, 'Dodaj opis pošiljke'),
(90, 680, '2021-01-01 14:24:51', 2939, 55, 75, 3, 'Dodaj opis pošiljke'),
(91, 774, '2021-01-01 12:24:51', 2371, 25, 43, 3, 'Dodaj opis pošiljke'),
(92, 921, '2021-01-01 01:24:51', 3031, 26, 106, 3, 'Dodaj opis pošiljke'),
(93, 1721, '2021-01-01 08:24:51', 1676, 12, 120, 1, 'Dodaj opis pošiljke'),
(94, 391, '2021-01-01 09:24:51', 1939, 9, 76, 3, 'Dodaj opis pošiljke'),
(95, 1753, '2021-01-01 10:24:51', 2920, 140, 141, 3, 'Dodaj opis pošiljke'),
(96, 436, '2021-01-01 11:18:51', 1042, 146, 113, 3, 'Dodaj opis pošiljke'),
(97, 260, '2021-01-01 15:24:51', 829, 15, 137, 3, 'Dodaj opis pošiljke'),
(98, 37, '2021-01-01 16:54:51', 1521, 26, 65, 3, 'Dodaj opis pošiljke'),
(99, 1132, '2021-01-01 11:44:51', 3647, 1, 61, 3, 'Dodaj opis pošiljke'),
(100, 2105, '2021-01-01 20:24:51', 3753, 15, 142, 2, 'Dodaj opis pošiljke'),
(101, 2827, '2021-01-01 19:30:51', 2974, 106, 121, 3, 'Dodaj opis pošiljke'),
(102, 2101, '2021-01-01 18:24:51', 3297, 129, 79, 3, 'Dodaj opis pošiljke'),
(103, 912, '2022-01-01 15:24:51', 2596, 140, 15, 1, 'Dodaj opis pošiljke'),
(104, 1686, '2022-01-01 13:24:51', 3284, 137, 108, 2, 'Dodaj opis pošiljke'),
(105, 2355, '2022-01-02 14:24:51', 1084, 99, 34, 1, 'Dodaj opis pošiljke'),
(106, 1804, '2022-01-02 12:24:51', 867, 1, 1, 3, 'Dodaj opis pošiljke'),
(107, 1046, '2022-01-02 01:24:51', 3610, 56, 72, 2, 'Dodaj opis pošiljke'),
(108, 1173, '2022-01-04 08:24:51', 2076, 46, 29, 2, 'Dodaj opis pošiljke'),
(109, 219, '2022-01-04 09:24:51', 2317, 42, 40, 3, 'Dodaj opis pošiljke'),
(110, 1264, '2022-01-04 10:24:51', 3411, 132, 47, 3, 'Dodaj opis pošiljke'),
(111, 2015, '2022-01-04 11:18:51', 3147, 33, 148, 3, 'Dodaj opis pošiljke'),
(112, 2996, '2022-01-05 15:24:51', 2917, 47, 41, 1, 'Dodaj opis pošiljke'),
(113, 278, '2022-01-05 16:54:51', 2742, 5, 1, 2, 'Dodaj opis pošiljke'),
(114, 400, '2022-01-05 11:44:51', 432, 130, 78, 1, 'Dodaj opis pošiljke'),
(115, 556, '2022-01-05 20:24:51', 2542, 105, 77, 2, 'Dodaj opis pošiljke'),
(116, 44, '2022-01-05 19:30:51', 363, 136, 50, 2, 'Dodaj opis pošiljke'),
(117, 1560, '2022-01-05 18:24:51', 3354, 60, 90, 1, 'Dodaj opis pošiljke'),
(118, 1239, '2022-01-04 11:18:51', 805, 127, 4, 1, 'Dodaj opis pošiljke'),
(119, 2805, '2022-01-05 15:24:51', 1744, 44, 68, 1, 'Dodaj opis pošiljke'),
(120, 1769, '2022-01-08 16:54:51', 394, 145, 105, 3, 'Dodaj opis pošiljke'),
(121, 211, '2022-01-08 11:44:51', 3011, 46, 138, 2, 'Dodaj opis pošiljke'),
(122, 2593, '2022-01-08 20:24:51', 447, 50, 147, 2, 'Dodaj opis pošiljke'),
(123, 1507, '2022-01-09 19:30:51', 3363, 13, 147, 3, 'Dodaj opis pošiljke'),
(124, 2742, '2022-01-09 18:24:51', 3169, 73, 98, 2, 'Dodaj opis pošiljke'),
(125, 2472, '2022-01-08 11:44:51', 3335, 108, 40, 3, 'Dodaj opis pošiljke'),
(126, 1878, '2022-01-08 20:24:51', 1966, 12, 112, 3, 'Dodaj opis pošiljke'),
(127, 425, '2022-01-09 19:30:51', 3809, 83, 11, 1, 'Dodaj opis pošiljke'),
(128, 2122, '2022-01-09 18:24:51', 1600, 114, 22, 3, 'Dodaj opis pošiljke'),
(129, 1222, '2022-01-08 11:44:51', 438, 17, 11, 1, 'Dodaj opis pošiljke'),
(130, 17, '2022-01-08 20:24:51', 3431, 81, 80, 3, 'Dodaj opis pošiljke'),
(131, 816, '2022-01-09 19:30:51', 3674, 18, 32, 2, 'Dodaj opis pošiljke'),
(132, 2784, '2022-01-09 18:24:51', 1317, 87, 148, 1, 'Dodaj opis pošiljke'),
(133, 179, '2022-01-08 11:44:51', 3025, 47, 3, 3, 'Dodaj opis pošiljke'),
(134, 700, '2022-01-08 20:24:51', 3315, 70, 89, 3, 'Dodaj opis pošiljke'),
(135, 754, '2022-01-09 19:30:51', 1009, 114, 122, 1, 'Dodaj opis pošiljke'),
(136, 1859, '2022-01-09 18:24:51', 652, 101, 31, 2, 'Dodaj opis pošiljke'),
(137, 1672, '2022-01-11 11:44:51', 2661, 30, 97, 1, 'Dodaj opis pošiljke'),
(138, 1517, '2022-01-11 20:24:51', 883, 96, 7, 3, 'Dodaj opis pošiljke'),
(139, 1870, '2022-01-11 19:30:51', 1502, 149, 24, 1, 'Dodaj opis pošiljke'),
(140, 1193, '2022-01-11 18:24:51', 2235, 26, 101, 3, 'Dodaj opis pošiljke'),
(141, 1861, '2022-01-11 11:44:51', 2550, 138, 69, 3, 'Dodaj opis pošiljke'),
(142, 1849, '2022-02-12 20:24:51', 3663, 54, 3, 2, 'Dodaj opis pošiljke'),
(143, 1738, '2022-02-09 19:30:51', 1841, 32, 86, 2, 'Dodaj opis pošiljke'),
(144, 2579, '2022-02-09 18:24:51', 2042, 142, 54, 3, 'Dodaj opis pošiljke'),
(145, 1711, '2022-02-08 11:44:51', 1996, 116, 115, 2, 'Dodaj opis pošiljke'),
(146, 2316, '2022-02-08 20:24:51', 2839, 83, 27, 3, 'Dodaj opis pošiljke'),
(147, 2912, '2022-02-09 19:30:51', 3399, 136, 117, 1, 'Dodaj opis pošiljke'),
(148, 2374, '2022-02-09 18:24:51', 3371, 116, 101, 3, 'Dodaj opis pošiljke'),
(149, 1442, '2022-02-08 11:44:51', 559, 55, 133, 3, 'Dodaj opis pošiljke'),
(150, 1717, '2022-02-08 20:24:51', 1728, 103, 119, 1, 'Dodaj opis pošiljke');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `znacka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `ime`, `prezime`, `email`, `znacka`, `adresa`, `opis`, `created_at`, `updated_at`) VALUES
(1, 'Jamarcus Monahan', 'Feeney', 'daisy.ruecker@hotmail.com', '*****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:01', '2022-01-20 22:33:01'),
(2, 'Sigurd Schulist', 'Howell', 'duncan.rosenbaum@yahoo.com', '*', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:02', '2022-01-20 22:33:02'),
(3, 'Melba Jaskolski', 'Farrell', 'harrison10@feeney.com', '*****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:02', '2022-01-20 22:33:02'),
(4, 'Makenna Cremin DVM', 'Welch', 'aaron.stanton@walsh.net', '***', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:02', '2022-01-20 22:33:02'),
(5, 'Asia Waelchi', 'Morissette', 'king.linwood@bayer.biz', '***', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:02', '2022-01-20 22:33:02'),
(6, 'Chris Kertzmann', 'Dietrich', 'jaquan44@yahoo.com', '****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:02', '2022-01-20 22:33:02'),
(7, 'Leatha Reichel IV', 'Doyle', 'botsford.pink@reichert.biz', '****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:03', '2022-01-20 22:33:03'),
(8, 'Percival Towne', 'Nicolas', 'makayla.mclaughlin@gmail.com', '*****', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:03', '2022-01-20 22:33:03'),
(9, 'Arely Kassulke', 'Pfannerstill', 'jeffrey.rowe@ankunding.com', '***', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:03', '2022-01-20 22:33:03'),
(10, 'Demond Swift', 'Mueller', 'kenton.gutmann@hotmail.com', '*****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:03', '2022-01-20 22:33:03'),
(11, 'Meaghan Ernser V', 'Thiel', 'sedrick.reilly@hotmail.com', '**', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:03', '2022-01-20 22:33:03'),
(12, 'Brandt Quitzon', 'Corkery', 'loma22@herman.com', '****', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:03', '2022-01-20 22:33:03'),
(13, 'Vincenzo Heaney', 'Prohaska', 'alicia.parker@paucek.biz', '*****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:03', '2022-01-20 22:33:03'),
(14, 'Rosalia Terry', 'Reinger', 'dayne.emard@hotmail.com', '****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:03', '2022-01-20 22:33:03'),
(15, 'Dorris Medhurst', 'Graham', 'langworth.emmett@renner.com', '*****', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:03', '2022-01-20 22:33:03'),
(16, 'Ola Emmerich', 'Hill', 'gcollier@labadie.com', '**', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:03', '2022-01-20 22:33:03'),
(17, 'Dr. Marianne Doyle', 'Lowe', 'tara90@berge.com', '****', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:04', '2022-01-20 22:33:04'),
(18, 'Magali Marks', 'Batz', 'sarai82@yahoo.com', '*****', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:04', '2022-01-20 22:33:04'),
(19, 'Dr. Ford Orn', 'Nitzsche', 'jamaal33@yahoo.com', '***', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:04', '2022-01-20 22:33:04'),
(20, 'Asa Lowe', 'Christiansen', 'oritchie@gmail.com', '*****', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:04', '2022-01-20 22:33:04'),
(21, 'Tremayne Labadie Jr.', 'Yundt', 'gkshlerin@gmail.com', '*', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:04', '2022-01-20 22:33:04'),
(22, 'Anika Hagenes', 'Goodwin', 'reynolds.lelah@yahoo.com', '***', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:04', '2022-01-20 22:33:04'),
(23, 'Tamara West', 'Schulist', 'alessandro.cummings@gmail.com', '*', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:04', '2022-01-20 22:33:04'),
(24, 'Prof. Ida Kreiger', 'Mante', 'shemar.schiller@walsh.net', '***', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:04', '2022-01-20 22:33:04'),
(25, 'Emilio Friesen', 'Lesch', 'elbert09@grant.com', '*', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:04', '2022-01-20 22:33:04'),
(26, 'Dejah Collier', 'Bahringer', 'boehm.serenity@gmail.com', '*****', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:04', '2022-01-20 22:33:04'),
(27, 'Katrina Donnelly', 'Morar', 'greyson93@boehm.biz', '****', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:05', '2022-01-20 22:33:05'),
(28, 'Asa Tromp', 'Will', 'bboyle@hotmail.com', '***', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:05', '2022-01-20 22:33:05'),
(29, 'Deja Schulist', 'Ullrich', 'sigmund.kertzmann@shields.info', '**', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(30, 'Carlee Beatty', 'Cummings', 'bauch.lolita@gmail.com', '****', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(31, 'Sylvia Schuppe', 'Cremin', 'carolyne.prohaska@gmail.com', '*****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(32, 'Marianne Leuschke', 'Jenkins', 'dooley.justina@fritsch.biz', '***', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(33, 'Rachael Beer', 'King', 'german95@yahoo.com', '*****', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(34, 'Everette Baumbach', 'Schuppe', 'dibbert.jessika@bashirian.biz', '****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(35, 'Katrine O\'Kon', 'Harris', 'rodriguez.americo@bradtke.biz', '*****', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(36, 'Mrs. Noemy Berge', 'McGlynn', 'pietro39@gmail.com', '****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(37, 'Dr. Pearl Olson V', 'Haag', 'rylee.walsh@heaney.biz', '**', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(38, 'Josh Deckow', 'Will', 'colleen.ullrich@rosenbaum.com', '***', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(39, 'Kory Dietrich MD', 'Crona', 'vandervort.izaiah@gmail.com', '*****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(40, 'Darby Marquardt', 'Upton', 'kevon.gaylord@gmail.com', '***', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(41, 'Sylvia Sporer', 'Bartoletti', 'haley.damon@hotmail.com', '****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:06', '2022-01-20 22:33:06'),
(42, 'Aurore Hagenes', 'Shanahan', 'kelsie26@hotmail.com', '*****', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(43, 'Trevion Prohaska', 'Ledner', 'bcummings@crist.com', '***', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(44, 'Mr. Monserrat Wintheiser', 'Ullrich', 'jalon.emard@rogahn.com', '*', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(45, 'Prof. Westley Smitham', 'Dach', 'azboncak@kozey.com', '**', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(46, 'Dr. Rosie Towne Sr.', 'Medhurst', 'ymurazik@yahoo.com', '*****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(47, 'Desiree Fadel', 'Jacobson', 'skye.corwin@yahoo.com', '**', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(48, 'Tessie Dare', 'Lowe', 'lakin.neha@hotmail.com', '*', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(49, 'Rita Stanton', 'Pfannerstill', 'brendan17@yahoo.com', '***', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(50, 'Blanca Langworth', 'Goyette', 'crawford.hill@boyer.net', '*****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(51, 'Yessenia Predovic', 'Orn', 'leuschke.barton@konopelski.com', '*****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(52, 'Cristian Waelchi DDS', 'Cartwright', 'olind@gmail.com', '**', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(53, 'Eula Watsica', 'Huel', 'ona59@kreiger.com', '***', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(54, 'Lizzie Schuster II', 'Hickle', 'emiliano.stroman@gmail.com', '***', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(55, 'Dr. Lonzo Rodriguez', 'Hamill', 'gillian.klocko@gmail.com', '**', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(56, 'Eva Olson', 'Schiller', 'grant.laurine@gmail.com', '***', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(57, 'Mr. Edmund Fritsch PhD', 'Schmitt', 'betsy94@gmail.com', '****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(58, 'Claudine Parker', 'Rutherford', 'sigurd.ziemann@gmail.com', '**', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(59, 'Rickey Welch', 'Lakin', 'gislason.diego@okon.com', '**', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(60, 'Aida Price', 'Schulist', 'rosanna.jerde@bednar.com', '**', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(61, 'Johnpaul Anderson', 'Rippin', 'carroll.justine@yahoo.com', '*****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(62, 'Camylle Feeney', 'Renner', 'oheaney@barrows.org', '*', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(63, 'Wilson Lang', 'Kunde', 'adolfo.smith@friesen.com', '**', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(64, 'Dr. Dayna Goldner', 'Stroman', 'alexane51@rath.org', '**', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(65, 'Romaine Swift', 'Hermann', 'selena.king@hotmail.com', '*', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(66, 'Irma Sanford III', 'Frami', 'wlueilwitz@yahoo.com', '****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:07', '2022-01-20 22:33:07'),
(67, 'Marcelo Block', 'Roberts', 'qhudson@gmail.com', '*****', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(68, 'Grayce Kozey II', 'Gleichner', 'bernhard.danial@greenfelder.com', '*****', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(69, 'Tyler Bauch', 'Hansen', 'nbartoletti@yahoo.com', '****', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(70, 'Alisha Lynch IV', 'Ziemann', 'deondre.green@fritsch.com', '***', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(71, 'Marilou Cummings MD', 'Sipes', 'mohamed51@yahoo.com', '****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(72, 'April Labadie V', 'Feeney', 'yadira.feeney@schoen.com', '***', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(73, 'Carli Lang', 'Renner', 'pschroeder@gaylord.com', '*****', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(74, 'Dr. Martina Senger Jr.', 'Rempel', 'rhagenes@larkin.net', '***', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(75, 'Ms. Zetta Swift', 'Terry', 'lane82@mueller.net', '**', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(76, 'Kian Schmeler', 'Predovic', 'hessel.mireille@kling.com', '***', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(77, 'Grover Wisozk PhD', 'Stroman', 'hugh.luettgen@walsh.info', '***', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(78, 'Nico Murazik', 'Green', 'kara60@nitzsche.com', '***', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(79, 'Dominic Lang', 'Mertz', 'dfay@yahoo.com', '*****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(80, 'Christiana Morissette', 'Parker', 'cornell61@hotmail.com', '**', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(81, 'Prof. Don Stokes V', 'Dicki', 'enos.heathcote@kuhlman.com', '**', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(82, 'Gaetano Stark III', 'Kertzmann', 'ova03@hotmail.com', '**', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(83, 'Ines Block', 'Corwin', 'manley.mcglynn@hotmail.com', '*****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(84, 'Makayla Ondricka', 'Cruickshank', 'dennis38@heller.com', '****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(85, 'Talia Cruickshank', 'O\'Connell', 'qdicki@hotmail.com', '****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(86, 'Arvel Barton', 'Paucek', 'sim49@boyer.com', '*****', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(87, 'Jonatan Mayer II', 'Simonis', 'dannie.hermann@lesch.org', '**', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(88, 'Miss Demetris Anderson Jr.', 'O\'Hara', 'xsenger@farrell.com', '*****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(89, 'Dr. Kayli Abbott', 'Williamson', 'dwalker@carroll.info', '*', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(90, 'Elinor Breitenberg V', 'Glover', 'haylee.heaney@yundt.com', '****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(91, 'Rosalia Fisher', 'Grimes', 'mills.maxie@bergnaum.biz', '**', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:08', '2022-01-20 22:33:08'),
(92, 'Jordane Conroy', 'Kling', 'christophe.collins@frami.com', '***', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(93, 'Isabella Walter', 'Dibbert', 'eschinner@moore.com', '*****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(94, 'Murphy Doyle DVM', 'Bauch', 'whitney.wisozk@gmail.com', '***', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(95, 'Prof. Lauriane Hackett', 'Barrows', 'jacobs.clint@rice.com', '****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(96, 'Wyman West', 'Schuster', 'yasmine.pacocha@hotmail.com', '**', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(97, 'Jermaine Windler', 'Witting', 'shad64@metz.com', '****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(98, 'Viva Crona', 'Batz', 'durward.moore@hotmail.com', '****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(99, 'Ms. Lyla Durgan', 'Mills', 'cornell12@hotmail.com', '***', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(100, 'Fannie Mertz', 'Tromp', 'weldon.emard@feeney.com', '****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(101, 'Esmeralda Jakubowski', 'Frami', 'tara.kovacek@gmail.com', '****', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(102, 'Shaun Stamm PhD', 'Kuhlman', 'isabella35@rosenbaum.com', '*****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(103, 'Oda Block', 'Kunde', 'ransom79@daniel.com', '*****', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(104, 'Jakayla Lueilwitz MD', 'Padberg', 'jacobson.ephraim@hotmail.com', '****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(105, 'Selena Bednar', 'Treutel', 'rod.osinski@yahoo.com', '***', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(106, 'Liana VonRueden PhD', 'Prosacco', 'corbin.sporer@hotmail.com', '**', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(107, 'Prof. Selmer Jakubowski V', 'Conn', 'vpadberg@yahoo.com', '*', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(108, 'Eliane Morar', 'Grady', 'anjali.konopelski@grimes.com', '***', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(109, 'Triston Kassulke DVM', 'Mayert', 'thea84@hotmail.com', '****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(110, 'Willa Dach II', 'Kihn', 'larissa27@pagac.com', '****', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(111, 'Fabiola Kohler', 'Renner', 'fahey.sterling@yahoo.com', '***', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(112, 'Queen Bailey', 'Abshire', 'ktoy@windler.biz', '*', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(113, 'Ned Stamm', 'Effertz', 'cierra.lebsack@gmail.com', '*****', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(114, 'Duane Daugherty', 'Kemmer', 'rjacobs@hayes.com', '**', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(115, 'Trycia Morissette', 'Boehm', 'gottlieb.freida@gorczany.com', '***', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(116, 'Jenifer Sanford', 'Bode', 'ktromp@gmail.com', '*****', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:09', '2022-01-20 22:33:09'),
(117, 'Myrtle Toy III', 'Kihn', 'mireya.rempel@pfannerstill.com', '****', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(118, 'Bret Durgan', 'Kemmer', 'nnitzsche@lebsack.org', '***', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(119, 'Mr. Jesus Kunde', 'Wyman', 'jabari.waters@yahoo.com', '****', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(120, 'Dr. Elwin Tromp I', 'Hayes', 'cheller@stanton.biz', '****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(121, 'Javonte Kassulke', 'Satterfield', 'isabel40@yahoo.com', '***', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(122, 'Joshua Wunsch Jr.', 'Schmeler', 'glittle@donnelly.com', '****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(123, 'Prof. Renee Monahan', 'Zemlak', 'jswift@oberbrunner.com', '**', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(124, 'Prof. Fredy Beer', 'Rosenbaum', 'nolan.buford@yahoo.com', '***', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(125, 'Ardella West V', 'Windler', 'shields.macy@gmail.com', '****', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(126, 'Seth Stehr', 'Waters', 'rashawn59@gmail.com', '*****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(127, 'Reece Ratke', 'Green', 'darrel.sauer@gmail.com', '****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(128, 'Sandy Greenholt', 'Daugherty', 'gbeier@murray.com', '**', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(129, 'Mr. Joany Ledner III', 'Bahringer', 'manley50@yahoo.com', '****', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(130, 'Marcelina Heidenreich', 'Daugherty', 'bcarter@lakin.org', '****', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(131, 'Ms. Dayna Volkman', 'Hermiston', 'bruen.maritza@hagenes.org', '****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(132, 'Mr. Devante Bartoletti', 'Jacobson', 'umitchell@will.com', '*****', 'Krupska', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(133, 'Kayden Dare PhD', 'Jacobi', 'ykemmer@kulas.com', '*', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(134, 'Raheem Haag', 'Morissette', 'wwelch@hotmail.com', '*', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:10', '2022-01-20 22:33:10'),
(135, 'Dr. Brando Wyman', 'Batz', 'xschuppe@hotmail.com', '*****', 'Ozimice1', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(136, 'Lucile Dare', 'Wolff', 'qhomenick@hotmail.com', '****', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(137, 'Keira Block', 'Rice', 'akerluke@christiansen.info', '**', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(138, 'Connie Bode PhD', 'Denesik', 'kamille.cassin@altenwerth.net', '*****', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(139, 'Maurine Barrows', 'Bruen', 'frami.antonetta@ruecker.com', '***', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(140, 'Prof. Jeremy Howell DVM', 'Hilpert', 'jkub@dubuque.net', '****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(141, 'Dr. Macie Gutkowski', 'Wuckert', 'gfarrell@gmail.com', '**', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(142, 'Addie Swaniawski', 'Becker', 'andreane44@yahoo.com', '****', 'Ozimice2', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(143, 'Steve Kunde', 'McCullough', 'timmothy25@bahringer.com', '*****', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(144, 'Electa Heidenreich', 'Grimes', 'litzy.little@mayer.com', '****', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(145, 'Dee Keebler', 'Gislason', 'kutch.hettie@hartmann.com', '*', 'Ulica Irfana Ljubijankića', 'Dodaj opis', '2022-01-20 22:33:11', '2022-01-20 22:33:11'),
(146, 'Jordan Quigley', 'Satterfield', 'xemard@kunde.net', '*', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:12', '2022-01-20 22:33:12'),
(147, 'Lloyd Hettinger', 'Gorczany', 'elinore.lind@hotmail.com', '*****', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:12', '2022-01-20 22:33:12'),
(148, 'Miss Laney Altenwerth Sr.', 'Stehr', 'zoie44@gmail.com', '**', 'Ulica Alekse Santica', 'Dodaj opis', '2022-01-20 22:33:12', '2022-01-20 22:33:12'),
(149, 'Dr. Assunta Will', 'Durgan', 'orn.lexi@nikolaus.org', '*', 'Ulica žrtava genocida', 'Dodaj opis', '2022-01-20 22:33:12', '2022-01-20 22:33:12'),
(150, 'Mrs. Briana Boyle Jr.', 'Ledner', 'dillon97@gmail.com', '*****', 'Ulica Izeta Sarajlica', 'Dodaj opis', '2022-01-20 22:33:12', '2022-01-20 22:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2022_01_20_181445_create_sessions_table', 1),
(20, '2022_01_20_184012_create_products_table', 1),
(21, '2022_01_20_185137_create_brands_table', 1),
(22, '2022_01_20_190651_create_types_table', 1),
(23, '2022_01_20_191524_create_customers_table', 1),
(24, '2022_01_20_194857_create_carts_table', 1),
(25, '2022_01_20_202200_create_shippings_table', 1),
(26, '2022_01_21_134927_create_product_files_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kod` int(11) NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `godina_p` date NOT NULL,
  `cijena` double NOT NULL,
  `stanje` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brend` int(11) NOT NULL,
  `vrsta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `kod`, `ime`, `godina_p`, `cijena`, `stanje`, `brend`, `vrsta`) VALUES
(2, 0, 'Lenovo XDD2', '2022-01-31', 3210, 'Novo', 2, 1),
(4, 6774, 'asperiores', '2021-01-11', 3987, 'Polovno', 3, 4),
(5, 3505, 'quasi', '2021-01-01', 1090, 'Novo', 11, 2),
(6, 7200, 'sed', '2021-09-02', 2617, 'Polovno', 8, 3),
(7, 6833, 'modi', '2021-09-03', 1121, 'Novo', 14, 1),
(8, 7382, 'accusantium', '2021-09-04', 1477, 'Polovno', 5, 1),
(9, 5368, 'dignissimos', '2021-09-05', 3273, 'Polovno', 11, 2),
(10, 5909, 'et', '2021-09-06', 3600, 'Polovno', 9, 1),
(11, 4956, 'id', '2021-09-11', 630, 'Novo', 15, 4),
(12, 7291, 'expedita', '2021-09-12', 2579, 'Novo', 1, 4),
(13, 6255, 'beatae', '2021-09-12', 1539, 'Novo', 3, 4),
(14, 3181, 'rerum', '2021-09-13', 1606, 'Novo', 7, 4),
(15, 6796, 'alias', '2021-09-14', 570, 'Polovno', 10, 3),
(16, 3010, 'fuga', '2021-09-15', 3089, 'Novo', 11, 2),
(17, 7591, 'optio', '2021-09-15', 3685, 'Polovno', 12, 4),
(18, 7930, 'enim', '2021-09-16', 1217, 'Novo', 4, 1),
(19, 7974, 'officiis', '2021-09-16', 2146, 'Novo', 10, 4),
(20, 3555, 'aut', '2021-09-17', 453, 'Polovno', 1, 3),
(21, 6949, 'officia', '2021-09-18', 1744, 'Novo', 15, 3),
(22, 3384, 'sint', '2021-08-15', 2690, 'Polovno', 11, 2),
(23, 7526, 'incidunt', '2021-08-16', 3223, 'Polovno', 9, 1),
(24, 3790, 'qui', '2021-08-17', 2246, 'Novo', 13, 2),
(25, 6823, 'at', '2021-08-18', 1510, 'Novo', 9, 4),
(26, 6363, 'voluptatem', '2021-08-01', 887, 'Novo', 5, 2),
(27, 4588, 'consectetur', '2021-08-05', 2080, 'Novo', 1, 1),
(28, 3400, 'perspiciatis', '2021-08-05', 2637, 'Novo', 4, 4),
(29, 7668, 'quaerat', '2021-08-06', 903, 'Novo', 3, 4),
(30, 5492, 'quis', '2021-08-07', 2581, 'Novo', 3, 2),
(31, 3849, 'possimus', '2021-08-08', 2349, 'Polovno', 1, 4),
(32, 4388, 'omnis', '2021-08-09', 3335, 'Novo', 3, 3),
(33, 3264, 'in', '2021-08-10', 577, 'Novo', 4, 4),
(34, 3040, 'vel', '2021-08-11', 3315, 'Polovno', 12, 2),
(35, 7644, 'ipsam', '2021-08-12', 3189, 'Polovno', 3, 4),
(36, 4467, 'ut', '2021-08-13', 3494, 'Novo', 15, 2),
(37, 6409, 'maiores', '2021-08-23', 729, 'Polovno', 15, 3),
(38, 7228, 'dolores', '2021-08-27', 2871, 'Novo', 13, 1),
(39, 4953, 'dolor', '2021-08-28', 3888, 'Polovno', 12, 1),
(40, 6980, 'odit', '2021-08-29', 1839, 'Novo', 1, 4),
(41, 6469, 'earum', '2022-01-20', 3317, 'Polovno', 12, 1),
(42, 4112, 'veniam', '2021-07-12', 2789, 'Polovno', 15, 3),
(43, 6202, 'hic', '2021-07-13', 1445, 'Polovno', 13, 4),
(44, 7399, 'voluptas', '2021-07-11', 1590, 'Novo', 11, 2),
(45, 5979, 'vitae', '2021-07-10', 2669, 'Polovno', 4, 1),
(46, 7434, 'architecto', '2021-07-10', 1025, 'Novo', 15, 2),
(47, 5182, 'tenetur', '2021-07-11', 3112, 'Polovno', 7, 3),
(48, 3581, 'eos', '2021-07-12', 3161, 'Novo', 12, 1),
(49, 3987, 'deserunt', '2021-07-13', 3131, 'Novo', 2, 1),
(50, 5757, 'odio', '2021-07-17', 2184, 'Novo', 15, 3),
(51, 4907, 'sunt', '2021-07-17', 3066, 'Novo', 7, 2),
(52, 7001, 'nemo', '2021-07-18', 695, 'Polovno', 12, 3),
(53, 4602, 'pariatur', '2021-07-25', 2996, 'Polovno', 11, 2),
(54, 3044, 'a', '2021-07-25', 2992, 'Novo', 7, 4),
(55, 7461, 'explicabo', '2021-07-24', 700, 'Novo', 12, 3),
(56, 4392, 'dolorem', '2021-07-24', 2522, 'Novo', 5, 2),
(57, 6978, 'autem', '2021-07-23', 1474, 'Novo', 10, 4),
(58, 4371, 'quia', '2021-07-21', 2604, 'Novo', 1, 2),
(59, 6867, 'ullam', '2021-07-20', 1692, 'Novo', 13, 1),
(60, 5721, 'dicta', '2021-06-12', 906, 'Novo', 2, 1),
(61, 6244, 'quo', '2021-06-13', 1827, 'Novo', 3, 1),
(62, 6536, 'eum', '2021-06-11', 3976, 'Novo', 6, 4),
(63, 4008, 'adipisci', '2021-06-10', 3342, 'Novo', 6, 2),
(64, 6905, 'ipsa', '2021-06-10', 2500, 'Novo', 2, 3),
(65, 4417, 'voluptate', '2021-06-11', 3196, 'Polovno', 9, 1),
(66, 5556, 'nostrum', '2021-06-12', 1803, 'Polovno', 15, 3),
(67, 7903, 'aliquam', '2021-06-13', 737, 'Novo', 11, 4),
(68, 3427, 'eligendi', '2021-06-17', 2698, 'Novo', 9, 2),
(69, 6671, 'soluta', '2021-06-17', 3494, 'Novo', 12, 2),
(70, 5286, 'nobis', '2021-06-18', 3631, 'Novo', 9, 1),
(71, 5318, 'ex', '2021-06-25', 638, 'Novo', 3, 2),
(72, 3213, 'eaque', '2021-06-25', 1270, 'Polovno', 13, 4),
(73, 7194, 'ea', '2021-06-24', 1679, 'Polovno', 3, 3),
(74, 6176, 'quae', '2021-06-24', 587, 'Polovno', 8, 1),
(75, 5800, 'magnam', '2021-06-23', 2849, 'Novo', 1, 2),
(76, 4142, 'repellat', '2021-06-21', 1163, 'Novo', 5, 1),
(77, 6268, 'molestias', '2021-06-20', 3276, 'Novo', 11, 4),
(78, 4080, 'est', '2021-05-12', 1372, 'Polovno', 5, 1),
(79, 3995, 'eius', '2021-05-13', 1794, 'Polovno', 5, 4),
(80, 3137, 'fugiat', '2021-05-11', 1521, 'Polovno', 8, 4),
(81, 4553, 'aliquid', '2021-05-10', 2780, 'Novo', 2, 3),
(82, 7127, 'iusto', '2021-05-10', 1135, 'Novo', 12, 2),
(83, 7299, 'consequatur', '2021-05-11', 2930, 'Novo', 4, 2),
(84, 3163, 'esse', '2021-05-12', 2959, 'Polovno', 10, 1),
(85, 7771, 'numquam', '2021-05-13', 766, 'Polovno', 14, 1),
(86, 4009, 'aperiam', '2021-05-17', 1090, 'Novo', 11, 2),
(87, 6292, 'nihil', '2021-05-17', 3301, 'Polovno', 9, 2),
(88, 5961, 'iure', '2021-05-18', 907, 'Novo', 11, 1),
(89, 7660, 'illo', '2021-05-25', 2045, 'Novo', 8, 3),
(90, 6270, 'impedit', '2021-05-25', 2239, 'Novo', 1, 3),
(91, 6917, 'natus', '2021-05-24', 3249, 'Polovno', 13, 1),
(92, 5523, 'ratione', '2021-05-24', 3716, 'Polovno', 3, 3),
(93, 5051, 'doloremque', '2021-05-23', 2954, 'Polovno', 1, 2),
(94, 4641, 'debitis', '2021-05-21', 1118, 'Polovno', 6, 3),
(95, 5895, 'recusandae', '2021-07-20', 1178, 'Polovno', 10, 1),
(96, 6303, 'porro', '2022-01-20', 1302, 'Polovno', 2, 2),
(97, 3252, 'atque', '2022-01-20', 727, 'Polovno', 5, 3),
(98, 6173, 'harum', '2022-01-20', 2026, 'Polovno', 2, 4),
(99, 6916, 'veritatis', '2022-01-20', 2205, 'Novo', 13, 2),
(100, 5819, 'delectus', '2022-01-20', 3774, 'Novo', 2, 4),
(101, 3077, 'consequuntur', '2022-01-20', 1972, 'Polovno', 6, 4),
(102, 6010, 'quam', '2022-01-20', 867, 'Polovno', 11, 4),
(103, 5712, 'totam', '2022-01-20', 932, 'Novo', 9, 4),
(104, 7418, 'mollitia', '2022-01-20', 850, 'Novo', 14, 3),
(105, 3651, 'magni', '2022-01-20', 3648, 'Novo', 10, 4),
(106, 6044, 'occaecati', '2022-01-20', 3254, 'Novo', 3, 2),
(107, 3133, 'non', '2022-01-20', 3973, 'Polovno', 4, 3),
(108, 7050, 'laboriosam', '2022-01-20', 681, 'Polovno', 5, 1),
(109, 6994, 'deleniti', '2022-01-20', 471, 'Novo', 15, 3),
(110, 5701, 'ab', '2022-01-20', 2001, 'Novo', 8, 2),
(111, 5918, 'exercitationem', '2022-01-20', 1508, 'Novo', 6, 2),
(112, 7444, 'nesciunt', '2022-01-20', 3621, 'Novo', 2, 4),
(113, 6746, 'illum', '2022-01-20', 1277, 'Novo', 13, 2),
(114, 6868, 'aspernatur', '2022-01-20', 2603, 'Novo', 11, 3),
(115, 4052, 'quas', '2022-01-20', 826, 'Novo', 14, 1),
(116, 4539, 'excepturi', '2022-01-20', 2741, 'Polovno', 12, 3),
(117, 3952, 'praesentium', '2022-01-20', 1811, 'Novo', 11, 1),
(118, 4110, 'laborum', '2022-01-20', 2457, 'Polovno', 9, 2),
(119, 7366, 'dolore', '2022-01-20', 1025, 'Polovno', 13, 4),
(120, 6070, 'reprehenderit', '2022-01-20', 1502, 'Polovno', 4, 1),
(121, 4779, 'tempora', '2022-01-20', 1013, 'Novo', 11, 4),
(122, 3021, 'sapiente', '2022-01-20', 3856, 'Polovno', 13, 2),
(123, 6931, 'corrupti', '2022-01-20', 917, 'Novo', 5, 2),
(124, 6407, 'quos', '2022-01-20', 2280, 'Novo', 15, 2),
(125, 3865, 'accusamus', '2022-01-20', 2058, 'Novo', 1, 4),
(126, 7779, 'minima', '2022-01-20', 3826, 'Novo', 2, 2),
(127, 4449, 'neque', '2022-01-20', 1967, 'Novo', 10, 1),
(128, 3315, 'voluptatum', '2022-01-20', 3338, 'Novo', 14, 1),
(129, 3918, 'molestiae', '2022-01-20', 1591, 'Polovno', 3, 1),
(130, 4490, 'rem', '2022-01-20', 508, 'Novo', 13, 4),
(131, 4452, 'velit', '2022-01-20', 735, 'Polovno', 12, 3),
(132, 3335, 'ducimus', '2022-01-20', 1620, 'Novo', 8, 4),
(133, 6120, 'reiciendis', '2022-01-20', 365, 'Polovno', 1, 3),
(134, 6169, 'temporibus', '2022-01-20', 2373, 'Novo', 4, 4),
(135, 7370, 'commodi', '2022-01-20', 2344, 'Novo', 14, 4),
(136, 6921, 'cupiditate', '2022-01-20', 2867, 'Novo', 1, 1),
(137, 5950, 'animi', '2022-01-20', 662, 'Polovno', 3, 4),
(138, 5195, 'culpa', '2022-01-20', 1821, 'Polovno', 5, 3),
(139, 7880, 'quisquam', '2022-01-20', 3149, 'Polovno', 13, 3),
(140, 7094, 'iste', '2022-01-20', 1904, 'Polovno', 5, 3),
(141, 6223, 'voluptates', '2022-01-20', 863, 'Polovno', 11, 2),
(142, 3597, 'inventore', '2022-01-20', 776, 'Novo', 1, 3),
(143, 3661, 'nam', '2022-01-20', 3357, 'Polovno', 13, 1),
(144, 4790, 'minus', '2022-01-20', 2747, 'Novo', 3, 4),
(145, 4369, 'cum', '2022-01-20', 826, 'Polovno', 10, 1),
(146, 4683, 'blanditiis', '2022-01-20', 3578, 'Novo', 6, 2),
(147, 4735, 'facere', '2022-01-20', 3268, 'Novo', 1, 2),
(148, 6297, 'doloribus', '2022-01-20', 1563, 'Polovno', 11, 1),
(149, 4591, 'unde', '2022-01-20', 1246, 'Polovno', 8, 1),
(150, 7183, 'quidem', '2022-01-20', 806, 'Novo', 15, 2),
(151, 21534, 'Laptop A786', '2021-01-05', 1200, 'Polovno', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_files`
--

CREATE TABLE `product_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proizvod` int(11) NOT NULL,
  `tip` int(11) NOT NULL,
  `datoteka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('nzRi4EyooyPL85dD1QwCM6V5P5ppR77IvbYYTJAf', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRnE3dFduNm9QUEY0NkxnUzk0d1FXQUdaSThGTXNUeVdVaTMwUTZXdSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAva29udGFrdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRGVHF4VE95RWVJdDgzWGxXeDlsVUl1V3NCb3Jnak0uc2Z3UUJnbmd0cXVXT3paU2FUb3NlSyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkRlRxeFRPeUVlSXQ4M1hsV3g5bFVJdVdzQm9yZ2pNLnNmd1FCZ25ndHF1V096WlNhVG9zZUsiO30=', 1644600562),
('tNH1vs0rUhBb5Dga900kipcqsvRdzCKLshkNVD7J', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiYWVjall4d1ZmM1lBRmpxTUZVcXdOaTM5U0hTVDliYWZFdzh2QnA5UyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRlRxeFRPeUVlSXQ4M1hsV3g5bFVJdVdzQm9yZ2pNLnNmd1FCZ25ndHF1V096WlNhVG9zZUsiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEZUcXhUT3lFZUl0ODNYbFd4OWxVSXVXc0JvcmdqTS5zZndRQmduZ3RxdVdPelpTYVRvc2VLIjt9', 1644610549),
('xMso2blej7K7HhDneXSheD51akIy2fwl8BkSp9Is', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNVdodFBKSGNnQmNNMHdrcFo4SmlKS3RjNTdGQXFWT01Dd21hZG5XRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY2FydHMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRlRxeFRPeUVlSXQ4M1hsV3g5bFVJdVdzQm9yZ2pNLnNmd1FCZ25ndHF1V096WlNhVG9zZUsiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEZUcXhUT3lFZUl0ODNYbFd4OWxVSXVXc0JvcmdqTS5zZndRQmduZ3RxdVdPelpTYVRvc2VLIjt9', 1644590066);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cijena` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `ime`, `opis`, `cijena`) VALUES
(1, 'Standardno', 'Slanje optimalno', '8KM'),
(2, 'Ekonomsko', 'Srednje optimalno, duže vrijeme čekanja', '5KM'),
(3, 'Brzo', 'Sigurno i brzo', '11KM');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `ime`, `opis`) VALUES
(1, 'Laptopi', 'Defaultni'),
(2, 'Kompjuteri', 'Defaultni'),
(3, 'Komponente', 'Defaultni'),
(4, 'Periferija', 'Defaultni');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$ArzSpHsGB8pzbqF/wdQzDurGYj/MdjTtiFOfLp5gNh2YzI/qF7GGa', NULL, NULL, 'cF4SOnnhiclUlxENIzEtbAOtzErYzfeO3aMIelVD2LM9KVLosSQHPfOnodWM', NULL, NULL, '2022-01-20 21:49:05', '2022-01-20 21:49:05'),
(2, 'Ajlaaa', 'a@gmail.com', NULL, '$2y$10$FTqxTOyEeIt83XlWx9lUIuWsBorgjM.sfwQBgngtquWOzZSaToseK', NULL, NULL, NULL, NULL, NULL, '2022-02-11 10:25:03', '2022-02-11 10:25:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_kod_unique` (`kod`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_kod_unique` (`kod`);

--
-- Indexes for table `product_files`
--
ALTER TABLE `product_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `product_files`
--
ALTER TABLE `product_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
