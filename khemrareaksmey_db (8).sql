-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2018 at 05:18 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khemrareaksmey_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kh_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `en_description` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `kh_description` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kh_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `en_name`, `kh_name`, `image`, `is_deleted`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Stationery', 'សម្ភារៈការិយាល័យ', '1530015993.jpg', 0, 2, 2, NULL, '2018-06-25 00:31:14', '2018-06-26 05:26:33', NULL),
(2, 'Book', 'សៀភៅ', '1530016211.jpg', 0, 2, 2, NULL, '2018-06-25 01:35:39', '2018-06-26 05:30:11', NULL),
(3, 'Gifts', 'អំណោយ', '1530016148.jpg', 0, 2, 2, NULL, '2018-06-25 01:48:57', '2018-06-26 05:29:08', NULL),
(4, 'Toys', 'ប្រដាប់ក្មេងលេង', '1530016058.jpg', 0, 2, 2, 5, '2018-06-25 01:49:18', '2018-08-22 19:23:56', '2018-08-22 19:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `page` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_required` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED DEFAULT '0',
  `height` int(10) UNSIGNED DEFAULT '0',
  `editor_required` tinyint(1) NOT NULL DEFAULT '0',
  `updater_id` int(10) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `page`, `slug`, `kh_name`, `en_name`, `kh_content`, `en_content`, `note`, `image_required`, `image`, `width`, `height`, `editor_required`, `updater_id`, `created_at`, `updated_at`) VALUES
(4, 'About Us', 'about-us', 'Company Profile', 'Company Profile', '<strong style=\"margin-bottom: 20px; display: block; color: rgb(51, 51, 51); font-family: Lato, sans-serif;\">តាមរយះសាវតារបសើបណ្ណាគារខេមរារស្មី ពិតជាបានបេ្តជ្ញាចិត្តក្នុងការចូលរួម ចំណែក្នុងកាអភិវឌ្ឍន៍ វិស័យពាណិជ្ជកម្មពិតប្រកដ។ Kbs បានរៀបចំអោយមានក្របខ័ណ្ឌការងារគ្រប់គ្រង គោលដៅពាណិជ្ជកម្មរបសើខ្លួនអោយបានគ្រប់ជ្រុងជ្រោយដែលធានាថា KBC និងបន្តរផ្តោតទៅលើសកម្មភាពរបស់ខ្លួនជានិច្ចក្នុងការជួយដល់ប្រជាពលរដ្ឋ និងវិស័យ ពាណិជ្ជកម្មជាច្រើន ។ គិតត្រឹម ចុងឆ្នាំ ២០១៧ ជាង២០នាក់។ ផ្តើមចេញពី Shop ខ្នាតតូច ការចាប់កំណើតរបស់បណ្ណារគារ ខេមរារស្មី KBC នៅក្នុងឆ្នាំ ២០១២ ដោយសាប្រត្តិបត្តការមានការរីកចម្រើន ក្នុងឆ្នាំ ២០១៤ បានជា ក្រុមហ៊ុន បណ្ណាគារ ខេមរារស្មី មានអតិថិជនមានអតិថិជនជាច្រើន ។</strong>', '<div>Through the background, the Khemara Reaksmei Bookshop is truly committed to contributing to the real business development. Kbs has developed a comprehensive business management framework that ensures that KBC will continue to focus on its activities to help people and the business sector. By the end of 2017, more than 20 people. Starting from Small Shop The birth of Khemarak Rasmei KBC in 2012 With the development of 2014, Khemara Reaksmey Bookstore has many clients.</div>', '', 0, '', 0, 0, 1, 1, NULL, '2018-06-22 20:36:11'),
(5, 'General', 'address', 'Address', 'Address', '#42B Russia Federation Blvd, Tek Thla, Khan SenSok, Phnom Penh', '#42B Russia Federation Blvd, Tek Thla, Khan SenSok, Phnom Penh', '', 0, '', 0, 0, 0, 1, NULL, NULL),
(6, 'General', 'phone', 'Phone', 'Phone', '012 891 522 , 012 702 122', '012 891 522 , 012 702 122', '', 0, '', 0, 0, 0, 1, NULL, '2018-08-13 09:10:12'),
(7, 'General', 'email', 'Email', 'Email', 'contact@khmemaraksmey.com', 'contact@khmemaraksmey.com', '', 0, '', 0, 0, 0, 1, NULL, '2018-08-13 09:09:16'),
(8, 'General', 'slogan', 'Slogan', 'Slogan', 'យើងផ្តល់ជូននូវផលិតផលដែលមានគុណភាពសម្ភារៈអប់រំនិងសម្ភារៈការិយាល័យសម្រាប់អតិថិជនដែលគាំទ្រកាតាឡុករបស់យើង។', 'We provide quality products, educational materials and office supplies for customers who support our catalog.', '', 0, '', 0, 0, 0, 1, NULL, '2018-08-13 09:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT '1',
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `image`, `password`, `address`, `location`, `remember_token`, `is_phone_verified`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Yoeun SAthya', '012345675', 'system3@camcyber.com', 'public/user/img/ppl.png', '$2y$10$XnENZn9zQXF9k91OgkyTLeiHCpPLJHVU89B6eJHmDHDKDfI0qpP4K', 'Phnom Penh', 'Phnom Penh', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'tonon', '070454047', 'yoeunsathya4@gmail.com', '1534405673.jpg', '$2y$10$/1z3Q2xp/WZ2Wjeu.6nGC.UFWBgvukEuxhW7oiObxz5Lf0zaJ0eMm', 'Phnom Penh, Tekthla, Phnom Penh, Cambodia', 'Phnom penh', 'lW4QEsSWnMQF9ZMBuvR9uvZQA0sgODflPrgg7KRciC1scXNqkcvHkrdIGxcJ', 1, NULL, NULL, NULL, '2018-06-24 23:07:46', '2018-08-16 00:48:29', NULL),
(3, 'kouen', '0965416704', 'koeun@camcyber.com', '', '$2y$10$hVkoirNh29S9clULowZJNOm3OHEoNVjzdvU3xDuOMmshbbzMHa/xi', '', '', NULL, 1, NULL, NULL, NULL, '2018-07-11 04:00:10', '2018-07-11 04:00:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_logs`
--

CREATE TABLE `customer_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `broswer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_logs`
--

INSERT INTO `customer_logs` (`id`, `customer_id`, `ip`, `os`, `broswer`, `version`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 04:24:24', '2018-07-06 04:24:24', NULL),
(2, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 04:25:50', '2018-07-06 04:25:50', NULL),
(3, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 04:26:21', '2018-07-06 04:26:21', NULL),
(4, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 04:28:25', '2018-07-06 04:28:25', NULL),
(5, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 05:08:11', '2018-07-06 05:08:11', NULL),
(6, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-09 03:47:54', '2018-07-09 03:47:54', NULL),
(7, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-09 08:28:24', '2018-07-09 08:28:24', NULL),
(8, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-09 08:43:20', '2018-07-09 08:43:20', NULL),
(9, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-09 08:46:13', '2018-07-09 08:46:13', NULL),
(10, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-09 08:56:54', '2018-07-09 08:56:54', NULL),
(11, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-10 09:38:31', '2018-07-10 09:38:31', NULL),
(12, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 02:51:34', '2018-07-11 02:51:34', NULL),
(13, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 03:41:15', '2018-07-11 03:41:15', NULL),
(14, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 03:42:46', '2018-07-11 03:42:46', NULL),
(15, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 03:46:44', '2018-07-11 03:46:44', NULL),
(16, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 03:47:38', '2018-07-11 03:47:38', NULL),
(17, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 03:48:01', '2018-07-11 03:48:01', NULL),
(18, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 03:48:30', '2018-07-11 03:48:30', NULL),
(19, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 03:49:19', '2018-07-11 03:49:19', NULL),
(20, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 03:57:12', '2018-07-11 03:57:12', NULL),
(21, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 03:57:50', '2018-07-11 03:57:50', NULL),
(22, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 03:58:19', '2018-07-11 03:58:19', NULL),
(23, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 04:18:33', '2018-07-11 04:18:33', NULL),
(24, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 04:19:43', '2018-07-11 04:19:43', NULL),
(25, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 04:22:23', '2018-07-11 04:22:23', NULL),
(26, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 04:22:31', '2018-07-11 04:22:31', NULL),
(27, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 10:13:36', '2018-07-11 10:13:36', NULL),
(28, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-16 08:49:32', '2018-07-16 08:49:32', NULL),
(29, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-17 01:35:07', '2018-07-17 01:35:07', NULL),
(30, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-17 02:42:00', '2018-07-17 02:42:00', NULL),
(31, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-17 05:59:11', '2018-07-17 05:59:11', NULL),
(32, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-17 07:46:11', '2018-07-17 07:46:11', NULL),
(33, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-18 09:15:07', '2018-07-18 09:15:07', NULL),
(34, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-23 00:57:59', '2018-07-23 00:57:59', NULL),
(35, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-23 03:03:18', '2018-07-23 03:03:18', NULL),
(36, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-23 03:10:54', '2018-07-23 03:10:54', NULL),
(37, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-24 10:36:11', '2018-07-24 10:36:11', NULL),
(38, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-25 02:00:51', '2018-07-25 02:00:51', NULL),
(39, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-25 02:52:33', '2018-07-25 02:52:33', NULL),
(40, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-31 17:58:40', '2018-07-31 17:58:40', NULL),
(41, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-01 05:36:53', '2018-08-01 05:36:53', NULL),
(42, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-02 01:55:23', '2018-08-02 01:55:23', NULL),
(43, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-06 02:03:21', '2018-08-06 02:03:21', NULL),
(44, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-06 02:06:54', '2018-08-06 02:06:54', NULL),
(45, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-07 02:23:17', '2018-08-07 02:23:17', NULL),
(46, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-11 09:21:40', '2018-08-11 09:21:40', NULL),
(47, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-13 07:18:26', '2018-08-13 07:18:26', NULL),
(48, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-13 08:07:49', '2018-08-13 08:07:49', NULL),
(49, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-13 21:59:13', '2018-08-13 21:59:13', NULL),
(50, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-16 00:46:35', '2018-08-16 00:46:35', NULL),
(51, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-20 20:01:31', '2018-08-20 20:01:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_password_resets`
--

CREATE TABLE `customer_password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_product_favorites`
--

CREATE TABLE `customer_product_favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `is_favorited` tinyint(4) NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_product_favorites`
--

INSERT INTO `customer_product_favorites` (`id`, `customer_id`, `product_id`, `is_favorited`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 9, 1, NULL, NULL, NULL, '2018-07-23 01:39:07', NULL, NULL),
(3, 2, 5, 1, NULL, NULL, NULL, '2018-07-23 01:56:47', NULL, NULL),
(4, 2, 2, 1, NULL, NULL, NULL, '2018-07-23 01:57:04', NULL, NULL),
(5, 2, 10, 1, NULL, NULL, NULL, '2018-07-23 02:11:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_verify_codes`
--

CREATE TABLE `customer_verify_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_verify_codes`
--

INSERT INTO `customer_verify_codes` (`id`, `customer_id`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '1624237548', '2018-06-24 23:07:46', '2018-06-24 23:07:46', NULL),
(2, 2, '1099264901', '2018-07-06 04:05:07', '2018-07-06 04:05:07', NULL),
(3, 2, '1510178927', '2018-07-06 04:05:53', '2018-07-06 04:05:53', NULL),
(4, 2, '894070991', '2018-07-06 04:06:25', '2018-07-06 04:06:25', NULL),
(5, 2, '2114432375', '2018-07-06 04:25:12', '2018-07-06 04:25:12', NULL),
(6, 3, '1170912729', '2018-07-11 04:00:10', '2018-07-11 04:00:10', NULL),
(7, 2, '363584559', '2018-08-01 05:43:22', '2018-08-01 05:43:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `phone`, `email`, `subject`, `message`, `is_deleted`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'tonon', '0965416775', 'yoeunsathya4@gmail.com', NULL, 'sdfas', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'tonon', '0932273432', 'yoeunsathya4@gmail.com', NULL, 'awsda', 0, NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, '2014_10_12_100000_create_permisions_table', 1),
(2, '2014_10_12_100001_create_positions_table', 1),
(3, '2014_10_12_100002_create_users_table', 1),
(4, '2014_10_12_100200_create_password_resets_table', 1),
(5, '2014_10_12_100200_create_user_logs_table', 1),
(6, '2014_10_12_200002_create_customers_table', 1),
(7, '2014_10_12_200200_create_customer_logs_table', 1),
(8, '2014_10_12_200200_create_customer_password_resets_table', 1),
(9, '2014_10_12_200200_create_customer_verify_codes_table', 1),
(10, '2014_10_12_300000_create_announcements _table', 1),
(11, '2014_10_12_300000_create_messages_table', 1),
(12, '2014_10_12_300000_create_news_table', 1),
(13, '2014_10_12_300000_create_promotions_table', 1),
(14, '2014_10_12_300000_create_slides_table', 1),
(15, '2014_10_12_400000_create_categories_table', 1),
(16, '2014_10_12_400000_create_sub_categories_table', 1),
(17, '2014_10_12_400001_create_sub_sub_categories_table', 1),
(18, '2014_10_12_400100_create_products_table', 1),
(19, '2014_10_12_600000_create_customer_product_favorites_table', 1),
(20, '2014_10_12_600000_create_orders_table', 1),
(21, '2014_10_12_600200_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kh_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `en_description` varchar(550) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kh_description` varchar(550) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `en_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_detail` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `en_title`, `kh_title`, `slug`, `en_description`, `kh_description`, `en_content`, `kh_content`, `image`, `image_detail`, `is_deleted`, `is_published`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cambodian Schools To Teach Financial Literacy', 'សាលាកម្ពុជាដើម្បីបង្រៀនអក្ខរកម្មផ្នែកហិរញ្ញវត្ថុ', '5-cambodian-schools-to-teach-financial-literacy', 'Financial literacy as a school subject to increase students’ knowledge about money will be introduced nationwide through the first phase of the Cambodian School Curriculum Project, with the Ministry of Education collaborating with the National Bank of Cambodia, Asian Development Bank, Good Return and the World Education Cambodia.', 'ចំណេះដឹងផ្នែកហិរញ្ញវត្ថុជាសាលាដែលបង្កើនចំណេះដឹងរបស់និស្សិតអំពីប្រាក់នឹងត្រូវបានដាក់បញ្ចូលទូទាំងប្រទេសតាមរយៈដំណាក់កាលដំបូងនៃគម្រោងកម្មវិធីសិក្សានៅកម្ពុជាដោយក្រសួងអប់រំបានសហការជាមួយធនាគារជាតិនៃកម្ពុជាធនាគារអភិវឌ្ឍន៍អាស៊ីការវិលត្រឡប់មកវិញនិងពិភពលោក ការអប់រំកម្ពុជា។', '<p class=\"p3\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);\">NBC director general Chea Serey said yesterday that the first step in the project would be developing a national curriculum for schools to teach the subject and added that the central bank and the ministry, together with all stakeholders would work together to develop it.</p><p class=\"p3\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);\"><span class=\"s1\">“Young people today face more challenging financial choices given the rapid socio-economic transformation that the country is undergoing. They need the skills, training and tools to make the right decisions affecting their financial well-being, and also that of their families,” Serey told a technical workshop on education organised by the ministry.</span></p><p class=\"p3\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);\"><span class=\"s1\">Serey said that the inclusion of financial literacy as a school subject was in the government’s Financial Development Strategy 2016-2025. </span><span class=\"s1\">“The NBC and the Ministry of Education have established a Financial Literacy Working Group, with the support from Good Return, World Education Cambodia and the Asian Development Bank to review the existing formal education curriculum for students in public schools and identify specific areas where financial education could be included,” she added.</span></p><p class=\"p3\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);\"><span class=\"s1\">“Financial literacy performance is strongly correlated with performance in mathematics and reading.<span class=\"Apple-converted-space\">  </span>Students should be helped to make the most of what they learn in subjects taught in compulsory education, which could also be complemented with more specific financial literacy content.”</span></p><p class=\"p3\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);\"><span class=\"s1\">Mok Sarom, deputy director general of the directorate general of education at the Ministry of Education, said the ministry welcomed the collaboration between the NBC, ADB, Good Return and World Education Cambodia to include financial literacy in the national school curriculum.</span></p><p class=\"p3\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);\"><span class=\"s1\">“Financial literacy will help young people manage their finances. Young people are now more likely to encounter situations where they need to set their spending priorities, be aware of new types of fraud, know that some items that they want to buy will incur ongoing costs,” he said. </span><span class=\"s1\">“We need them to be financially savvy at a young age and for that reason we will be starting to teach financial literacy at primary school-level,” he added.</span></p><p class=\"p3\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);\"><span class=\"s1\">Hiroyuki Aoki, the financial sector specialist at ADB’s Southeast Asia department, said that financial education could be viewed as a capacity building process over an individual’s lifetime, which results in improved financial literacy and well-being.</span></p><p class=\"p3\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; word-wrap: break-word; color: rgb(34, 34, 34);\"><span class=\"s2\">“There are significant potential gains to be realised by including financial literacy in the national school curriculum and we will focus on the inclusive financing of the Cambodian School Curriculum Project to promote the subject in schools nationwide,” said Aoki.</span></p>', '<div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">លោកជាសេរីអគ្គនាយកធនាគារជាតិនៃកម្ពុជាបានឱ្យដឹងកាលពីម្សិលមិញថាជំហានដំបូងក្នុងគម្រោងនេះនឹងអភិវឌ្ឍកម្មវិធីសិក្សាថ្នាក់ជាតិសម្រាប់សាលារៀនដើម្បីបង្រៀនមុខវិជ្ជានេះហើយបានបន្ថែមថាធនាគារកណ្តាលនិងក្រសួងរួមជាមួយភាគីពាក់ព័ន្ធទាំងអស់នឹងធ្វើការរួមគ្នាដើម្បីអភិវឌ្ឍវា។</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">\"ថ្ងៃនេះមនុស្សវ័យក្មេងប្រឈមនឹងការសម្រេចចិត្តហិរញ្ញវត្ថុច្រើនដែលផ្តល់ឱ្យមានការផ្លាស់ប្តូរសេដ្ឋកិច្ចសង្គមយ៉ាងឆាប់រហ័សដែលប្រទេសកំពុងជួបប្រទះ។ ពួកគេត្រូវការជំនាញការបណ្តុះបណ្តាលនិងឧបករណ៍ដើម្បីធ្វើការសម្រេចចិត្តត្រឹមត្រូវដែលប៉ះពាល់ដល់សុខុមាលភាពហិរញ្ញវត្ថុរបស់ពួកគេនិងគ្រួសាររបស់ពួកគេផងដែរ។ លោកសៀបានប្រាប់សិក្ខាសាលាបច្ចេកទេសស្តីពីការអប់រំដែលរៀបចំដោយក្រសួង។</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">លោកស្រីបានមានប្រសាសន៍ថាការបញ្ចូលអក្ខរកម្មហិរញ្ញវត្ថុជាប្រធានបទក្នុងសាលារៀនគឺស្ថិតនៅក្នុងយុទ្ធសាស្ត្រអភិវឌ្ឍន៍ហិរញ្ញវត្ថុរបស់រដ្ឋាភិបាល 2016-2025 ។ NBC និងក្រសួងអប់រំបានបង្កើតក្រុមការងារផ្នែកអក្ខរកម្មផ្នែកហិរញ្ញវត្ថុដោយមានការគាំទ្រពីអង្គការ Good Return អង្គការអប់រំពិភពលោកនិងធនាគារអភិវឌ្ឍន៍អាស៊ីដើម្បីពិនិត្យឡើងវិញនូវកម្មវិធីសិក្សាផ្លូវការដែលមានស្រាប់សម្រាប់សិស្សានុសិស្សនៅតាមសាលារៀនសាធារណៈនិងកំណត់តំបន់ជាក់លាក់ដែលការអប់រំផ្នែកហិរញ្ញវត្ថុ អាចត្រូវបានបញ្ចូល \"។</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">\"ការអនុវត្តអក្ខរភាពផ្នែកហិរញ្ញវត្ថុមានទំនាក់ទំនងយ៉ាងខ្លាំងជាមួយនឹងការអនុវត្តផ្នែកគណិតវិទ្យានិងការអាន។ សិស្សគួរត្រូវបានគេជួយដើម្បីទទួលបានអត្ថប្រយោជន៍ច្រើនបំផុតពីអ្វីដែលពួកគេបានរៀននៅក្នុងមុខវិជ្ជាដែលត្រូវបង្រៀននៅក្នុងវិស័យអប់រំជាកាតព្វកិច្ចដែលអាចបំពេញបន្ថែមជាមួយនឹងអក្ខរកម្មហិរញ្ញវត្ថុជាក់លាក់បន្ថែមទៀត។ \"</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">លោកមុមសារុំអគ្គនាយករងនៃអគ្គនាយកអប់រំនៃក្រសួងអប់រំយុវជននិងអប់រំបានមានប្រសាសន៍ថាក្រសួងការបរទេសបានស្វាគមន៍ការសហការគ្នារវាងធនាគារជាតិនៃកម្ពុជាធនាគារអភិវឌ្ឍន៍អាស៊ីនិងអង្គការអប់រំពិភពលោកដើម្បីរួមបញ្ចូលចំណេះដឹងផ្នែកហិរញ្ញវត្ថុនៅក្នុងកម្មវិធីសិក្សាថ្នាក់ជាតិ។</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">\"អក្ខរភាពផ្នែកហិរញ្ញវត្ថុនឹងជួយយុវជនក្នុងការគ្រប់គ្រងហិរញ្ញវត្ថុរបស់ពួកគេ។ ប្រជាជនវ័យក្មេងច្រើនតែប្រឈមមុខនឹងស្ថានភាពដែលពួកគេត្រូវកំណត់អាទិភាពចំណាយរបស់ពួកគេត្រូវដឹងពីប្រភេទនៃការក្លែងបន្លំថ្មីៗដឹងថាធាតុមួយចំនួនដែលពួកគេចង់ទិញនឹងទទួលរងការចំណាយជាបន្តបន្ទាប់ \"។ លោកបានបន្ថែមថា: «យើងត្រូវការពួកគេឱ្យមានបទពិសោធផ្នែកហិរញ្ញវត្ថុនៅពេលវ័យក្មេងហើយដោយហេតុនេះហើយយើងនឹងចាប់ផ្ដើមបង្រៀនអក្ខរកម្មហិរញ្ញវត្ថុនៅកម្រិតបឋមសិក្សា»។</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">លោក Hiroyuki Aoki អ្នកឯកទេសខាងផ្នែកហិរញ្ញវត្ថុនៅនាយកដ្ឋានអាស៊ីអាគ្នេយ៍របស់ ADB បានមានប្រសាសន៍ថាការអប់រំហិរញ្ញវត្ថុអាចត្រូវបានចាត់ទុកថាជាដំណើរការកសាងសមត្ថភាពលើជីវិតរបស់បុគ្គលម្នាក់ៗដែលនាំឱ្យមានអក្សរសិល្ប៍ហិរញ្ញវត្ថុនិងសុខុមាលភាពកាន់តែប្រសើរឡើង។</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">លោក Aoki បានមានប្រសាសន៍ថា \"មានសក្តានុពលគួរឱ្យកត់សម្គាល់ជាច្រើនដែលត្រូវបានសម្រេចដោយរួមបញ្ចូលទាំងការចេះអក្សរផ្នែកហិរញ្ញវត្ថុនៅក្នុងកម្មវិធីសិក្សារបស់សាលាជាតិហើយយើងនឹងផ្តោតលើការផ្តល់ហិរញ្ញប្បទានបញ្ចូលគ្នានៃគម្រោងកម្មវិធីសិក្សានៅកម្ពុជាដើម្បីលើកកម្ពស់មុខវិជ្ជានៅតាមសាលារៀននៅទូទាំងប្រទេស។</span></font></div>', '1529256378.jpg', '1529256379.jpg', 0, 1, 2, 2, 2, '2018-06-15 19:24:29', '2018-07-05 07:31:03', '2018-07-05 07:29:53'),
(2, 'Cambodian Girls, in Silicon Valley, Inspire a New Generation of Tech Enthusiasts', 'ក្មេងស្រីកម្ពុជានៅក្នុងជ្រលងភ្នំស៊ីលីឡូនបានបំផុសគំនិតអ្នកជំនាន់ថ្មី', 'cambodian-girls-in-silicon-valley-inspire-a-new-generation-of-tech-enthusiasts', 'A group of Cambodian girls have competed in the finals of a global mobile app competition at Google’s headquarters in Silicon Valley, and despite not claiming the top prize, their success provides much-needed inspiration for other young Cambodians to consider entering Cambodia’s nascent tech sector.', 'ក្រុមក្មេងស្រីកម្ពុជាមួយក្រុមបានប្រកួតប្រជែងក្នុងការប្រកួតប្រជែងកម្មវិធីទូរស័ព្ទទូទាំងពិភពលោកនៅឯទីស្នាក់ការកណ្តាលរបស់ Google នៅតំបន់ Silicon Valley ហើយទោះបីជាមិនទទួលបានរង្វាន់កំពូលក៏ដោយក៏ជោគជ័យរបស់ពួកគេផ្តល់នូវការបំផុសគំនិតដែលត្រូវការចាំបាច់ដល់យុវជនកម្ពុជាដទៃទៀតដើម្បីពិចារណាចូលក្នុងវិស័យបច្ចេកវិទ្យាថ្មីៗរបស់កម្ពុជា។', '<div><span style=\"font-weight: bold; font-size: 1rem;\">A group of Cambodian girls have competed in the finals of a global mobile app competition at Google’s headquarters in Silicon Valley, and despite not claiming the top prize, their success provides much-needed inspiration for other young Cambodians to consider entering Cambodia’s nascent tech sector.</span><br></div><div><div id=\"article-content\" class=\"content-floated-wrap fb-quotable\" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\" style=\"box-sizing: inherit; color: rgb(34, 34, 34);\"><div class=\"wsw\" style=\"box-sizing: inherit; padding-bottom: 18px;\"><span class=\"dateline\" style=\"box-sizing: inherit; text-transform: uppercase; float: left;\">SILICON VALLEY — </span><p style=\"box-sizing: inherit; margin-bottom: 36px;\">Their pitch wasn’t a bid to be the next billion-dollar company, but rather to help craftspeople in Cambodia access international markets.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">“Let’s fight poverty by using our app. Don’t find customers for your product, find products for your customers,” says Lom Dara Soucheng, 12 who led the team that created “Cambodia Identity Product”.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">“We want to increase employment for Cambodians,” Chea Sopheata, 11, told the judges, “so there will be a reduction in Cambodians migrating to work in other countries, reducing poverty through making income and providing charity to local Cambodians.”</p><p style=\"box-sizing: inherit; margin-bottom: 36px;\">To make it to the <a class=\"wsw__a\" href=\"http://technovationchallenge.org/world-pitch/\" target=\"_blank\" style=\"box-sizing: inherit; padding-bottom: 0.05em; color: rgb(12, 31, 121); overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; border-bottom: 1px solid rgb(226, 226, 226);\">August 7 - 11 Technovation</a> competition, the girls had to build a mobile app, and create a business plan, that addressed at least one of the U.N. Development Goals.</p></div></div></div>', '<div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">ក្រុមក្មេងស្រីកម្ពុជាមួយក្រុមបានប្រកួតប្រជែងក្នុងការប្រកួតប្រជែងកម្មវិធីទូរស័ព្ទទូទាំងពិភពលោកនៅឯទីស្នាក់ការកណ្តាលរបស់ Google នៅតំបន់ Silicon Valley ហើយទោះបីជាមិនទទួលបានរង្វាន់កំពូលក៏ដោយក៏ជោគជ័យរបស់ពួកគេផ្តល់នូវការបំផុសគំនិតដែលត្រូវការចាំបាច់ដល់យុវជនកម្ពុជាដទៃទៀតដើម្បីពិចារណាចូលក្នុងវិស័យបច្ចេកវិទ្យាថ្មីៗរបស់កម្ពុជា។</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">ស៊ីល្យុងវ៉លឡេ -</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">ទីលានរបស់ពួកគេមិនមែនជាការដេញថ្លៃដើម្បីក្លាយជាក្រុមហ៊ុនដែលមានប្រាក់រាប់ពាន់លានដុល្លារនោះទេប៉ុន្តែដើម្បីជួយដល់សិប្បករនៅកម្ពុជាឱ្យទទួលបានទីផ្សារអន្តរជាតិ។</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">\"ចូរយើងប្រយុទ្ធប្រឆាំងនឹងភាពក្រីក្រដោយប្រើកម្មវិធីរបស់យើង។ អ្នកស្រីឡូមដារ៉ាស៊ូចេងអាយុ 12 ឆ្នាំដែលដឹកនាំក្រុមការងារដែលបង្កើត \"ផលិតផលអត្តសញ្ញាណនៅកម្ពុជា\" បាននិយាយថា \"កុំស្វែងរកអតិថិជនសម្រាប់ផលិតផលរបស់អ្នកស្វែងរកផលិតផលសម្រាប់អតិថិជនរបស់អ្នក\" ។</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">លោកជាសុភាតាអាយុ 11 ឆ្នាំបានប្រាប់ចៅក្រមថា: «យើងចង់បង្កើនការងារដល់ប្រជាជនកម្ពុជា»ដូច្នេះនឹងមានការកាត់បន្ថយពលករខ្មែរទៅធ្វើការនៅប្រទេសផ្សេងកាត់បន្ថយភាពក្រីក្រតាមរយៈការរកប្រាក់ចំណូលនិងផ្តល់សប្បុរសធម៌ដល់ប្រជាជនកម្ពុជាក្នុងស្រុក។</span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#555555\" face=\"Lato, sans-serif\"><span style=\"font-size: 14px;\">ដើម្បីធ្វើឱ្យការប្រកួតប្រជែងផ្នែកបច្ចេកវិជ្ជានៅថ្ងៃទី 7 ដល់ថ្ងៃទី 11 សីហាក្មេងស្រីត្រូវបង្កើតកម្មវិធីទូរស័ព្ទនិងបង្កើតផែនការអាជីវកម្មមួយដែលបានដោះស្រាយយ៉ាងហោចណាស់គោលដៅអភិវឌ្ឍន៍របស់ U.N.</span></font></div>', '1529256172.png', '1529256172.png', 0, 1, 2, 2, NULL, '2018-06-15 19:26:51', '2018-06-17 10:42:06', NULL),
(3, 'THE EDUCATION SYSTEM IN CAMBODIA', 'ប្រព័ន្ធអប់រំនៅកម្ពុជា', 'the-education-system-in-cambodia', 'In this post, Sokhan Khut, Country Manager for Cambodia at BOOKBRIDGE, gives a short introduction to the Cambodian Education System.', 'នៅក្នុងអត្ថបទនេះលោកសុខខាន់ឃុតនាយកប្រចាំប្រទេសកម្ពុជានៅ BOOKBRIDGE ផ្តល់នូវការណែនាំខ្លីៗអំពីប្រព័ន្ធអប់រំកម្ពុជា។', '<figure id=\"attachment_30029\" class=\"wp-caption alignright\" style=\"display: inline; margin-bottom: 1.5em; margin-left: 1.5em; float: right; max-width: 100%; font-size: 14px; font-family: \"Open Sans\"; width: 400px;\"><a href=\"http://bookbridge.org/wp-content/uploads/2012/03/BLOG_Cambodian-students.jpg\" style=\"color: rgb(238, 131, 0);\"><img class=\"size-medium wp-image-1609\" title=\"BLOG_Cambodian students\" src=\"http://bookbridge.org/wp-content/uploads/2012/03/BLOG_Cambodian-students.jpg\" alt=\"Primary school students in Cambodia\" width=\"400\" height=\"266\" style=\"border-width: 0px; border-style: initial; height: auto; max-width: 100%; display: block; margin-right: auto; margin-left: auto;\"></a><figcaption class=\"wp-caption-text\" style=\"margin-top: 0.8075em; margin-bottom: 0.8075em;\">Primary school students in Cambodia</figcaption></figure><p style=\"font-size: 18px; font-family: \"Open Sans\";\"><span style=\"font-weight: 700;\">In this post, Sokhan Khut, Country Manager for Cambodia at BOOKBRIDGE, gives a short introduction to the Cambodian Education System.</span></p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">In Cambodia, an education system has been in place since at least from the thirteenth century on. Traditionally, Cambodian education took place in the Wats (Buddhist monasteries) and was offered exclusively to the male population. The education involved basic literature, the foundation of religion and skills for daily life like carpentry, artistry, craftwork, constructing, playing instruments etc.</p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">This ‘traditional’ education was gradually changed when Cambodia was a French colony (1863-1953). The French introduced a formal education system influenced by a Western educational model, which was developed through the independence period (1960s), alongside with the traditional education. During the following civil wars, the education system suffered a chronic crisis and was completely destroyed during the Red Khmer regime (1970s).  Between 1980s and 1990s, education was reconstructed from almost ‘nothing’ and has been gradually developed until now.</p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">Presently, after its reform in 1996, the formal educational structure of Cambodia is formulated in 6+3+3. This means 12 years for the completion of general education that divides up into six years for primary education (grade 1 to 6) and six years for secondary general education (grade 7 to 12). Secondary education consists of three years each for lower secondary education (grade 7 to 9) and upper secondary education (grade 10 to 12). This formulation does not include at least one year for pre-school education (kindergarten) for children from 3 to below 6 years old and universitary education of 4 to 5 years.<br>Two others components of Cambodian educational structure involve non-formal education providing all children, youth, adult, disabled people with literacy and access to life skills. The other component is teacher training education. This allows students that successfully completed grade 12 or grade 9 to pursue teacher certificates at provincial teacher training colleges (for primary school teachers) or regional teacher training centers (for lower secondary school teachers).</p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">Currently, the educational system is run by the Cambodian state, but private education exists at all levels and is run by private sectors. Most private schools offering pre-school education and general education have been operated by the communities of ethnic and religious minority including Chinese, Muslim, French, English and Vietnamese. Private higher education is accessible mainly in the capital of the country, but it is also available throughout the provinces of Cambodia.</p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">Cambodian general education is based on a national school curriculum that consists of two main parts: basic education and upper secondary education. Basic education curriculum is divided into three cycles of three years each. The first cycle (grade 1-3) consists of 27-30 lessons per week lasting 40 minutes which are allocated to the five main subjects:<br>•    Khmer (13 lessons)<br>•    Maths (7 lessons)<br>•    Science & Social Studies including Arts (3 lessons)<br>•    Physical and Health Education (2 lessons) and local life skills program (2-5 lessons)</p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">The second cycle (grade 4-6) comprises of the same number of lessons but is slightly different:<br>•    Khmer (10 for grade 4 and 8 for grade 5-6)<br>•    Maths (6 for grade 4-6)<br>•    Science (3 for grade 4 and 4 for grade 5-6)<br>•    Social Studies including arts (4 for grade 4 and 5 for grade 5-6)<br>•    Physical and Health Education (2 for grade 4-6)<br>•    Local life skills program (2-5 for grade 4-6).</p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">The third cycle (grade 7-9) consists of 32-35 lessons which are allocated for 7 major subjects:<br>•    Khmer<br>•    Maths<br>•    Social Studies and Science (6 lesson respectively)<br>•    Foreign languages (4 lessons)<br>•    Physical & Health Education and Sports (2 lessons)<br>•    Local life skills program (2-5 lessons)</p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">Upper Secondary Education curriculum consists of two different phases. The curriculum for the first phase (grade 10) is identical to the third cycle of primary education (see above).  The second phase (grade 11-12) has two main components: Compulsory and Electives. Compulsory involves four major subjects with different numbers of lesson allocated per week: Khmer literature (6 lessons), Physical & Health Education and Sports (2 lessons), Foreign language: English or French (must choose one, 4 lessons each) and Mathematics: Basic or Advance (must choose one, 4 or 8 lesson respectively). Electives include three major subjects covering four or five sub-subjects with four lessons allocated per week for each one (students may choose one or two or three of them):<br>•    Science: Physics, Chemistry, Biology, Earth and Environmental Studies<br>•    Social Studies: Moral/Civics, History, Geography, Economics<br>•    EVEP: ICT/Technology, Accounting Business Management, Local Vocational Technical Subject, Tourism and Arts Education and other subjects</p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">For those choosing Basic Maths or Advance Maths must choose four sub-subjects or three subjects respectively from the electives.</p>', '<figure id=\"attachment_30029\" class=\"wp-caption alignright\" style=\"display: inline; margin-bottom: 1.5em; margin-left: 1.5em; float: right; max-width: 100%; font-size: 14px; font-family: \"Open Sans\"; width: 400px;\"><a href=\"http://bookbridge.org/wp-content/uploads/2012/03/BLOG_Cambodian-students.jpg\" style=\"color: rgb(238, 131, 0);\"><img class=\"size-medium wp-image-1609\" title=\"BLOG_Cambodian students\" src=\"http://bookbridge.org/wp-content/uploads/2012/03/BLOG_Cambodian-students.jpg\" alt=\"Primary school students in Cambodia\" width=\"400\" height=\"266\" style=\"border-width: 0px; border-style: initial; height: auto; max-width: 100%; display: block; margin-right: auto; margin-left: auto;\"></a><figcaption class=\"wp-caption-text\" style=\"margin-top: 0.8075em; margin-bottom: 0.8075em;\">Primary school students in Cambodia</figcaption></figure><p style=\"\"><b style=\"font-size: 18px; font-family: \"Open Sans\";\">នៅក្នុងអត្ថបទនេះលោកសុខខាន់ឃុតនាយកប្រចាំប្រទេសកម្ពុជានៅ BOOKBRIDGE ផ្តល់នូវការណែនាំខ្លីៗអំពីប្រព័ន្ធអប់រំកម្ពុជា។</b><br></p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">នៅប្រទេសកម្ពុជាប្រព័ន្ធអប់រំមួយត្រូវបានអនុវត្តតាំងពីយ៉ាងហោចណាស់ចាប់ពីសតវត្សទី 13 ។ ជាប្រពៃណីការអប់រំកម្ពុជាបានធ្វើឡើងនៅក្នុងវត្ដ (វត្តអារាមព្រះពុទ្ធសាសនា) ហើយត្រូវបានផ្តល់ជូនតែលើបុរស។ ការអប់រំទាក់ទងនឹងអក្សរសិល្ប៍មូលដ្ឋានគ្រឹះនៃសាសនានិងជំនាញសម្រាប់ជីវិតប្រចាំថ្ងៃដូចជាជាងឈើសិល្បះសិប្បកម្មការសាងសង់ការលេងឧបករណ៍ជាដើម។</p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">ការអប់រំបែបប្រពៃណីនេះត្រូវបានផ្លាស់ប្តូរបន្តិចម្ដងៗនៅពេលដែលកម្ពុជាជាអាណានិគមបារាំង (1863-1953) ។ បារាំងបានណែនាំប្រព័ន្ធអប់រំជាផ្លូវការមួយដែលទទួលឥទ្ធិពលពីគំរូអប់រំលោកខាងលិចដែលត្រូវបានបង្កើតឡើងតាមរយៈសម័យឯករាជ្យ (ឆ្នាំ 1960) ជាមួយនឹងការអប់រំប្រពៃណី។ ក្នុងអំឡុងពេលនៃសង្គ្រាមស៊ីវិលខាងក្រោមប្រព័ន្ធអប់រំបានទទួលរងនូវវិបត្តិរ៉ាំរ៉ៃហើយត្រូវបានបំផ្លាញទាំងស្រុងក្នុងរបបខ្មែរក្រហមឆ្នាំ 1970 ។ ចន្លោះពីទសវត្សរ៍ឆ្នាំ 1980 និងទសវត្សរ៍ឆ្នាំ 1990 ការអប់រំត្រូវបានស្ថាបនាឡើងវិញពីស្ទើរតែគ្មានអ្វីទាំងអស់ហើយត្រូវបានអភិវឌ្ឍជាលំដាប់រហូតមកដល់ពេលនេះ។</p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">បច្ចុប្បន្ននេះបន្ទាប់ពីកំណែទម្រង់របស់ខ្លួននៅឆ្នាំ 1996 រចនាសម្ព័នអប់រំផ្លូវការរបស់ប្រទេសកម្ពុជាត្រូវបានបង្កើតនៅក្នុង 6 + 3 + 3 ។ នេះមានរយៈពេល 12 ឆ្នាំសម្រាប់បញ្ចប់ការសិក្សាទូទៅដែលបែងចែកជាប្រាំមួយឆ្នាំសម្រាប់ការអប់រំបឋមសិក្សា (ថ្នាក់ទី 1 ដល់ទី 6) និងប្រាំមួយឆ្នាំសម្រាប់ការអប់រំទូទៅអនុវិទ្យាល័យ (ថ្នាក់ទី 7 ដល់ទី 12) ។ ការអប់រំមធ្យមសិក្សាមានបីឆ្នាំសំរាប់ការអប់រំកម្រិតមធ្យមសិក្សា (ថ្នាក់ទី 7 ដល់ថ្នាក់ទី 9) និងកម្រិតមធ្យមសិក្សាបឋមភូមិ (ថ្នាក់ទី 10 ដល់ទី 12) ។ ការបង្កើតនេះមិនរាប់បញ្ចូលយ៉ាងហោចណាស់មួយឆ្នាំសម្រាប់ការអប់រំថ្នាក់មត្តេយ្យសម្រាប់កុមារចាប់ពីអាយុ 3 ឆ្នាំដល់ក្រោម 6 ឆ្នាំនិងការអប់រំថ្នាក់សាកលវិទ្យាល័យពី 4 ទៅ 5 ឆ្នាំ។<br></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">ផ្នែកពីរផ្សេងទៀតនៃរចនាសម្ព័ន្ធអប់រំនៅកម្ពុជារួមមានការអប់រំក្រៅប្រព័ន្ធដែលផ្តល់ឱ្យកុមារយុវជនយុវវ័យជនពិការដែលមានអក្ខរកម្មនិងលទ្ធភាពទទួលបានជំនាញបំណិនជីវិត។ សមាសភាគផ្សេងទៀតគឺការអប់រំគ្រូបង្រៀន។ នេះអនុញ្ញាតឱ្យសិស្សដែលបានបញ្ចប់ថ្នាក់ទី 12 ឬទី 9 ដើម្បីទទួលបានវិញ្ញាបនបត្រគ្រូនៅមហាវិទ្យាល័យគ្រូបង្រៀនខេត្ត (គ្រូបឋមសិក្សា) ឬមជ្ឈមណ្ឌលបណ្ដុះបណ្ដាលគ្រូបង្រៀនថ្នាក់តំបន់ (សម្រាប់គ្រូបឋមភូមិ) ។</span></font></p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">បច្ចុប្បន្ននេះប្រព័ន្ធអប់រំកំពុងដំណើរការដោយរដ្ឋកម្ពុជាប៉ុន្តែការអប់រំឯកជនមាននៅគ្រប់កម្រិតហើយត្រូវបានគ្រប់គ្រងដោយវិស័យឯកជន។ សាលារៀនឯកជនភាគច្រើនដែលផ្តល់ជូននូវការអប់រំមត្តេយ្យនិងការអប់រំទូទៅត្រូវបានដំណើរការដោយសហគមន៍ជនជាតិភាគតិចនិងសាសនាភាគតិចរួមមានចិនមូស្លីមបារាំងអង់គ្លេសនិងវៀតណាម។ ការអប់រំខ្ពស់ឯកជនគឺអាចរកបាននៅរដ្ឋធានីនៃប្រទេសតែវាក៏អាចរកបាននៅទូទាំងខេត្ដនៃប្រទេសកម្ពុជាផងដែរ។</p><p style=\"\"><span style=\"font-family: \"Open Sans\"; font-size: 18px;\">ការអប់រំទូទៅនៅកម្ពុជាផ្អែកលើកម្មវិធីសិក្សាថ្នាក់ជាតិដែលមានពីរផ្នែកសំខាន់គឺការអប់រំមូលដ្ឋាននិងការអប់រំកម្រិតមធ្យម។ កម្មវិធីសិក្សាអប់រំថ្នាក់មូលដ្ឋានត្រូវបានបែងចែកជា 3 វដ្តនៃរយៈពេល 3 ឆ្នាំ។ វដ្តទី 1 (ថ្នាក់ទី 1-3) មាន 27-30 មេរៀនក្នុងមួយសប្តាហ៍ដែលមានរយៈពេល 40 នាទីដែលត្រូវបានត្រៀមបម្រុងសម្រាប់មុខវិជ្ជាសំខាន់ៗចំនួនប្រាំ:<br></span><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•ខ្មែរ (13 មេរៀន)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•គណិតវិទ្យា (7 មេរៀន)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•វិទ្យាសាស្ត្រនិងសិក្សាសង្គមរួមទាំងសិល្បៈ (មេរៀនចំនួន 3)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•ការអប់រំកាយនិងសុខភាព (2 មេរៀន) និងកម្មវិធីបំណិនជីវិតក្នុងតំបន់ (មេរៀន 2-5)</span></font></p><p style=\"\"><span style=\"font-family: \"Open Sans\"; font-size: 18px;\">វដ្តទីពីរ (ថ្នាក់ទី 4-6) មានចំនួនមេរៀនដូចគ្នាប៉ុន្តែមានភាពខុសគ្នាតិចតួច:<br>• </span><font face=\"Open Sans\"><span style=\"font-size: 18px;\">ខ្មែរ (10 សម្រាប់ថ្នាក់ទី 4 និងទី 8 សម្រាប់ថ្នាក់ទី 5-6)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•គណិតវិទ្យា (6 សម្រាប់ថ្នាក់ទី 4-6)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•វិទ្យាសាស្រ្ត (3 សម្រាប់ថ្នាក់ទី 4 និងទី 4 សម្រាប់ថ្នាក់ទី 5-6)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•សិក្សាសង្គមរួមទាំងសិល្បៈ (4 សម្រាប់ថ្នាក់ទី 4 និងទី 5 សម្រាប់ថ្នាក់ទី 5-6)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•អប់រំកាយនិងសុខភាព (2 សម្រាប់ថ្នាក់ទី 4-6)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">កម្មវិធីបំណិនជីវិតក្នុងតំបន់ (2-5 សម្រាប់ថ្នាក់ទី 4-6) ។</span></font></p><p style=\"font-size: 18px; font-family: \"Open Sans\";\">វដ្តទី 3 (ថ្នាក់ទី 7-9) មាន 32-35 មេរៀនដែលត្រូវបានត្រៀមបម្រុងសម្រាប់ 7 មុខវិជ្ជាសំខាន់ៗដូចជា:<br></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•ខ្មែរ</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•គណិត</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•សិក្សាសង្គមនិងវិទ្យាសាស្រ្ត (មាន 6 មេរៀនរៀងៗខ្លួន)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•ភាសាបរទេស (4 មេរៀន)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•អប់រំកាយនិងកីឡានិងកីឡា (2 មេរៀន)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•កម្មវិធីជំនាញបំណិនជីវិត (វគ្គសិក្រសា 2-5 ដង)</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">កម្មវិធីសិក្សាអប់រំមធ្យមសិក្សាទុតិយភូមិមានពីរដំណាក់កាលផ្សេងៗគ្នា។ កម្មវិធីសិក្សាសម្រាប់ដំណាក់កាលទី 1 (ថ្នាក់ទី 10) គឺដូចគ្នាទៅនឹងវដ្តទី 3 នៃការអប់រំបឋមសិក្សា (សូមមើលខាងលើ) ។ ដំណាក់កាលទីពីរ (ថ្នាក់ទី 11 ដល់ 12) មានសមាសភាគសំខាន់ពីរគឺៈកាតព្វកិច្ចនិងជម្រើស។ មានកាតព្វកិច្ចពាក់ព័ន្ធនឹងមុខវិជ្ជាសំខាន់ៗចំនួនបួនដែលមានមេរៀនខុសៗគ្នាក្នុងមួយសប្តាហ៍: អក្សរសិល្ប៍ខ្មែរ (មេរៀនចំនួន 6 វគ្គ) ការអប់រំកាយសម្បទានិងអប់រំសុខភាព (2 មេរៀន) ភាសាបរទេសភាសាអង់គ្លេសឬបារាំង (ត្រូវជ្រើសរើសមួយមេរៀន 4) និងគណិតវិទ្យា: Basic ឬ Advance (ត្រូវតែជ្រើសរើសមួយឬ 4 ឬ 8 មេរៀនរៀងៗខ្លួន) ។ ការបោះឆ្នោតរួមមានមុខវិជ្ជាសំខាន់ៗចំនួនបីដែលគ្របដណ្តប់លើអនុរាស្ដ្រចំនួនបួនឬប្រាំដោយមានមេរៀនចំនួនបួនដែលត្រូវបានផ្តល់អោយក្នុងមួយសប្តាហ៍សម្រាប់សិស្សម្នាក់ៗ (សិស្សអាចជ្រើសរើសមួយឬពីរឬបីនាក់):</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">វិទ្យាសាស្រ្ត: រូបវិទ្យាគីមីវិទ្យាជីវវិទ្យាផែនដីនិងបរិស្ថាន</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">•សិក្សាសង្គម: សីលធម៌ / ពលរដ្ឋ, ប្រវត្តិសាស្រ្ត, ភូមិសាស្ត្រ, សេដ្ឋកិច្ច</span></font></p><p style=\"\"><font face=\"Open Sans\"><span style=\"font-size: 18px;\">• EVEP: ICT / បច្ចេកវិទ្យា, ការគ្រប់គ្រងគណនេយ្យពាណិជ្ជកម្ម, បច្ចេកទេសវិជ្ជាជីវៈនៅក្នុង</span></font></p>', '1529255636.jpg', '1529255646.jpg', 0, 1, 2, 2, NULL, '2018-06-15 19:27:18', '2018-06-17 10:14:05', NULL);
INSERT INTO `news` (`id`, `en_title`, `kh_title`, `slug`, `en_description`, `kh_description`, `en_content`, `kh_content`, `image`, `image_detail`, `is_deleted`, `is_published`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'KAPE’S NEW GENERATION SCHOOL INITIATIVE IMPLEMENTS IT IN CAMBODIAN SCHOOLS.', 'សាលារៀនជំនាន់ថ្មីរបស់ KAPE បានចាប់ផ្តើមអនុវត្តនៅក្នុងសាលារៀននៅប្រទេសកម្ពុជា។', '5-kape-s-new-generation-school-initiative-implements-it-in-cambodian-schools', 'As the famous journalist Sydney J Harris once wrote, “The whole purpose of education is to turn mirrors into windows.” This quote carries the significant meaning that education has the power to open doors and pave pathways to newer opportunities that we wouldn’t have experienced without education.', 'ក្នុងនាមអ្នកកាសែតដ៏ល្បីល្បាញឈ្មោះ Sydney J Harris បានសរសេរថា \"គោលបំណងទាំងមូលនៃការអប់រំគឺដើម្បីបង្វែរកញ្ចក់ចូលទៅក្នុងបង្អួច\" ។ សម្រង់នេះមានអត្ថន័យសំខាន់ដែលថាការអប់រំមានអំណាចដើម្បីបើកទ្វារនិងបើកផ្លូវទៅរកឱកាសថ្មីៗដែលយើងមិនមាន មានបទពិសោធន៍ដោយគ្មានការអប់រំ។', '<p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">As the famous journalist Sydney J Harris once wrote, “The whole purpose of education is to turn mirrors into windows.” This quote carries the significant meaning that education has the power to open doors and pave pathways to newer opportunities that we wouldn’t have experienced without education.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">For Geeks in Cambodia, we feel that this can be attributed to the New Generation School (NGS) initiative by the Kampuchean Action for Primary Education (KAPE) – a local NGO in the education sector of Cambodia – the Ministry of Education, Youth and Sport (MoEYS).</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">Currently implemented at Sisovath High School in Phnom Penh, this programme is a key element of the 15 national reforms by MoEYS, and as a result, received 1 Million dollars in funds by the ministry. The goal of the NGS is to create schools that will develop and prepare the Cambodian youths for the competitive 21<sup>st</sup> Century marketplace by strengthening their skills and learning of STEM subjects.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">To do so, the programme offers students extended hours of teaching</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">for subjects such as Chemistry, Physics, Biology, and Information Technology. In addition, under this initiative, Sisovath High School also had a modernization of their facilities, in which they integrated 2 new computer labs, a renovation of 5-6 science labs, modern classrooms, and a library.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">Aside from the facilities, the teachers also undergo various trainings and workshops to learn and improve skills in computer (such as Microsoft Office), leadership, planning, principles of youth empowerment, and more. NGS also abolishes the concept of paid private classes, where teachers provide students with extra classes outside of school hours and receive monetary incentives, to provide a high quality education without charge.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">Geeks in Cambodia had the opportunity to sit down with the ICT in Education Advisor of KAPE, Ariel Rozenblum, to find out more about the positive impact the NGS initiative would have on the education sector.<b> </b></p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><em>The following interview has been edited for clarity, length and flow. </em></p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>Could you please share with us how this 1 Million Dollars in funding from MoEYS would help in the development of the New Generation School (NGS)?</b></p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>A</b>: In reality, it’s going to help the whole education in Cambodia, not just the NGS. What we are trying to do is provide quality education, similar to the private sector, where everyone can afford it. It’s free and everyone can access it. Sisovath High School is the one in Phnom Penh and we have two other schools in the provinces – Kampong Cham and Svay Rieng. The one in Svay Rieng is very rural, about 20 minutes off the main road. However, that computer lab there has 32 computers and the electricity used to run on solar energy, although now it has been running on electricity for a bit more than a month.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">But if you think about it, 1 Million dollars is not that heavy of an investment, since our targets are big. So we are trying to show locals that: “Look, we can produce a private-standard education and it’s free.” The school in Svey Rieng looks very similar to the one in Phnom Penh, which is very out of place in the rural area. Imagine seeing a library, a computer lab with 32 computers, science labs among the rice fields… It’s a big thing! And a lot of the money goes to the infrastructure; I think we spent about $10,000 for the labs. We also have to provide extra salary to the teachers, so we are stretching the funding as much as we can.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">We are also planning to start working on 6 schools this year, and the government has a long-term plan to have 2 NGS per province.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>What are some plans the NGS is planning to or has implemented to make it an IT-equipped school, aside from the computer labs?</b></p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>A</b>: Now, we are trying to implement coding into the curriculum. That’s going to take awhile because it is not easy to actually implement it into a national curriculum. There are a lot of study hours that we need to use for something else, so coding is currently not our priority. But I hope slowly, it’ll become a priority. We do have a coding club and an ICT club, where they make videos and movies, use Photoshop… It’s entirely up to them. It’s a club by the students, for the students. But the idea is to become a more IT-oriented school. We use tablets, we have research stations, the labs have 4 iMacs that the students can use, and now we have a new auditorium. In time, we will have a media centre.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">We encourage the use of technology all the time. Teachers must use projectors for classes and we give all teachers who join the programme a laptop, where we will train them how to use it. The key is to train people how to use it. You can’t just give it to them.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>Are you someone who trains these teachers?</b></p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>A</b>: Sometimes. We do trainings on Microsoft Word and Excel, and we have to be very patient. It depends on where we are located in the country. Some teachers would not know how to use the Khmer Unicode, so we would have to start from there. Then we go on to Office and Windows.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">We have to show them this is useful. Sometimes it is perceived as extra work. It’s normal; we are trying to move from the 19<sup>th</sup> Century to the 21<sup>st</sup> Century and we are skipping the 20<sup>th</sup>. It is not easy; it is overwhelming for them sometimes and it is understandable.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>How long are the trainings usually? Across a few months or?</b></p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>A</b>: Yeah. They have trainings almost every Saturday. I think they already had 2 trainings on Microsoft 365, but they’ve reached the point where they can use Office. We’ve helped them to create Gmail accounts, taught them how to use computers, create passwords… It’s very basic sometimes.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">Of course, we also try to hire new teachers. Freshly out from the National Institute of Education because we see that they are hungry for innovating the country and learning. But for older teachers, it is not easy to break their old habits of teaching in Cambodia. We completely eradicated private classes in Cambodia in schools, which is a big plus for us, and if we catch any teachers having private classes then they are out.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">Like I said, it has to be free education. That is the key. At some point, this will turn into a sustainable project and we want the parents to contribute whatever money they are able to keep the project running. But again, this is dependent on where they are located. Maybe $30 to $40 a year, which is reasonable. And the parents, I can guarantee you, would agree to it. I’ve seen it. When they come to see the school, they are happy to see the school and they think it’s worth it. This is because they finally see their children having access to a computer, to a library, tablets, Internet. Hopefully, things will only go up from there.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>But more specifically, why is it important for all the students to start learning to use and apply tech in Cambodia?</b></p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>A</b>: Because there is a big gap between Cambodia and most other Asian countries! There are not many human resources and specialists in the fields of biology, science, maths… That’s why we are focusing on STEM (Science, Tech, Engineering, Mathematics) subjects because Cambodia desperately needs professionals.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>What was the motivation to start an IT-equipped school in Cambodia?</b></p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>A</b>: Well, I wouldn’t call it an IT-equipped school, but rather a STEM school. IT is one of the focuses, but as I mentioned, science, match, physics, biology are important too. The motivation is that there is a lack of these professionals in a lot of fields in Cambodia, and if you don’t start in high school then when are you going to start?</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">Well, we are trying to start a primary school actually, so maybe from there! We will probably have an NGS Primary, and are aiming to have a full-track at some point. We are going to have scholarships, and provide a whole road to university. A NGS student would, hopefully, be guaranteed to enter university, no matter where they come from.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">I think we are lucky as well to have the support of the ministry. The current minister of the Minister of Education has been very open to having an NGO, KAPE, to implement and oversee the NGS. Our first school in Kampong Cham was called the Beacon School Initiative (BSI), which was the model for the NGS project.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>From my understanding, KAPE encourages self-study in students to help them with their learning.</b></p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>A</b>: Yeah, we do encourage them to help each other. They have a lot of group projects so it is a lot of project-based learning. We also try to train our teachers in different kinds of instruction techniques such as differentiated instructions and project-based learning. We also have a programme where the kids will read 10 books a year and present them through a book fair. Some of them even wrote their own book!</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\">And all these initiatives come from the teachers and students. We realize that we only need to open doors, we don’t have to do more than that. Once we open the doors, the students have a lot of ideas, a lot of drive by themselves. When we started coding, I didn’t show them much. I just showed them the basics, and I think a month later, they went to the Philippines or Indonesia for a competition and came out third behind Singapore! It was just a month’s learning, and they already know more about coding than me. It’s impressive. Cambodian kids are just as capable as any other kids; it is just the lack of facilities.</p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>What do you hope to see more of in the EdTech scene in Cambodia?</b></p><p style=\"margin-bottom: 1.2em; color: rgb(85, 85, 85); font-family: Georgia, \"Times New Roman\", Times, serif, Times, serif; font-size: 14.08px;\"><b>A</b>: More coding, and more app development. I want the kids to come up with ideas. In my case, I am too old already and they probably have a lot of ideas that I would not have come up with to improve many things that I would not have thought of. And that’s what I’m hoping to see  – that they (the students) believe they can be leaders. They can push things. They can think about being entrepreneurs and professionals. Hopefully, I get to see it in a few years, but I have to be patient. Maybe 10 or 20 years? It is a generational change, so when you have that, you have to be patient because you are trying to change a culture – the culture of learning and teaching. Right now, I think we are planting the seeds.</p>', '<div>ក្នុងនាមអ្នកកាសែតដ៏ល្បីល្បាញឈ្មោះ Sydney J Harris បានសរសេរថា \"គោលបំណងទាំងមូលនៃការអប់រំគឺដើម្បីបង្វែរកញ្ចក់ចូលទៅក្នុងបង្អួច\" ។ សម្រង់នេះមានអត្ថន័យសំខាន់ដែលថាការអប់រំមានអំណាចដើម្បីបើកទ្វារនិងបើកផ្លូវទៅរកឱកាសថ្មីៗដែលយើងមិនមាន មានបទពិសោធន៍ដោយគ្មានការអប់រំ។</div><div><br></div><div>សំរាប់ Geeks នៅក្នុងប្រទេសកម្ពុជាយើងមានអារម្មណ៍ថានេះអាចជាគំនិតផ្តួចផ្តើមរបស់សាលាជំនាន់ថ្មី (NGS) ដោយអង្គការសកម្មភាពកម្ពុជាសម្រាប់ការអប់រំបឋម (KAPE) ដែលជាអង្គការក្នុងស្រុកមួយនៅក្នុងវិស័យអប់រំនៃប្រទេសកម្ពុជា - ក្រសួងអប់រំយុវជននិងកីឡា (MoEYS) ។</div><div><br></div><div>បច្ចុប្បន្ននេះត្រូវបានអនុវត្តនៅវិទ្យាល័យស៊ីសាវុធក្នុងរាជធានីភ្នំពេញកម្មវិធីនេះគឺជាធាតុផ្សំដ៏សំខាន់នៃកំណែទម្រង់ជាតិចំនួន 15 ដោយក្រសួងអប់រំយុវជននិងកីឡានិងជាលទ្ធផលបានទទួលថវិកាចំនួន 1 លានដុល្លាដោយក្រសួង។ គោលបំណងរបស់ NGS គឺបង្កើតសាលារៀនដែលនឹងអភិវឌ្ឍនិងរៀបចំយុវជនកម្ពុជាឱ្យមានទីផ្សារប្រកួតប្រជែងនៅសតវត្សរ៍ទី 21 ដោយការពង្រឹងជំនាញរបស់ពួកគេនិងការរៀនសូត្រនៃមុខវិជ្ជា STEM ។</div><div><br></div><div>ដើម្បីធ្វើដូច្នេះកម្មវិធីនេះផ្តល់ឱ្យសិស្សនូវការបង្រៀនជាច្រើនម៉ោង</div><div><br></div><div>សម្រាប់មុខវិជ្ជាដូចជាគីមីវិទ្យារូបវិទ្យាជីវវិទ្យានិងបច្ចេកវិទ្យាពត៌មាន។ លើសពីនេះទៀតក្រោមគំនិតផ្តួចផ្តើមនេះវិទ្យាល័យស៊ីសាវុធក៏មានទំនើបកម្មនៃកន្លែងរបស់ពួកគេផងដែរដែលពួកគេបានបញ្ចូលកន្លែងពិសោធន៍កុំព្យូទ័រថ្មី 2 កន្លែងជួសជុលបន្ទប់ពិសោធន៍វិទ្យាសាស្ត្រ 5-6 បន្ទប់បណ្តុំទំនើបនិងបណ្ណាល័យ។</div><div><br></div><div>ក្រៅពីសម្ភារៈបរិក្ខារគ្រូក៏ទទួលបាននូវការបណ្តុះបណ្តាលនិងសិក្ខាសាលាផ្សេងៗដើម្បីរៀននិងលើកកំពស់ជំនាញកុំព្យូទ័រ (ដូចជា Microsoft Office) ភាពជាអ្នកដឹកនាំរៀបចំផែនការគោលការណ៍នៃការផ្តល់សិទ្ធិអំណាចដល់យុវជននិងច្រើនទៀត។ NGS ក៏លុបចោលគោលគំនិតនៃថ្នាក់ឯកជនដែលបានបង់ប្រាក់ផងដែរដែលគ្រូបង្រៀនផ្តល់ដល់សិស្សនូវថ្នាក់បន្ថែមនៅខាងក្រៅម៉ោងសិក្សានិងទទួលបានការលើកទឹកចិត្តផ្នែករូបិយវត្ថុដើម្បីផ្តល់ការអប់រំប្រកបដោយគុណភាពខ្ពស់ដោយមិនគិតថ្លៃ។</div><div><br></div><div>Geeks នៅក្នុងប្រទេសកម្ពុជាមានឱកាសអង្គុយជាមួយទីប្រឹក្សាផ្នែកបច្ចេកវិទ្យាគមនាគមន៍ព័ត៌មានវិទ្យានៃ KAPE Ariel Rozenblum ដើម្បីស្វែងយល់បន្ថែមអំពីផលប៉ះពាល់ជាវិជ្ជមានដែលគំនិតផ្ដួចផ្ដើមរបស់ NGS នឹងមានលើវិស័យអប់រំ។</div><div><br></div><div>ការសំភាសន៍ដូចខាងក្រោមត្រូវបានគេកែសម្រួលដើម្បីភាពច្បាស់លាស់, ប្រវែងនិងលំហូរ។</div><div><br></div><div>តើអ្នកអាចចែករំលែកជាមួយយើងពីរបៀបដែលប្រាក់ឧបត្ថម្ភ 1 លានដុល្លារពីក្រសួងអប់រំយុវជននិងកីឡានឹងជួយក្នុងការអភិវឌ្ឍសាលាជំនាន់ថ្មី (NGS)?</div><div><br></div><div>ចម្លើយ: តាមពិតទៅវានឹងជួយដល់ការអប់រំទាំងមូលនៅក្នុងប្រទេសកម្ពុជាមិនមែនគ្រាន់តែជា NGS ប៉ុណ្ណោះទេ។ អ្វីដែលយើងកំពុងព្យាយាមធ្វើគឺផ្តល់ការអប់រំប្រកបដោយគុណភាពដែលស្រដៀងទៅនឹងវិស័យឯកជនដែលគ្រប់គ្នាអាចមានលទ្ធភាពចំណាយ។ វាឥតគិតថ្លៃហើយអ្នករាល់គ្នាអាចចូលប្រើវាបាន។ វិទ្យាល័យស៊ីសុវត្ថិគឺនៅរាជធានីភ្នំពេញហើយយើងមានសាលារៀនពីរទៀតនៅខេត្តកំពង់ចាមនិងស្វាយរៀង។ ម្នាក់នៅខេត្តស្វាយរៀងគឺនៅតាមជនបទប្រហែល 20 នាទីពីផ្លូវធំ។ ទោះបីជាយ៉ាងណាក៏ដោយមន្ទីរពិសោធន៍កុំព្យូទ័រនោះមានកុំព្យូទ័រចំនួន 32 និងថាមពលអគ្គីសនីដែលត្រូវបានប្រើដើម្បីដំណើរការថាមពលពន្លឺព្រះអាទិត្យបើទោះបីជាបច្ចុប្បន្ននេះវាត្រូវបានគេកំពុងប្រើប្រាស់ចរន្តអគ្គិសនីអស់រយៈពេលជាងមួយខែ។</div><div><br></div><div>ប៉ុន្តែប្រសិនបើអ្នកគិតអំពីវា 1 លានដុល្លារមិនមែនជាការវិនិយោគធ្ងន់នោះទេព្រោះគោលដៅរបស់យើងធំ។ ដូច្នេះយើងកំពុងព្យាយាមបង្ហាញដល់អ្នកស្រុកថា \"មើលទៅយើងអាចបង្កើតការអប់រំជាលក្ខណៈស្តង់ដាឯកជនហើយវាមិនគិតថ្លៃទេ\" ។ សាលារៀននៅ Svey Rien មើលទៅស្រដៀងគ្នានឹងសាលាមួយនៅរាជធានីភ្នំពេញដែលមិនមានកន្លែងនៅតំបន់ជនបទ។ ។ សូមស្រមៃមើលបណ្ណាល័យមន្ទីរពិសោធន៍កុំព្យូទ័រមាន 32 កុំព្យូទ័របន្ទប់ពិសោធន៍វិទ្យាសាស្ត្រក្នុងចំការស្រូវ ... វាជារឿងធំ! ហើយប្រាក់ជាច្រើនត្រូវបានផ្តល់ទៅឱ្យហេដ្ឋារចនាសម្ព័ន្ធ។ ខ្ញុំគិតថាយើងចំណាយប្រហែល 1 ម៉ឺនដុល្លារសម្រាប់បន្ទប់ពិសោធន៍។ យើងក៏ត្រូវផ្តល់ប្រាក់ខែបន្ថែមដល់គ្រូបង្រៀនផងដែរដូច្នេះយើងកំពុងបង្កើនថវិការច្រើនតាមដែលយើងអាចធ្វើទៅបាន។</div><div><br></div><div>យើងក៏គ្រោងនឹងចាប់ផ្តើមធ្វើការនៅសាលារៀនចំនួន 6 ក្នុងឆ្នាំនេះផងដែរហើយរដ្ឋាភិបាលមានគម្រោងរយៈពេលវែងដើម្បីមាន 2 ភាសាក្នុងខេត្តមួយ។</div><div><br></div><div>តើផែនការអ្វីខ្លះដែល NGS មានគម្រោងឬត្រូវបានអនុវត្តដើម្បីធ្វើឱ្យវាក្លាយទៅជាសាលាបំពាក់ដោយបច្ចេកវិទ្យាព័ត៌មានក្រៅពីបន្ទប់ពិសោធន៍កុំព្យូទ័រ?</div><div><br></div><div>ចៈឥឡូវនេះយើងកំពុងព្យាយាមបញ្ចូលកូដទៅក្នុងកម្មវិធីសិក្សា។ វានឹងត្រូវចំណាយពេលមួយរយៈពីព្រោះវាមិនងាយស្រួលទេក្នុងការអនុវត្តវាទៅក្នុងកម្មវិធីសិក្សាជាតិ។ មានម៉ោងសិក្សាជាច្រើនដែលយើងត្រូវប្រើសម្រាប់អ្វីផ្សេងទៀតដូច្នេះការសរសេរកូដគឺមិនមែនជាអាទិភាពរបស់យើងទេ។ ប៉ុន្តែខ្ញុំសង្ឃឹមថាយឺត ៗ វានឹងក្លាយជាអាទិភាពមួយ។ យើងមានក្លឹបសរសេរកូដនិងក្លឹប ICT ដែលជាកន្លែងដែលពួកគេបង្កើតវីដេអូនិងភាពយន្តប្រើកម្មវិធី Photoshop ... វាសុទ្ធសឹងជារបស់ពួកគេ។ វាជាក្លឹបមួយដោយនិស្សិតសម្រាប់សិស្ស។ ប៉ុន្តែគំនិតនេះគឺដើម្បីក្លាយទៅជាសាលារៀនតម្រង់ទិសបច្ចេកវិទ្យាព័ត៌មាន។ យើងប្រើកុំព្យូទ័រយើងមានស្ថានីយ៍ស្រាវជ្រាវមន្ទីរពិសោធន៍មាន 4 iMacs ដែលសិស្សអាចប្រើហើយឥឡូវនេះយើងមានសាលប្រជុំថ្មី។ នៅពេលនោះយើងនឹងមានមជ្ឈមណ្ឌលព័ត៌មាន។</div><div><br></div><div>យើងលើកទឹកចិត្តដល់ការប្រើប្រាស់បច្ចេកវិទ្យាគ្រប់ពេល។ គ្រូបង្រៀនត្រូវប្រើម៉ាស៊ីនបញ្ចាំងសម្រាប់ថ្នាក់ហើយយើងផ្តល់ឱ្យគ្រូទាំងអស់ដែលចូលរួមកម្មវិធីកុំព្យូទ័រយួរដៃដែលយើងនឹងបង្ហាត់ពួកគេពីរបៀបប្រើវា។ គន្លឹះសំខាន់គឺបណ្តុះបណ្តាលមនុស្សឱ្យចេះប្រើវា។ អ្នកមិនអាចគ្រាន់តែផ្តល់ឱ្យពួកគេទេ។</div><div><br></div><div>តើអ្នកជាអ្នកបណ្តុះបណ្តាលគ្រូបង្រៀនទាំងនេះដែរឬទេ?</div><div><br></div><div>ចម្លើយ: ជួនកាល។ យើងធ្វើការហ្វឹកហាត់នៅលើ Microsoft Word និង Excel ហើយយើងត្រូវតែអត់ធ្មត់។ វាអាស្រ័យលើកន្លែងដែលយើងស្ថិតនៅក្នុងប្រទេស។ គ្រូខ្លះមិនចេះប្រើខ្មែរយូនីកូដដូច្នេះយើងត្រូវចាប់ផ្តើមពីទីនោះ។ បន្ទាប់មកយើងទៅ Office និង Windows ។</div>', '1529256887.png', '1529256887.png', 0, 1, 2, 2, NULL, '2018-06-17 10:34:47', '2018-07-31 18:29:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_success` tinyint(1) NOT NULL DEFAULT '0',
  `is_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `is_new` tinyint(4) NOT NULL,
  `address` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `delivery_time` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `discount` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `transporter_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `name`, `is_success`, `is_delivery`, `is_new`, `address`, `delivery_time`, `discount`, `transporter_id`, `payment_id`, `verified_id`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 2, 'tonon', 1, 1, 1, 'Phnom Penh', '', '0', NULL, 'ch_1Cmf5yEhvulqPhrtZsGwNpFt', NULL, NULL, NULL, NULL, '2018-07-11 02:58:50', '2018-09-10 20:15:59', NULL),
(6, 2, 'Yoeun Sathya', 1, 1, 0, 'Phnom Penh', '', '0', NULL, 'ch_1CpIYVEhvulqPhrt4Wbq2IV1', NULL, NULL, NULL, NULL, '2018-07-18 09:31:13', '2018-09-10 20:17:10', NULL),
(7, 2, NULL, 0, 0, 1, '', '', '0', NULL, 'ch_1CrjNOEhvulqPhrt8licS82y', NULL, NULL, NULL, NULL, '2018-07-25 02:33:47', '2018-08-11 09:19:37', NULL),
(8, 2, NULL, 0, 0, 1, '', '', '0', NULL, 'ch_1CrjhfEhvulqPhrtwyqfYY8v', NULL, NULL, NULL, NULL, '2018-07-25 02:54:44', '2018-08-05 19:31:14', NULL),
(9, 2, NULL, 1, 0, 0, '', '', '0', NULL, 'ch_1Cyh1ZEhvulqPhrtyolmA2ta', NULL, NULL, NULL, NULL, '2018-08-13 07:28:03', '2018-08-13 07:28:03', NULL),
(10, 2, NULL, 1, 0, 0, '', '', '0', NULL, 'ch_1Cyh2PEhvulqPhrtBHQZQ4Wy', NULL, NULL, NULL, NULL, '2018-08-13 07:28:55', '2018-08-13 07:28:55', NULL),
(11, 2, NULL, 1, 0, 1, '', '', '0', NULL, 'ch_1Cyhf0EhvulqPhrtkSSigxF9', NULL, NULL, NULL, NULL, '2018-08-13 08:08:47', '2018-09-10 20:14:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `qty`, `unit_price`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 2, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 6, 10, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 6, 7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 7, 9, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 8, 9, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 9, 5, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 9, 2, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 10, 5, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 10, 3, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 11, 4, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permisions`
--

CREATE TABLE `permisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `route` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'Full Access'),
(2, 'User', '(Full Access for Property Information Entry and Search) But Can not DELETE'),
(3, 'Manager', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `kh_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `unit_price` float DEFAULT NULL,
  `product_qty` int(11) DEFAULT NULL,
  `en_description` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `kh_description` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `en_content` text COLLATE utf8mb4_unicode_ci,
  `kh_content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `code`, `slug`, `en_name`, `kh_name`, `unit_price`, `product_qty`, `en_description`, `kh_description`, `en_content`, `kh_content`, `image`, `is_published`, `is_featured`, `is_deleted`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 11, '001', '7-casio', 'Casio', 'ម៉ាសីុនគិតលេខ ម៉ាក់ Casio', 10, 5, NULL, NULL, NULL, NULL, '1530071001.png', 1, 1, 0, 2, 2, NULL, '2018-06-26 04:44:07', '2018-07-17 09:28:31', NULL),
(2, 1, 3, 11, '002', '7-casio-small', 'Casio Small', 'ម៉ាសីុនគិតលេខ ម៉ាក់ Casio តូច', 8, 5, NULL, NULL, NULL, NULL, '1530071589.jpg', 1, 1, 0, 2, 2, NULL, '2018-06-26 09:23:20', '2018-06-26 23:38:11', NULL),
(3, 1, 3, 11, '003', '7-casio-dj-220d-plus', 'Casio DJ-220D Plus', 'ម៉ាសីុនគិតលេខ ម៉ាក់ Casio DJ-220D Plus', 5, 10, NULL, NULL, NULL, NULL, '1530071829.jpg', 1, 1, 0, 2, 2, NULL, '2018-06-26 20:57:09', '2018-06-26 23:38:22', NULL),
(4, 1, 4, 26, '004', '7-supreme', 'Supreme', 'Supreme', 2, 10, NULL, NULL, NULL, NULL, '1530073658.jpg', 1, 1, 0, 2, 2, NULL, '2018-06-26 21:27:38', '2018-06-26 23:38:36', NULL),
(5, 1, 4, 26, '005', '7-double-a', 'Double A', 'Double A', 2, 10, NULL, NULL, NULL, NULL, '1530073714.jpg', 1, 1, 0, 2, 2, NULL, '2018-06-26 21:28:34', '2018-06-26 23:36:10', NULL),
(6, 1, 3, 18, '006', '7-pen-holder', 'Pen Holder', 'ប្រដាប់ដាក់ប៊ិុច', 1, 20, NULL, NULL, NULL, NULL, '1530081406.jpg', 1, 1, 0, 2, 2, NULL, '2018-06-26 21:31:25', '2018-06-26 23:36:46', NULL),
(7, 1, 6, 36, '007', 'color-pen', 'Color Pen', 'បិុច ពណ៏', 1, 50, NULL, NULL, NULL, NULL, '1530082186.png', 1, 1, 0, 2, NULL, NULL, '2018-06-26 23:49:46', '2018-07-17 11:00:30', NULL),
(8, 1, 3, 15, '008', 'staple', 'Staple', 'ប្រដាប់កឹប', 1, 50, NULL, NULL, NULL, NULL, '1530082356.jpg', 1, 1, 0, 2, NULL, NULL, '2018-06-26 23:52:36', NULL, NULL),
(9, 1, 7, 39, '009', 'paper-glue', 'Paper Glue', 'កាវ​បិទ ក្រដាស់', 1, 20, NULL, NULL, NULL, NULL, '1530082475.png', 1, 1, 0, 2, NULL, NULL, '2018-06-26 23:54:35', NULL, NULL),
(10, 1, 3, 12, '010', 'document-tay', 'Document Tay', 'ប្រដាប់ដាក់ឯកសារ', 2, 100, NULL, NULL, NULL, NULL, '1530082689.jpg', 1, 0, 0, 2, NULL, 2, '2018-06-26 23:58:09', '2018-07-24 23:14:47', '2018-07-05 07:38:40'),
(11, 1, 1, 2, '000020', 'color-hand', 'Color Hand', 'តាំម ប៉ុង', 1, 2, NULL, NULL, NULL, NULL, '1534407283.jpg', 1, 1, 0, 4, NULL, NULL, '2018-08-16 01:14:43', NULL, NULL),
(12, 1, 1, 9, '000021', 'water-color', 'Water Color', 'ទឹក ហ៉ឹត', 1, 2, NULL, NULL, NULL, NULL, '1534407452.jpg', 1, 1, 0, 4, NULL, NULL, '2018-08-16 01:17:32', NULL, NULL),
(13, 1, 2, NULL, '000022', 'battery-fcf', 'Battery FCF', 'ថ្មពិល', 1, 1, NULL, NULL, NULL, NULL, '1534407583.jpg', 1, 1, 0, 4, NULL, NULL, '2018-08-16 01:19:43', NULL, NULL),
(14, 1, 2, NULL, '000024', 'battery-yellow', 'Battery yellow', 'ថ្មពិល លឿង', 1, 0, NULL, NULL, NULL, NULL, '1534407666.jpg', 1, 1, 0, 4, NULL, NULL, '2018-08-16 01:21:06', NULL, NULL),
(15, 1, 2, NULL, '000025', 'battery-white', 'Battery white', 'ថ្មពិល ស', 1, 1, NULL, NULL, NULL, NULL, '1534407768.jpg', 1, 1, 0, 4, NULL, NULL, '2018-08-16 01:22:48', NULL, NULL),
(16, 1, 1, 9, '000027', 'sticker-note', 'Sticker note', 'ចំណាំដិត', 1, 1, NULL, NULL, NULL, NULL, '1534407911.jpg', 1, 1, 0, 4, NULL, NULL, '2018-08-16 01:25:11', NULL, NULL),
(17, 1, 1, 1, '000029', 'sample-calculator', 'Sample Calculator', 'កម្មវិធីគណនាគំរូ', 10, 2, NULL, NULL, NULL, NULL, '1534407988.jpg', 1, 1, 0, 4, NULL, NULL, '2018-08-16 01:26:28', NULL, NULL),
(18, 1, 1, 1, '000030', 'special-calculator', 'Special Calculator', 'ម៉ាសីុនគិតលេខ ពិសេស', 20, 1, NULL, NULL, NULL, NULL, '1534408052.jpg', 1, 1, 0, 4, NULL, NULL, '2018-08-16 01:27:32', NULL, NULL),
(19, 1, 1, 3, '000031', 'the-dealer-counts-money', 'The dealer counts money', 'ម៉ាសីុន រាប់លុយ', 200, 1, NULL, NULL, NULL, NULL, '1534408097.jpg', 1, 1, 0, 4, NULL, NULL, '2018-08-16 01:28:17', NULL, NULL),
(20, 1, 1, 3, '000033', '21-the-dealer-counts-money', 'The dealer counts money', 'ម៉ាសីុន រាប់លុយ', 250, 1, NULL, NULL, NULL, NULL, '1534408163.jpg', 1, 1, 0, 4, 4, NULL, '2018-08-16 01:29:23', '2018-08-22 08:42:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kh_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `en_description` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `kh_description` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `en_title`, `kh_title`, `slug`, `en_description`, `kh_description`, `image`, `is_published`, `is_deleted`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Discount 5% Khmer New Year', 'បញ្ចុះតំលៃ 5% ក្នុងឆ្នាំថ្មី', 'discount-5-khmer-new-year', 'All purchases at our Khemara Reaksmey bookcase are immediately available and there is a 5% discount immediately. Please subscribe to this promotion since April 10 to April 17th. Thank you!', 'រាល់ការជាវទិញសម្ភារសក្សា នៅបណ្ណាគារ ខេមរា រស្មីយើងខ្ញំុនិង មានការបញ្ញុះតម្លៃ 5% ភ្លាមៗ។ សូមអញ្ជើញជាវទាំងអស់គ្នា ការបញ្ជុះតម្លៃនេះមានចាប់តាំងពីថ្ងៃ ទី ១០ ដល់ ១៧ ខែមេសា នេះ​ បណ្នោះ។ សូមអគុណ!', '1529739176.jpg', 1, 0, 2, 2, 2, '2018-06-23 00:32:18', '2018-07-05 07:34:20', '2018-07-05 07:34:18'),
(2, 'Discount 5% Khmer Phcum Ben Day', 'បញ្ចុះតំលៃ 5% សំរាប់បុណ្យភ្ជុំបិណ្ឌ', 'discount-5-khmer-phcum-ben-day', 'All purchases at our Khemara Reaksmey bookcase are immediately available and there is a 5% discount immediately. Please subscribe to this promotion since October 1 to October 10th. Thank you!', 'រាល់ការជាវទិញសម្ភារសក្សា នៅបណ្ណាគារ ខេមរា រស្មីយើងខ្ញំុនិង មានការបញ្ញុះតម្លៃ 5% ភ្លាមៗ។ សូមអញ្ជើញជាវទាំងអស់គ្នា ការបញ្ជុះតម្លៃនេះមានចាប់តាំងពីថ្ងៃ ទី ០១ ដល់ ១០ ខែតុលា នេះ​ បណ្នោះ។ សូមអគុណ!', '1529739420.jpg', 1, 0, 2, NULL, NULL, '2018-06-23 00:37:00', NULL, NULL),
(3, 'Discount 5% Khmer New Year', 'បញ្ចុះតំលៃ 5% ក្នុងឆ្នាំថ្មី', '3-discount-5-khmer-new-year', 'All purchases at our Khemara Reaksmey bookcase are immediately available and there is a 5% discount immediately. Please subscribe to this promotion since April 10 to April 17th. Thank you!', 'រាល់ការជាវទិញសម្ភារសក្សា នៅបណ្ណាគារ ខេមរា រស្មីយើងខ្ញំុនិង មានការបញ្ញុះតម្លៃ 5% ភ្លាមៗ។ សូមអញ្ជើញជាវទាំងអស់គ្នា ការបញ្ជុះតម្លៃនេះមានចាប់តាំងពីថ្ងៃ ទី ១០ ដល់ ១៧ ខែមេសា នេះ​ បណ្នោះ។ សូមអគុណ!', '1529739454.jpg', 1, 0, 2, NULL, NULL, '2018-06-23 00:37:34', NULL, NULL),
(4, 'Discount 5% Khmer Phcum Ben Day', 'បញ្ចុះតំលៃ 5% សំរាប់បុណ្យភ្ជុំបិណ្ឌ', '5-discount-5-khmer-phcum-ben-day', 'All purchases at our Khemara Reaksmey bookcase are immediately available and there is a 5% discount immediately. Please subscribe to this promotion since October 1 to October 10th. Thank you!', 'រាល់ការជាវទិញសម្ភារសក្សា នៅបណ្ណាគារ ខេមរា រស្មីយើងខ្ញំុនិង មានការបញ្ញុះតម្លៃ 5% ភ្លាមៗ។ សូមអញ្ជើញជាវទាំងអស់គ្នា ការបញ្ជុះតម្លៃនេះមានចាប់តាំងពីថ្ងៃ ទី ០១ ដល់ ១០ ខែតុលា នេះ​ បណ្នោះ។ សូមអគុណ!', '1529739538.jpg', 0, 0, 2, 2, NULL, '2018-06-23 00:38:17', '2018-07-31 18:32:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(550) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(550) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `image`, `is_published`, `is_deleted`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'slide 1', '1529653184.jpg', 1, 0, 2, NULL, NULL, '2018-06-21 23:46:09', '2018-06-22 00:39:44', NULL),
(2, 'Slide 2', '1529653177.jpg', 1, 0, 2, NULL, NULL, '2018-06-21 23:46:25', '2018-06-22 00:39:37', NULL),
(3, 'Slide 3', '1529653168.jpg', 1, 0, 2, NULL, NULL, '2018-06-21 23:48:13', '2018-07-31 18:22:02', NULL),
(8, 'Tonon', '1534989760.jpg', 0, 1, 5, 5, 5, '2018-08-22 19:02:39', '2018-08-22 19:06:06', '2018-08-22 19:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `en_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kh_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `is_deleted` tinyint(4) NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `en_name`, `kh_name`, `image`, `is_deleted`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Office Equipment', 'ឧបករណ៍​ការិយាល័យ', '', 0, 2, 2, NULL, '2018-06-25 00:32:31', '2018-06-25 01:05:49', NULL),
(2, 1, 'Filing Product', 'ដាក់ផលិតផល', '', 0, 2, 2, NULL, '2018-06-25 00:34:51', '2018-06-25 00:34:51', NULL),
(3, 1, 'Office Stationery', 'ការិយាល័យការិយាល័យ', '', 0, 2, 2, NULL, '2018-06-25 00:52:02', '2018-06-25 00:52:02', NULL),
(4, 1, 'Paper Products', 'ផលិតផលក្រដាស', '', 1, 2, 2, 2, '2018-06-25 01:20:42', '2018-07-24 23:59:24', '2018-07-24 23:59:24'),
(5, 1, 'Writing Instrument', 'ឧបករណ៍សរសេរ', '', 0, 2, 2, NULL, '2018-06-25 01:23:56', '2018-06-25 01:23:56', NULL),
(6, 1, 'Art Material', 'សម្ភារៈសិល្បៈ', '', 0, 2, 2, NULL, '2018-06-25 01:27:39', '2018-06-25 01:27:39', NULL),
(7, 1, 'packing supplies', 'វេចខ្ចប់គ្រឿងផ្គត់ផ្គង់', '', 0, 2, 2, NULL, '2018-06-25 01:30:23', '2018-06-25 01:30:23', NULL),
(8, 2, 'Story Sooks', 'រឿងខ្មោច', '', 0, 2, 2, NULL, '2018-06-25 01:36:53', '2018-06-25 01:36:53', NULL),
(9, 2, 'Pc Books', 'សៀវភៅកំុព្យូទ័រ', '', 0, 2, 2, NULL, '2018-06-25 01:37:33', '2018-06-25 01:37:33', NULL),
(10, 2, 'Dictionary', 'វចនានុក្រម', '', 0, 2, 2, NULL, '2018-06-25 01:37:59', '2018-06-25 01:37:59', NULL),
(11, 2, 'Conversation', 'ការសន្ទនា', '', 0, 2, 2, NULL, '2018-06-25 01:40:14', '2018-06-25 01:40:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `en_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kh_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_deleted` tinyint(4) NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `sub_category_id`, `en_name`, `kh_name`, `is_deleted`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Binding Machines', 'ម៉ាស៊ីនចង', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Fingerprint Time Attendance', 'ម៉ាសីុនស្កេន ក្រយៅដៃ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Money Counter', 'ម៉ាសីុន រាប់លុយ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Paper Shredder', 'ឧបករណ៍ក្រដាសក្រដាស', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 'Laminator', 'ម៉សីុន ភ្រីន', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 'Time Recorder', 'ឧបករណ៍ថតពេលវេលា', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 'Paper Cutter', 'ឧបករណ៍កាត់ក្រដាស', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 'Paper Cutter', 'ឧបករណ៍កាត់ក្រដាស', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 'Office Stationery', 'ការិយាល័យការិយាល័យ', 0, NULL, NULL, NULL, NULL, '2018-06-25 00:51:09', '2018-06-25 00:51:09'),
(10, 3, 'Student Equipment', 'ឧបករណ៍សិស្ស', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 3, 'Calculators & Label Printer', 'ម៉ាស៊ីនគណនានិងម៉ាស៊ីនបោះពុម្ព', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 3, 'Document Tray', 'ថាសឯកសារ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 3, 'Numbering Machine', 'លេខរៀងម៉ាស៊ីន', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 3, 'Pins And Clips', 'ម្ជុលនិងឃ្លីប', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 3, 'Stapler And Staples', 'គ្រាប់កឹប នឹង​ ប្រដាប់កឹប', 0, NULL, NULL, NULL, NULL, '2018-06-25 01:11:16', NULL),
(16, 3, 'Stand Display', 'ប្រដាប់ដាក់ឯកសារ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 3, 'Magazine Holder', 'ប្រដាប់ដាក់ ទស្សនាវដ្ដី', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 3, 'Pen Holder', 'ប្រដាប់ដាក់ បិុច', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 3, 'Puncher & Staple Remover', 'Puncher & Staple Remover', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 3, 'Correction Pen', 'ទឹកលុប', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 3, 'Cash Box & Key Box', 'ប្រអប់សាច់ប្រាក់និងប្រអប់គន្លឹះ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 3, 'Ruler', 'បន្ទាត់', 0, NULL, NULL, NULL, NULL, '2018-06-25 01:18:04', NULL),
(23, 4, 'Note Books', 'សៀវភៅកត់ត្រា', 0, NULL, NULL, NULL, NULL, '2018-06-25 01:21:18', NULL),
(24, 4, 'Envelopes', 'ស្រោមសំបុត្រ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 4, 'Color Paper', 'ក្រដាសពណ៌', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 4, 'Copy Paper', 'ក្រដាស់រាម', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 4, 'Label', 'ស្កុត', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 4, 'Paper Roll', 'ក្រដាសជួតម៉ាត់', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 5, 'Pen', 'បិុច', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 5, 'Pencil', 'ខ្មៅដៃ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 5, 'Marker', 'ហ្វឹត', 0, NULL, NULL, NULL, NULL, '2018-06-25 01:25:23', NULL),
(32, 5, 'Correction Pen', 'ទឹកលុប', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 5, 'Tape', 'កាសែត', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 5, 'Eraser', 'ជ័រលុប', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 5, 'Art Material', 'សម្ភារៈសិល្បៈ', 0, NULL, NULL, NULL, NULL, '2018-06-25 01:27:23', '2018-06-25 01:27:23'),
(36, 6, 'Pencils & Pens', 'ខ្មៅដៃ & ប៊ិច', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 6, 'Water Color', 'គឺលឺ ទឹក', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 6, 'Oil Pastels', 'ប្រេងអេឡិចត្រូនិប្រេង', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 7, 'All Purpose Glue', 'កាវ​បិទ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 7, 'Cutter & Cutter Blade', 'កាំបិទ កាត់ក្រដាស់', 0, NULL, NULL, NULL, NULL, '2018-06-25 01:32:04', NULL),
(41, 7, 'Scissors', 'កន្ត្រៃ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 7, 'Tape Dispenser', 'ឧបករណ៍ចម្លងកាសែត', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 7, 'measuring tape', 'មែត្រ វាស់', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 10, 'Khmer', 'ភាសាខ្មែរ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 10, 'English', 'អង់គ្លេស', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 10, 'Chinese', 'ចិន', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 10, 'France', 'បារាំង', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 10, 'Japanese', 'ជប៉ុន', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 10, 'Korean', 'កូរ៉េ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 10, 'Thai', 'ថៃ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 11, 'Chinese', 'ចិន', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 11, 'English', 'អង់គ្លេស', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 11, 'France', 'បារាំង', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 11, 'Japanese', 'ជប៉ុន', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 11, 'Korean', 'កូរ៉េ', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 7, 'Test', 'Test', 1, 2, NULL, 2, '2018-07-05 20:33:43', '2018-07-05 20:33:51', '2018-07-05 20:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `is_ip_validated` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `position_id`, `name`, `phone`, `email`, `avatar`, `password`, `remember_token`, `status`, `visible`, `is_ip_validated`, `is_deleted`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'System 1', '012345675', 'system3@camcyber.com', '', '$2y$10$B.jwEqJG5sTekir7ih31O.oo4xIKqej1OvMJcITMqzmDxaU.ZpUhS', NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Admin 1', '012345678', 'admin@camcyber.com', '1531893997.jpg', '$2y$10$JGztPK0UowLxqjuxhkGrzeyS.8Fwf1n24yxEoitRDJfdzJRw9nEkK', 'pfBvn2UBamwf7fygwsgw8LfSZvV4lRUDYITRtAATfnDlM6PQiEjoD7sYYtwC', 1, 1, 0, 0, NULL, NULL, NULL, NULL, '2018-07-25 00:26:23', NULL),
(3, 2, 'User 1', '0123456784', 'user@camcyber.com', '1530633144.png', '$2y$10$053AAvi18kxtHlVcBgXdFe3Dh9jse3VA5GSBL18egNFyZSlfNYwki', NULL, 1, 1, 0, 0, NULL, NULL, NULL, NULL, '2018-07-03 08:52:24', NULL),
(4, 2, 'Poster', '070124547', 'poster@khmeraksmey.com', '1530669774.jpg', '$2y$10$4HJ7xv2hKfVEG1n3eW8u/.O..sCCfUWWXbmi460EusNEE76ynndiu', 'VP8Z4OyhkgbguChnS6Py5TDBcjvlJi1WhKbXPZViDT7EtgDsai1qHUsi8LAX', 1, 1, 0, 0, NULL, NULL, NULL, NULL, '2018-07-03 19:02:54', NULL),
(5, 3, 'Manager', '0932273434', 'manager@khemraraksmey.com', '1534953556.jpg', '$2y$10$fnYtDvZ14fKQe03LqK8MyODtfkhZjYag3993SfvH/ybKyOgU1paHS', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '2018-08-22 09:03:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `broswer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `ip`, `os`, `broswer`, `version`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-12 04:57:40', '2018-06-12 04:57:40', NULL),
(2, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-15 19:19:20', '2018-06-15 19:19:20', NULL),
(3, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-17 08:52:41', '2018-06-17 08:52:41', NULL),
(4, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-21 08:32:18', '2018-06-21 08:32:18', NULL),
(5, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-21 08:41:56', '2018-06-21 08:41:56', NULL),
(6, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-21 23:45:39', '2018-06-21 23:45:39', NULL),
(7, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-22 20:35:11', '2018-06-22 20:35:11', NULL),
(8, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-23 22:46:54', '2018-06-23 22:46:54', NULL),
(9, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-24 19:51:05', '2018-06-24 19:51:05', NULL),
(10, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-26 04:36:29', '2018-06-26 04:36:29', NULL),
(11, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-26 05:48:58', '2018-06-26 05:48:58', NULL),
(12, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-26 09:00:43', '2018-06-26 09:00:43', NULL),
(13, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-06-26 20:36:35', '2018-06-26 20:36:35', NULL),
(14, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-01 08:48:27', '2018-07-01 08:48:27', NULL),
(15, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-03 07:42:50', '2018-07-03 07:42:50', NULL),
(16, 4, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-03 08:59:31', '2018-07-03 08:59:31', NULL),
(17, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-03 09:12:27', '2018-07-03 09:12:27', NULL),
(18, 4, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-03 09:12:53', '2018-07-03 09:12:53', NULL),
(19, 4, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-03 09:15:34', '2018-07-03 09:15:34', NULL),
(20, 4, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-03 09:21:44', '2018-07-03 09:21:44', NULL),
(21, 4, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-03 18:41:53', '2018-07-03 18:41:53', NULL),
(22, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-03 18:42:32', '2018-07-03 18:42:32', NULL),
(23, 4, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-04 05:37:13', '2018-07-04 05:37:13', NULL),
(24, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-04 05:41:24', '2018-07-04 05:41:24', NULL),
(25, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-04 05:50:57', '2018-07-04 05:50:57', NULL),
(26, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-04 06:05:01', '2018-07-04 06:05:01', NULL),
(27, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-04 06:05:40', '2018-07-04 06:05:40', NULL),
(28, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-04 06:05:47', '2018-07-04 06:05:47', NULL),
(29, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-04 06:06:50', '2018-07-04 06:06:50', NULL),
(30, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-04 18:54:03', '2018-07-04 18:54:03', NULL),
(31, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-04 23:22:15', '2018-07-04 23:22:15', NULL),
(32, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-05 05:51:52', '2018-07-05 05:51:52', NULL),
(33, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-05 19:32:40', '2018-07-05 19:32:40', NULL),
(34, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-05 20:14:40', '2018-07-05 20:14:40', NULL),
(35, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 03:02:03', '2018-07-06 03:02:03', NULL),
(36, 4, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 03:13:26', '2018-07-06 03:13:26', NULL),
(37, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 04:38:00', '2018-07-06 04:38:00', NULL),
(38, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 09:24:05', '2018-07-06 09:24:05', NULL),
(39, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 19:56:00', '2018-07-06 19:56:00', NULL),
(40, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-06 22:54:09', '2018-07-06 22:54:09', NULL),
(41, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-08 23:29:36', '2018-07-08 23:29:36', NULL),
(42, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 02:24:33', '2018-07-11 02:24:33', NULL),
(43, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-11 11:24:30', '2018-07-11 11:24:30', NULL),
(44, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-17 01:32:14', '2018-07-17 01:32:14', NULL),
(45, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-17 05:48:56', '2018-07-17 05:48:56', NULL),
(46, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-17 22:12:35', '2018-07-17 22:12:35', NULL),
(47, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-18 09:13:54', '2018-07-18 09:13:54', NULL),
(48, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-19 04:39:02', '2018-07-19 04:39:02', NULL),
(49, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-20 09:54:51', '2018-07-20 09:54:51', NULL),
(50, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-23 00:51:37', '2018-07-23 00:51:37', NULL),
(51, 2, '::1', 'Windows', 'Google Chrome', '67.0.3396.', '2018-07-24 10:33:29', '2018-07-24 10:33:29', NULL),
(52, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-24 21:57:34', '2018-07-24 21:57:34', NULL),
(53, 4, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-25 00:43:34', '2018-07-25 00:43:34', NULL),
(54, 4, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-25 00:44:52', '2018-07-25 00:44:52', NULL),
(55, 4, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-25 00:45:31', '2018-07-25 00:45:31', NULL),
(56, 4, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-25 00:46:43', '2018-07-25 00:46:43', NULL),
(57, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-30 07:26:45', '2018-07-30 07:26:45', NULL),
(58, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-30 19:01:12', '2018-07-30 19:01:12', NULL),
(59, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-07-31 17:54:35', '2018-07-31 17:54:35', NULL),
(60, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-01 04:33:08', '2018-08-01 04:33:08', NULL),
(61, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-01 09:41:45', '2018-08-01 09:41:45', NULL),
(62, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-02 01:51:26', '2018-08-02 01:51:26', NULL),
(63, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-02 23:36:27', '2018-08-02 23:36:27', NULL),
(64, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-04 18:41:48', '2018-08-04 18:41:48', NULL),
(65, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-05 19:15:29', '2018-08-05 19:15:29', NULL),
(66, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-06 01:49:38', '2018-08-06 01:49:38', NULL),
(67, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-07 01:57:17', '2018-08-07 01:57:17', NULL),
(68, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-10 22:20:58', '2018-08-10 22:20:58', NULL),
(69, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-11 08:11:35', '2018-08-11 08:11:35', NULL),
(70, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-11 09:07:37', '2018-08-11 09:07:37', NULL),
(71, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-13 07:03:57', '2018-08-13 07:03:57', NULL),
(72, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-13 08:00:37', '2018-08-13 08:00:37', NULL),
(73, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-13 20:20:53', '2018-08-13 20:20:53', NULL),
(74, 4, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-13 20:50:15', '2018-08-13 20:50:15', NULL),
(75, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-16 00:45:36', '2018-08-16 00:45:36', NULL),
(76, 4, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-16 00:45:56', '2018-08-16 00:45:56', NULL),
(77, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-20 19:33:54', '2018-08-20 19:33:54', NULL),
(78, 4, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-20 19:58:47', '2018-08-20 19:58:47', NULL),
(79, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-22 08:22:13', '2018-08-22 08:22:13', NULL),
(80, 4, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-22 08:22:55', '2018-08-22 08:22:55', NULL),
(81, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-22 18:49:55', '2018-08-22 18:49:55', NULL),
(82, 5, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-22 18:57:58', '2018-08-22 18:57:58', NULL),
(83, 5, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-08-26 10:35:28', '2018-08-26 10:35:28', NULL),
(84, 2, '::1', 'Windows', 'Google Chrome', '68.0.3440.', '2018-09-10 19:58:40', '2018-09-10 19:58:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_trackings`
--

CREATE TABLE `user_trackings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_trackings`
--

INSERT INTO `user_trackings` (`id`, `user_id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Update slide id:4', '2018-07-24 22:15:33', '2018-07-24 22:15:33', NULL),
(2, 2, 'Update slide publish id:6', '2018-07-24 22:26:34', '2018-07-24 22:26:34', NULL),
(3, 2, 'Update slide publish id:6', '2018-07-24 22:26:45', '2018-07-24 22:26:45', NULL),
(4, 2, 'Create new slide id:7', '2018-07-24 22:27:47', '2018-07-24 22:27:47', NULL),
(5, 2, 'Update slide unpublish id:7', '2018-07-24 22:29:36', '2018-07-24 22:29:36', NULL),
(6, 2, 'Update slide unpublish id:7', '2018-07-24 22:29:44', '2018-07-24 22:29:45', NULL),
(7, 2, 'Update product unfeature id:10', '2018-07-24 23:14:47', '2018-07-24 23:14:47', NULL),
(8, 2, 'Create new category id:5', '2018-07-24 23:58:17', '2018-07-24 23:58:17', NULL),
(9, 2, 'Create new subcategory id:13', '2018-07-24 23:59:05', '2018-07-24 23:59:05', NULL),
(10, 2, 'Delete subcategory id:4', '2018-07-24 23:59:24', '2018-07-24 23:59:24', NULL),
(11, 2, 'Create new subcategory id:14', '2018-07-25 00:03:48', '2018-07-25 00:03:48', NULL),
(12, 2, 'Update subcategory id:14and name:', '2018-07-25 00:06:48', '2018-07-25 00:06:48', NULL),
(13, 2, 'Update subcategory id:14', '2018-07-25 00:07:07', '2018-07-25 00:07:07', NULL),
(14, 2, 'Update slide id:4', '2018-07-25 00:11:35', '2018-07-25 00:11:35', NULL),
(15, 2, 'Update his profile.', '2018-07-25 00:26:23', '2018-07-25 00:26:23', NULL),
(16, 4, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-07-25 00:46:43', '2018-07-25 00:46:43', NULL),
(17, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-07-30 07:26:45', '2018-07-30 07:26:45', NULL),
(18, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-07-30 19:01:12', '2018-07-30 19:01:12', NULL),
(19, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-07-31 17:54:35', '2018-07-31 17:54:35', NULL),
(20, 2, 'Update slide id:Slide 3', '2018-07-31 18:22:02', '2018-07-31 18:22:03', NULL),
(21, 2, 'Update slide publish name:Tonon', '2018-07-31 18:23:03', '2018-07-31 18:23:03', NULL),
(22, 2, 'Update slide publish name:Tonon', '2018-07-31 18:23:13', '2018-07-31 18:23:13', NULL),
(23, 2, 'Update news id:4and name:KAPE’S NEW GENERATION SCHOOL INITIATIVE IMPLEMENTS IT IN CAMBODIAN SCHOOLS.', '2018-07-31 18:29:55', '2018-07-31 18:29:56', NULL),
(24, 2, 'Update promotion name:Discount 5% Khmer Phcum Ben Day', '2018-07-31 18:32:44', '2018-07-31 18:32:45', NULL),
(25, 2, 'Update promotion unpublish name:Discount 5% Khmer Phcum Ben Day', '2018-07-31 18:32:53', '2018-07-31 18:32:53', NULL),
(26, 2, 'Update promotion unpublish name:Discount 5% Khmer Phcum Ben Day', '2018-07-31 18:32:55', '2018-07-31 18:32:55', NULL),
(27, 2, 'Update category name:Toys', '2018-07-31 18:56:01', '2018-07-31 18:56:01', NULL),
(28, 2, 'Update subcategory name:Book', '2018-07-31 18:56:11', '2018-07-31 18:56:11', NULL),
(29, 2, 'Create new main category name:Test', '2018-07-31 18:56:30', '2018-07-31 18:56:30', NULL),
(30, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-01 04:33:08', '2018-08-01 04:33:08', NULL),
(31, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-01 09:41:45', '2018-08-01 09:41:45', NULL),
(32, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-02 01:51:26', '2018-08-02 01:51:26', NULL),
(33, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-02 23:36:27', '2018-08-02 23:36:27', NULL),
(34, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-04 18:41:48', '2018-08-04 18:41:48', NULL),
(35, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-05 19:15:28', '2018-08-05 19:15:29', NULL),
(36, 2, 'Recieve new order id: 8 from customer', '2018-08-05 19:31:14', '2018-08-05 19:31:14', NULL),
(37, 2, 'Recieve new order id: 5 from customer', '2018-08-05 19:31:20', '2018-08-05 19:31:20', NULL),
(38, 2, 'Recieve new order id: 8 from customer', '2018-08-05 19:37:55', '2018-08-05 19:37:55', NULL),
(39, 2, 'Recieve new order id: 8 from customer', '2018-08-05 19:41:28', '2018-08-05 19:41:28', NULL),
(40, 2, 'Recieve new order id: 8 from customer', '2018-08-05 19:49:43', '2018-08-05 19:49:43', NULL),
(41, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-06 01:49:38', '2018-08-06 01:49:38', NULL),
(42, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-07 01:57:17', '2018-08-07 01:57:17', NULL),
(43, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-10 22:20:58', '2018-08-10 22:20:59', NULL),
(44, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-11 08:11:35', '2018-08-11 08:11:35', NULL),
(45, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-11 09:07:37', '2018-08-11 09:07:37', NULL),
(46, 2, 'Recieve new order id: 7 from customer', '2018-08-11 09:19:37', '2018-08-11 09:19:37', NULL),
(47, 2, 'Recieve new order id: 8 from customer', '2018-08-11 09:20:31', '2018-08-11 09:20:31', NULL),
(48, 2, 'Recieve new order id: 8 from customer', '2018-08-11 09:21:01', '2018-08-11 09:21:01', NULL),
(49, 2, 'Recieve new order id: 8 from customer', '2018-08-11 09:23:06', '2018-08-11 09:23:06', NULL),
(50, 2, 'Recieve new order id: 8 from customer', '2018-08-11 09:23:48', '2018-08-11 09:23:48', NULL),
(51, 2, 'Recieve new order id: 8 from customer', '2018-08-11 09:28:30', '2018-08-11 09:28:30', NULL),
(52, 2, 'Recieve new order id: 8 from customer', '2018-08-11 09:29:01', '2018-08-11 09:29:01', NULL),
(53, 2, 'Recieve new order id: 8 from customer', '2018-08-11 09:29:12', '2018-08-11 09:29:12', NULL),
(54, 2, 'Recieve new order id: 8 from customer', '2018-08-11 09:31:30', '2018-08-11 09:31:30', NULL),
(55, 2, 'Recieve new order id: 8 from customer', '2018-08-11 09:31:43', '2018-08-11 09:31:43', NULL),
(56, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-13 07:03:57', '2018-08-13 07:03:57', NULL),
(57, 2, 'Recieve new order id: 8 from customer', '2018-08-13 07:14:57', '2018-08-13 07:14:57', NULL),
(58, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-13 08:00:37', '2018-08-13 08:00:37', NULL),
(59, 2, 'Update slide unpublish name:Tonon', '2018-08-13 08:14:21', '2018-08-13 08:14:21', NULL),
(60, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-13 20:20:53', '2018-08-13 20:20:53', NULL),
(61, 2, 'Recieve new order id: 11 from customer', '2018-08-13 20:28:43', '2018-08-13 20:28:43', NULL),
(62, 4, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-13 20:50:15', '2018-08-13 20:50:15', NULL),
(63, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-16 00:45:36', '2018-08-16 00:45:36', NULL),
(64, 4, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-16 00:45:56', '2018-08-16 00:45:56', NULL),
(65, 4, 'Create new product name:Color Hand', '2018-08-16 01:14:43', '2018-08-16 01:14:43', NULL),
(66, 4, 'Create new product name:Water Color', '2018-08-16 01:17:32', '2018-08-16 01:17:32', NULL),
(67, 4, 'Create new product name:Battery FCF', '2018-08-16 01:19:43', '2018-08-16 01:19:44', NULL),
(68, 4, 'Create new product name:Battery yellow', '2018-08-16 01:21:06', '2018-08-16 01:21:06', NULL),
(69, 4, 'Create new product name:Battery white', '2018-08-16 01:22:48', '2018-08-16 01:22:48', NULL),
(70, 4, 'Create new product name:Sticker note', '2018-08-16 01:25:11', '2018-08-16 01:25:11', NULL),
(71, 4, 'Create new product name:Sample Calculator', '2018-08-16 01:26:28', '2018-08-16 01:26:28', NULL),
(72, 4, 'Create new product name:Special Calculator', '2018-08-16 01:27:32', '2018-08-16 01:27:33', NULL),
(73, 4, 'Create new product name:The dealer counts money', '2018-08-16 01:28:17', '2018-08-16 01:28:17', NULL),
(74, 4, 'Create new product name:The dealer counts money', '2018-08-16 01:29:23', '2018-08-16 01:29:23', NULL),
(75, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-20 19:33:54', '2018-08-20 19:33:54', NULL),
(76, 4, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-20 19:58:47', '2018-08-20 19:58:47', NULL),
(77, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-22 08:22:12', '2018-08-22 08:22:13', NULL),
(78, 4, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-22 08:22:55', '2018-08-22 08:22:55', NULL),
(79, 4, 'Update product name:The dealer counts money', '2018-08-22 08:42:56', '2018-08-22 08:42:56', NULL),
(80, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-22 18:49:55', '2018-08-22 18:49:55', NULL),
(81, 5, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-22 18:57:58', '2018-08-22 18:57:58', NULL),
(82, 5, 'Create new slide name:Tonon', '2018-08-22 19:02:39', '2018-08-22 19:02:40', NULL),
(83, 5, 'Delete slide name:Tonon', '2018-08-22 19:02:46', '2018-08-22 19:02:46', NULL),
(84, 5, 'Update slide unpublish name:Tonon', '2018-08-22 19:04:52', '2018-08-22 19:04:52', NULL),
(85, 5, 'Delete slide name:Tonon', '2018-08-22 19:06:06', '2018-08-22 19:06:06', NULL),
(86, 5, 'Create new product name:tonon', '2018-08-22 19:21:28', '2018-08-22 19:21:28', NULL),
(87, 5, 'Delete product name:tonon', '2018-08-22 19:21:41', '2018-08-22 19:21:41', NULL),
(88, 5, 'Delete category name:Toys', '2018-08-22 19:23:48', '2018-08-22 19:23:48', NULL),
(89, 5, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-08-26 10:35:28', '2018-08-26 10:35:28', NULL),
(90, 2, 'User login to the system with ip:::1 os:Windows browser:Google Chrome', '2018-09-10 19:58:40', '2018-09-10 19:58:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(10) UNSIGNED NOT NULL,
  `broswer` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `updater_id` int(10) UNSIGNED DEFAULT NULL,
  `deleter_id` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `broswer`, `ip`, `creator_id`, `updater_id`, `deleter_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 'Google Chrome', '::1', NULL, NULL, 0, '2018-07-30 08:11:28', '2018-07-30 08:11:28', NULL),
(9, 'Google Chrome', '::1', NULL, NULL, 0, '2018-07-30 19:01:14', '2018-07-30 19:01:14', NULL),
(10, 'Google Chrome', '::1', NULL, NULL, 0, '2018-07-30 19:15:04', '2018-07-30 19:15:04', NULL),
(11, 'UnKnown', '::1', NULL, NULL, 0, '2018-07-30 19:16:01', '2018-07-30 19:16:01', NULL),
(12, 'UnKnown', '::1', NULL, NULL, 0, '2018-07-30 19:16:08', '2018-07-30 19:16:08', NULL),
(13, 'UnKnown', '::1', NULL, NULL, 0, '2018-07-30 19:16:53', '2018-07-30 19:16:53', NULL),
(14, 'Google Chrome', '::1', NULL, NULL, 0, '2018-07-30 19:16:57', '2018-07-30 19:16:57', NULL),
(15, 'Google Chrome', '::1', NULL, NULL, 0, '2018-07-31 17:54:42', '2018-07-31 17:54:42', NULL),
(16, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 04:33:11', '2018-08-01 04:33:11', NULL),
(17, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 05:34:13', '2018-08-01 05:34:13', NULL),
(18, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 05:47:23', '2018-08-01 05:47:23', NULL),
(19, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:00:01', '2018-08-01 06:00:01', NULL),
(20, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:15:01', '2018-08-01 06:15:01', NULL),
(21, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:16:06', '2018-08-01 06:16:06', NULL),
(22, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:17:01', '2018-08-01 06:17:01', NULL),
(23, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:17:41', '2018-08-01 06:17:41', NULL),
(24, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:19:59', '2018-08-01 06:19:59', NULL),
(25, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:20:52', '2018-08-01 06:20:52', NULL),
(26, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:22:36', '2018-08-01 06:22:36', NULL),
(27, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:25:32', '2018-08-01 06:25:32', NULL),
(28, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:26:42', '2018-08-01 06:26:42', NULL),
(29, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:26:53', '2018-08-01 06:26:53', NULL),
(30, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:27:04', '2018-08-01 06:27:04', NULL),
(31, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:27:30', '2018-08-01 06:27:30', NULL),
(32, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:28:08', '2018-08-01 06:28:08', NULL),
(33, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:28:16', '2018-08-01 06:28:16', NULL),
(34, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:30:04', '2018-08-01 06:30:04', NULL),
(35, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:30:37', '2018-08-01 06:30:37', NULL),
(36, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:31:24', '2018-08-01 06:31:24', NULL),
(37, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:31:33', '2018-08-01 06:31:33', NULL),
(38, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:32:48', '2018-08-01 06:32:48', NULL),
(39, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:32:56', '2018-08-01 06:32:56', NULL),
(40, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:53:33', '2018-08-01 06:53:33', NULL),
(41, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:53:37', '2018-08-01 06:53:37', NULL),
(42, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:55:24', '2018-08-01 06:55:24', NULL),
(43, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:56:11', '2018-08-01 06:56:11', NULL),
(44, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:56:37', '2018-08-01 06:56:37', NULL),
(45, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:57:16', '2018-08-01 06:57:16', NULL),
(46, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 06:57:18', '2018-08-01 06:57:18', NULL),
(47, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:00:51', '2018-08-01 07:00:51', NULL),
(48, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:01:29', '2018-08-01 07:01:29', NULL),
(49, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:08:59', '2018-08-01 07:08:59', NULL),
(50, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:09:27', '2018-08-01 07:09:27', NULL),
(51, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:09:58', '2018-08-01 07:09:58', NULL),
(52, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:12:12', '2018-08-01 07:12:12', NULL),
(53, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:14:39', '2018-08-01 07:14:39', NULL),
(54, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:15:09', '2018-08-01 07:15:09', NULL),
(55, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:16:36', '2018-08-01 07:16:36', NULL),
(56, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:28:26', '2018-08-01 07:28:26', NULL),
(57, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:33:55', '2018-08-01 07:33:55', NULL),
(58, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:36:44', '2018-08-01 07:36:44', NULL),
(59, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:36:51', '2018-08-01 07:36:51', NULL),
(60, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 07:37:15', '2018-08-01 07:37:15', NULL),
(61, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-01 09:41:47', '2018-08-01 09:41:47', NULL),
(62, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-02 01:51:29', '2018-08-02 01:51:29', NULL),
(63, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-02 01:54:06', '2018-08-02 01:54:06', NULL),
(64, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-02 01:54:24', '2018-08-02 01:54:24', NULL),
(65, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-02 01:54:57', '2018-08-02 01:54:57', NULL),
(66, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-02 02:00:02', '2018-08-02 02:00:02', NULL),
(67, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-02 02:06:32', '2018-08-02 02:06:32', NULL),
(68, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-02 02:06:52', '2018-08-02 02:06:52', NULL),
(69, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-02 23:36:42', '2018-08-02 23:36:42', NULL),
(70, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-03 00:10:09', '2018-08-03 00:10:09', NULL),
(71, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-04 18:42:33', '2018-08-04 18:42:33', NULL),
(72, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-04 19:39:58', '2018-08-04 19:39:58', NULL),
(73, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-04 23:26:37', '2018-08-04 23:26:37', NULL),
(74, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 01:49:40', '2018-08-06 01:49:40', NULL),
(75, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 01:53:10', '2018-08-06 01:53:10', NULL),
(76, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 01:53:16', '2018-08-06 01:53:16', NULL),
(77, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 02:02:44', '2018-08-06 02:02:44', NULL),
(78, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 02:05:26', '2018-08-06 02:05:26', NULL),
(79, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 02:05:40', '2018-08-06 02:05:40', NULL),
(80, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 02:05:48', '2018-08-06 02:05:48', NULL),
(81, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 02:06:38', '2018-08-06 02:06:38', NULL),
(82, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 02:10:30', '2018-08-06 02:10:30', NULL),
(83, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 02:16:53', '2018-08-06 02:16:53', NULL),
(84, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 02:16:58', '2018-08-06 02:16:58', NULL),
(85, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-06 02:17:01', '2018-08-06 02:17:01', NULL),
(86, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-07 01:59:29', '2018-08-07 01:59:29', NULL),
(87, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-07 01:59:45', '2018-08-07 01:59:45', NULL),
(88, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-07 02:23:19', '2018-08-07 02:23:19', NULL),
(89, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-07 02:23:23', '2018-08-07 02:23:23', NULL),
(90, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-10 22:21:01', '2018-08-10 22:21:01', NULL),
(91, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-10 22:23:10', '2018-08-10 22:23:10', NULL),
(92, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-11 08:13:28', '2018-08-11 08:13:28', NULL),
(93, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-11 09:20:23', '2018-08-11 09:20:23', NULL),
(94, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 07:03:59', '2018-08-13 07:03:59', NULL),
(95, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 07:27:29', '2018-08-13 07:27:29', NULL),
(96, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 07:27:37', '2018-08-13 07:27:37', NULL),
(97, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 07:27:40', '2018-08-13 07:27:40', NULL),
(98, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 07:28:18', '2018-08-13 07:28:18', NULL),
(99, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 07:28:22', '2018-08-13 07:28:22', NULL),
(100, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 07:28:25', '2018-08-13 07:28:25', NULL),
(101, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 07:28:30', '2018-08-13 07:28:30', NULL),
(102, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 07:59:58', '2018-08-13 07:59:58', NULL),
(103, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 08:07:36', '2018-08-13 08:07:36', NULL),
(104, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 08:08:21', '2018-08-13 08:08:21', NULL),
(105, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 08:08:24', '2018-08-13 08:08:24', NULL),
(106, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 08:20:37', '2018-08-13 08:20:37', NULL),
(107, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 08:33:17', '2018-08-13 08:33:17', NULL),
(108, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 09:56:43', '2018-08-13 09:56:43', NULL),
(109, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 09:58:05', '2018-08-13 09:58:05', NULL),
(110, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 09:58:24', '2018-08-13 09:58:24', NULL),
(111, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 09:59:30', '2018-08-13 09:59:30', NULL),
(112, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 10:11:56', '2018-08-13 10:11:56', NULL),
(113, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 20:56:13', '2018-08-13 20:56:13', NULL),
(114, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-13 22:01:24', '2018-08-13 22:01:24', NULL),
(115, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 00:45:38', '2018-08-16 00:45:38', NULL),
(116, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 00:48:40', '2018-08-16 00:48:40', NULL),
(117, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 00:57:22', '2018-08-16 00:57:22', NULL),
(118, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 00:59:21', '2018-08-16 00:59:21', NULL),
(119, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 01:00:19', '2018-08-16 01:00:19', NULL),
(120, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 01:29:25', '2018-08-16 01:29:25', NULL),
(121, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 01:30:18', '2018-08-16 01:30:18', NULL),
(122, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 01:30:24', '2018-08-16 01:30:24', NULL),
(123, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 01:30:28', '2018-08-16 01:30:28', NULL),
(124, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 01:30:41', '2018-08-16 01:30:41', NULL),
(125, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-16 01:30:42', '2018-08-16 01:30:42', NULL),
(126, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-20 19:34:24', '2018-08-20 19:34:24', NULL),
(127, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-20 19:39:43', '2018-08-20 19:39:43', NULL),
(128, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-20 19:40:10', '2018-08-20 19:40:10', NULL),
(129, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-20 19:50:39', '2018-08-20 19:50:39', NULL),
(130, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-20 19:52:09', '2018-08-20 19:52:09', NULL),
(131, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-20 19:52:33', '2018-08-20 19:52:33', NULL),
(132, 'Google Chrome', '::1', NULL, NULL, 0, '2018-08-20 20:08:42', '2018-08-20 20:08:42', NULL),
(133, 'Google Chrome', '::1', NULL, NULL, 0, '2018-09-05 20:50:36', '2018-09-05 20:50:36', NULL),
(134, 'Google Chrome', '::1', NULL, NULL, 0, '2018-09-05 20:55:28', '2018-09-05 20:55:28', NULL),
(135, 'Google Chrome', '::1', NULL, NULL, 0, '2018-09-05 20:56:31', '2018-09-05 20:56:31', NULL),
(136, 'Google Chrome', '::1', NULL, NULL, 0, '2018-09-05 20:56:53', '2018-09-05 20:56:53', NULL),
(137, 'Google Chrome', '::1', NULL, NULL, 0, '2018-09-10 19:58:43', '2018-09-10 19:58:43', NULL),
(138, 'Google Chrome', '::1', NULL, NULL, 0, '2018-09-10 20:17:25', '2018-09-10 20:17:25', NULL),
(139, 'Google Chrome', '::1', NULL, NULL, 0, '2018-09-10 20:18:21', '2018-09-10 20:18:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcements_creator_id_index` (`creator_id`),
  ADD KEY `announcements_updater_id_index` (`updater_id`),
  ADD KEY `announcements_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_creator_id_index` (`creator_id`),
  ADD KEY `categories_updater_id_index` (`updater_id`),
  ADD KEY `categories_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_width_index` (`width`),
  ADD KEY `contents_height_index` (`height`),
  ADD KEY `contents_updater_id_index` (`updater_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD KEY `customers_creator_id_index` (`creator_id`),
  ADD KEY `customers_updater_id_index` (`updater_id`),
  ADD KEY `customers_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `customer_logs`
--
ALTER TABLE `customer_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_logs_customer_id_index` (`customer_id`);

--
-- Indexes for table `customer_password_resets`
--
ALTER TABLE `customer_password_resets`
  ADD KEY `customer_password_resets_email_index` (`email`);

--
-- Indexes for table `customer_product_favorites`
--
ALTER TABLE `customer_product_favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_product_favorites_customer_id_index` (`customer_id`),
  ADD KEY `customer_product_favorites_product_id_index` (`product_id`),
  ADD KEY `customer_product_favorites_creator_id_index` (`creator_id`),
  ADD KEY `customer_product_favorites_updater_id_index` (`updater_id`),
  ADD KEY `customer_product_favorites_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `customer_verify_codes`
--
ALTER TABLE `customer_verify_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_verify_codes_customer_id_index` (`customer_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_creator_id_index` (`creator_id`),
  ADD KEY `messages_updater_id_index` (`updater_id`),
  ADD KEY `messages_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_creator_id_index` (`creator_id`),
  ADD KEY `news_updater_id_index` (`updater_id`),
  ADD KEY `news_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_transporter_id_index` (`transporter_id`),
  ADD KEY `orders_verified_id_index` (`verified_id`),
  ADD KEY `orders_creator_id_index` (`creator_id`),
  ADD KEY `orders_updater_id_index` (`updater_id`),
  ADD KEY `orders_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_index` (`order_id`),
  ADD KEY `order_details_product_id_index` (`product_id`),
  ADD KEY `order_details_qty_index` (`qty`),
  ADD KEY `order_details_unit_price_index` (`unit_price`),
  ADD KEY `order_details_creator_id_index` (`creator_id`),
  ADD KEY `order_details_updater_id_index` (`updater_id`),
  ADD KEY `order_details_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permisions`
--
ALTER TABLE `permisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_index` (`category_id`),
  ADD KEY `products_sub_category_id_index` (`sub_category_id`),
  ADD KEY `products_sub_sub_category_id_index` (`sub_sub_category_id`),
  ADD KEY `products_unit_price_index` (`unit_price`),
  ADD KEY `products_product_qty_index` (`product_qty`),
  ADD KEY `products_creator_id_index` (`creator_id`),
  ADD KEY `products_updater_id_index` (`updater_id`),
  ADD KEY `products_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_creator_id_index` (`creator_id`),
  ADD KEY `promotions_updater_id_index` (`updater_id`),
  ADD KEY `promotions_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_creator_id_index` (`creator_id`),
  ADD KEY `slides_updater_id_index` (`updater_id`),
  ADD KEY `slides_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_index` (`category_id`),
  ADD KEY `sub_categories_creator_id_index` (`creator_id`),
  ADD KEY `sub_categories_updater_id_index` (`updater_id`),
  ADD KEY `sub_categories_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_sub_categories_sub_category_id_index` (`sub_category_id`),
  ADD KEY `sub_sub_categories_creator_id_index` (`creator_id`),
  ADD KEY `sub_sub_categories_updater_id_index` (`updater_id`),
  ADD KEY `sub_sub_categories_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_position_id_foreign` (`position_id`),
  ADD KEY `users_creator_id_index` (`creator_id`),
  ADD KEY `users_updater_id_index` (`updater_id`),
  ADD KEY `users_deleter_id_index` (`deleter_id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_logs_user_id_index` (`user_id`);

--
-- Indexes for table `user_trackings`
--
ALTER TABLE `user_trackings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_logs_user_id_index` (`user_id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_creator_id_index` (`creator_id`),
  ADD KEY `slides_updater_id_index` (`updater_id`),
  ADD KEY `slides_deleter_id_index` (`deleter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer_logs`
--
ALTER TABLE `customer_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `customer_product_favorites`
--
ALTER TABLE `customer_product_favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customer_verify_codes`
--
ALTER TABLE `customer_verify_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `permisions`
--
ALTER TABLE `permisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `user_trackings`
--
ALTER TABLE `user_trackings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `customer_logs`
--
ALTER TABLE `customer_logs`
  ADD CONSTRAINT `customer_logs_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_product_favorites`
--
ALTER TABLE `customer_product_favorites`
  ADD CONSTRAINT `customer_product_favorites_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `customer_product_favorites_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_product_favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_verify_codes`
--
ALTER TABLE `customer_verify_codes`
  ADD CONSTRAINT `customer_verify_codes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_transporter_id_foreign` FOREIGN KEY (`transporter_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `sub_categories_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD CONSTRAINT `sub_sub_categories_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sub_sub_categories_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`);

--
-- Constraints for table `user_trackings`
--
ALTER TABLE `user_trackings`
  ADD CONSTRAINT `user_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitor`
--
ALTER TABLE `visitor`
  ADD CONSTRAINT `slides_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
