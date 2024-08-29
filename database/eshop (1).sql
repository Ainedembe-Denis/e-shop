-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 08:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `photo`, `role_id`, `password`, `email_token`, `created_at`, `updated_at`) VALUES
(1, 'Ainedembe Denis', 'admin@gmail.com', '0788674576', '1722781215Passport Photo Denis A..JPG', 0, '$2y$10$dleWnwZdislZalAL69.uLOuTtDGg9KX2nybDli45nj8GdXzHDVpYO', NULL, '2018-02-28 23:27:08', '2024-08-04 11:20:15'),
(2, 'System Admin', 'sysadmin@gmail.com', '0755260500', '1722780403Passport Photo Denis A..JPG', 1, '$2y$10$dleWnwZdislZalAL69.uLOuTtDGg9KX2nybDli45nj8GdXzHDVpYO', NULL, '2021-12-05 10:24:50', '2024-08-04 11:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `item_id`, `name`, `keyword`, `created_at`, `updated_at`) VALUES
(2, 523, 'Color', 'color', NULL, NULL),
(3, 524, 'Color', 'color', NULL, NULL),
(4, 525, 'Color', 'color', NULL, NULL),
(5, 526, 'Color', 'color', NULL, NULL),
(6, 527, 'Color', 'color', NULL, NULL),
(7, 528, 'Color', 'color', NULL, NULL),
(8, 529, 'Color', 'color', NULL, NULL),
(9, 530, 'Color', 'color', NULL, NULL),
(10, 531, 'Color', 'color', NULL, NULL),
(23, 544, 'Color', 'color', NULL, NULL),
(26, 559, 'Color', 'color', NULL, NULL),
(27, 560, 'Color', 'color', NULL, NULL),
(28, 561, 'Color', 'color', NULL, NULL),
(29, 562, 'Color', 'color', NULL, NULL),
(30, 563, 'Color', 'color', NULL, NULL),
(37, 570, 'Color', 'color', NULL, NULL),
(38, 571, 'Color', 'color', NULL, NULL),
(49, 582, 'Color', 'color', NULL, NULL),
(50, 583, 'Color', 'color', NULL, NULL),
(53, 586, 'Color', 'color', NULL, NULL),
(54, 587, 'Color', 'color', NULL, NULL),
(56, 523, 'Size', 'size', NULL, NULL),
(57, 524, 'Size', 'size', NULL, NULL),
(58, 525, 'Size', 'size', NULL, NULL),
(59, 526, 'Size', 'size', NULL, NULL),
(60, 527, 'Size', 'size', NULL, NULL),
(61, 528, 'Size', 'size', NULL, NULL),
(62, 529, 'Size', 'size', NULL, NULL),
(63, 530, 'Size', 'size', NULL, NULL),
(64, 531, 'Size', 'size', NULL, NULL),
(77, 544, 'Size', 'size', NULL, NULL),
(80, 559, 'Size', 'size', NULL, NULL),
(81, 560, 'Size', 'size', NULL, NULL),
(82, 561, 'Size', 'size', NULL, NULL),
(83, 562, 'Size', 'size', NULL, NULL),
(84, 563, 'Size', 'size', NULL, NULL),
(91, 570, 'Size', 'size', NULL, NULL),
(92, 571, 'Size', 'size', NULL, NULL),
(103, 582, 'Size', 'size', NULL, NULL),
(104, 583, 'Size', 'size', NULL, NULL),
(107, 586, 'Size', 'size', NULL, NULL),
(108, 587, 'Size', 'size', NULL, NULL),
(110, 587, 'test', 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT 0,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` varchar(255) DEFAULT 'unlimited'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `price`, `keyword`, `created_at`, `updated_at`, `stock`) VALUES
(221, 2, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(222, 2, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(223, 2, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(224, 2, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(225, 3, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(226, 3, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(227, 3, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(228, 3, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(229, 4, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(230, 4, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(231, 4, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(232, 4, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(233, 5, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(234, 5, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(235, 5, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(236, 5, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(237, 6, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(238, 6, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(239, 6, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(240, 6, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(241, 7, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(242, 7, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(243, 7, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(244, 7, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(245, 8, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(246, 8, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(247, 8, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(248, 8, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(249, 9, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(250, 9, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(251, 9, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(252, 9, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(253, 10, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(254, 10, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(255, 10, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(256, 10, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(305, 23, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(306, 23, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(307, 23, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(308, 23, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(317, 26, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(318, 26, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(319, 26, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(320, 26, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(321, 27, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(322, 27, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(323, 27, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(324, 27, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(325, 28, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(326, 28, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(327, 28, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(328, 28, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(329, 29, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(330, 29, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(331, 29, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(332, 29, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(333, 30, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(334, 30, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(335, 30, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(336, 30, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(361, 37, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(362, 37, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(363, 37, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(364, 37, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(365, 38, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(366, 38, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(367, 38, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(368, 38, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(409, 49, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(410, 49, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(411, 49, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(412, 49, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(413, 50, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(414, 50, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(415, 50, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(416, 50, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(425, 53, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(426, 53, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(427, 53, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(428, 53, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(429, 54, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(430, 54, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(431, 54, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(432, 54, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(1082, 56, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1083, 57, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1084, 58, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1085, 59, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1086, 60, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1087, 61, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1088, 62, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1089, 63, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1090, 64, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1103, 77, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1106, 80, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1107, 81, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1108, 82, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1109, 83, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1110, 84, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1117, 91, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1118, 92, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1121, 103, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1122, 104, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1125, 107, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1126, 108, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1128, 56, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1129, 57, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1130, 58, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1131, 59, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1132, 60, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1133, 61, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1134, 62, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1135, 63, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1136, 64, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1149, 77, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1152, 80, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1153, 81, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1154, 82, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1155, 83, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1156, 84, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1163, 91, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1164, 92, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1167, 103, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1168, 104, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1171, 107, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1172, 108, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1174, 56, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1175, 57, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1176, 58, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1177, 59, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1178, 60, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1179, 61, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1180, 62, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1181, 63, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1182, 64, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1195, 77, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1198, 80, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1199, 81, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1200, 82, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1201, 83, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1202, 84, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1209, 91, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1210, 92, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1213, 103, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1214, 104, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1217, 107, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1218, 108, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1220, 56, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1221, 57, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1222, 58, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1223, 59, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1224, 60, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1225, 61, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1226, 62, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1227, 63, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1228, 64, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1241, 77, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1244, 80, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1245, 81, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1246, 82, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1247, 83, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1248, 84, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1255, 91, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1256, 92, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1259, 103, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1260, 104, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1263, 107, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1264, 108, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `url`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shein Womens Clothing 2021 Summer Fashion Design Clothing Manufacturer Lantern Long Sleeve', '45% OFF', '#', '163172091306.jpg', ' Banner 1', 1, NULL, NULL),
(2, 'Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses', '70% OFF', '#', '163172090805.jpg', 'Banner 2', 1, NULL, NULL),
(3, 'Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses', '60% OFF', '#', '163172090304.jpg', 'Banner 3', 1, NULL, NULL),
(5, '2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses', '50% OFF', '#', '163172089704.jpg', 'Banner 4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hygiene', 'Hygiene', 1, NULL, NULL),
(2, 'Health', 'Health', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_popular` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_items`
--

CREATE TABLE `campaign_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_feature` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_items`
--

INSERT INTO `campaign_items` (`id`, `item_id`, `status`, `is_feature`, `created_at`, `updated_at`) VALUES
(33, 559, 1, 1, NULL, NULL),
(34, 543, 1, 1, NULL, NULL),
(35, 545, 1, 1, NULL, NULL),
(39, 540, 1, 1, NULL, NULL),
(40, 563, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_feature` tinyint(4) DEFAULT 1,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `photo`, `meta_keywords`, `meta_descriptions`, `status`, `is_feature`, `serial`, `created_at`, `updated_at`) VALUES
(18, 'Laboratory Products', 'Laboratory-Products', '1722756856co-axial-research-microscopes.jpg', '[]', NULL, 1, 1, 0, NULL, NULL),
(19, 'Medical Equipment, supplies', 'Medical-Equipment--supplies', '1722770915sphygmomanometers_ism5-6l.jpg', '[]', NULL, 1, 1, 1, NULL, NULL),
(21, 'Medical Furniture', 'Medical-Furniture', '1722756641hospital-beds-icu.jpg', NULL, 'Hospital furniture along with modern medical equipments have important role to play in health care. They not only help surgeons to perform the critical surgery with utmost safety of patient, but also make patients feel comfortable during their stay in hospital or the surgery/post surgery as well.', 1, 1, 1, NULL, NULL),
(22, 'Bed Linens', 'Bed-Linens', '1722756139Hotel_Towel_650gr_x0e6-gb_g7xn-26.jpg', NULL, 'Anyone sleeping or spending a significant amount of time in a bed is spending a lot of time in contact with their bed sheets. The right sheets can contribute to healthy skin and a comfortable environment, while providing a more pleasant and restful user experience. Not only do they need to be comfortable, they need to promote cleanliness by being washing and ironing resistant.\r\n\r\nAs the importance of patient/client satisfaction increases, we want to help you provide your patients/clients with the best experience possible.\r\nChoose from our variety of bed linens, bed sheets, duvet covers, pillowcases, pique blankets, towels and green surgical towels, designed to fit most beds, gurneys, and pillows.', 1, 1, 5, NULL, NULL),
(23, 'Wound dressings', 'Wound-dressings', '1722755983wound_treatment.png', NULL, 'In our e-shop, you may find a large variety of wound dressings and ulcer pads made by Hartmann, Convatec, and 3M.\r\nAvailable in many different sizes, various features, and special characteristics that help you find the absolutely suitable ones for the patient.', 1, 1, 4, NULL, NULL),
(27, 'Stethoscopes & scrubs', 'Stethoscopes---scrubs', '1722755578littmann_stethoscopes.jpg', NULL, NULL, 1, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chield_categories`
--

CREATE TABLE `chield_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(228, 'Uganda', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 0, NULL, NULL),
(6, 'UGX', 'UGX', 3700, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Order', 'Your Have Successfully Placed The Order', '<p>Hello {user_name},</p><p>Your Order Has Been Placed Successfilly.<br>Your Order Number is {transaction_number}.<br></p>', NULL, NULL),
(2, 'Registration', 'Welcome To Omnimart', '<p>Hello ; {user_name},</p><p>You have successfully registered to {site_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You .<br></p>', NULL, NULL),
(3, 'New Order Admin', 'New Order', '<p>You Got a order, Transaction number {transaction_number}</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extra_settings`
--

CREATE TABLE `extra_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_t4_slider` tinyint(4) DEFAULT 1,
  `is_t4_featured_banner` tinyint(4) DEFAULT 1,
  `is_t4_specialpick` tinyint(4) DEFAULT 1,
  `is_t4_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t4_flashdeal` tinyint(4) DEFAULT 1,
  `is_t4_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t4_popular_category` tinyint(4) DEFAULT 1,
  `is_t4_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t4_blog_section` tinyint(4) DEFAULT 1,
  `is_t4_brand_section` tinyint(4) DEFAULT 1,
  `is_t4_service_section` tinyint(4) DEFAULT 1,
  `is_t3_slider` tinyint(4) DEFAULT 1,
  `is_t3_service_section` tinyint(4) DEFAULT 1,
  `is_t3_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t3_popular_category` tinyint(4) DEFAULT 1,
  `is_t3_flashdeal` tinyint(4) DEFAULT 1,
  `is_t3_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t3_pecialpick` tinyint(4) DEFAULT 1,
  `is_t3_brand_section` tinyint(4) DEFAULT 1,
  `is_t3_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t3_blog_section` tinyint(4) DEFAULT 1,
  `is_t2_slider` tinyint(4) DEFAULT 1,
  `is_t2_service_section` tinyint(4) DEFAULT 1,
  `is_t2_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t2_flashdeal` tinyint(4) DEFAULT 1,
  `is_t2_new_product` tinyint(4) DEFAULT 1,
  `is_t2_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t2_featured_product` tinyint(4) DEFAULT 1,
  `is_t2_bestseller_product` tinyint(4) DEFAULT 1,
  `is_t2_toprated_product` tinyint(4) DEFAULT 1,
  `is_t2_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t2_blog_section` tinyint(4) DEFAULT 1,
  `is_t2_brand_section` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_falsh` tinyint(4) DEFAULT 1,
  `is_t2_falsh` tinyint(4) DEFAULT 1,
  `is_t3_falsh` tinyint(4) DEFAULT 1,
  `is_t4_falsh` tinyint(4) DEFAULT 1,
  `is_t2_three_column_category` tinyint(4) DEFAULT 1,
  `is_t3_three_column_category` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_settings`
--

INSERT INTO `extra_settings` (`id`, `is_t4_slider`, `is_t4_featured_banner`, `is_t4_specialpick`, `is_t4_3_column_banner_first`, `is_t4_flashdeal`, `is_t4_3_column_banner_second`, `is_t4_popular_category`, `is_t4_2_column_banner`, `is_t4_blog_section`, `is_t4_brand_section`, `is_t4_service_section`, `is_t3_slider`, `is_t3_service_section`, `is_t3_3_column_banner_first`, `is_t3_popular_category`, `is_t3_flashdeal`, `is_t3_3_column_banner_second`, `is_t3_pecialpick`, `is_t3_brand_section`, `is_t3_2_column_banner`, `is_t3_blog_section`, `is_t2_slider`, `is_t2_service_section`, `is_t2_3_column_banner_first`, `is_t2_flashdeal`, `is_t2_new_product`, `is_t2_3_column_banner_second`, `is_t2_featured_product`, `is_t2_bestseller_product`, `is_t2_toprated_product`, `is_t2_2_column_banner`, `is_t2_blog_section`, `is_t2_brand_section`, `created_at`, `updated_at`, `is_t1_falsh`, `is_t2_falsh`, `is_t3_falsh`, `is_t4_falsh`, `is_t2_three_column_category`, `is_t3_three_column_category`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fcategories`
--

CREATE TABLE `fcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcategories`
--

INSERT INTO `fcategories` (`id`, `name`, `text`, `slug`, `meta_keywords`, `meta_descriptions`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Poroduct Delevery !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Poroduct-Delevery-', '[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]', 'It is a long established fact that a r', 1, NULL, NULL),
(4, 'Discount Policy !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Discount-Policy-', NULL, NULL, 1, NULL, NULL),
(6, 'Coupon  Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Coupon--Information-', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `item_id`, `photo`, `created_at`, `updated_at`) VALUES
(79, 523, 'bZ7iScreenshot 2021-11-23 at 10.31.36 PM.png', NULL, NULL),
(80, 524, 'u5g3centrifuge.jpg', NULL, NULL),
(81, 525, 'DjUTstereo-microscopes.jpg', NULL, NULL),
(82, 563, 'PvLxforceps-clamps.jpg', NULL, NULL),
(83, 586, 'Bl900024092_surgical-towels-green-medline__56738.jpg', NULL, NULL),
(84, 570, 'NZnO3062440288_qu7p-y7_dipm-bk_20yn-vd.jpg', NULL, NULL),
(85, 582, 'kkqzrige-sentonia-1_aol0-08_emc4-.jpg', NULL, NULL),
(86, 583, 'd12bmaxilarothiki-lefki-3_c324-2m_5.jpg', NULL, NULL),
(87, 527, 'xnpnscience-lab-supplies.jpg', NULL, NULL),
(88, 543, '5jLbhospital-beds-semi-fowler.jpg', NULL, NULL),
(89, 545, 'Uiebobstetric-tables.jpg', NULL, NULL),
(90, 559, 'A5lyUntitled-1_bmqr-dc_8uah-vd.jpg', NULL, NULL),
(91, 560, 'LmkVelectrocardiographs.gif', NULL, NULL),
(92, 561, 'nfQ5bpap.jpg', NULL, NULL),
(93, 562, 'KfNR25440_grcq-8f_0ewo-ur.jpg', NULL, NULL),
(94, 572, 'zwK4littmann-cardiology-iv-6241_1ddl-6k.jpg', NULL, NULL),
(95, 574, 'cprN10004932_1_4vbq-k4.jpg', NULL, NULL),
(96, 593, 'hnAQ3m-micropore-surgical-tape-1530-2-crop-tif_1w1b-5w.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_cutomizes`
--

CREATE TABLE `home_cutomizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_first` text DEFAULT NULL,
  `banner_secend` text DEFAULT NULL,
  `banner_third` text DEFAULT NULL,
  `popular_category` text DEFAULT NULL,
  `two_column_category` text DEFAULT NULL,
  `feature_category` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page4` text DEFAULT NULL,
  `home_4_popular_category` text DEFAULT NULL,
  `hero_banner` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_cutomizes`
--

INSERT INTO `home_cutomizes` (`id`, `banner_first`, `banner_secend`, `banner_third`, `popular_category`, `two_column_category`, `feature_category`, `created_at`, `updated_at`, `home_page4`, `home_4_popular_category`, `hero_banner`) VALUES
(1, '{\"title1\":\"HOT PLATE\",\"subtitle1\":\"50% OFF\",\"firsturl1\":\"#\",\"title2\":\"GLASSWARE\",\"subtitle2\":\"40% OFF\",\"firsturl2\":\"#\",\"title3\":\"STRETCHERS\",\"subtitle3\":\"30% OFF\",\"firsturl3\":\"#\",\"img3\":\"WYDaUntitled-1.png\",\"img1\":\"tjxjhooot.png\",\"img2\":\"dsYBqqqwd.png\"}', '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"url1\":\"#\",\"title2\":\"Man\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"title3\":\"Headphone\",\"subtitle3\":\"60% OFF\",\"url3\":\"#\",\"img1\":\"16365342794.jpg\",\"img2\":\"16365342795.jpg\",\"img3\":\"16365342796.jpg\"}', '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"url1\":\"#\",\"title2\":\"Headphones\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"img1\":\"1636534291b22.jpg\",\"img2\":\"1636534291b11.jpg\"}', '{\"popular_title\":\"Popular Categories\",\"category_id1\":\"21\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"19\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":\"18\",\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":\"22\",\"subcategory_id4\":null,\"childcategory_id4\":null}', '{\"category_id1\":\"27\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"22\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":\"21\",\"subcategory_id3\":null,\"childcategory_id3\":null}', '{\"feature_title\":\"Featured Categories\",\"category_id1\":\"18\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"27\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":\"21\",\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":\"22\",\"subcategory_id4\":null,\"childcategory_id4\":null}', NULL, NULL, '{\"label1\":\"FORMAL\",\"url1\":\"#\",\"label2\":\"LIMITEN EDITION\",\"url2\":\"#\",\"label3\":\"WOMEN\'S COLLECTION\",\"url3\":\"#\",\"label4\":\"SMART CASUALS\",\"url4\":\"#\",\"label5\":\"POLO\",\"url5\":\"#\",\"img1\":\"16368975771.jpg\",\"img2\":\"16368975772.jpg\",\"img3\":\"16368975773.jpg\",\"img4\":\"16368975774.jpg\",\"img5\":\"16368975775.jpg\"}', '[\"18\",\"19\",\"21\",\"27\"]', '{\"title1\":\"Bed\",\"subtitle1\":\"50% OFF\",\"url1\":\"#\",\"title2\":\"Microscope\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"img1\":\"OQd4Beds.png\",\"img2\":\"7vZ0micro.png\"}');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT 0,
  `subcategory_id` int(11) DEFAULT 0,
  `childcategory_id` int(11) DEFAULT 0,
  `tax_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `sort_details` text DEFAULT NULL,
  `specification_name` text DEFAULT NULL,
  `specification_description` text DEFAULT NULL,
  `is_specification` tinyint(4) DEFAULT 0,
  `details` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `discount_price` double DEFAULT 0,
  `previous_price` double DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_type` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `file_type` enum('file','link') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `license_name` text DEFAULT NULL,
  `license_key` text DEFAULT NULL,
  `item_type` varchar(255) DEFAULT 'normal',
  `thumbnail` varchar(255) DEFAULT NULL,
  `affiliate_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `file`, `link`, `file_type`, `created_at`, `updated_at`, `license_name`, `license_key`, `item_type`, `thumbnail`, `affiliate_link`) VALUES
(524, 18, 6, NULL, 2, NULL, 'Centrifuge', 'Centrifuge', '65dVy8J8Uo1', '', NULL, 'Motor : Brush less Induction Motor with frequency drive.\r\nController : Microprocessor controlled and programmable for pre set RPM and pre defined time.\r\nDisplay : LCD-2 line display with back light. Display pre set RPM, actual RPM, pre defined TIME and remaining TIME', '[\"Product Type:\"]', '[\"CNT-16A : Brush Less Centrifuge\"]', 1, '<h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">CNT-16A : Brush Less Centrifuge</font></h5><h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">Technical Spefification and Features</font></h5><h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">Capacity / Max. Speed : As per selected rotor</font></h5><h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">Motor : Brush less Induction Motor with frequency drive.</font></h5><h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">Controller : Microprocessor controlled and programmable for pre set RPM and pre defined time.</font></h5><h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">Display : LCD-2 line display with back light. Display pre set RPM, actual RPM, pre defined TIME and remaining TIME.</font></h5><h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">Lid Lock : The centrifuge will not run if door is open. The lid will lock immediately if rotor start spinning. The lid remain locked till rotor become standstill. If power supply fail then lid unlock immediately but do not open lid for few minutes.</font></h5><h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">Speed Regulator : Programable preset RPM with ±3% accuracy.</font></h5><h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">Imbalance : The rotation stops if rotor is imbalance and imbalance indicator LED- “ON” till restart of device.</font></h5><h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">Thermal Protection : The motor is thermally protected.</font></h5><h5 class=\"product-txt mb-4\" style=\"text-align: justify; \"><font face=\"Arial\">Brake : The device is having automatic brake with LED Indicator.</font></h5>', '1722759974centrifuge.jpg', 94.594594594595, 135.13513513514, 35, '', NULL, 1, 'feature', NULL, '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 05:26:15', NULL, NULL, 'normal', '3sNCCvde.jpg', NULL),
(525, 18, 16, NULL, 2, NULL, 'Co-axial Research Microscopes', 'Co-axial-Research-Microscopes', '65dVy8J8Uo22', '', NULL, 'his is the latest and most advanced Microscope for analytical and research work in Colleges, Laboratories, Hospital and Research Institution. Microscopes are equipped with Co-axial focussing system and halogen illumination for bright and sharp image.', '[\"Product Type:\"]', '[null]', 1, '<div style=\"text-align: justify; \">This is the latest and most advanced Microscope for analytical and research work in Colleges, Laboratories, Hospital and Research Institution. Microscopes are equipped with Co-axial focussing system and halogen illumination for bright and sharp image.Robust construction with focussing knobs on both sides, this microscope is based on a 4-stage gear reduction system travelling on Ball-guides, the CO-AXIAL FOCUSING SYSTEM provides the highest degree of working convenience. Large base with built-in hand rest contours provides stability to the instrument, having built-in base. 6V-20W Halogen bulb operates on 220 volts or 100volts. Light source is provided with on/off switch and the light intensity regulator.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify; \">Nosepiece : Quadruple nosepiece with accurate centering and positive click stops.</div><div style=\"text-align: justify;\">Stage - Built in graduated mechanical stage of 135x140mm for easy and smooth scan of specimen slide over range of 50x70mm</div><div style=\"text-align: justify;\">Illumination - 6V-20W halogen lamp, 220/110Volts. Mirror attachment for working in day light</div><div style=\"text-align: justify;\">Objectives - Achromatic DIN Size 4X - 10X- 40X SL and 100X SL Oil immersion</div><div style=\"text-align: justify;\">Eyepieces - DIN Size Wide field WF 10X and H5X or H6X or H15X (any two pairs)</div><div style=\"text-align: justify; \">Packing - The Microscopes are packed in full mould Styrofoam Boxes with Vinyl Cover, Duster, Cleaning Brush, Filter, Immersion Oil and Operating Manual.\"</div>', '1722760320co-axial-research-microscopes.jpg', 405.40540540541, 500, 199, '', NULL, 1, 'top', NULL, '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 10:34:31', NULL, NULL, 'normal', 'BwYiSRcS.jpg', NULL),
(526, 18, 6, NULL, 2, NULL, 'Semi-Automatic Chemistry Analyzer - 5 Inch', 'Semi-Automatic-Chemistry-Analyzer---5-Inch', '65dVy8J8Uo1q', 'women,dresses', NULL, '5-inch Color LCD, Touch Screen\r\nFlow cell and Cuvette test mode compatible', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, '<div>Features :</div><div><br></div><div>5-inch Color LCD, Touch Screen</div><div>Flow cell and Cuvette test mode compatible</div><div>Real time curve showing</div><div>5 wavelengths, 80 test items pre-programmed</div><div>Memory for 10,000 sample results</div><div>Light source hibernate function making lamp life longer</div><div>RS 232 interface, PC connecting.</div><div>Testing Regimen</div><div>Liver function :</div><div><br></div><div>ALT AST ALP T-BIL D-BIL TP ALB TTT CHE Nh,</div><div>Renal function: BUN CRE UA URE CO2-CP y-GT</div><div>Lipids: T-CHO TG HDL-C LDL-C</div><div>Cardiac function: CK CK-MB LDH</div><div>Immune proteins: IGA IGG IGM C3</div><div>Others: GLU HGB AMS</div>', '1722763976clinical-lab-devices.jpg', 94.594594594595, 135.13513513514, 199, '', NULL, 1, 'top', '', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 06:32:56', NULL, NULL, 'normal', 's1k8e71x.jpg', NULL),
(527, 18, 15, NULL, 2, NULL, 'Laboratory Glassware', 'Laboratory-Glassware', '65dVy8J8Uo23x', 'women,dresses', NULL, 'Manufacturers and exporters of all types of scientific & laboratory instruments including all types of Physics Lab Instruments, Physics Experiments Equipments, Biology Lab Equipments', NULL, NULL, 0, '<div class=\" col-lg-9 col-md-9 col-sm-9\" style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\"><p>Manufacturers and exporters of all types of scientific &amp; laboratory instruments including all types of Physics Lab Instruments, Physics Experiments Equipments, Biology Lab Equipments, Human Anatomy Models, Chemistry Lab Instruments, Geography Teaching Products, Educational Charts and Models, and Microscopes and Slides, Laboratory Glassware &amp; Plastic-ware, Specimens, All types of Educational Teaching Aids/Educational Science Lab Supplies etc. We have complete range for Physics, Chemistry &amp; Biology. Our Products are being exported to many Countries all over the Globe. Our prices are very competitive and the quality is of International Standard. Our is a 100% Export Oriented Unit and ISO 9001 approved too.</p></div>', '1722764254science-lab-supplies.jpg', 20.27027027027, 21.621621621622, 199, '', NULL, 1, 'top', '', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 06:37:34', NULL, NULL, 'normal', 'eacBABZ9.jpg', NULL),
(528, 18, 8, NULL, 2, NULL, 'Laboratory Heating Plate with Cast Iron Top', 'Laboratory-Heating-Plate-with-Cast-Iron-Top', '65dVy8J8Uo1r3', '', NULL, 'This is very useful for continuous heating upto 350ºC. The body is made of specially designed with perforated P.C.R.C. sheet painted with attractive stove enamel.', NULL, NULL, 0, '<span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px;\">This is very useful for continuous heating upto 350ºC. The body is made of specially designed with perforated P.C.R.C. sheet painted with attractive stove enamel.</span>', '1722764447hot-plates.jpg', 66.486486486486, 0, 199, '', NULL, 1, 'top', '', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 06:40:47', NULL, NULL, 'normal', 'CvxF959S.jpg', NULL),
(529, 18, 16, NULL, 2, NULL, 'Dissecting Microscopes', 'Dissecting-Microscopes', '65dVy8J8Uo224z', '', NULL, 'Heavy round base with a precisely designed body, providing convenience for easy lifting and movement. Sensitive focussing is done by rack-pinion moving on a lapped dovetailed guideway with a stopper to limit the downward movement.', NULL, NULL, 0, '<div>Standard Features:</div><div><br></div><div>Heavy round base with a precisely designed body, providing convenience for easy lifting and movement. Sensitive focussing is done by rack-pinion moving on a lapped dovetailed guideway with a stopper to limit the downward movement. A joint Revolving Arm is provided for moving magnifying lens over full area of the stage; it is easily replaceble by a special BULL EYE LENS 83mm. dia. to increase the field of vision. A plano-concave mirror fitted in fork for light reflection, sturdy removable handrests and arrangement for inserting white or black plate for respective background, help easy working on the instrument.</div><div><br></div><div>Base: Heavy round base with precisely designed body.</div><div>Focussing: Sensitive focussing, done by rack and pinion arrangement. Revolving arm provided for moving magnifying lens over full stage area.</div><div>Stage: 100mm x 100mm with glass plate.</div><div>Illumination: A plano-concave lens fitted in fork for light reflection.</div><div>Optics: 10x &amp; 20x Eyepieces &amp; special Bull Eye Lens 83mm diameter.</div>', '1722764959dissecting-microscopes.jpg', 416.21621621622, 481.08108108108, 199, '', NULL, 1, 'feature', NULL, '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 06:49:19', NULL, NULL, 'normal', 'KbcVRjuR.jpg', NULL),
(530, 18, 7, NULL, 2, NULL, 'Animal Cages Twin grill, PP', 'Animal-Cages-Twin-grill--PP', '65dVy8J8Uo2dd', 'women,dresses', NULL, 'Available in two different sizes, these Cages provide excellent shelter for different animal species in the laboratory. The metallic top provides proper ventilation and has provisions for feeding the species.', NULL, NULL, 0, 'Available in two different sizes, these Cages provide excellent shelter for different animal species in the laboratory. The metallic top provides proper ventilation and has provisions for feeding the species.', '1722765117animal-cage.jpg', 37.837837837838, 40.540540540541, 199, '', NULL, 1, 'top', '', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 06:51:57', NULL, NULL, 'normal', 'UDbdQvoJ.jpg', NULL),
(531, 18, 15, NULL, 2, NULL, 'Test Tube Racks', 'Test-Tube-Racks', '65dVy8J8Uo25gg', '', NULL, 'This Float Rack moulded in Polypropylene is quite compact, autoclavable and can hold 16 micro centrifuge tubes for incubation in water baths.', NULL, NULL, 0, '<div>This Float Rack moulded in Polypropylene is quite compact, autoclavable and can hold 16 micro centrifuge tubes for incubation in water baths. Easy to load, these are essential in microbiology &amp; immunology labs. The surface of the rack has raised alpha-numeric index for easy identification and has a central rod handle for convenient lifting.</div><div><br></div><div>Description : 16 MCTs of 1.5ml.</div>', '1722765917test-tube-racks.jpg', 5.9459459459459, 8.1081081081081, 199, '', NULL, 1, 'flash_deal', '02/02/2024', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 07:05:17', NULL, NULL, 'normal', 'zh97b25y.jpg', NULL),
(540, 21, 12, NULL, 2, NULL, 'IV Pole Saline Stands', 'IV-Pole-Saline-Stands', '65dVy8J8Uo25gg3e34r45fdg', '', NULL, 'Saline Stand / IV Stand Economy SS tubular pipe.', NULL, NULL, 0, '<div>HF567 : Saline Stand</div><div>Standard Features:</div><div><br></div><div>Saline Stand / IV Stand Economy SS tubular pipe.</div><div>With one ABS Shelf, Two hooks.</div><div>Five Legged SS base mounted on 5cm castors.</div><div>Freight saving knock down construction.</div>', '1722766467iv-pole-saline-stands.jpg', 21.621621621622, 27.027027027027, 197, '', NULL, 1, 'flash_deal', '02/02/2022', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 07:14:27', NULL, NULL, 'normal', 'RvDLOIHj.jpg', NULL),
(541, 21, 12, NULL, 2, NULL, 'Electric Examination Table', 'Electric-Examination-Table', '65dVy8J8Uo25gg3e6sf456fgh', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'Electric Examination Table', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, '<div>Standard Features:</div><div><br></div><div>Size: 1920 x 650 x 530-780mm</div><div>Height adjustable by Electric Motor (780mm - 530mm)</div><div>Back rest adjusted by Gas Spring</div><div>125mm castors with individual Brakes.</div>', '1722766654examination-table.jpg', 86.486486486486, 135.13513513514, 199, '', NULL, 1, 'top', '', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 07:17:34', NULL, NULL, 'normal', 'toQ3yOIG.jpg', NULL),
(542, 21, 21, NULL, 2, NULL, 'Bedside Cabinet With Table Top', 'Bedside-Cabinet-With-Table-Top', '65dVy8J8Uo25gg3e23f4fdgh', '', NULL, 'Bedside Cabinet With Table Top', NULL, NULL, 0, '<div>HF3945 : Bedside Cabinet With Table Top</div><div>Standard Features :</div><div><br></div><div>Size : 500mmx 530mmx 753mmH(without Castors).</div><div>Structure Made of Melamine Particle board and Aluminum column</div><div>Upper Drawer Size : 415 x 360 x 100mm</div><div>Bottom Drawer Size : 415 x 360 x 200mm</div><div>Shelf Height is 135mm</div><div>With Four plastic castors</div>', '1722766834bedside-lockers.jpg', 67.567567567568, 81.081081081081, 199, '', NULL, 1, 'flash_deal', '02/02/2022', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 07:20:34', NULL, NULL, 'normal', 'DciP3okY.jpg', NULL),
(543, 21, 22, NULL, 2, NULL, 'Plain Hospital Beds', 'Plain-Hospital-Beds', '65dVy8J8Uo25gg3e23ty6ge4', '', NULL, 'Hospital beds are beautifully designed, single sectioned beds mounted on either PVC protective stumps or castors. Available in Epoxy coated mild steel framework with option of wire-mesh platform, the knock down construction of these beds ensures reduced freight charges.', NULL, NULL, 0, '<p>&nbsp;Hospital beds are beautifully designed, single sectioned beds mounted on either PVC protective stumps or castors. Available in Epoxy coated mild steel framework with option of wire-mesh platform, the knock down construction of these beds ensures reduced freight charges.</p><p>Standard Features:</p><p><br></p><p>Size: 2030 × 900 × 500 mm.</p><p>Epoxy coated mild steel frame work.</p><p>Stainless steel head &amp; foot bows.</p><p>Mounted on protective stumps.</p><p>Provision for I.V. Rod.</p><p>Freight saving knock-down construction.</p>', '1722767073hospital-beds-semi-fowler.jpg', 91.891891891892, 135.13513513514, 199, '', NULL, 1, 'new', '02/02/2022', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 07:24:33', NULL, NULL, 'normal', 'AqoY5Ytd.jpg', NULL),
(544, 21, 13, NULL, 2, NULL, 'Bedside Screens', 'Bedside-Screens', '65dVy8J8Uo2gfd7', '', NULL, 'Bedside Screen - Regular', NULL, NULL, 0, '<div>HF446A : Bedside Screen - Regular</div><div>Standard Features:</div><div><br></div><div>Size : H 168 xW244 cms.</div><div>Frame work made of ERW tubular pipe.</div><div>Supplied with spring wire and curtains.</div><div>Pre-treated and epoxy powder coated.</div><div>Knockdown construction.</div>', '1722769756bedside-screens.jpg', 54.054054054054, 67.567567567568, 199, '', NULL, 1, 'top', '', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 08:09:16', NULL, NULL, 'normal', '193ynd8y.jpg', NULL),
(545, 21, 13, NULL, 2, NULL, 'Gynecological Examination Table', 'Gynecological-Examination-Table', '65dVy8J8Uo1dfg87', '', NULL, 'Fixed height Examination chair position, weight capacity up to 225 kg patient, wide & comfortable upholstery', NULL, NULL, 0, '<div>HF1904 : Gynecological Examination Table</div><div>Standard Features:</div><div><br></div><div>Fixed height Examination chair position, weight capacity up to 225 kg patient, wide &amp; comfortable upholstery</div><div>Removable and sterilizable ABS gynecological pan</div><div>5 mono block polyester drawers (3 with bilateral opening)</div><div>Paper roll holder (max. length 600 mm - Ø14 cm)</div><div>Steel frame, with epoxy finish</div><div>All outer parts are accessible for cleaning</div><div>Integrated retractable foot step</div><div>Leg extension cushion</div><div>Overall Width: 714mm</div><div>Overall length: 1550mm (Extension)</div><div>Height with upholstery 795mm</div><div>Gas-spring assisted backrest from 0-75°±5°</div><div>Sliding, retractable foot cushion</div><div>Sliding steel foot step on self-blocking castors</div><div>Manual pelvic tilt (gynecological examination) 5°</div>', '1722767392obstetric-tables.jpg', 540.54054054054, 945.94594594595, 199, '', NULL, 1, 'flash_deal', '02/02/2022', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 12:29:56', NULL, NULL, 'normal', '1Xfyv35A.jpg', NULL),
(546, 21, 22, NULL, 2, NULL, 'ICU Bed Motorised With Battery Backup', 'ICU-Bed-Motorised-With-Battery-Backup', '65dVy8J8Uo22cvh9', '', NULL, 'ICU Beds are special hospital beds designed for ICUs to take care of critical patients.', NULL, NULL, 0, '<div>ICU Beds are special hospital beds designed for ICUs to take care of critical patients. NET brand ICU Beds combine smart ergonomics with advanced technology and intuitive operation. ICU beds, thus, provide both safety and comfort to the patients and caregivers alike. We offer ICU Electrical Beds and Mechanical ICU Beds. The caregivers can tilt the ICU bed and can also adjust the height. Narang Medical Ltd. is India\'s leading manufacturer and suppliers of ICU beds. Intensive Care Units of hospitals, all over the world use our ICU beds with confidence.</div><div><br></div><div>You can view all models of ICU beds manufactured by us and select the most suitable bed as per your requirements. Send us your specific purchase requirement along with quantity so that we provide CIF prices.</div><div><br></div><div>Technical Specifications:</div><div><br></div><div>Major Features Include: Backrest, Knee rest, Height Adjustment, Trendelenburg/Reverse Trendelenburg, Cardiac Chair Position, Neuro Position, Zero Level Position maneuverable by four separate liner actuators which are operated through Patient Control Unit and Nurse Control Unit.</div><div>Back rest 0-75°</div><div>Knee rest 0-35°</div><div>Minimum Height 550mm</div><div>Maximum Height 750mm</div><div>Trendelenburg / Reverse Trendelenburg 0-12°</div><div>Dual Side Liver for Manual CPR</div><div>Frame size: L 2060mm x W 900mm</div><div>Overall Dimensions: L 2120mm x W 1080mm</div><div>Epoxy coated mild steel structure with 4 section mattress platform made up of CRCA Sheet.</div><div>Detachable Polymer moulded Head and foot bows giving a soothing look.</div><div>4 sectional polymer moulded safety side rails with separate angle indicators.</div><div>Corner PU buffers to absorb impact and reduce damage during handling.</div><div>Twin wheel heavy duty Central Locking Castors of 125mm Dia for smooth mobility with control.</div><div>Heavy duty IV Pole with provision for fixing it at all four locations.</div><div>Dust Protective Fibre Base cover</div><div>Battery Back Up</div><div>Optional Accessories:</div><div><br></div><div>Mattress</div><div>X-ray permeable backrest</div>', '1722770140hospital-beds-icu.jpg', 567.56756756757, 0, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:38', '2024-08-04 08:15:40', NULL, NULL, 'normal', '08JZT1IC.jpg', NULL),
(559, 19, 9, NULL, 2, NULL, 'Medical sphygmomanometers', 'Medical-sphygmomanometers', '65dVy8Jzx45gt', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'Medical sphygmomanometers of pioneering design with a double bulb tube, allowing the rapid bloating of the sleeve, featuring high levels of reliance and accuracy.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, '<p>Medical sphygmomanometers of pioneering design with a double bulb tube, allowing the rapid bloating of the sleeve, featuring high levels of reliance and accuracy.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">HEINE GAMMA G7 sphygmomanometer</strong>,&nbsp;with aluminium alloy construction and precision valve</p><ul style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 24px; list-style-position: initial; list-style-image: initial; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Shockproof.&nbsp;</b></li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Latex-Free.&nbsp;</b></li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Unique pressure measuring system.&nbsp;</b></li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Pressure-Proof Manometer.&nbsp;</b>Ensures durability and reliability.&nbsp;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Micro-Filter.</b>&nbsp;Protects valve and manometer.&nbsp;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Large-diameter Scale.&nbsp;</b>56 mm diameter black-on-white scale is easy to read.&nbsp;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">High Quality Indicator.&nbsp;</b>Precisely calibrated, durable and shock resistant.&nbsp;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Large Insufflation Bulb.</b>&nbsp;50 % larger bulb volume for fast inflation of the cuff.&nbsp;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Exclusive Air-Release Valve.</b>&nbsp;Provides fine and precise air release rate adjustment, quick deflation, and extreme durability. A rubber-stop prevents valve-lock.</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Upper housing made of aluminium alloy with a shock absorbing ring protecting indicator and glass.</b>&nbsp;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Lower housing is moulded of shockproof plastic&nbsp;</b>with shock absorbing, anti-slip coating.&nbsp;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Light alloy, adjustable spoon</b>. For both right- or left-handed operation.</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">High quality, single-tube cuff with velcro Fastener.&nbsp;</b>Washable.&nbsp;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Ergonomic Design:&nbsp;</b>G7 is perfectly balanced for comfort and ease of use.</li></ul>', '1722771238sphygmomanometers_ism5-6l.jpg', 16.756756756757, 0, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:39', '2024-08-04 08:33:58', NULL, NULL, 'normal', 'eh7PPJo1.jpg', NULL),
(560, 19, 9, NULL, 2, NULL, 'Electrocardiographs ECG Machine', 'Electrocardiographs-ECG-Machine', '65dVy8Jtt5rde5', 'women,dresses', NULL, 'In our company you will find medical equipment such as single-channel and three-channel cardiographs, portable, with an integrated program for diagnosis and analysis of the cardiogram, HRV analysis, etc.\r\nCardiographs from Aspel, Biocare, Comen and EDAN.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, '<p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">Single-channel portable digital&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">electrocardiograph</strong>&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">SE - 1/100</strong>&nbsp;from Edan Instruments, modern technology.</p><ul style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 24px; list-style-position: initial; list-style-image: initial; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Ideal for use in the doctor\'s office</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">High build quality</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">With a 3.5\" LCD screen for displaying the electrocardiogram</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Mains / rechargeable battery with 3 hours autonomy</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">50mm wide high resolution thermal recorder</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Automatic / manual mode selection</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Easy keyboard operation</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Protection against defibrillation and pacemaker currents</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Paper speed 25 / 50 mm/s</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Sensitivity 2.5 / 5 / 10 / 20 mm/mV</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Mains filters 50 / 60 Hz and muscle 35 Hz</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Automatic isoelectric line stabilization</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">With RS232 communication port</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Weight 2.3kg (with battery)</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">CE 0123 approved by the European Union</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">With 1 year warranty</li></ul><h3 style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px 0px 10px; color: rgb(153, 153, 153); font-family: &quot;roboto condensed&quot;, serif; font-weight: bold; font-size: 18px;\">Included in the package:</h3><ul style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 24px; list-style-position: initial; list-style-image: initial; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">cardiograph device</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">10-pin cable</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">4 edge pegs</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">6 suction cups</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">1 roll of 50mm</li>cardiograph paper<li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Lithium battery Li-on 14.4V</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Instructions for use<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"></strong></li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Cardiogram interpretation guidelines</li></ul><table width=\"100%\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); border-spacing: 0px; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(252, 255, 201);\"><tbody style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); min-height: 16px; background-color: rgb(248, 248, 248);\"><td style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 10px; border: none; vertical-align: top;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Technical Specifications</strong></td></tr><tr style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); min-height: 16px;\"><td style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 10px; border: none; vertical-align: top;\">• Lead: Standard 12 leads<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Acquisition mode: Single<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Sensitivity: 2.5, 5, 10, 20, mm/mV<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Input impedance: &gt; 50 MO<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Filter:<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- EMG Filter 35 Hz (-3 dB)<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- AC/DFT Filter 50 Hz/60Hz DFT Fliter 0.05/0.15/0.25/0.35/0.5/0.67 Hz<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- (-20 dB)<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Recording mode: Auto/Manual<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Rhythm lead: Any lead selectable<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Safety standard: I EC I/CF<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Power supply:<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- AC: 100 V-115 V/220 V-240 V, 50/60 Hz<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- Rechargeable Li-ion battery: voltage 14.8 V<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">- More than 3 hours continuous operation with battery supply<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Data storage: -<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Thermal paper: 50 mm x 30 m<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Paper speed: 25mm/s, 50 mm/s (± 3%)<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• 12.5mm/s, 25mm/s, 50 mm/s<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Dimension: 288 x 210 x 70 mm<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Weight: 2.3 kg (with battery)<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Display: 192 x 64 pixel LCD<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Selectable display language GB, IT, FR, ES, PL, RU, TR, UA<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Interface: -<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Barcode scanner support: -<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">• Report formats: -</td></tr></tbody></table>', '1722771506electrocardiographs.gif', 70.27027027027, 94.594594594595, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:39', '2024-08-04 08:38:27', NULL, NULL, 'normal', 'QyPUD1lM.gif', NULL),
(561, 19, 9, NULL, 2, NULL, 'BiPAP Devices', 'BiPAP-Devices', '65dVy8Jzxsd', 'women,dresses', NULL, 'The BiPAP devices belong in the category of the supportive medical systems, helping patients who have difficulty in breathing especially during the nighttime.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, '<p style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased;\">The&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">BiPAP devices</strong>&nbsp;belong in the category of the supportive medical systems, helping patients who have difficulty in breathing especially during the nighttime.</p><p style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased;\">These apnea devices are typically providing the patient with a positively pressurized air, so that the patient may easily breathe without having to make an effort to create suction.</p><p style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased;\">This is achieved through a special mask that is attached to the device and to the mouth or the nose of the patient.</p><p style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">You’ll receive a therapeutic solution tailored to your personal needs with prisma25ST. Designed for patients with obstructive, mixed or complex sleep apnea with comorbidities, this BiLevel-ST device offers maximum flexibility with settings and indication-specific pre-settings (SCOPES). Furthermore, the automatic backup frequency, apnea differentiation with FOT and many comfort functions ensure safe, effective and whisper-quiet therapy.</p><p style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">BiLevel therapy device for the treatment of patients with obstructive, mixed, or complex sleep apnea and a high and/or fluctuating pressure requirement, poor CPAP compliance, central apneas, sleep-related or position-dependent hypoventilation (e.g., OHS), respiratory insufficiency, coprevalent respiratory insufficiency (e.g., COPD/ overlap). The device has different pressure levels during inspiration and expiration and a backup frequency for the treatment of central events.</p><ul style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 24px; list-style-position: initial; list-style-image: initial; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px;\"><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Dimensions:&nbsp;</strong>W x H x D in cm 17 x 13.5 x 18</li><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Weight:&nbsp;</strong>1.4 kg</li><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Air pressure range:</strong>&nbsp;700 cmH2O to 1060 cmH2O corresponds to a height of 3000 m above sea level</li></ul>', '1722775637bpap.jpg', 56.756756756757, 67.567567567568, 199, '', NULL, 1, 'feature', '', '', '', NULL, '2021-09-30 09:48:39', '2024-08-04 09:47:17', NULL, NULL, 'normal', 'kMPLYdcz.jpg', NULL),
(562, 19, 9, NULL, 2, NULL, 'Medical lights', 'Medical-lights', '65dVy8Jzxdty', '', NULL, 'Suitable for diagnostic, with white LED and quick clip shifter mechanis in topquality ABS plastic housing. Supplied with 2x1.5V', '[\"Product Type:\"]', '[null]', 1, '<h3 style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px 0px 10px; color: rgb(153, 153, 153); font-family: &quot;roboto condensed&quot;, serif; font-weight: bold; font-size: 18px;\">Professional diagnostic pocket penlight 25440</h3><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">Nova, professional&nbsp;<b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">pocket penlight</b>, also suitable for diagnostic, with white LED and quick clip shifter mechanis in topquality ABS plastic housing. Supplied with 2x1.5V AAA batteries.</p><ul style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 24px; list-style-position: initial; list-style-image: initial; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Nova torch</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Light: LED</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Light intensity: 25,000 m</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Material: plastic</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Supplied with batteries: 2 x AAA</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Colour: white</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">ON/OFF by: Pocket clip</li></ul>', '1722775891medical_lights_f7fo-k7.jpg', 14.324324324324, 18.918918918919, 199, '', NULL, 1, 'flash_deal', '02/02/2022', '', '', NULL, '2021-09-30 09:48:39', '2024-08-04 09:51:31', NULL, NULL, 'normal', '3H4YEhHb.jpg', NULL),
(563, 19, 9, NULL, 2, NULL, 'Orthopedic Instruments Kit', 'Orthopedic-Instruments-Kit', '65dVy8Jt456tg', 'women,dresses', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\"]', '[\"Orthopedic Instruments Kit\"]', 1, 'Orthopedic Instruments Kit', '1722761001general-instruments.jpg', 116.21621621622, 162.16216216216, 198, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:39', '2024-08-04 05:43:21', NULL, NULL, 'normal', '63izSdSh.jpg', NULL);
INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `file`, `link`, `file_type`, `created_at`, `updated_at`, `license_name`, `license_key`, `item_type`, `thumbnail`, `affiliate_link`) VALUES
(570, 22, 24, NULL, 2, NULL, 'Hospital pique blankets and hotel pique blankets', 'Hospital-pique-blankets-and-hotel-pique-blankets', '65dVy8Jrt546gcsw', '', NULL, 'Pique blankets not only need to be comfortable, they need to promote cleanliness by being washing and ironing resistant.', NULL, NULL, 0, '<div>Pique blankets not only need to be comfortable, they need to promote cleanliness by being washing and ironing resistant.</div><div><br></div><div>As the importance of patient/client satisfaction increases, we want to help you provide your patients/clients with the best experience possible.Choose from our variety of bed linens, pique blankets in a variety of fabrics. Professional, classic and oxford style stitching for easy fitting and removal.</div>', '17227627623062426100_4jr6-oq_8kvo-3h_kjrd-7l.jpg', 15.135135135135, 18.918918918919, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:39', '2024-08-04 06:12:42', NULL, NULL, 'normal', 'UyLIuj5Q.jpg', NULL),
(571, 22, 27, NULL, 2, NULL, 'Hospital bed sheets and hotel bed sheets', 'Hospital-bed-sheets-and-hotel-bed-sheets', '65dVy8Jrtxew', '', NULL, 'Bed sheets not only need to be comfortable, they need to promote cleanliness by being washing and ironing resistant.', NULL, NULL, 0, '<h3 style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px 0px 10px; color: rgb(153, 153, 153); font-family: &quot;roboto condensed&quot;, serif; font-weight: bold; font-size: 18px;\">Hospital bed sheets and hotel bed sheets of excellent quality</h3><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Bed sheets</strong>&nbsp;not only need to be comfortable, they need to promote cleanliness by being washing and ironing resistant.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased;\">As the importance of patient/client satisfaction increases, we want to help you provide your patients/clients with the best experience possible.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased;\">Choose from our variety of&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">bed linens</strong>,&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">white sheets</strong>&nbsp;in a variety of fabrics</p>', '1722763010sentonia-cotton-linen-.jpg', 20.27027027027, 21.621621621622, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:39', '2024-08-04 06:16:50', NULL, NULL, 'normal', 'wyOCvooc.jpg', NULL),
(572, 27, 30, NULL, 2, NULL, '3M Littmann Stethoscopes', '3M-Littmann-Stethoscopes', NULL, 'HTML,CSS,Wordpress,Laravel', NULL, 'Littmann is the name of the stethoscope , which is world-famous for its precision, acoustic excellence, innovative design and outstanding performance.', '[\"High Resolution\",\"Compatible Browsers\",\"Files Included\",\"Software Framework\",\"Software Version\"]', '[\"Yes\",\"IE10, IE11, Firefox, Safari, Opera, Chrome, Edge\",\"JavaScript JS, HTML, CSS, PHP, SQL\",\"Wordpress\",\"PHP 8.x, PHP 7.x, MySQL 5.x\"]', 1, '<p><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">Littmann is the name of the stethoscope , which is world-famous for its precision, acoustic excellence, innovative design and outstanding performance.&nbsp;3M offers you a complete set of stethoscopes that can satisfy all of your stethoscope needs. If you are a healthcare professional, who requires the best of the medical devices he uses, then you can count on 3M Littmann stethoscopes.</span><br></p>', '1722776568littmann_stethoscopes.jpg', 32.567567567568, 67.567567567568, 0, '', NULL, 1, 'new', '', '1632344407sample.zip', '#', 'link', '2021-09-30 09:48:39', '2024-08-04 10:02:48', NULL, NULL, 'digital', 'qfo7qXMX.jpg', NULL),
(573, 27, 32, NULL, 2, NULL, 'MDF Stethoscopes', 'MDF-Stethoscopes', NULL, '', NULL, 'MDF® Instruments has been crafting stethoscopes, sphygmomanometers, and reflex hammers since 1971. With passion, innovation and style, MDF is honored to be recognized for multiple US patents, famous Rose Gold stethoscopes, Mprints stethoscopes and unique titanium stethoscopes.', '[\"High Resolution\"]', '[\"Yes\"]', 1, '<p><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">MDF® Instruments</strong><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">&nbsp;has been crafting stethoscopes, sphygmomanometers, and reflex hammers since 1971. With passion, innovation and style, MDF is honored to be recognized for multiple US patents, famous Rose Gold stethoscopes, Mprints stethoscopes and unique titanium stethoscopes.</span><br></p>', '1722776867mdf_procardial_titanium_9ve4-5x.jpg', 35, 70, 0, '', NULL, 1, 'feature', '', '1632344739sample.zip', '#', 'link', '2021-09-30 09:48:39', '2024-08-04 10:07:47', '[\"dff-dfg-dfg-dfg-dfg\",\"hjk-hjk-hjk-hkk-hjk\",\"xcv-xcv-xcv-xvxv-xcv\",\"bnm-bnm-bnm-bm-bnm\"]', '[\"dff-dfg-dfg-dfg-dfg\",\"hjk-hjk-hjk-hkk-hjk\",\"xcv-xcv-xcv-xvxv-xcv\",\"bnm-bnm-bnm-bm-bnm\"]', 'license', '7BniBuVM.jpg', NULL),
(574, 27, 30, NULL, 2, NULL, 'Anatomic Clogs', 'Anatomic-Clogs', NULL, '', NULL, 'It\'s time to shine with wock shoes by WOCK. Available in a wide range of colors.', '[\"High Resolution\"]', '[\"Yes\"]', 1, '<h3 style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px 0px 10px; color: rgb(153, 153, 153); font-family: &quot;roboto condensed&quot;, serif; font-weight: bold; font-size: 18px;\">The feeling of absolute comfort and safety, which makes walking a pleasure with anatomic clogs.</h3><p style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased;\">It\'s time to shine with wock shoes by WOCK. Available in a wide range of colors.</p><p style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Anatomic clogs</b>&nbsp;designed to keep your feet in ideal conditions, extending the comfort feeling.</p>', '1722777148anatomic-clogs.jpg', 8.2432432432432, 15.945945945946, 0, '', NULL, 1, 'top', '', '1632344834sample.zip', '#', 'link', '2021-09-30 09:48:39', '2024-08-04 10:12:28', NULL, NULL, 'digital', '0yrno7ZK.jpg', NULL),
(576, 27, 30, NULL, 2, NULL, 'Surgical masks', 'Surgical-masks', NULL, '', NULL, 'Surgical masks made of extremely soft and lightweight materials, with ultrasonically welded bindings, totally hypoallergenic.', '[\"High Resolution\"]', '[\"Yes\"]', 1, '<p style=\"text-align: justify; \"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">Surgical masks</strong><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">&nbsp;made of extremely soft and lightweight materials, with ultrasonically welded bindings, totally hypoallergenic. They have a special filter for bacteria, so you can breathe freely.</span></p><ul style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 24px; list-style-position: initial; list-style-image: initial; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px;\"><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">3M™ Aura™ FFP2</strong>&nbsp;(NPF 12) protection against hazardous airborne contaminates in medical environments</li><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">3-panel design allows greater facial movement and wide-ranging fit</li><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Low resistance filter technology helps you breathe easily</li><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Scuplted upper panel conforms to the nose and contours of the face with a soft foam for an effective seal</li><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Embossed top panel helps reduce eyewear fogging</li><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Chin tab designed for easy positioning and adjustment</li><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Hygienic packaging protects the respirator from contamination before use</li><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Outer cover provides resistance to fluid splashes</li><li style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Approved to the European Medical Device Directive (93/42/EEC) and EN14683:2005 Type IIR for use as a surgical mask</li></ul><p style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">3M™ Aura™ Particulate Healthcare Respirator 1862+ is our foldable, 3-panel respirator with a sculpted nose panel that conforms to a broad range of face shapes. This FFP2 disposable respirator features a 3M™ Cool Flow™ Valve, and a lightweight, balanced design.</p><p style=\"text-align: justify; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">Get FFP2 (NPF 12) protection against hazardous airborne contaminates in medical environments with 3M™ Aura™ Particulate Healthcare Respirator 1862+. Our disposable respirator offers the protection of both a respirator and a surgical mask, allowing you to work in both safety and comfort by filtering particles from inhaled air. The 3-panel design allows for greater facial movement, while the sculpted nose panel helps conform to the contours of the face, creating an effective seal. The 3M™ Cool Flow™ Valve helps reduce heat build-up and eyewear fogging by allowing a higher volume of hot air to escape. The soft nose foam and the smooth inner cover web is designed to be gentle on the skin. The adjustable braided headband helps to achieve a more secure feel, and provide comfort to the user’s face, head and neck. Designed to work well with 3M Eyewear and Hearing Protection products. For the full product certification and specifications, click here: Respiratory Products Certificate Selector</p><p style=\"text-align: justify; \"><br></p>', '1722777808mask_surgical.jpg', 1.3513513513514, 1.7567567567568, 0, '', NULL, 1, 'new', '', '1632344940sample.zip', '#', 'link', '2021-09-30 09:48:39', '2024-08-04 10:23:28', NULL, NULL, 'digital', 'FHZMPjtq.jpg', NULL),
(582, 22, 27, NULL, 2, NULL, 'White striped bed sheets T-160 160 x 260 cm - 20pcs', 'White-striped-bed-sheets-T-160-160-x-260-cm---20pcs', '65dVy834345g', '', NULL, 'Our bed sheets are sumptuously soft and exceptionally comfortable, ensuring your guests get a great night’s sleep.', NULL, NULL, 0, '<h3 style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px 0px 10px; color: rgb(153, 153, 153); font-family: &quot;roboto condensed&quot;, serif; font-weight: bold; font-size: 18px;\">Hospital bed sheets and hotel bed sheets of excellent quality</h3><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">Our&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">bed sheets</strong>&nbsp;are sumptuously soft and exceptionally comfortable, ensuring your guests get a great night’s sleep.</p><ul style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 24px; list-style-position: initial; list-style-image: initial; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Woven T-160 sheets</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Blend quality (50% cotton / 50% polyester)</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Dimensions 160 x 260cm (before sewing)</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Seams 3 cm and 1 cm respectively</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Stripe width 1 cm</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Excellent behavior in washing and ironing</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Available in a package of 20 pieces</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Piece price 6.0 euros</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Budget friendly sheet collection providing long-lasting wear and comfort</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">All sheets can be ordered in the dimensions you want, after consultation with our store.</li></ul><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">All bed sheeting is white and features a cotton-rich construction for added patient comfort. Choose from a 50% Cotton/50% Polyester composition or the heavy-weight 60% Cotton/40% Polyester blend. Regardless of which construction you choose, you can rest assured that our bed sheets provide reinforced strength while ensuring patient comfort.</p>', '172276339620210510142458_sprintzios_maxilarothiki_xenodocheiou_15899_52x73.jpg', 26.486486486486, 33.783783783784, 199, '', NULL, 1, 'best', '', '', '', NULL, '2021-09-30 09:48:39', '2024-08-04 06:23:16', NULL, NULL, 'normal', '8W2aShIG.jpg', NULL),
(583, 22, 24, NULL, 2, NULL, 'Pillow cases and hotel pillow cases', 'Pillow-cases-and-hotel-pillow-cases', '65dVy8Jr8fg', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'Pillow cases not only need to be comfortable, they need to promote cleanliness by being washing and ironing resistant.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, '<h3 style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px 0px 10px; color: rgb(153, 153, 153); font-family: &quot;roboto condensed&quot;, serif; font-weight: bold; font-size: 18px;\">Hospital duvet covers and hotel duvet covers of excellent quality</h3><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">Our&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">pillow cases</strong>&nbsp;are sumptuously soft and exceptionally comfortable, ensuring your guests get a great night’s sleep.</p><ul style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 24px; list-style-position: initial; list-style-image: initial; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Woven T-144 pillow cases</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Blend quality (50% cotton / 50% polyester)</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Dimensions 45 x 65cm (before sewing)</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Classic seam</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Excellent behavior in washing and ironing</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Available in a package of 80 pieces</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Piece price 1.18 euros</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Budget friendly pillow cases providing long-lasting wear and comfort</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">All pillow cases can be ordered in the dimensions you want, after consultation with our store</li></ul><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">All pillow cases are white and features a cotton-rich construction for added patient comfort. Choose from a 50% Cotton/50% Polyester composition or the heavy-weight 60% Cotton/40% Polyester blend. Regardless of which construction you choose, you can rest assured that our pillow cases provide reinforced strength while ensuring patient comfort.</p>', '1722763670maxilarothiki-oxford_es81-48_fbql-j3_tgkp-58_ledj-ua.jpg', 14.594594594595, 16.216216216216, 199, '', NULL, 1, 'new', NULL, '', '', NULL, '2021-09-30 09:48:39', '2024-08-04 06:29:05', NULL, NULL, 'normal', 'VIF5Ln9b.jpg', NULL),
(586, 22, 26, NULL, 2, NULL, 'Environmentally friendly, multi-use green surgical towels', 'Environmentally-friendly--multi-use-green-surgical-towels', '65dVy8345fg9776', '', NULL, 'These environmentally friendly, multi-use green surgical towels offer maximum absorbency and minimum lint, which helps you keep your healthcare facility clean', NULL, NULL, 0, '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">These environmentally friendly, multi-use&nbsp;</span><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">green surgical towels</strong><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">&nbsp;offer maximum absorbency and minimum lint, which helps you keep your healthcare facility clean</span>', '1722762414s-l640.jpg', 28.378378378378, 33.783783783784, 171, '', NULL, 1, 'feature', '', '', '', NULL, '2021-09-30 09:48:39', '2024-08-04 06:06:54', NULL, NULL, 'normal', 'WIItuLt6.jpg', NULL),
(587, 18, 6, NULL, 2, NULL, 'Serological Water Bath Thermostatic Controlled (without rack and thermometer)', 'Serological-Water-Bath-Thermostatic-Controlled--without-rack-and-thermometer-', '65dVy8J8Uo', '', NULL, 'Double walled, inside made of stainless steel 304 grade and outside mild steel sheet powder coated. Temperature is controlled from 5ºC above ambient to 100ºC with a sensitivity of ± 0.1ºC. Bath consists of 2 pilot lamps & on/off switch, to work on 220/230 Volts A.C.', NULL, NULL, 0, 'Double walled, inside made of stainless steel 304 grade and outside mild steel sheet powder coated. Temperature is controlled from 5ºC above ambient to 100ºC with a sensitivity of ± 0.1ºC. Bath consists of 2 pilot lamps &amp; on/off switch, to work on 220/230 Volts A.C.', '1722762081water-bath.jpg', 68.648648648649, 81.081081081081, 94, '', NULL, 1, 'best', '', '', '', NULL, '2021-09-30 11:46:05', '2024-08-04 06:01:21', NULL, NULL, 'normal', 'Ridp1oFf.jpg', NULL),
(593, 27, 30, NULL, 3, NULL, 'Wound Treatment', 'Wound-Treatment', 'RMo3YG9Uhl', '', NULL, 'High strength, versatile, conformable', '[null]', '[null]', 1, '<ul style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 24px; list-style-position: initial; list-style-image: initial; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">High strength, versatile, conformable</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Adheres well to dry skin</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Convenient bidirectional tear</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Hypoallergenic and not made with natural rubber latex</li></ul><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">Silk-like cloth, hypoallergenic tape</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\">Durable, no-stretch silk-like cloth tape for critical tubing applications.</p><h3 style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px 0px 10px; color: rgb(153, 153, 153); font-family: &quot;roboto condensed&quot;, serif; font-weight: bold; font-size: 18px;\">Suggested Applications</h3><ul style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 24px; list-style-position: initial; list-style-image: initial; color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Securing tubing and devices</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Anchoring bulky dressings</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Immobilizing fingers &amp; toes</li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-size: 13px; margin: 0px; padding: 2px 0px; list-style-position: initial; list-style-image: initial; list-style-type: inherit; -webkit-font-smoothing: subpixel-antialiased;\">Stabilizing finger splints</li></ul><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(140, 140, 140); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; -webkit-font-smoothing: subpixel-antialiased; line-height: 1.5;\"><b style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">Each package contains 24 Durapore surgical tapes.</b></p>', '1722778146wound_treatment.png', 4.0540540540541, 5.4054054054054, 560, '', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2024-08-04 10:29:06', '2024-08-04 10:29:06', NULL, NULL, 'normal', 'BOb1PtfN.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `file`, `name`, `is_default`, `rtl`, `created_at`, `updated_at`, `type`) VALUES
(1, 'English', '1647794127lN7PfPAc.json', '1647794127lN7PfPAc', 1, 0, NULL, NULL, 'Website'),
(2, 'Arabic', '1647792286wzAqXQOx.json', '1647792286wzAqXQOx', 0, 1, NULL, NULL, 'Website'),
(3, 'English', '1647794074eEeCbfDD.json', '1647794074eEeCbfDD', 1, 0, NULL, NULL, 'Dashboard'),
(4, 'Arabic', '1638870927JMqjbCXv.json', '1638870927JMqjbCXv', 0, 1, NULL, NULL, 'Dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `ticket_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'test', '2021-12-03 06:33:29', '2021-12-03 06:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_08_21_073142_create_admins_table', 1),
(2, '2021_08_21_073507_create_users_table', 1),
(3, '2021_09_20_144419_create_items_table', 1),
(4, '2021_09_20_151605_create_settings_table', 1),
(5, '2021_09_21_073848_create_attributes_table', 1),
(6, '2021_09_21_073951_create_attribute_options_table', 1),
(7, '2021_09_21_074028_create_banners_table', 1),
(8, '2021_09_21_074231_create_bcategories_table', 1),
(9, '2021_09_21_074309_create_brands_table', 1),
(10, '2021_09_21_074412_create_campaign_items_table', 1),
(11, '2021_09_21_074536_create_categories_table', 1),
(12, '2021_09_21_074744_create_chield_categories_table', 1),
(13, '2021_09_21_074952_create_countries_table', 1),
(14, '2021_09_21_075024_create_currencies_table', 1),
(15, '2021_09_21_075231_create_email_templates_table', 1),
(16, '2021_09_21_075346_create_faqs_table', 1),
(17, '2021_09_21_075642_create_fcategories_table', 1),
(18, '2021_09_21_080223_create_galleries_table', 1),
(19, '2021_09_21_080320_create_home_cutomizes_table', 1),
(20, '2021_09_21_080454_create_languages_table', 1),
(21, '2021_09_21_080652_create_messages_table', 1),
(22, '2021_09_21_080805_create_notifications_table', 1),
(23, '2021_09_21_090957_create_orders_table', 1),
(25, '2021_09_21_092255_create_payment_settings_table', 1),
(26, '2021_09_21_092722_create_posts_table', 1),
(27, '2021_09_21_092801_create_promo_codes_table', 1),
(28, '2021_09_21_093709_create_reviews_table', 1),
(29, '2021_09_21_093833_create_roles_table', 1),
(30, '2021_09_21_094020_create_services_table', 1),
(31, '2021_09_21_094413_create_shipping_services_table', 1),
(32, '2021_09_21_094517_create_sliders_table', 1),
(33, '2021_09_21_094630_create_socials_table', 1),
(34, '2021_09_21_094739_create_subcategories_table', 1),
(35, '2021_09_21_094831_create_subscribers_table', 1),
(36, '2021_09_21_094903_create_taxes_table', 1),
(37, '2021_09_21_095021_create_tickets_table', 1),
(38, '2021_09_21_095605_create_track_orders_table', 1),
(39, '2021_09_21_095650_create_transactions_table', 1),
(40, '2021_09_21_095836_create_wishlists_table', 1),
(41, '2021_09_21_091316_create_pages_table', 2),
(42, '2021_09_22_095954_add_extra_visibility_to_settings_table', 3),
(43, '2021_09_29_075836_add_theme_to_settings_table', 4),
(44, '2021_09_30_103035_google_chapcha_to_settings__table', 5),
(45, '2021_10_04_141643_add_currency_deraction_to_settings_table', 6),
(46, '2021_10_08_135417_add_theme_field_to_sliders_table', 7),
(51, '2021_10_09_153059_license_to_items_table', 8),
(56, '2021_10_09_173004_remove_item_type_to_items_table', 9),
(57, '2021_10_09_173038_set_item_type_to_items_table', 9),
(58, '2021_10_10_051502_add_scrript_to_settings_table', 10),
(59, '2021_10_10_142339_thumbnail_to_items_table', 11),
(61, '2021_10_10_163455_home_page4_to_home_cutomizes_table', 12),
(62, '2021_10_11_090243_create_extra_settings_table', 13),
(63, '2021_10_12_145150_add_home4populer_category_to_home_cutomizes_table', 14),
(64, '2021_10_13_100048_create_sitemaps_table', 15),
(65, '2021_10_15_140708_add_type_to_promo_codes_table', 16),
(66, '2021_10_15_163958_add_announcement_link_to_settings_table', 17),
(68, '2021_11_21_143624_add_shop_extra_field_to_settings_table', 19),
(69, '2021_11_20_105052_add_stock_to_attribute_options_table', 20),
(71, '2021_11_21_151422_add_home_page_title_to_settings_table', 21),
(72, '2021_11_23_141528_add_type_to_languages_table', 22),
(73, '2021_11_23_144810_add_privacy_terms_to_settings_table', 23),
(74, '2021_11_23_182026_add_guest_checkout_to_settings_table', 24),
(76, '2021_11_24_144859_add_guest_hero_banner_to_home_cutomizes_table', 25),
(77, '2021_11_26_163222_add_affiliate_link_to_items_table', 26),
(78, '2021_11_27_113624_add_css_field_to_settings_table', 27),
(79, '2021_12_05_161222_add_flash_section_to_extra_settings_table', 28),
(82, '2021_12_05_165840_add_popup_field_to_settings_table', 29),
(83, '2021_12_06_141255_add_3column_section_to_extra_settings_table', 30),
(84, '2022_01_03_141239_add_currency_seperator_to_settings_table', 31),
(85, '2022_01_04_142738_create_states_table', 32),
(86, '2022_01_04_145532_add_state_id_to_users_table', 33),
(88, '2022_01_04_161647_add_state_id_to_orders_table', 34),
(89, '2022_01_06_155345_add_disqus_to_settings_table', 35),
(90, '2022_01_16_143429_add_type_to_states_table', 36),
(91, '2022_01_16_153254_add_state_to_orders_table', 37),
(92, '2022_03_01_162121_add_is_decemial_to_settings_table', 38),
(93, '2022_03_20_154807_update_column_to_home_cutomizes_table', 39),
(94, '2023_10_10_151706_order_mail_settings_table', 40),
(95, '2023_10_10_151706_ticket_mail_settings_table', 40);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, NULL, 9, 0, '2024-05-22 12:30:08', '2024-05-22 12:30:08'),
(2, 133, NULL, 0, '2024-06-10 14:11:08', '2024-06-10 14:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text DEFAULT NULL,
  `currency_sign` varchar(255) DEFAULT NULL,
  `currency_value` varchar(255) DEFAULT NULL,
  `discount` text DEFAULT NULL,
  `shipping` text DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `tax` double NOT NULL DEFAULT 0,
  `charge_id` varchar(255) DEFAULT NULL,
  `transaction_number` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `shipping_info` text DEFAULT NULL,
  `billing_info` text DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_price` double DEFAULT 0,
  `state` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `currency_sign`, `currency_value`, `discount`, `shipping`, `payment_method`, `txnid`, `tax`, `charge_id`, `transaction_number`, `order_status`, `shipping_info`, `billing_info`, `payment_status`, `created_at`, `updated_at`, `state_price`, `state`) VALUES
(133, 0, '{\"535-Red,M\":{\"options_id\":[269,1094],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"M\"],\"option_price\":[5,5]},\"attribute_price\":10,\"name\":\"2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses\",\"slug\":\"-----Summer-Women-Clothing-Ropa-Sexy-Lady-Cut-Out-Halter-Mini-Dresses\",\"qty\":\"1\",\"price\":134.83,\"main_price\":134.83,\"photo\":\"1634135320H408d7d7e37b4437297de600584c1af1fL.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', 'UGX', '3700', '[]', '{\"id\":1,\"title\":\"Free Delevery\",\"price\":0,\"minimum_price\":13.513513513514,\"is_condition\":1,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 1.3483, NULL, 'ORD-20240610-133', 'In Progress', '{\"ship_first_name\":\"den\",\"ship_last_name\":\"ain\",\"ship_email\":\"admin@gmail.com\",\"ship_phone\":\"0788457690\",\"ship_company\":\"Kampala\",\"ship_address1\":\"Address\",\"ship_address2\":\"aaa\",\"ship_zip\":\"256\",\"ship_city\":\"kam\",\"ship_country\":\"Uganda\"}', '{\"_token\":\"lr2coDtI0x3i71P7xdDNn1np6dWWhIg2WcS3J33p\",\"bill_first_name\":\"den\",\"bill_last_name\":\"ain\",\"bill_email\":\"admin@gmail.com\",\"bill_phone\":\"0788457690\",\"bill_company\":\"Kampala\",\"bill_address1\":\"Address\",\"bill_address2\":\"aaa\",\"bill_zip\":\"256\",\"bill_city\":\"kam\",\"bill_country\":\"Uganda\",\"same_ship_address\":\"on\"}', 'Unpaid', '2024-06-10 14:11:08', '2024-06-10 14:13:20', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `pos` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_keywords`, `meta_descriptions`, `pos`, `created_at`, `updated_at`) VALUES
(7, 'About Us', 'about-us', '<div style=\"text-align: justify; \"><b>Slogan:</b></div><div style=\"\"><i>Bringing Quality Home</i></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify; \"><b>Our Vision:</b></div><div style=\"text-align: justify;\">At d-shil, our vision is to become the leading online destination for quality and innovative products that enhance everyday living. We aspire to connect customers with the best the market has to offer, fostering a community of satisfied and loyal customers who trust us for their shopping needs.</div><div style=\"text-align: justify; \"><br></div><div style=\"text-align: justify; \"><b>Our Mission:</b></div><div style=\"text-align: justify;\">Our mission is to provide an exceptional online shopping experience by offering a wide selection of premium products, superior customer service, and a seamless, user-friendly interface. We are committed to ensuring that every customer finds exactly what they are looking for, with the convenience of fast and reliable delivery.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify; \"><b>Who We Are:</b></div><div style=\"text-align: justify;\">d-shil is an e-commerce platform dedicated to bringing you the best products from around the world. Our team is passionate about curating a diverse range of items, from the latest in technology and fashion to home essentials and unique gifts. We believe that shopping should be an enjoyable and hassle-free experience, which is why we focus on quality, affordability, and customer satisfaction.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify; \"><b>What We Offer:</b></div><ul><li style=\"text-align: justify;\">Wide Selection: Our extensive catalog features products across various categories, ensuring that there is something for everyone.</li><li style=\"text-align: justify;\">Quality Assurance: We meticulously select our products, partnering with trusted brands and suppliers to ensure high standards of quality.</li><li style=\"text-align: justify;\">Exceptional Customer Service: Our dedicated customer support team is always ready to assist you with any inquiries, ensuring a smooth shopping experience from start to finish.</li><li style=\"text-align: justify;\">Fast &amp; Reliable Shipping: We understand the excitement of receiving your order, which is why we prioritize fast and reliable shipping to get your purchases to you as quickly as possible.</li><li style=\"text-align: justify; \">Secure Shopping: Your privacy and security are our top priorities. We use the latest technology to ensure that your personal and payment information is protected.</li></ul><div style=\"text-align: justify; \"><b>Our Commitment:</b></div><div style=\"text-align: justify; \">At d-shil, we are committed to continuous improvement and innovation. We listen to our customers\' feedback and constantly strive to enhance our offerings and services. Our goal is to build lasting relationships with our customers by consistently exceeding their expectations.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify; \"><b>Join Us:</b></div><div style=\"text-align: justify;\">Become a part of the d-shil community and experience the difference of a shopping platform that truly cares about your needs. Follow us on social media, subscribe to our newsletter, and stay updated with the latest products, exclusive deals, and special promotions.</div><div style=\"text-align: justify; \">Thank you for choosing d-shil. We look forward to serving you and making your shopping experience extraordinary.</div>', NULL, NULL, 1, NULL, NULL),
(10, 'Privacy Policy', 'privacy-policy', '<div style=\"text-align: justify; \"><b>1. Introduction</b></div><div style=\"text-align: justify;\">Welcome! This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website<span style=\"color: rgb(0, 0, 0);\">, and use our services. By accessing or using our Website, you agree to the terms of this Privacy Policy. If you do not agree with the terms of this Privacy Policy, please do not access the Website.</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>2. Information We Collect:</b></div><div style=\"text-align: justify;\">Personal Information.&nbsp;<span style=\"color: rgb(0, 0, 0);\">We may collect personal information that you provide to us when you:</span></div><ul><li style=\"text-align: justify; \">Register for an account</li><li style=\"text-align: justify;\">Place an order</li><li style=\"text-align: justify;\">Subscribe to our newsletter</li><li style=\"text-align: justify;\">Contact us with questions or feedback</li></ul><div style=\"text-align: justify;\">This information may include your name, email address, shipping address, billing address, phone number, and payment information.</div><div style=\"text-align: justify;\">Non-Personal Information.&nbsp;<span style=\"color: rgb(0, 0, 0);\">We may collect non-personal information about you whenever you interact with our Website. This information may include your browser name, the type of computer, and technical information about your means of connection to our Website, such as the operating system and the Internet service providers utilized and other similar information.</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify; \"><b>3. How we use your Information</b></div><div style=\"text-align: justify;\">We use the information we collect in the following ways:</div><ul><li style=\"text-align: justify;\">To process and fulfill your orders</li><li style=\"text-align: justify; \">To provide customer service and support</li><li style=\"text-align: justify;\">To improve our Website and services</li><li style=\"text-align: justify;\">To send periodic emails regarding your order or other products and services</li><li style=\"text-align: justify;\">To personalize your experience on our Website</li><li style=\"text-align: justify;\">To comply with legal obligations</li></ul><div style=\"text-align: justify;\"><b>4. Sharing Your Information</b></div><div style=\"text-align: justify;\">We do not sell, trade, or rent your personal information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates, and advertisers for the purposes outlined above.</div><div style=\"text-align: justify;\">We may share your information with third-party service providers to help us operate our business and the Website or administer activities on our behalf, such as sending out newsletters or surveys. We may share your information with these third parties for those limited purposes provided that you have given us your permission.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>5. Data Security</b></div><div style=\"text-align: justify;\">We adopt appropriate data collection, storage, and processing practices and security measures to protect against unauthorized access, alteration, disclosure, or destruction of your personal information, username, password, transaction information, and data stored on our Website.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>6. Your Rights</b></div><div style=\"text-align: justify;\">You have the right to:</div><ul><li style=\"text-align: justify; \">Access the personal information we hold about you</li><li style=\"text-align: justify;\">Request correction of any inaccurate or incomplete personal information</li><li style=\"text-align: justify;\">Request deletion of your personal information</li><li style=\"text-align: justify;\">Object to the processing of your personal information</li><li style=\"text-align: justify;\">Request restriction of processing your personal information</li><li style=\"text-align: justify;\">Request the transfer of your personal information to another party</li><li style=\"text-align: justify;\">Withdraw consent at any time where we are relying on consent to process your personal information</li><li style=\"text-align: justify;\">If you wish to exercise any of these rights, please contact us using the contact details provided on this website.</li></ul><div style=\"text-align: justify;\"><b>7. Cookies</b></div><div style=\"text-align: justify;\">Our Website may use \"cookies\" to enhance the user experience. Your web browser places cookies on your hard drive for record-keeping purposes and sometimes to track information about them. You may choose to set your web browser to refuse cookies or to alert you when cookies are being sent. If they do so, note that some parts of the Website may not function properly.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>8. Third-Party Websites</b></div><div style=\"text-align: justify;\">Users may find advertising or other content on our Website that links to the sites and services</div>', NULL, NULL, 1, NULL, NULL),
(11, 'Terms & Service', 'terms-and-service', '<div style=\"text-align: justify; \"><b>1. Introduction</b></div><div style=\"text-align: justify; \">Welcome to Pronurse Medical. These Terms &amp; Service govern your use of our website (hereinafter referred to as \"the Website\") and the services provided by&nbsp;<span style=\"color: rgb(0, 0, 0);\">Pronurse Medical</span>&nbsp;(hereinafter referred to as \"we,\" \"us,\" or \"our\").</div><div style=\"text-align: justify; \"><br></div><div style=\"text-align: justify;\"><b>2. Acceptance of Terms</b></div><div style=\"text-align: justify;\">By accessing or using our Website and services, you agree to be bound by these Terms &amp; Service and our Privacy Policy. If you do not agree with any part of these terms, you must not use our Website or services.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>3. Eligibility</b></div><div style=\"text-align: justify; \">You must be at least 18 years old to use our Website and services. By using the Website, you represent and warrant that you are at least 18 years old.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>4. Account Registration</b></div><div style=\"text-align: justify;\">To access certain features of our Website, you may need to create an account. You agree to:</div><div style=\"text-align: justify;\">Provide accurate, current, and complete information during the registration process.</div><div style=\"text-align: justify;\">Maintain the security and confidentiality of your password and account information.</div><div style=\"text-align: justify;\">Notify us immediately of any unauthorized use of your account or any other breach of security.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>5. Orders and Payment</b></div><div style=\"text-align: justify;\">All orders placed through our Website are subject to acceptance and availability.</div><div style=\"text-align: justify;\">We reserve the right to refuse or cancel any order for any reason, including errors in pricing, product description, or stock availability.</div><div style=\"text-align: justify;\">Prices are subject to change without notice. The price you pay will be the price displayed at the time you place your order.</div><div style=\"text-align: justify;\">Payment must be made through the available payment methods at the time of purchase. You agree to pay all charges incurred by you or on your behalf through the Website.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>6. Shipping and Delivery</b></div><div style=\"text-align: justify;\">We will make every effort to deliver your order within the estimated delivery time; however, we do not guarantee delivery dates.</div><div style=\"text-align: justify;\">Shipping costs and delivery times vary depending on the shipping method selected and the destination.</div><div style=\"text-align: justify;\">Risk of loss and title for items purchased pass to you upon delivery to the shipping carrier.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>7. Returns and Refunds</b></div><div style=\"text-align: justify;\">Our Return Policy outlines the process and conditions for returning items. Please review our Return Policy for detailed information on returns and refunds.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>8. Intellectual Property</b></div><div style=\"text-align: justify;\">All content on our Website, including text, graphics, logos, images, and software, is the property Pronurse Medical or its licensors and is protected by intellectual property laws.</div><div style=\"text-align: justify;\">You may not use, reproduce, modify, or distribute any content from our Website without our express written permission.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>9. Prohibited Conduct</b></div><div style=\"text-align: justify;\">You agree not to:</div><div style=\"text-align: justify;\">Use the Website for any unlawful purpose or in violation of these Terms &amp; Service.</div><div style=\"text-align: justify;\">Violate or attempt to violate the security of the Website.</div><div style=\"text-align: justify;\">Engage in any conduct that could damage, disable, or impair the Website or interfere with any other party\'s use of the Website.</div><div style=\"text-align: justify;\">Use any automated means to access the Website for any purpose without our express written permission.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>10. Disclaimer of Warranties</b></div><div style=\"text-align: justify;\">Our Website and services are provided on an \"as is\" and \"as available\" basis. We make no representations or warranties of any kind, express or implied, regarding the operation of our Website or the information, content, materials, or products included on our Website.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>11. Limitation of Liability</b></div><div style=\"text-align: justify;\">To the fullest extent permitted by law, we shall not be liable for any indirect, incidental, special, consequential, or punitive damages, including but not limited to loss of profits, revenue, data, or use, incurred by you or any third party, whether in an action in contract or tort, arising from your access to or use of our Website.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>12. Indemnification</b></div><div style=\"text-align: justify; \">You agree to indemnify and hold harmless&nbsp;<span style=\"color: rgb(0, 0, 0);\">Pronurse Medical</span>, its officers, directors, employees, and agents from any claims, liabilities, damages, losses, and expenses, including reasonable attorneys\' fees, arising out of or in any way connected with your use of our Website or violation of these Terms &amp; Service.</div><div style=\"text-align: justify; \"><br></div><div style=\"text-align: justify;\"><b>13. Changes to Terms &amp; Service</b></div><div style=\"text-align: justify; \">We reserve the right to modify these Terms &amp; Service at any time. Any changes will be effective immediately upon posting on our Website. Your continued use of the Website following the posting of changes constitutes your acceptance of such changes.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>14. Governing Law</b></div><div style=\"text-align: justify; \">These Terms &amp; Service shall be governed by and construed in accordance with the laws of Uganda, without regard to its conflict of laws principles.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>15. Contact Information</b></div><div style=\"text-align: justify;\">If you have any questions about these Terms &amp; Service, please contact us at:</div><div style=\"text-align: justify; \">Email: info@hfinvestmentclub.com</div>', NULL, NULL, 1, NULL, NULL),
(12, 'Return Policy', 'return-policy', '<div style=\"text-align: justify; \"><span style=\"color: rgb(0, 0, 0);\"><b>1. Return Period</b></span><br></div><div style=\"text-align: justify;\">We want you to be completely satisfied with your purchase. If for any reason you are not satisfied, you may return the item(s) within 5 days of the delivery date for a full refund or exchange.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify; \"><b>2. Eligibility Criteria</b></div><div style=\"text-align: justify;\">To be eligible for a return:</div><div style=\"text-align: justify;\">The item must be unused, unwashed, and in the same condition that you received it.</div><div style=\"text-align: justify;\">The item must be in the original packaging with all tags and labels attached.</div><div style=\"text-align: justify;\">Proof of purchase must be provided (e.g., order confirmation email or receipt).</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>3. Non-Returnable Items</b></div><div style=\"text-align: justify;\">Certain types of items cannot be returned, including:</div><div style=\"text-align: justify;\">Gift cards</div><div style=\"text-align: justify;\">Downloadable software products</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>4. Return Process</b></div><div style=\"text-align: justify;\">To initiate a return, please follow these steps:</div><div style=\"text-align: justify; \">Contact our Customer Service team at info@hfinvestmentclub.com to request a Return Merchandise Authorization (RMA) number.</div><div style=\"text-align: justify; \">Once you receive your RMA number, package the item securely in its original packaging, including any accessories, manuals, and documentation.</div><div style=\"text-align: justify;\">Write your RMA number on the outside of the package.</div><div style=\"text-align: justify;\">Ship the package to the address provided by our Customer Service team.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>5. Refunds</b></div><div style=\"text-align: justify;\">Once your return is received and inspected, we will notify you of the approval or rejection of your refund.</div><div style=\"text-align: justify;\">If approved, your refund will be processed, and a credit will automatically be applied to your original method of payment within 5-10 business days.</div><div style=\"text-align: justify;\">Please note that original shipping charges are non-refundable. If you received free shipping, the actual shipping cost may be deducted from your refund.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>6. Exchanges</b></div><div style=\"text-align: justify;\">We only replace items if they are defective or damaged. If you need to exchange an item for the same product, contact us at&nbsp;<span style=\"color: rgb(0, 0, 0);\">info@</span>hfinvestmentclub.com.</div><div style=\"text-align: justify;\">If you want to exchange an item for a different product, please return the original item following the return process and place a new order for the desired item.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>7. Return Shipping Costs</b></div><div style=\"text-align: justify;\">You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><b>9. Damaged or Defective Items</b></div><div style=\"text-align: justify;\">If you receive a damaged or defective item, please contact us immediately at [email or phone number] with details and photos of the product and the defect.</div><div style=\"text-align: justify; \">We will arrange for a replacement or refund as soon as possible.</div>', NULL, NULL, 1, NULL, NULL),
(14, 'How It Works', 'How-It-Works', '<div style=\"text-align: justify; \"><div><b>01. Browse Our Products</b></div><div>Explore our wide range of products across various categories. You can use the search bar at the top of the page to find specific items or browse through our curated collections for inspiration.</div><div><br></div><div><b>02. Product Details</b></div><div>Click on any product to view detailed information, including high-quality images, product descriptions, specifications, customer reviews, and pricing. Make sure to check the size, color, and other options available for each product.</div><div><br></div><div><div><b>03. Compare Items</b></div><div>If you\'re undecided between a few products, use our \"Compare\" feature to view them side-by-side. Simply click the \"Compare\" button on the product pages, and then view the comparison to analyze features, prices, and reviews.</div><div><br></div></div><div><b>04. Add to Cart</b></div><div>Once you’ve found a product you love, select the desired options (such as size or color) and click the “Add to Cart” button. You can continue shopping and add more items to your cart, or proceed to checkout.</div><div><br></div><div><b>05. View Cart</b></div><div>To view the items in your cart, click on the cart icon located at the top right corner of the website. Here, you can review your selected items, adjust quantities, or remove items if needed. You’ll also see the total cost of your order, including any applicable taxes and shipping fees.</div><div><br></div><div><div><b>06. Sign In or Create an Account</b></div><div>When you’re ready to complete your purchase, click the “Checkout” button. You will be prompted to either sign in to your existing account or create a new account. Creating an account allows for a faster checkout process in the future, and gives you access to order history and tracking.</div><div><br></div></div><div><b>07. Checkout</b></div><div>When you’re ready to complete your purchase, click the “Checkout” button. You will be prompted to enter your shipping and billing information. If you have an account with us, you can log in for a faster checkout process. Otherwise, you can proceed as a guest.</div><div><br></div><div><b>08. Add Your Address</b></div><div>Enter your shipping address accurately to ensure prompt and correct delivery. Double-check all fields, including street address, city, state, and postal code, to prevent any delays.</div><div><br></div><div><b>09. Payment</b></div><div>Choose your preferred payment method from the available options. Enter the required payment details and make sure all information is accurate. Once you’re ready, click the “Place Order” button to finalize your purchase.</div><div><br></div><div><b>10. Order Confirmation</b></div><div>After placing your order, you will receive an order confirmation email with the details of your purchase. This email will include your order number, a summary of the items purchased, and the shipping address.</div><div><br></div><div><b>11. Shipping &amp; Delivery</b></div><div>We will process and ship your order within [processing time, e.g., 1-2 business days]. Once your order is shipped, you will receive a shipping confirmation email with tracking information, so you can monitor the delivery status. Delivery times may vary based on your location and the shipping method selected.</div><div><br></div><div><b>11. Receive Your Order</b></div><div>When your order arrives, carefully inspect the items to ensure they match your order and are in good condition. If you encounter any issues, please refer to our Return Policy for instructions on how to proceed.</div><div><br></div><div><b>12. Enjoy &amp; Review</b></div><div>Enjoy your new purchase! We value your feedback, so please consider leaving a review on our website. Your reviews help other customers make informed decisions and help us improve our products and services.</div><div><br></div><div><b>Customer Support</b></div><div>If you have any questions or need assistance at any stage of your shopping experience, our customer support team is here to help. You can contact us via email at&nbsp;<span style=\"color: rgb(80, 80, 80); font-size: 15px;\">info@</span><font color=\"#505050\"><span style=\"font-size: 15px;\">hfinvestmentclub.com</span></font>, phone at +256 789226863, +256 788674576, +256 755260500, or through our online chat feature.</div></div>', '[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `unique_keyword` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `name`, `information`, `unique_keyword`, `photo`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', NULL, 'cod', '1631032407index.png', 'Cash on Delivery basically means you will pay the amount of product while you get the item delivered to you.', 1, NULL, NULL),
(27, 'Bank Transfer', NULL, 'bank', '1638530860pngwing.com (1).png', '<p>Account Number : 434 3434 3334</p><p>Pay With Bank Transfer.</p><p>Account Name : Jhon Due</p><p>Account Email : demo@gmail.com</p>', 1, NULL, NULL),
(29, 'Flutter Wave', '{\"public_key\":\"FLWPUBK_TEST-d54c4c69ef195e721af2139e7dfe1a23-X\",\"secret_key\":\"FLWSECK_TEST-86c6484143e62c4c9bc2e8aa08a07c92-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '1637998096download.png', 'Flutterwave is the faster & safer way to send money. Make an online payment via Flutterwave.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `code_name` varchar(255) DEFAULT NULL,
  `no_of_times` int(11) NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `title`, `code_name`, `no_of_times`, `discount`, `status`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Flash Discount', 'ironman', 95, 2, 1, NULL, NULL, NULL),
(2, 'Halloween Carnival', 'superman', 96, 5, 1, NULL, NULL, NULL),
(3, 'Fest Carnival', 'FC', 94, 1.3513513513514, 1, NULL, NULL, 'amount');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `review` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `item_id`, `review`, `subject`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 587, 'ssssss', 'ssssssss', 5, 1, '2021-10-16 19:29:45', '2021-10-16 19:29:58'),
(2, 1, 586, 'I like this product, and quality is very good too', 'Very Good Product', 5, 1, '2021-12-03 02:54:30', '2021-12-03 02:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '[\"Manage Categories\",\"Manage Products\",\"Manage Orders\",\"Transactions\",\"Ecommerce\",\"Customer List\",\"Manages Tickets\",\"Manage Faqs Contents\",\"Manage Blogs\",\"Manages Pages\",\"Subscribers List\",\"Manage System User\"]', '2021-12-05 10:24:27', '2024-08-04 11:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `details`, `photo`, `created_at`, `updated_at`) VALUES
(31, 'Secure Online Browsing', 'We posess SSL / Secure Certificate', '162196474904.png', NULL, NULL),
(32, '24/7 Customer Support', 'Friendly 24/7 customer support', '162196471103.png', NULL, NULL),
(33, 'Money Back Guarantee', 'We return money within 5 days for any returns', '162196467602.png', NULL, NULL),
(34, 'Secure Swift Shipping', 'Free swift shipping for all orders over UGX 1M Contrary to popular belief', '162196463701.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `loader` varchar(255) DEFAULT NULL,
  `is_loader` tinyint(4) DEFAULT 1,
  `feature_image` varchar(255) DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `smtp_check` tinyint(4) DEFAULT 0,
  `email_host` varchar(255) DEFAULT NULL,
  `email_port` varchar(255) DEFAULT NULL,
  `email_encryption` varchar(255) DEFAULT NULL,
  `email_user` varchar(255) DEFAULT NULL,
  `email_pass` varchar(255) DEFAULT NULL,
  `email_from` varchar(255) DEFAULT NULL,
  `email_from_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `overlay` text DEFAULT NULL,
  `google_analytics_id` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `is_shop` tinyint(4) DEFAULT 1,
  `is_blog` tinyint(4) DEFAULT 1,
  `is_faq` tinyint(4) DEFAULT 1,
  `is_contact` tinyint(4) DEFAULT 1,
  `facebook_check` tinyint(4) DEFAULT 1,
  `facebook_client_id` varchar(255) DEFAULT NULL,
  `facebook_client_secret` varchar(255) DEFAULT NULL,
  `facebook_redirect` varchar(255) DEFAULT NULL,
  `google_check` tinyint(4) DEFAULT 1,
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_client_secret` varchar(255) DEFAULT NULL,
  `google_redirect` varchar(255) DEFAULT NULL,
  `min_price` double DEFAULT 0,
  `max_price` double DEFAULT 100000,
  `footer_phone` varchar(255) DEFAULT NULL,
  `footer_address` text DEFAULT NULL,
  `footer_email` varchar(255) DEFAULT NULL,
  `footer_gateway_img` varchar(255) DEFAULT NULL,
  `social_link` text DEFAULT NULL,
  `friday_start` varchar(255) DEFAULT NULL,
  `friday_end` varchar(255) DEFAULT NULL,
  `satureday_start` varchar(255) DEFAULT NULL,
  `satureday_end` varchar(255) DEFAULT NULL,
  `copy_right` varchar(255) DEFAULT NULL,
  `is_slider` tinyint(4) DEFAULT 1,
  `is_category` tinyint(4) DEFAULT 1,
  `is_product` tinyint(4) DEFAULT 1,
  `is_top_banner` tinyint(4) DEFAULT 1,
  `is_recent` tinyint(4) DEFAULT 1,
  `is_top` tinyint(4) DEFAULT 1,
  `is_best` tinyint(4) DEFAULT 1,
  `is_flash` tinyint(4) DEFAULT 1,
  `is_brand` tinyint(4) DEFAULT 1,
  `is_blogs` tinyint(4) DEFAULT 1,
  `is_campaign` tinyint(4) DEFAULT 1,
  `is_brands` tinyint(4) DEFAULT 1,
  `is_bottom_banner` tinyint(4) DEFAULT 1,
  `is_service` tinyint(4) DEFAULT 1,
  `campaign_title` varchar(255) DEFAULT NULL,
  `campaign_end_date` varchar(255) DEFAULT NULL,
  `campaign_status` tinyint(4) DEFAULT 1,
  `twilio_sid` varchar(255) DEFAULT NULL,
  `twilio_token` varchar(255) DEFAULT NULL,
  `twilio_form_number` varchar(255) DEFAULT NULL,
  `twilio_country_code` varchar(255) DEFAULT NULL,
  `is_announcement` tinyint(4) DEFAULT 1,
  `announcement` varchar(255) DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT 0.00,
  `is_maintainance` tinyint(4) DEFAULT 1,
  `maintainance_image` varchar(255) DEFAULT NULL,
  `maintainance_text` text DEFAULT NULL,
  `is_twilio` tinyint(4) DEFAULT 0,
  `twilio_section` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_three_c_b_first` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_three_c_b_second` tinyint(4) NOT NULL DEFAULT 1,
  `is_highlighted` tinyint(4) NOT NULL DEFAULT 1,
  `is_two_column_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular_brand` tinyint(4) NOT NULL DEFAULT 1,
  `is_featured_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_two_c_b` tinyint(4) NOT NULL DEFAULT 1,
  `theme` varchar(255) DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `recaptcha` tinyint(4) DEFAULT 0,
  `currency_direction` tinyint(4) DEFAULT 1,
  `google_analytics` text DEFAULT NULL,
  `google_adsense` text DEFAULT NULL,
  `facebook_pixel` text DEFAULT NULL,
  `facebook_messenger` text DEFAULT NULL,
  `is_google_analytics` tinyint(4) DEFAULT 0,
  `is_google_adsense` tinyint(4) DEFAULT 0,
  `is_facebook_pixel` tinyint(4) DEFAULT 0,
  `is_facebook_messenger` tinyint(4) DEFAULT 0,
  `announcement_link` text DEFAULT NULL,
  `is_attribute_search` tinyint(4) DEFAULT 1,
  `is_range_search` tinyint(4) DEFAULT 1,
  `view_product` int(11) DEFAULT 12,
  `home_page_title` varchar(255) DEFAULT 'Home',
  `is_privacy_trams` tinyint(4) DEFAULT 1,
  `policy_link` varchar(255) DEFAULT '''#''',
  `terms_link` varchar(255) DEFAULT '''#''',
  `is_guest_checkout` tinyint(4) DEFAULT 1,
  `custom_css` text DEFAULT NULL,
  `announcement_title` varchar(255) DEFAULT NULL,
  `announcement_type` varchar(255) DEFAULT 'banner',
  `is_cookie` tinyint(4) DEFAULT 1,
  `cookie_text` varchar(255) DEFAULT NULL,
  `announcement_details` text DEFAULT NULL,
  `decimal_separator` varchar(255) DEFAULT '.',
  `thousand_separator` varchar(255) DEFAULT ',',
  `disqus` text DEFAULT NULL,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 0,
  `is_decimal` tinyint(4) DEFAULT 1,
  `order_mail` tinyint(4) NOT NULL DEFAULT 0,
  `ticket_mail` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `favicon`, `loader`, `is_loader`, `feature_image`, `primary_color`, `smtp_check`, `email_host`, `email_port`, `email_encryption`, `email_user`, `email_pass`, `email_from`, `email_from_name`, `contact_email`, `version`, `overlay`, `google_analytics_id`, `meta_keywords`, `meta_description`, `is_shop`, `is_blog`, `is_faq`, `is_contact`, `facebook_check`, `facebook_client_id`, `facebook_client_secret`, `facebook_redirect`, `google_check`, `google_client_id`, `google_client_secret`, `google_redirect`, `min_price`, `max_price`, `footer_phone`, `footer_address`, `footer_email`, `footer_gateway_img`, `social_link`, `friday_start`, `friday_end`, `satureday_start`, `satureday_end`, `copy_right`, `is_slider`, `is_category`, `is_product`, `is_top_banner`, `is_recent`, `is_top`, `is_best`, `is_flash`, `is_brand`, `is_blogs`, `is_campaign`, `is_brands`, `is_bottom_banner`, `is_service`, `campaign_title`, `campaign_end_date`, `campaign_status`, `twilio_sid`, `twilio_token`, `twilio_form_number`, `twilio_country_code`, `is_announcement`, `announcement`, `announcement_delay`, `is_maintainance`, `maintainance_image`, `maintainance_text`, `is_twilio`, `twilio_section`, `created_at`, `updated_at`, `is_three_c_b_first`, `is_popular_category`, `is_three_c_b_second`, `is_highlighted`, `is_two_column_category`, `is_popular_brand`, `is_featured_category`, `is_two_c_b`, `theme`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `recaptcha`, `currency_direction`, `google_analytics`, `google_adsense`, `facebook_pixel`, `facebook_messenger`, `is_google_analytics`, `is_google_adsense`, `is_facebook_pixel`, `is_facebook_messenger`, `announcement_link`, `is_attribute_search`, `is_range_search`, `view_product`, `home_page_title`, `is_privacy_trams`, `policy_link`, `terms_link`, `is_guest_checkout`, `custom_css`, `announcement_title`, `announcement_type`, `is_cookie`, `cookie_text`, `announcement_details`, `decimal_separator`, `thousand_separator`, `disqus`, `is_disqus`, `is_decimal`, `order_mail`, `ticket_mail`) VALUES
(1, 'Pronurse - Medical Equipment', '1722779694logo-pronurse-rem.png', '1722784601icon.png', '1722784644icon.png', 1, '1600622296topic.jpg', '#056CB8', 1, 'hfinvestmentclub.com', '2525', 'SSL', 'ab7d3fde364e5f', 'aac3f52ada3308', 'eshop@hfinvestmentclub.com', 'Pronurse Medical', 'info@hfinvestmentclub.com', '4.0', NULL, 'UA-106757798-1', '', 'Pronurse Medical Online Shopping', 1, 0, 0, 1, 1, '454529170080071', '2232100dff9a2a684c85959c0accf66', 'https://localhost/eshop/auth/facebook/callback', 1, 'wertyrregrre', '33t4ty35y54y', 'http://localhost/eshop/auth/google/callback', 0, 10000, '(+256) 788674576, (+256) 755260500', 'P.0.Box 156277 Kampala', 'info@hfinvestmentclub.com', '1722784491lead.png', '{\"icons\":[\"fab fa-facebook-f\",\"fab fa-twitter\",\"fab fa-youtube\",\"fab fa-linkedin-in\"],\"links\":[\"https:\\/\\/www.facebook.com\",\"https:\\/\\/www.twitter.com\",\"https:\\/\\/www.youtube.com\",\"https:\\/\\/www.linkedin.com\"]}', '9:27 PM', '9:27 PM', '9:27 PM', '9:27 PM', 'Pronurse Medical © All rights reserved.', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Deals Of The Week', '10/10/2022', 1, '4518487ad4e26da8b465a7614f1f0', '300d787df0c398ae46b84b74ea8088', '+256788674576', '+256', 1, '1722782222Add.png', 1.00, 0, '16323327831619241714761747856.jpg', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us \r\nThank you.', 1, '{\"\'purchase\'\":\"Your Order Purchase Successfully. your order number is {order_number}\",\"\'order_status\'\":\"Your Order status update. Order number is {order_number}\"}', NULL, NULL, 1, 1, 1, 1, 1, 0, 1, 1, 'theme1', '6LcnPoEaAAAAAF6QhKPZ8V4744yiEnr41li3SYDn', '6LcnPoEaAAAAACV_xC4jdPqumaYKBnxz9Sj6y0zk', 1, 1, NULL, NULL, NULL, '<!-- Messenger Chat Plugin Code -->\r\n    <div id=\"fb-root\"></div>\r\n\r\n    <!-- Your Chat Plugin code -->\r\n    <div id=\"fb-customer-chat\" class=\"fb-customerchat\">\r\n    </div>\r\n\r\n    <script>\r\n      var chatbox = document.getElementById(\'fb-customer-chat\');\r\n      chatbox.setAttribute(\"page_id\", \"858401617860382\");\r\n      chatbox.setAttribute(\"attribution\", \"biz_inbox\");\r\n      window.fbAsyncInit = function() {\r\n        FB.init({\r\n          xfbml            : true,\r\n          version          : \'v11.0\'\r\n        });\r\n      };\r\n\r\n      (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>', 0, 0, 0, 0, '#', 1, 1, 16, 'Medical Equipment - Online Shopping', 1, 'http://localhost/eshop/privacy-policy', 'http://localhost/eshop/terms-and-service', 1, NULL, 'Get 50% Discount.', 'newletter', 1, 'Your experience on this site will be improved by allowing cookies.', 'With passion, innovation and style, stethoscopes, sphygmomanometers, and reflex hammers have been crafted since 1971.', '.', ',', '<div id=\"disqus_thread\"></div>\r\n<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://omnimart.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_services`
--

CREATE TABLE `shipping_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `minimum_price` double NOT NULL DEFAULT 0,
  `is_condition` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_services`
--

INSERT INTO `shipping_services` (`id`, `title`, `price`, `minimum_price`, `is_condition`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Delevery', 0, 13.513513513514, 1, 1, NULL, NULL),
(2, 'Delivery', 20, 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page` varchar(255) DEFAULT 'theme1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `title`, `link`, `logo`, `details`, `created_at`, `updated_at`, `home_page`) VALUES
(16, '1722761550black-silver-blue.jpg', '50% OFF', '#', NULL, 'Medical Equipment', NULL, NULL, 'theme1'),
(17, '1722761401interior-modern-emergency-roo.jpg', '70% OFF', '#', NULL, 'Medical Equipment', NULL, NULL, 'theme1');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-square', NULL, NULL),
(2, 'https://twitter.com/', 'fab fa-twitter-square', NULL, NULL),
(3, 'https://www.instagram.com/', 'fab fa-instagram', NULL, NULL),
(10, 'https://www.pinterest.com/', 'fab fa-pinterest-square', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Lab Electric Devices', 'Lab-Electric-Devices', 18, 1, NULL, NULL),
(7, 'Animal Cages', 'Animal-Cages', 18, 1, NULL, NULL),
(8, 'Hot Plates', 'Hot-Plates', 18, 1, NULL, NULL),
(9, 'General Instruments', 'General-Instruments', 19, 1, NULL, NULL),
(10, 'Surgical Power Tools', 'Surgical-Power-Tools', 19, 1, NULL, NULL),
(12, 'IV Pole Saline Stands', 'IV-Pole-Saline-Stands', 21, 1, NULL, NULL),
(13, 'Waiting Chairs & Benches', 'Waiting-Chairs---Benches', 21, 1, NULL, NULL),
(15, 'Science Lab Supplies', 'Science-Lab-Supplies', 18, 1, NULL, NULL),
(16, 'Microscopes', 'Microscopes', 18, 1, NULL, NULL),
(17, 'Large Fragment', 'Large-Fragment', 19, 1, NULL, NULL),
(18, 'Implants Removal Set', 'Implants-Removal-Set', 19, 1, NULL, NULL),
(19, 'Blood Donor Chairs', 'Blood-Donor-Chairs', 21, 1, NULL, NULL),
(20, 'Examination Table', 'Examination-Table', 21, 1, NULL, NULL),
(21, 'Bedside Cabinets', 'Bedside-Cabinets', 21, 1, NULL, NULL),
(22, 'Plain Hospital Beds', 'Plain-Hospital-Beds', 21, 1, NULL, NULL),
(23, 'Duvet covers', 'Duvet-covers', 22, 1, NULL, NULL),
(24, 'Pique blankets', 'Pique-blankets', 22, 1, NULL, NULL),
(25, 'Towels', 'Towels', 22, 1, NULL, NULL),
(26, 'Surgical towels', 'Surgical-towels', 22, 1, NULL, NULL),
(27, 'Bed Sheets', 'Bed-Sheets', 22, 1, NULL, NULL),
(28, 'Wound Treatment', 'Wound-Treatment', 23, 1, NULL, NULL),
(29, 'Hartmann dressings', 'Hartmann-dressings', 23, 1, NULL, NULL),
(30, 'Stethoscopes and scrubs', 'Stethoscopes-and-scrubs', 27, 1, NULL, NULL),
(31, 'MDF Stethoscopes', 'MDF-Stethoscopes', 27, 1, NULL, NULL),
(32, '3M Littmann Stethoscopes', '3M-Littmann-Stethoscopes', 27, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'High Tax', 2, 1, NULL, NULL),
(2, 'Low Tax', 1, 1, NULL, NULL),
(3, 'No Tax', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `message`, `file`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'I need help', 'I need help', NULL, 1, NULL, '2021-12-03 06:32:39', '2021-12-03 06:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `track_orders`
--

CREATE TABLE `track_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_orders`
--

INSERT INTO `track_orders` (`id`, `order_id`, `title`, `created_at`, `updated_at`) VALUES
(176, 318, 'Pending', '2021-09-12 06:07:09', '2021-09-12 06:07:09'),
(177, 1, 'Pending', '2021-09-13 07:11:25', '2021-09-13 07:11:25'),
(178, 22, 'Pending', '2021-09-13 09:13:48', '2021-09-13 09:13:48'),
(179, 22, 'Pending', '2021-09-13 09:14:34', '2021-09-13 09:14:34'),
(180, 23, 'Pending', '2021-09-13 09:15:09', '2021-09-13 09:15:09'),
(182, 25, 'Pending', '2021-09-13 09:22:56', '2021-09-13 09:22:56'),
(187, 30, 'Pending', '2021-09-18 08:44:06', '2021-09-18 08:44:06'),
(300, 122, 'Pending', '2022-01-16 09:37:45', '2022-01-16 09:37:45'),
(301, 123, 'Pending', '2022-01-16 10:00:15', '2022-01-16 10:00:15'),
(302, 124, 'Pending', '2022-01-16 10:03:35', '2022-01-16 10:03:35'),
(303, 125, 'Pending', '2022-01-16 10:08:36', '2022-01-16 10:08:36'),
(304, 126, 'Pending', '2022-01-16 11:31:41', '2022-01-16 11:31:41'),
(305, 127, 'Pending', '2022-01-16 11:33:57', '2022-01-16 11:33:57'),
(306, 128, 'Pending', '2022-01-16 11:36:51', '2022-01-16 11:36:51'),
(307, 129, 'Pending', '2022-01-16 11:40:48', '2022-01-16 11:40:48'),
(308, 129, 'In Progress', '2022-01-17 03:59:09', '2022-01-17 03:59:09'),
(309, 129, 'Delivered', '2022-01-17 03:59:09', '2022-01-17 03:59:09'),
(310, 128, 'In Progress', '2022-01-17 03:59:15', '2022-01-17 03:59:15'),
(311, 128, 'Delivered', '2022-01-17 03:59:15', '2022-01-17 03:59:15'),
(312, 127, 'In Progress', '2022-01-17 03:59:21', '2022-01-17 03:59:21'),
(313, 127, 'Delivered', '2022-01-17 03:59:21', '2022-01-17 03:59:21'),
(314, 126, 'In Progress', '2022-01-17 03:59:27', '2022-01-17 03:59:27'),
(315, 126, 'Delivered', '2022-01-17 03:59:27', '2022-01-17 03:59:27'),
(316, 125, 'In Progress', '2022-02-28 08:24:36', '2022-02-28 08:24:36'),
(317, 130, 'Pending', '2022-03-01 10:10:39', '2022-03-01 10:10:39'),
(318, 131, 'Pending', '2022-03-02 02:15:49', '2022-03-02 02:15:49'),
(319, 132, 'Pending', '2022-03-02 02:18:08', '2022-03-02 02:18:08'),
(320, 131, 'In Progress', '2024-05-22 17:10:53', '2024-05-22 17:10:53'),
(321, 131, 'Delivered', '2024-05-22 17:10:53', '2024-05-22 17:10:53'),
(322, 131, 'Canceled', '2024-05-22 17:10:53', '2024-05-22 17:10:53'),
(323, 133, 'Pending', '2024-06-10 14:11:08', '2024-06-10 14:11:08'),
(324, 133, 'In Progress', '2024-06-10 14:13:20', '2024-06-10 14:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `user_email` varchar(255) DEFAULT NULL,
  `currency_sign` varchar(255) DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `txn_id`, `amount`, `user_email`, `currency_sign`, `currency_value`, `created_at`, `updated_at`) VALUES
(101, '133', 'ORD-20240610-133', 146.1783, 'admin@gmail.com', 'UGX', 3700, '2024-06-10 14:11:08', '2024-06-10 14:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email_token` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ship_address1` varchar(255) DEFAULT NULL,
  `ship_address2` varchar(255) DEFAULT NULL,
  `ship_zip` varchar(255) DEFAULT NULL,
  `ship_city` varchar(255) DEFAULT NULL,
  `ship_country` varchar(255) DEFAULT NULL,
  `ship_company` varchar(255) DEFAULT NULL,
  `bill_address1` varchar(255) DEFAULT NULL,
  `bill_address2` varchar(255) DEFAULT NULL,
  `bill_zip` varchar(255) DEFAULT NULL,
  `bill_city` varchar(255) DEFAULT NULL,
  `bill_country` varchar(255) DEFAULT NULL,
  `bill_company` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `photo`, `email_token`, `password`, `ship_address1`, `ship_address2`, `ship_zip`, `ship_city`, `ship_country`, `ship_company`, `bill_address1`, `bill_address2`, `bill_zip`, `bill_city`, `bill_country`, `bill_company`, `created_at`, `updated_at`, `state_id`) VALUES
(1, 'Mugisha', 'Alex', '7886745764', 'user@gmail.com', '16385217454444.jpg', NULL, '$2y$10$qf/qVSF0fntye0bq.JvWleH5SdMfGNkGxPrGVvAGmxl/efqoeAHv.', '472 Clark Street,  Bay Shore, New York', NULL, '3444', 'New York', 'United States', NULL, '472 Clark Street,  Bay Shore, New York', NULL, '3444', 'New York', 'United States', NULL, '2021-09-13 07:08:04', '2024-05-22 17:06:23', NULL),
(9, 'Ainedembe', 'Denis', '788674576', 'dembedenisjb@gmail.com', NULL, 'D7wwBS', '$2y$10$4Iq.RMYPCWtrkaRXWBED6u/FxhIgZcH/n2vLEafmllBDRAokQDVxO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-22 12:30:08', '2024-05-22 12:30:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 1, 587, NULL, NULL),
(2, 1, 525, NULL, NULL),
(3, 1, 540, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_items`
--
ALTER TABLE `campaign_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chield_categories`
--
ALTER TABLE `chield_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_settings`
--
ALTER TABLE `extra_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcategories`
--
ALTER TABLE `fcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_services`
--
ALTER TABLE `shipping_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_orders`
--
ALTER TABLE `track_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1265;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `campaign_items`
--
ALTER TABLE `campaign_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `chield_categories`
--
ALTER TABLE `chield_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `extra_settings`
--
ALTER TABLE `extra_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `fcategories`
--
ALTER TABLE `fcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_services`
--
ALTER TABLE `shipping_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `track_orders`
--
ALTER TABLE `track_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
