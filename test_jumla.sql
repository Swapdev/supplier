-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2018 at 12:41 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_jumla`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `slug`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Country of Origin', 'country-of-origin', 'origin', 'Define the Country of Origin', '2018-09-03 01:43:26', '2018-09-03 01:43:26'),
(2, 'Weight', 'weight', 'Weight', 'Weight of Product', '2018-09-03 01:44:05', '2018-09-03 01:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'Creekstone', 'creekstone', 'brand/August2018/1RoJeIzSTlFO6znZ0Q47.jpg', NULL, '2018-08-01 01:02:37', '2018-08-01 01:02:37'),
(4, 'JBS', 'jbs', 'brand/August2018/L7zRLMUSx8qWzioWcTRf.jpeg', NULL, '2018-08-01 01:12:26', '2018-08-01 01:12:26'),
(7, 'Nadec', 'nadec', 'brand/August2018/GWj5QShGVyP6GBNwi3IR.jpeg', NULL, '2018-08-01 01:13:25', '2018-08-01 01:13:25'),
(10, 'Mutaheda', 'mutaheda', 'brand/August2018/h5K7k2qBknaomDKDzyVW.jpeg', NULL, '2018-08-01 01:18:50', '2018-08-01 01:18:50'),
(13, 'Almarai', 'almarai', 'brand/August2018/KGDFb9RaE2SqqfBg9ZOY.jpeg', NULL, '2018-08-01 01:23:16', '2018-08-01 01:23:16'),
(16, 'KDD', 'kdd', 'brand/August2018/rQy6yPtubF6O3HhAnmXj.jpeg', NULL, '2018-08-01 01:24:05', '2018-08-01 01:24:05'),
(19, 'Natmed', 'natmed', 'brand/August2018/9CXn739Bj3JTFEKyTIlA.jpeg', NULL, '2018-08-01 01:24:33', '2018-08-01 01:24:33'),
(22, 'Banvit', 'banvit', 'brand/August2018/SbBHqYgVjDbmLfWCkIv7.jpeg', NULL, '2018-08-01 01:24:59', '2018-08-01 01:24:59'),
(25, 'Swift', 'swift', 'brand/August2018/4YAY2nhP3n6RRIw1wzlT.jpeg', NULL, '2018-08-01 01:25:34', '2018-08-01 01:25:34'),
(28, 'MF', 'mf', 'brand/August2018/kzIv5EMi9VDenLgEGcsD.jpeg', NULL, '2018-08-01 01:26:03', '2018-08-01 01:26:03'),
(31, 'PreGel', 'pregel', 'brand/August2018/ECOiAc7ylxXRJHjEO1X4.jpeg', 0, '2018-08-01 01:27:00', '2018-10-02 23:24:12'),
(32, 'Kitco', 'kitco', 'brand/August2018/VmsQNe5qBwHTt7dugiyL.jpeg', 0, '2018-08-01 01:27:00', '2018-10-02 23:23:47'),
(37, 'Banvit 2', 'banvit-2', 'brand/October2018/kcduhwzwVjjZal11SCol.jpg', 0, '2018-10-02 23:28:28', '2018-10-02 23:28:28'),
(38, 'Dinnerware', 'dinnerware', 'brand/October2018/CHxsDwpjendMrJhFi3As.jpeg', 0, '2018-10-03 00:01:13', '2018-10-03 00:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-07-31 23:09:24', '2018-07-31 23:09:24'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-07-31 23:09:24', '2018-07-31 23:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `featured` int(10) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent`, `featured`, `image`, `created_at`, `updated_at`) VALUES
(8, 'Fruits & Vegetables', 'fruits-and-vegetables', NULL, NULL, 'category/August2018/XO6mtfC3UUiqTrGw1oj5.jpeg', '2018-08-01 02:22:24', '2018-08-01 02:24:13'),
(11, 'Consumables', 'consumables', NULL, NULL, 'category/August2018/XfO1JRtWdJuZQAh13Qqy.jpeg', '2018-08-01 02:25:00', '2018-08-01 02:25:00'),
(14, 'Leaves', 'leaves', 8, NULL, 'category/September2018/mzpd2ReyCHPBOpLpH8KQ.jpg', '2018-08-01 02:32:26', '2018-09-03 00:54:23'),
(17, 'Root Vegetables', 'root-vegetables', 8, NULL, 'category/September2018/QAo8gVrYLxRH7baFmPKb.jpg', '2018-08-01 02:32:58', '2018-09-03 00:53:46'),
(18, 'Tomatoes', 'tomatoes', 8, NULL, 'category/September2018/grczfiNruYkCIFvE9CwT.jpg', '2018-08-01 02:33:37', '2018-09-03 00:54:02'),
(19, 'Dairy', 'dairy', NULL, NULL, 'category/August2018/JCLQQVNTpakbKllS6huq.png', '2018-08-03 06:58:24', '2018-08-03 06:58:24'),
(22, 'Fresh Milk', 'fresh-milk', 19, NULL, 'category/August2018/qhmlskAk2Oy2TdQidevb.png', '2018-08-03 06:59:06', '2018-08-06 07:42:53'),
(23, 'Sauces', 'sauces', NULL, NULL, 'category/August2018/mXTlZi7mtzZ2zfj5gkWl.jpeg', '2018-08-06 07:41:40', '2018-08-06 07:41:40'),
(26, 'Dinnerware', 'dinnerware', NULL, NULL, 'category/August2018/HrJ7QFs4VYKgVZlmmtRw.jpeg', '2018-08-06 07:42:25', '2018-08-06 07:42:25'),
(27, 'Frozen Food', 'frozen-food', NULL, NULL, 'category/August2018/lGij56X00KipDFa3M044.jpeg', '2018-08-13 02:20:56', '2018-08-13 02:20:56'),
(28, 'Canned Food', 'canned-food', NULL, NULL, 'category/August2018/liGFWrxUeefaDug3lRSu.jpeg', '2018-08-13 02:21:50', '2018-08-13 02:21:50'),
(29, 'Cheeses', 'cheese', NULL, NULL, 'category/August2018/K7l7O2Y8Xe92LpZ7BtAl.jpeg', '2018-08-13 02:22:50', '2018-08-13 02:22:50'),
(30, 'Cabbage', 'cabbage', 8, NULL, 'category/September2018/kUAWJa91pUiAw68T5zuN.jpg', '2018-09-03 00:47:08', '2018-09-03 00:47:08'),
(31, 'Cress', 'cress', 8, NULL, 'category/September2018/DQ0vKdnAoic82uA0QnBP.jpg', '2018-09-03 00:48:04', '2018-09-03 00:48:04'),
(32, 'Flower Vegetables', 'flower-vegetables', 8, NULL, 'category/September2018/VvLNXJhUnNGaFYz47mJL.jpg', '2018-09-03 00:49:00', '2018-09-03 00:49:00'),
(33, 'Lettuce', 'lettuce', 8, NULL, 'category/September2018/pmuLXRhibKf0e42fyaEu.jpg', '2018-09-03 00:49:46', '2018-09-03 00:50:12'),
(36, 'Mushrooms', 'mushroom', 8, NULL, 'category/September2018/2keWcfL2z9IbaQU04uHu.jpg', '2018-09-03 00:51:07', '2018-09-03 00:51:07'),
(41, 'Tropical Fruits', 'tropical-fruits', 8, NULL, 'category/September2018/nD9ZP3Ji67DAhp5k7L7J.jpg', '2018-09-03 00:55:27', '2018-09-03 00:55:27'),
(46, 'Snacks', 'snacks', NULL, NULL, 'category/October2018/qsz6kScvltlEpELMyY8a.jpeg', '2018-10-02 01:30:31', '2018-10-02 01:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(7, 2, 22, '2018-08-06 07:36:10', '2018-08-06 07:36:10'),
(9, 3, 14, '2018-09-03 01:08:04', '2018-09-03 01:08:04'),
(10, 5, 14, '2018-09-03 01:09:42', '2018-09-03 01:09:42'),
(11, 6, 14, '2018-09-03 01:10:36', '2018-09-03 01:10:36'),
(12, 7, 14, '2018-09-03 01:11:14', '2018-09-03 01:11:14'),
(14, 8, 14, '2018-09-03 01:13:01', '2018-09-03 01:13:01'),
(15, 9, 14, '2018-09-03 01:15:35', '2018-09-03 01:15:35'),
(16, 10, 14, '2018-09-03 01:19:34', '2018-09-03 01:19:34'),
(17, 11, 14, '2018-09-03 01:23:18', '2018-09-03 01:23:18'),
(18, 12, 14, '2018-09-03 01:24:02', '2018-09-03 01:24:02'),
(19, 13, 14, '2018-09-03 01:24:56', '2018-09-03 01:24:56'),
(20, 14, 17, '2018-09-03 01:26:16', '2018-09-03 01:26:16'),
(21, 15, 17, '2018-09-03 01:27:10', '2018-09-03 01:27:10'),
(23, 17, 17, '2018-09-03 01:28:38', '2018-09-03 01:28:38'),
(24, 16, 17, '2018-09-03 01:28:59', '2018-09-03 01:28:59'),
(26, 18, 17, '2018-09-03 01:31:43', '2018-09-03 01:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'ABC123', 'fixed', 3000, NULL, '2018-07-31 23:09:05', '2018-07-31 23:09:05'),
(2, 'DEF456', 'percent', NULL, 50, '2018-07-31 23:09:05', '2018-07-31 23:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"},\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, NULL, 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, NULL, 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 3, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(55, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(56, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:100\"}}', 2),
(57, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(60, 7, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, NULL, 6),
(61, 7, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\"}', 7),
(62, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"quality\":\"70%\",\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 8),
(63, 7, 'images', 'image', 'Images', 0, 1, 1, 1, 1, 1, NULL, 9),
(64, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 10),
(65, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, NULL, 11),
(67, 8, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(68, 8, 'code', 'text', 'code', 1, 1, 1, 1, 1, 1, '', 2),
(69, 8, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"fixed\",\"options\":{\"fixed\":\"Fixed Value\",\"percent\":\"Percent Off\"}}', 3),
(70, 8, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 4),
(71, 8, 'percent_off', 'number', 'Percent Off', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 5),
(72, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(73, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '', 7),
(74, 9, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(75, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(76, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(77, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(78, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(79, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '', 1),
(80, 10, 'product_id', 'number', 'Product Id', 1, 1, 1, 1, 1, 1, '', 2),
(81, 10, 'category_id', 'number', 'Category Id', 1, 1, 1, 1, 1, 1, '', 3),
(82, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 4),
(83, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 5),
(84, 11, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '', 1),
(85, 11, 'user_id', 'number', 'User Id', 1, 1, 1, 0, 0, 0, '', 2),
(86, 11, 'billing_email', 'text', 'Billing Email', 1, 1, 1, 1, 1, 0, '', 3),
(87, 11, 'billing_name', 'text', 'Billing Name', 1, 1, 1, 1, 1, 0, '', 4),
(88, 11, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 0, '', 5),
(89, 11, 'billing_city', 'text', 'Billing City', 1, 1, 1, 1, 1, 0, '', 6),
(90, 11, 'billing_province', 'text', 'Billing Province', 1, 0, 1, 1, 1, 0, '', 7),
(91, 11, 'billing_postalcode', 'text', 'Billing Postalcode', 1, 0, 1, 1, 1, 0, '', 8),
(92, 11, 'billing_phone', 'text', 'Billing Phone', 1, 0, 1, 1, 1, 0, '', 9),
(93, 11, 'billing_name_on_card', 'text', 'Billing Name On Card', 1, 1, 1, 1, 1, 0, '', 10),
(94, 11, 'billing_discount', 'number', 'Discount', 1, 1, 1, 0, 0, 0, '', 11),
(95, 11, 'billing_discount_code', 'text', 'Discount Code', 0, 0, 1, 0, 0, 0, '', 12),
(96, 11, 'billing_subtotal', 'number', 'Subtotal', 1, 1, 1, 0, 0, 0, '', 13),
(97, 11, 'billing_tax', 'number', 'Tax', 1, 1, 1, 0, 0, 0, '', 14),
(98, 11, 'billing_total', 'number', 'Total', 1, 1, 1, 0, 0, 0, '', 15),
(99, 11, 'payment_gateway', 'text', 'Payment Gateway', 1, 0, 1, 0, 0, 0, '', 16),
(100, 11, 'shipped', 'checkbox', 'Shipped', 1, 1, 1, 1, 0, 0, '{\"on\":\"Yes\",\"off\":\"No\"}', 17),
(101, 11, 'error', 'text', 'Error', 0, 1, 1, 0, 0, 0, '', 18),
(102, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 19),
(103, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 20),
(104, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(105, 12, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(106, 12, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, NULL, 3),
(107, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"400\",\"height\":\"400\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"}]}', 4),
(108, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(109, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(110, 9, 'parent', 'select_dropdown', 'Parent', 0, 1, 1, 1, 1, 1, NULL, 4),
(111, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 5),
(113, 7, 'product_hasone_brand_relationship', 'relationship', 'Brand', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Brand\",\"table\":\"Brand\",\"type\":\"belongsTo\",\"column\":\"brand\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"Brand\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(114, 7, 'brand', 'text', 'Brand', 0, 1, 1, 1, 1, 1, NULL, 3),
(117, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(118, 13, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(119, 13, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 4),
(120, 13, 'quantity', 'number', 'Quantity', 0, 1, 1, 1, 1, 1, NULL, 5),
(121, 13, 'product', 'text', 'Product', 1, 1, 1, 1, 1, 1, NULL, 2),
(122, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(123, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(124, 13, 'product_variation_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"Brand\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(125, 9, 'category_belongsto_category_relationship', 'relationship', 'category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"category\",\"type\":\"belongsTo\",\"column\":\"parent\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"Brand\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(126, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(127, 14, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(128, 14, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(130, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 5),
(131, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(132, 14, 'supplier_belongstomany_user_relationship', 'relationship', 'User', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"uid\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"users\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(133, 14, 'uid', 'text', 'Uid', 1, 1, 1, 1, 1, 1, NULL, 2),
(134, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(135, 15, 'key', 'text', 'Key', 1, 1, 1, 1, 1, 1, NULL, 2),
(136, 15, 'label', 'text', 'Label', 1, 1, 1, 1, 1, 1, NULL, 3),
(137, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(138, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(139, 15, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"text\",\"options\":{\"text\":\"Text\",\"textarea\":\"TextArea\",\"richtext\":\"Rich Text\",\"url\":\"URL\"}}', 4),
(140, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(141, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(142, 16, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, NULL, 3),
(143, 16, 'user', 'text', 'User', 1, 1, 1, 1, 1, 1, NULL, 4),
(144, 16, 'owned', 'text', 'Owned', 0, 1, 1, 1, 1, 1, NULL, 6),
(145, 16, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, NULL, 7),
(147, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(148, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(149, 16, 'suggested_bussiness_belongsto_user_relationship', 'relationship', 'User', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"Brand\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(150, 16, 'additional_information', 'text', 'Additional Information', 1, 1, 1, 1, 1, 1, NULL, 7),
(151, 7, 'details', 'rich_text_box', 'Details', 0, 1, 1, 1, 1, 1, NULL, 5),
(152, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(153, 17, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(154, 17, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(155, 17, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, NULL, 4),
(156, 17, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, NULL, 5),
(157, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(158, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(159, 12, 'featured', 'checkbox', 'Featured', 0, 1, 1, 1, 1, 1, NULL, 5),
(160, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(161, 18, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(162, 18, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, NULL, 3),
(163, 18, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 4),
(164, 18, 'featured', 'checkbox', 'Featured', 0, 1, 1, 1, 1, 1, NULL, 5),
(165, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(166, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(167, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(168, 19, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(169, 19, 'content', 'rich_text_box', 'Content', 1, 1, 1, 1, 1, 1, NULL, 3),
(170, 19, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, NULL, 4),
(171, 19, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 5),
(172, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(173, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-07-31 23:09:07', '2018-07-31 23:09:07'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-07-31 23:09:07', '2018-07-31 23:09:07'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '\\App\\Http\\Controllers\\Voyager\\UsersController', '', 1, 0, NULL, '2018-07-31 23:09:07', '2018-07-31 23:09:07'),
(4, 'categories', 'topics', 'Topic', 'Topics', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-31 23:09:07', '2018-08-01 00:49:07'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-07-31 23:09:07', '2018-07-31 23:09:07'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-07-31 23:09:07', '2018-07-31 23:09:07'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, '\\App\\Http\\Controllers\\Voyager\\ProductsController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-31 23:09:30', '2018-08-01 01:59:46'),
(8, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Coupon', NULL, '', '', 1, 0, NULL, '2018-07-31 23:09:30', '2018-07-31 23:09:30'),
(9, 'category', 'category', 'Category', 'Categories', 'voyager-tag', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-31 23:09:30', '2018-08-01 00:34:09'),
(10, 'category-product', 'category-product', 'Category Product', 'Category Products', 'voyager-categories', 'App\\CategoryProduct', NULL, '', '', 1, 0, NULL, '2018-07-31 23:09:31', '2018-07-31 23:09:31'),
(11, 'orders', 'orders', 'Order', 'Orders', 'voyager-documentation', 'App\\Order', NULL, '\\App\\Http\\Controllers\\Voyager\\OrdersController', '', 1, 0, NULL, '2018-07-31 23:09:31', '2018-07-31 23:09:31'),
(12, 'Brand', 'brand', 'Brand', 'Brands', 'voyager-ticket', 'App\\Brand', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-01 00:21:47', '2018-08-01 01:15:59'),
(13, 'product_variations', 'product-variations', 'Product Variation', 'Product Variations', NULL, 'App\\ProductVariation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-01 02:54:02', '2018-08-01 02:54:02'),
(14, 'suppliers', 'suppliers', 'Supplier', 'Suppliers', NULL, 'App\\Supplier', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\"}', '2018-08-07 00:31:01', '2018-08-07 00:31:01'),
(15, 'supplier_fields', 'supplier-fields', 'Supplier Field', 'Supplier Fields', NULL, 'App\\SupplierField', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-07 01:20:00', '2018-08-07 01:20:00'),
(16, 'suggested_bussinesses', 'suggested-bussinesses', 'Suggested Bussiness', 'Suggested Bussinesses', 'voyager-company', 'App\\SuggestedBussiness', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-13 06:30:51', '2018-08-13 06:30:51'),
(17, 'attributes', 'attributes', 'Attribute', 'Attributes', 'voyager-logbook', 'App\\Attribute', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-03 01:42:10', '2018-09-03 01:42:10'),
(18, 'brands', 'brands', 'Brand', 'Brands', 'voyager-ticket', 'App\\Brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-03 01:56:29', '2018-09-03 01:58:20'),
(19, 'template_parts', 'template-parts', 'Template Part', 'Template Parts', 'voyager-puzzle', 'App\\TemplatePart', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-03 00:42:24', '2018-10-03 00:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-07-31 23:09:13', '2018-07-31 23:09:13'),
(2, 'main', '2018-07-31 23:09:36', '2018-07-31 23:09:36'),
(3, 'footer', '2018-07-31 23:09:36', '2018-07-31 23:09:36'),
(4, 'home', '2018-10-03 00:56:52', '2018-10-03 00:59:53'),
(6, 'social', '2018-10-04 02:12:04', '2018-10-04 02:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-07-31 23:09:13', '2018-07-31 23:09:13', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 31, 3, '2018-07-31 23:09:13', '2018-08-07 01:44:07', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, 31, 4, '2018-07-31 23:09:13', '2018-08-07 01:44:19', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, 32, 1, '2018-07-31 23:09:13', '2018-08-07 01:45:06', 'voyager.users.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 32, 2, '2018-07-31 23:09:13', '2018-08-07 01:45:07', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2018-07-31 23:09:13', '2018-09-03 01:59:06', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-07-31 23:09:14', '2018-07-31 23:09:38', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-07-31 23:09:14', '2018-07-31 23:09:38', 'voyager.database.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2018-07-31 23:09:14', '2018-09-03 01:59:06', 'voyager.settings.index', NULL),
(13, 1, 'Orders', '/dashboard/orders', '_self', 'voyager-documentation', '#000000', 33, 7, '2018-07-31 23:09:36', '2018-08-07 01:53:12', NULL, ''),
(14, 1, 'Products', '/dashboard/products', '_self', 'voyager-bag', '#000000', 33, 4, '2018-07-31 23:09:36', '2018-08-07 01:52:34', NULL, ''),
(15, 1, 'Categories', '/dashboard/category', '_self', 'voyager-tag', '#000000', 33, 2, '2018-07-31 23:09:36', '2018-08-07 01:52:34', NULL, ''),
(16, 1, 'Coupons', '/dashboard/coupons', '_self', 'voyager-dollar', '#000000', 33, 5, '2018-07-31 23:09:36', '2018-08-07 01:52:54', NULL, ''),
(17, 1, 'Category Products', '/dashboard/category-product', '_self', 'voyager-categories', '#000000', 31, 2, '2018-07-31 23:09:37', '2018-08-07 01:44:07', NULL, ''),
(18, 2, 'Catalog', '', '_self', NULL, '#000000', NULL, 1, '2018-07-31 23:09:38', '2018-08-03 02:17:56', 'category', '{\r\n\"category\":\"main\"\r\n}'),
(21, 3, 'Follow Me:', '', '_self', NULL, NULL, NULL, 1, '2018-07-31 23:09:39', '2018-07-31 23:09:39', NULL, NULL),
(22, 3, 'fa-globe', '#', '_self', NULL, '#000000', NULL, 2, '2018-07-31 23:09:39', '2018-08-06 08:02:47', NULL, ''),
(23, 3, 'fa-youtube', '#', '_self', NULL, '#000000', NULL, 2, '2018-07-31 23:09:39', '2018-08-06 08:02:53', NULL, ''),
(24, 3, 'fa-github', '#', '_self', NULL, '#000000', NULL, 2, '2018-07-31 23:09:39', '2018-08-06 08:03:00', NULL, ''),
(25, 3, 'fa-twitter', '#', '_self', NULL, '#000000', NULL, 2, '2018-07-31 23:09:39', '2018-08-06 08:03:06', NULL, ''),
(26, 1, 'Brands', '', '_self', 'voyager-ticket', '#000000', 33, 1, '2018-08-01 00:21:47', '2018-08-07 01:52:34', 'voyager.brand.index', 'null'),
(27, 1, 'Product Variations', '', '_self', 'voyager-pie-chart', '#000000', 33, 6, '2018-08-01 02:54:03', '2018-08-07 01:57:18', 'voyager.product-variations.index', 'null'),
(28, 2, 'Brands', '', '_self', NULL, '#000000', NULL, 2, '2018-08-03 02:21:34', '2018-08-10 00:23:43', 'brands', NULL),
(29, 1, 'Suppliers', '', '_self', 'voyager-browser', '#000000', 33, 3, '2018-08-07 00:31:01', '2018-08-07 01:56:33', 'voyager.suppliers.index', 'null'),
(30, 1, 'Supplier Fields', '', '_self', 'voyager-data', '#000000', 31, 1, '2018-08-07 01:20:00', '2018-08-07 01:49:58', 'voyager.supplier-fields.index', 'null'),
(31, 1, 'Dashboard Tools', '', '_self', 'voyager-treasure', '#000000', NULL, 3, '2018-08-07 01:41:38', '2018-09-03 01:59:06', NULL, ''),
(32, 1, 'User Management', '', '_self', 'voyager-people', '#000000', NULL, 4, '2018-08-07 01:44:46', '2018-09-03 01:59:06', NULL, ''),
(33, 1, 'Shop Management', '', '_self', 'voyager-shop', '#000000', NULL, 2, '2018-08-07 01:51:28', '2018-09-03 01:59:06', NULL, ''),
(34, 1, 'Suggested Bussinesses', '', '_self', 'voyager-company', NULL, NULL, 7, '2018-08-13 06:30:52', '2018-09-03 01:59:06', 'voyager.suggested-bussinesses.index', NULL),
(35, 1, 'Attributes', '', '_self', 'voyager-logbook', NULL, 33, 8, '2018-09-03 01:42:10', '2018-09-03 01:59:15', 'voyager.attributes.index', NULL),
(36, 1, 'Template Parts', '', '_self', 'voyager-puzzle', '#000000', NULL, 8, '2018-10-03 00:42:24', '2018-10-03 00:46:07', 'voyager.template-parts.index', 'null'),
(37, 4, 'Home', '/', '_self', NULL, '#000000', NULL, 9, '2018-10-03 00:57:26', '2018-10-03 00:57:26', NULL, ''),
(38, 4, 'About Us', '/#about', '_self', NULL, '#000000', NULL, 10, '2018-10-03 00:57:53', '2018-10-03 00:57:53', NULL, ''),
(39, 4, 'How it works', '/#how-it-work', '_self', NULL, '#000000', NULL, 11, '2018-10-03 00:58:46', '2018-10-03 00:58:46', NULL, ''),
(40, 4, 'Let\'s get started', '/#get-started', '_self', NULL, '#000000', NULL, 12, '2018-10-03 00:59:24', '2018-10-03 00:59:24', NULL, ''),
(41, 6, 'fa-facebook', '#', '_blank', NULL, '#000000', NULL, 13, '2018-10-04 02:15:11', '2018-10-04 02:15:11', NULL, ''),
(42, 6, 'fa-instagram', '#', '_blank', NULL, '#000000', NULL, 14, '2018-10-04 02:15:37', '2018-10-04 02:15:37', NULL, ''),
(43, 6, 'fa-twitter', '#', '_self', NULL, '#000000', NULL, 15, '2018-10-04 02:16:04', '2018-10-04 02:16:04', NULL, ''),
(44, 6, 'fa-apple', '#', '_self', NULL, '#000000', NULL, 16, '2018-10-04 02:16:30', '2018-10-04 02:16:30', NULL, ''),
(45, 6, 'fa-android', '#', '_self', NULL, '#000000', NULL, 17, '2018-10-04 02:16:48', '2018-10-04 02:16:48', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2017_11_26_013050_add_user_role_relationship', 1),
(25, '2017_11_26_015000_create_user_roles_table', 1),
(26, '2017_12_11_054653_create_products_table', 1),
(27, '2018_01_11_060124_create_category_table', 1),
(28, '2018_01_11_060548_create_category_product_table', 1),
(29, '2018_01_14_215535_create_coupons_table', 1),
(30, '2018_02_08_021546_add_image_to_products_table', 1),
(31, '2018_02_08_032544_add_images_to_products_table', 1),
(32, '2018_02_25_005243_create_orders_table', 1),
(33, '2018_02_25_010522_create_order_product_table', 1),
(34, '2018_03_11_000000_add_user_settings', 1),
(35, '2018_03_14_000000_add_details_to_data_types_table', 1),
(36, '2018_03_16_000000_make_settings_value_nullable', 1),
(37, '2018_04_23_011947_add_user_role_relationship_fix', 1),
(38, '2018_04_23_012009_create_user_roles_table_fix', 1),
(39, '2018_06_29_032914_add_quantity_to_products_table', 1),
(40, '2018_08_01_081750_create_product_variations_table', 2),
(44, '2018_08_07_055234_create_suppliers_table', 3),
(47, '2018_08_07_064321_create_supplier_metas_table', 4),
(48, '2018_08_07_064450_create_supplier_fields_table', 4),
(49, '2018_08_10_093359_create_product_metas_table', 5),
(51, '2018_08_10_093847_create_product_fields_table', 6),
(52, '2018_08_13_114731_create_suggested_bussinesses_table', 7),
(54, '2018_08_14_094838_create_profile_verifications_table', 8),
(55, '2018_09_03_070340_create_product_attributes_table', 9),
(56, '2018_09_03_070727_create_attributes_table', 10),
(57, '2018_10_03_055704_create_template_parts_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postalcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name_on_card` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT '0',
  `billing_discount_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gateway`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(1, NULL, 'email@email.com', 'Fake Order', 'Fake Address', 'Fake City', 'Fake Province', 'L5B4U2', '9052145636', 'Fake Name on Card', 0, NULL, 12345, 1605, 13950, 'stripe', 0, NULL, '2018-07-31 23:09:06', '2018-07-31 23:09:06'),
(2, NULL, 'another@another.com', 'Fake Order 2', 'Fake Address 2', 'Fake City 2', 'Fake Province 2', 'L5B4U2', '9052145636', 'Fake Name on Card', 0, NULL, 12345, 1605, 13950, 'stripe', 0, 'Card was declined', '2018-07-31 23:09:06', '2018-07-31 23:09:06'),
(3, NULL, 'fake@fake.com', 'Fake Order 3', 'Fake Address 3', 'Fake City 3', 'Fake Province 3', 'L5B4U2', '9052145636', 'Fake Name on Card', 0, NULL, 12345, 1605, 13950, 'stripe', 1, NULL, '2018-07-31 23:09:06', '2018-07-31 23:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, '2018-07-31 23:09:06', '2018-07-31 23:09:06'),
(2, 1, NULL, 1, '2018-07-31 23:09:06', '2018-07-31 23:09:06'),
(3, 2, NULL, 1, '2018-07-31 23:09:06', '2018-07-31 23:09:06'),
(4, 2, NULL, 1, '2018-07-31 23:09:06', '2018-07-31 23:09:06'),
(5, 3, NULL, 1, '2018-07-31 23:09:07', '2018-07-31 23:09:07'),
(6, 3, NULL, 1, '2018-07-31 23:09:07', '2018-07-31 23:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-07-31 23:09:14', '2018-07-31 23:09:14', NULL),
(2, 'browse_bread', NULL, '2018-07-31 23:09:15', '2018-07-31 23:09:15', NULL),
(3, 'browse_database', NULL, '2018-07-31 23:09:15', '2018-07-31 23:09:15', NULL),
(4, 'browse_media', NULL, '2018-07-31 23:09:15', '2018-07-31 23:09:15', NULL),
(5, 'browse_compass', NULL, '2018-07-31 23:09:15', '2018-07-31 23:09:15', NULL),
(6, 'browse_menus', 'menus', '2018-07-31 23:09:15', '2018-07-31 23:09:15', NULL),
(7, 'read_menus', 'menus', '2018-07-31 23:09:15', '2018-07-31 23:09:15', NULL),
(8, 'edit_menus', 'menus', '2018-07-31 23:09:15', '2018-07-31 23:09:15', NULL),
(9, 'add_menus', 'menus', '2018-07-31 23:09:15', '2018-07-31 23:09:15', NULL),
(10, 'delete_menus', 'menus', '2018-07-31 23:09:15', '2018-07-31 23:09:15', NULL),
(11, 'browse_pages', 'pages', '2018-07-31 23:09:16', '2018-07-31 23:09:16', NULL),
(12, 'read_pages', 'pages', '2018-07-31 23:09:16', '2018-07-31 23:09:16', NULL),
(13, 'edit_pages', 'pages', '2018-07-31 23:09:16', '2018-07-31 23:09:16', NULL),
(14, 'add_pages', 'pages', '2018-07-31 23:09:16', '2018-07-31 23:09:16', NULL),
(15, 'delete_pages', 'pages', '2018-07-31 23:09:16', '2018-07-31 23:09:16', NULL),
(16, 'browse_roles', 'roles', '2018-07-31 23:09:16', '2018-07-31 23:09:16', NULL),
(17, 'read_roles', 'roles', '2018-07-31 23:09:16', '2018-07-31 23:09:16', NULL),
(18, 'edit_roles', 'roles', '2018-07-31 23:09:16', '2018-07-31 23:09:16', NULL),
(19, 'add_roles', 'roles', '2018-07-31 23:09:17', '2018-07-31 23:09:17', NULL),
(20, 'delete_roles', 'roles', '2018-07-31 23:09:17', '2018-07-31 23:09:17', NULL),
(21, 'browse_users', 'users', '2018-07-31 23:09:17', '2018-07-31 23:09:17', NULL),
(22, 'read_users', 'users', '2018-07-31 23:09:17', '2018-07-31 23:09:17', NULL),
(23, 'edit_users', 'users', '2018-07-31 23:09:17', '2018-07-31 23:09:17', NULL),
(24, 'add_users', 'users', '2018-07-31 23:09:17', '2018-07-31 23:09:17', NULL),
(25, 'delete_users', 'users', '2018-07-31 23:09:17', '2018-07-31 23:09:17', NULL),
(26, 'browse_posts', 'posts', '2018-07-31 23:09:17', '2018-07-31 23:09:17', NULL),
(27, 'read_posts', 'posts', '2018-07-31 23:09:17', '2018-07-31 23:09:17', NULL),
(28, 'edit_posts', 'posts', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(29, 'add_posts', 'posts', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(30, 'delete_posts', 'posts', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(31, 'browse_categories', 'categories', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(32, 'read_categories', 'categories', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(33, 'edit_categories', 'categories', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(34, 'add_categories', 'categories', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(35, 'delete_categories', 'categories', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(36, 'browse_settings', 'settings', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(37, 'read_settings', 'settings', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(38, 'edit_settings', 'settings', '2018-07-31 23:09:18', '2018-07-31 23:09:18', NULL),
(39, 'add_settings', 'settings', '2018-07-31 23:09:19', '2018-07-31 23:09:19', NULL),
(40, 'delete_settings', 'settings', '2018-07-31 23:09:19', '2018-07-31 23:09:19', NULL),
(41, 'browse_products', 'products', '2018-07-31 23:09:39', '2018-07-31 23:09:39', NULL),
(42, 'read_products', 'products', '2018-07-31 23:09:39', '2018-07-31 23:09:39', NULL),
(43, 'edit_products', 'products', '2018-07-31 23:09:39', '2018-07-31 23:09:39', NULL),
(44, 'add_products', 'products', '2018-07-31 23:09:40', '2018-07-31 23:09:40', NULL),
(45, 'delete_products', 'products', '2018-07-31 23:09:40', '2018-07-31 23:09:40', NULL),
(46, 'browse_coupons', 'coupons', '2018-07-31 23:09:40', '2018-07-31 23:09:40', NULL),
(47, 'read_coupons', 'coupons', '2018-07-31 23:09:40', '2018-07-31 23:09:40', NULL),
(48, 'edit_coupons', 'coupons', '2018-07-31 23:09:40', '2018-07-31 23:09:40', NULL),
(49, 'add_coupons', 'coupons', '2018-07-31 23:09:40', '2018-07-31 23:09:40', NULL),
(50, 'delete_coupons', 'coupons', '2018-07-31 23:09:40', '2018-07-31 23:09:40', NULL),
(51, 'browse_category', 'category', '2018-07-31 23:09:40', '2018-07-31 23:09:40', NULL),
(52, 'read_category', 'category', '2018-07-31 23:09:41', '2018-07-31 23:09:41', NULL),
(53, 'edit_category', 'category', '2018-07-31 23:09:41', '2018-07-31 23:09:41', NULL),
(54, 'add_category', 'category', '2018-07-31 23:09:41', '2018-07-31 23:09:41', NULL),
(55, 'delete_category', 'category', '2018-07-31 23:09:41', '2018-07-31 23:09:41', NULL),
(56, 'browse_category-product', 'category-product', '2018-07-31 23:09:41', '2018-07-31 23:09:41', NULL),
(57, 'read_category-product', 'category-product', '2018-07-31 23:09:41', '2018-07-31 23:09:41', NULL),
(58, 'edit_category-product', 'category-product', '2018-07-31 23:09:41', '2018-07-31 23:09:41', NULL),
(59, 'add_category-product', 'category-product', '2018-07-31 23:09:41', '2018-07-31 23:09:41', NULL),
(60, 'delete_category-product', 'category-product', '2018-07-31 23:09:41', '2018-07-31 23:09:41', NULL),
(61, 'browse_orders', 'orders', '2018-07-31 23:09:42', '2018-07-31 23:09:42', NULL),
(62, 'read_orders', 'orders', '2018-07-31 23:09:42', '2018-07-31 23:09:42', NULL),
(63, 'edit_orders', 'orders', '2018-07-31 23:09:42', '2018-07-31 23:09:42', NULL),
(64, 'add_orders', 'orders', '2018-07-31 23:09:42', '2018-07-31 23:09:42', NULL),
(65, 'delete_orders', 'orders', '2018-07-31 23:09:42', '2018-07-31 23:09:42', NULL),
(66, 'browse_Brand', 'Brand', '2018-08-01 00:21:47', '2018-08-01 00:21:47', NULL),
(67, 'read_Brand', 'Brand', '2018-08-01 00:21:47', '2018-08-01 00:21:47', NULL),
(68, 'edit_Brand', 'Brand', '2018-08-01 00:21:47', '2018-08-01 00:21:47', NULL),
(69, 'add_Brand', 'Brand', '2018-08-01 00:21:47', '2018-08-01 00:21:47', NULL),
(70, 'delete_Brand', 'Brand', '2018-08-01 00:21:47', '2018-08-01 00:21:47', NULL),
(71, 'browse_product_variations', 'product_variations', '2018-08-01 02:54:03', '2018-08-01 02:54:03', NULL),
(72, 'read_product_variations', 'product_variations', '2018-08-01 02:54:03', '2018-08-01 02:54:03', NULL),
(73, 'edit_product_variations', 'product_variations', '2018-08-01 02:54:03', '2018-08-01 02:54:03', NULL),
(74, 'add_product_variations', 'product_variations', '2018-08-01 02:54:03', '2018-08-01 02:54:03', NULL),
(75, 'delete_product_variations', 'product_variations', '2018-08-01 02:54:03', '2018-08-01 02:54:03', NULL),
(76, 'browse_suppliers', 'suppliers', '2018-08-07 00:31:01', '2018-08-07 00:31:01', NULL),
(77, 'read_suppliers', 'suppliers', '2018-08-07 00:31:01', '2018-08-07 00:31:01', NULL),
(78, 'edit_suppliers', 'suppliers', '2018-08-07 00:31:01', '2018-08-07 00:31:01', NULL),
(79, 'add_suppliers', 'suppliers', '2018-08-07 00:31:01', '2018-08-07 00:31:01', NULL),
(80, 'delete_suppliers', 'suppliers', '2018-08-07 00:31:01', '2018-08-07 00:31:01', NULL),
(81, 'browse_supplier_fields', 'supplier_fields', '2018-08-07 01:20:00', '2018-08-07 01:20:00', NULL),
(82, 'read_supplier_fields', 'supplier_fields', '2018-08-07 01:20:00', '2018-08-07 01:20:00', NULL),
(83, 'edit_supplier_fields', 'supplier_fields', '2018-08-07 01:20:00', '2018-08-07 01:20:00', NULL),
(84, 'add_supplier_fields', 'supplier_fields', '2018-08-07 01:20:00', '2018-08-07 01:20:00', NULL),
(85, 'delete_supplier_fields', 'supplier_fields', '2018-08-07 01:20:00', '2018-08-07 01:20:00', NULL),
(86, 'browse_suggested_bussinesses', 'suggested_bussinesses', '2018-08-13 06:30:52', '2018-08-13 06:30:52', NULL),
(87, 'read_suggested_bussinesses', 'suggested_bussinesses', '2018-08-13 06:30:52', '2018-08-13 06:30:52', NULL),
(88, 'edit_suggested_bussinesses', 'suggested_bussinesses', '2018-08-13 06:30:52', '2018-08-13 06:30:52', NULL),
(89, 'add_suggested_bussinesses', 'suggested_bussinesses', '2018-08-13 06:30:52', '2018-08-13 06:30:52', NULL),
(90, 'delete_suggested_bussinesses', 'suggested_bussinesses', '2018-08-13 06:30:52', '2018-08-13 06:30:52', NULL),
(91, 'browse_attributes', 'attributes', '2018-09-03 01:42:10', '2018-09-03 01:42:10', NULL),
(92, 'read_attributes', 'attributes', '2018-09-03 01:42:10', '2018-09-03 01:42:10', NULL),
(93, 'edit_attributes', 'attributes', '2018-09-03 01:42:10', '2018-09-03 01:42:10', NULL),
(94, 'add_attributes', 'attributes', '2018-09-03 01:42:10', '2018-09-03 01:42:10', NULL),
(95, 'delete_attributes', 'attributes', '2018-09-03 01:42:10', '2018-09-03 01:42:10', NULL),
(96, 'browse_brands', 'brands', '2018-09-03 01:56:29', '2018-09-03 01:56:29', NULL),
(97, 'read_brands', 'brands', '2018-09-03 01:56:29', '2018-09-03 01:56:29', NULL),
(98, 'edit_brands', 'brands', '2018-09-03 01:56:29', '2018-09-03 01:56:29', NULL),
(99, 'add_brands', 'brands', '2018-09-03 01:56:29', '2018-09-03 01:56:29', NULL),
(100, 'delete_brands', 'brands', '2018-09-03 01:56:29', '2018-09-03 01:56:29', NULL),
(101, 'browse_template_parts', 'template_parts', '2018-10-03 00:42:24', '2018-10-03 00:42:24', NULL),
(102, 'read_template_parts', 'template_parts', '2018-10-03 00:42:24', '2018-10-03 00:42:24', NULL),
(103, 'edit_template_parts', 'template_parts', '2018-10-03 00:42:24', '2018-10-03 00:42:24', NULL),
(104, 'add_template_parts', 'template_parts', '2018-10-03 00:42:24', '2018-10-03 00:42:24', NULL),
(105, 'delete_template_parts', 'template_parts', '2018-10-03 00:42:24', '2018-10-03 00:42:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(22, 3),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-07-31 23:09:25', '2018-07-31 23:09:25'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-07-31 23:09:25', '2018-07-31 23:09:25'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-07-31 23:09:25', '2018-07-31 23:09:25'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-07-31 23:09:25', '2018-07-31 23:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` int(11) DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `slug`, `details`, `description`, `featured`, `image`, `images`, `created_at`, `updated_at`) VALUES
(2, 'Full Fat Milk', NULL, 'full-fat-milk', NULL, '<p>&nbsp;Full fat milk by Nadec</p>', 0, 'products/August2018/UQGtmceqlFVo8LyKIM8D.png', NULL, NULL, '2018-09-03 06:49:53'),
(3, 'Rosemary - Holland', NULL, 'rosemary', NULL, '<p>&nbsp;dummy description</p>', 0, 'products/September2018/bHGD3wOGin4uWp9GpML1.jpg', NULL, NULL, '2018-09-03 06:50:01'),
(5, 'Coriander', NULL, 'coriander', NULL, '<p>ABC</p>', 0, 'products/September2018/JppE89ucKH2A4JRLWh2T.jpg', NULL, '2018-09-03 01:09:41', '2018-09-03 06:50:04'),
(6, 'Basil - Kuwait', NULL, 'basil-kuwait', NULL, '<p>ABC</p>', 0, 'products/September2018/02jMQRXcnAH8HrmxNysW.jpg', NULL, '2018-09-03 01:10:36', '2018-09-03 06:50:07'),
(7, 'Arugula - Holland', NULL, 'arugula-holland', NULL, '<p>ABC</p>', 0, 'products/September2018/rXHvDR6d5klzWFuqW6lC.jpg', NULL, '2018-09-03 01:11:14', '2018-09-03 06:50:10'),
(8, 'Parsley - Kuwait', NULL, 'parsley-kuwait', NULL, '<p>ABC</p>', 0, 'products/September2018/kwWA1UGXtzGQB5Et4TEQ.jpg', NULL, '2018-09-03 01:11:50', '2018-09-03 06:50:14'),
(9, 'Parsley - Lebanon', NULL, 'parsley', NULL, NULL, 0, 'products/September2018/WJYTq8Cjea16ZlvXShMl.jpg', NULL, '2018-09-03 01:15:35', '2018-09-03 06:50:18'),
(10, 'Mint Leaves - Kuwait', NULL, 'leaves-mint-kuwait', NULL, NULL, 0, 'products/September2018/d5711jKWm9qXx2ndXP20.jpg', NULL, '2018-09-03 01:19:34', '2018-09-03 06:50:29'),
(11, 'Bay Leaves', 1, 'bay-leaves', NULL, NULL, 0, 'products/September2018/261LBGaLSpr9Aozp1amu.jpg', NULL, '2018-09-03 01:23:17', '2018-09-03 01:23:17'),
(12, 'Dill', 1, 'dill', NULL, NULL, 0, 'products/September2018/7z4UuXZKDLQ4zyo6rAtd.jpg', NULL, '2018-09-03 01:24:02', '2018-09-03 01:24:02'),
(13, 'Baby Turnips With Leaves', 1, 'baby-turnips-with-leaves', NULL, NULL, 0, 'products/September2018/2nvkHfzGVGE8CR6q9jfi.jpg', NULL, '2018-09-03 01:24:56', '2018-09-03 01:24:56'),
(14, 'Ginger - China', 1, 'ginger-china', NULL, NULL, 0, 'products/September2018/uHuO5hi4l6Fi5pOXuuMA.jpg', NULL, '2018-09-03 01:26:16', '2018-09-03 01:26:16'),
(15, 'White Radish - Kuwait', 1, 'white-radish', NULL, NULL, 0, 'products/September2018/dAKxLafYiXvvRiDV6oya.jpg', NULL, '2018-09-03 01:27:10', '2018-09-03 01:27:10'),
(16, 'Carrots - Australia', 1, 'carrots', NULL, NULL, 0, 'products/September2018/SYBpV77WPpuBVaC55pLZ.jpg', NULL, '2018-09-03 01:28:05', '2018-09-03 01:28:59'),
(17, 'Carrots - China', 1, 'carrots-china', NULL, NULL, 0, 'products/September2018/1nNsCsp6a3dLzzeREh9F.jpg', NULL, '2018-09-03 01:28:38', '2018-09-03 01:28:38'),
(18, 'Red Radish - Holland', 1, 'red-radish', '<p>Country of Origin: Netherlands</p>', NULL, 0, 'products/September2018/o6mjd8KMJYiF3zJ01v32.jpg', NULL, '2018-09-03 01:30:00', '2018-09-03 01:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_fields`
--

CREATE TABLE `product_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `product-type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_metas`
--

CREATE TABLE `product_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `name`, `image`, `quantity`, `product`, `created_at`, `updated_at`) VALUES
(1, 'Kilogram', 'product-variations/September2018/hpCTu6IUGMLT1EO9tq8J.jpg', '1', 7, '2018-09-03 08:07:09', '2018-09-03 08:07:09'),
(2, '500 mg', 'product-variations/September2018/aa4iErDrvcP7DgH0jtqK.jpg', '1', 7, '2018-09-04 02:36:03', '2018-09-04 02:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `profile_verifications`
--

CREATE TABLE `profile_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_verifications`
--

INSERT INTO `profile_verifications` (`id`, `user`, `key`, `value`, `code`, `verified`, `created_at`, `updated_at`) VALUES
(1, '1', 'email', 'swap.dakshim@gmail.com', '213527', 'N', NULL, NULL),
(2, '1', 'email', 'swap.dakshim@gmail.com', '151860', 'N', NULL, NULL),
(3, '1', 'phone', '9779400856', '598992', 'N', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-07-31 23:09:14', '2018-07-31 23:09:14'),
(2, 'user', 'Normal User', '2018-07-31 23:09:14', '2018-07-31 23:09:14'),
(3, 'adminweb', 'Admin Web', '2018-07-31 23:09:39', '2018-07-31 23:09:39'),
(4, 'supplier', 'Supplier', '2018-07-31 23:26:23', '2018-07-31 23:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'The Supplier', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/October2018/T6LA6Iuce5t6BnOqAUu1.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', NULL, '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Jumla Club', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'One Platform ... So Many Option', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', NULL, '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', NULL, '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.stock_threshold', 'Stock Threshold', '5', '', 'text', 6, 'Site'),
(12, 'social.emailAddress', 'Email Address', 'support@jumla.club', NULL, 'text', 7, 'Social'),
(13, 'social.facebookURL', 'Facebook Page URL', 'http://facebook.com/jumlaclub', NULL, 'text', 8, 'Social'),
(14, 'social.instagramURL', 'Instagram URL', 'http://instagram.com/jumlaclub', NULL, 'text', 9, 'Social'),
(15, 'social.twitterURL', 'Twitter URL', 'http://twitter.com/jumlaclub', NULL, 'text', 10, 'Social'),
(16, 'social.youtubeURL', 'Youtube URL', 'https://www.youtube.com/channel/UCDOAw2HJoZ0f2Kyyezd-ujg', NULL, 'text', 11, 'Social'),
(17, 'home.home_tagline', 'Home Tagline', 'one platform ... with many options', NULL, 'text', 12, 'Home'),
(18, 'home.home_sub_tagline', 'Home Sub Tagline', 'all items from the leadingfood and beverage suppliers in order are one click away, try it out.', NULL, 'text', 13, 'Home'),
(19, 'home.home_about_title', 'Home About Title', 'about us', NULL, 'text', 14, 'Home'),
(20, 'home.home_about_content', 'Home About Content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse luctus pulvinar neque, eget ultricies ex porttitor id. Donec maximus nulla eu ex tempor faucibus. Morbi viverra vehicula dictum. Maecenas tempor maximus leo. Fusce sollicitudin scelerisque tellus ut posuere. Aliquam pharetra imperdiet augue quis mattis. Donec hendrerit, dolor sit amet imperdiet accumsan, urna metus ullamcorper justo, in vulputate velit orci ultricies risus. Proin suscipit nisi ut leo viverra, sed placerat massa convallis. Vestibulum fringilla egestas mi eget gravida. Praesent vestibulum sem in lectus finibus laoreet. Quisque auctor elit quam, a tempus leo fermentum quis.</p>', NULL, 'rich_text_box', 15, 'Home'),
(21, 'home.home_about_image', 'Home About Image', 'settings/October2018/3DsSy8mk9GrBbIuniUEN.jpg', NULL, 'image', 16, 'Home'),
(23, 'site.copyright_left', 'Copyright Left', '<i class=\"fa fa-copyright\" aria-hidden=\"true\"></i> copyright 2018', NULL, 'text', 17, 'Site'),
(24, 'site.copyright_center', 'Copyright Center', 'All rights reserved', NULL, 'text', 18, 'Site'),
(25, 'site.copyright_right', 'Copyright Right', 'Designed &amp; Coded By <a href=\"#\"> cosettesolutions </a>', NULL, 'text', 19, 'Site'),
(26, 'site.footer_logo', 'Footer Logo', 'settings/October2018/8SqP51TVxrF44jCKFak1.png', NULL, 'image', 20, 'Site'),
(27, 'home.get_started_title', 'Get Started Title', 'Let\'s get started', NULL, 'text', 21, 'Home'),
(29, 'home.get_started_content', 'Get Started Content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi viverra vehicula dictum.</p>', NULL, 'rich_text_box', 22, 'Home'),
(32, 'hiw.hiw_description', 'How it\'s work Description', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse luctus pulvinar neque, eget ultricies ex porttitor id. Donec maximus nulla eu ex tempor faucibus. Morbi viverra vehicula dictum.</p>', NULL, 'rich_text_box', 24, 'HIW'),
(33, 'hiw.hiw_title', 'How it\'s work Title', 'how it works', NULL, 'text', 23, 'HIW'),
(34, 'hiw.step_one_title', 'Step 1 Title', 'Company ( Restaurant )', NULL, 'text', 25, 'HIW'),
(35, 'hiw.step_one_image', 'Step 1 Image', 'settings/October2018/aq6bApETdIddhwk4jDzU.png', NULL, 'image', 26, 'HIW'),
(36, 'hiw.step_one_two_path', 'Step 1 to Step 2 Path', 'Order', NULL, 'text', 27, 'HIW'),
(37, 'hiw.step_two_title', 'Step 2 Title', 'The Supplier ( Admin )', NULL, 'text', 28, 'HIW'),
(38, 'hiw.step_three_title', 'Step 3 Title', 'Brand ( Supplier )', NULL, 'text', 29, 'HIW'),
(39, 'hiw.step_four_title', 'Step 4 Title', 'The Supplier ( Admin )', NULL, 'text', 30, 'HIW'),
(40, 'hiw.step_five_title', 'Step 5 Title', 'Company ( Restaurant )', NULL, 'text', 31, 'HIW'),
(41, 'hiw.step_six_title', 'Step 6 Title', 'The Supplier ( Admin )', NULL, 'text', 32, 'HIW'),
(42, 'hiw.step_seven_title', 'Step 7 Title', 'Brand ( Supplier )', NULL, 'text', 33, 'HIW'),
(43, 'hiw.step_eight_title', 'Step 8 Title', 'Company ( Restaurant )', NULL, 'text', 34, 'HIW'),
(44, 'hiw.step_two_image', 'Step 2 Image', 'settings/October2018/WH7TRGGl5mQUX1uEkA3w.png', NULL, 'image', 35, 'HIW'),
(45, 'hiw.step_three_image', 'Step 3 Image', 'settings/October2018/y69QTOy52SX77xZMPXJI.png', NULL, 'image', 36, 'HIW'),
(46, 'hiw.step_four_image', 'Step 4 Image', 'settings/October2018/agc9TP1qAVSxqAm8X8L3.png', NULL, 'image', 37, 'HIW'),
(47, 'hiw.step_five_image', 'Step 5 Image', 'settings/October2018/Obw1PzBbiy0pbQVzJfpb.png', NULL, 'image', 38, 'HIW'),
(48, 'hiw.step_six_image', 'Step 6 Image', 'settings/October2018/Y5qFziiSfhtVrIgFRi4e.png', NULL, 'image', 39, 'HIW'),
(49, 'hiw.step_seven_image', 'Step 7 Image', 'settings/October2018/k3UqRNOxOyqMHRSj5jE1.png', NULL, 'image', 40, 'HIW'),
(50, 'hiw.step_eight_image', 'Step 8 Image', 'settings/October2018/6yIQ75VBHShO0WK9vsDR.png', NULL, 'image', 41, 'HIW'),
(52, 'hiw.step_two_three_path', 'Step 2 to Step 3 Path', 'Get an Approval', NULL, 'text', 42, 'HIW'),
(53, 'hiw.step_three_four_path', 'Step 3 to Step 4 Path', 'Approved', NULL, 'text', 43, 'HIW'),
(54, 'hiw.step_four_five_path', 'Step 4 to Step 5 Path', 'Notify', NULL, 'text', 44, 'HIW'),
(55, 'hiw.step_five_six_path', 'Step 5 to Step 6 Path', 'Pay', NULL, 'text', 45, 'HIW'),
(56, 'hiw.step_six_seven_path', 'Step 6 to Step 7 Path', 'Notify Payment Method', NULL, 'text', 46, 'HIW'),
(57, 'hiw.step_seven_eight_path', 'Step 7 to Step 8 Path', 'Ship', NULL, 'text', 47, 'HIW');

-- --------------------------------------------------------

--
-- Table structure for table `suggested_bussinesses`
--

CREATE TABLE `suggested_bussinesses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owned` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suggested_bussinesses`
--

INSERT INTO `suggested_bussinesses` (`id`, `name`, `type`, `user`, `owned`, `status`, `additional_information`, `created_at`, `updated_at`) VALUES
(1, 'abc', 'supplier', '1', 'on', 'suggested', 'hei', NULL, NULL),
(2, 'Dummy', 'supplier', '1', 'on', 'suggested', 'abc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `uid`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Star Fruit', 'star-fruit', '2018-08-10 02:01:20', '2018-08-10 02:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_fields`
--

CREATE TABLE `supplier_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_fields`
--

INSERT INTO `supplier_fields` (`id`, `key`, `label`, `type`, `created_at`, `updated_at`) VALUES
(1, 'terms-and-conditions', 'Terms and Conditions', 'richtext', '2018-08-07 01:29:24', '2018-08-07 01:29:24'),
(2, 'description', 'Description', 'textarea', '2018-08-07 01:30:01', '2018-08-07 01:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_metas`
--

CREATE TABLE `supplier_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template_parts`
--

CREATE TABLE `template_parts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_parts`
--

INSERT INTO `template_parts` (`id`, `name`, `content`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'About Us - Content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse luctus pulvinar neque, eget ultricies ex porttitor id. Donec maximus nulla eu ex tempor faucibus. Morbi viverra vehicula dictum. Maecenas tempor maximus leo. Fusce sollicitudin scelerisque tellus ut posuere. Aliquam pharetra imperdiet augue quis mattis. Donec hendrerit, dolor sit amet imperdiet accumsan, urna metus ullamcorper justo, in vulputate velit orci ultricies risus. Proin suscipit nisi ut leo viverra, sed placerat massa convallis. Vestibulum fringilla egestas mi eget gravida. Praesent vestibulum sem in lectus finibus laoreet. Quisque auctor elit quam, a tempus leo fermentum quis.</p>', 'Home Page Content', 'about-content', '2018-10-03 00:49:32', '2018-10-03 00:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2018-07-31 23:09:26', '2018-07-31 23:09:26'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2018-07-31 23:09:26', '2018-07-31 23:09:26'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2018-07-31 23:09:26', '2018-07-31 23:09:26'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-07-31 23:09:27', '2018-07-31 23:09:27'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2018-07-31 23:09:27', '2018-07-31 23:09:27'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2018-07-31 23:09:27', '2018-07-31 23:09:27'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2018-07-31 23:09:27', '2018-07-31 23:09:27'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2018-07-31 23:09:27', '2018-07-31 23:09:27'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2018-07-31 23:09:27', '2018-07-31 23:09:27'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-07-31 23:09:27', '2018-07-31 23:09:27'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2018-07-31 23:09:28', '2018-07-31 23:09:28'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2018-07-31 23:09:28', '2018-07-31 23:09:28'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-07-31 23:09:28', '2018-07-31 23:09:28'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-07-31 23:09:28', '2018-07-31 23:09:28'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-07-31 23:09:28', '2018-07-31 23:09:28'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-07-31 23:09:28', '2018-07-31 23:09:28'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-07-31 23:09:29', '2018-07-31 23:09:29'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-07-31 23:09:29', '2018-07-31 23:09:29'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-07-31 23:09:29', '2018-07-31 23:09:29'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-07-31 23:09:29', '2018-07-31 23:09:29'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-07-31 23:09:29', '2018-07-31 23:09:29'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2018-07-31 23:09:29', '2018-07-31 23:09:29'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2018-07-31 23:09:29', '2018-07-31 23:09:29'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2018-07-31 23:09:29', '2018-07-31 23:09:29'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2018-07-31 23:09:29', '2018-07-31 23:09:29'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2018-07-31 23:09:30', '2018-07-31 23:09:30'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2018-07-31 23:09:30', '2018-07-31 23:09:30'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2018-07-31 23:09:30', '2018-07-31 23:09:30'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2018-07-31 23:09:30', '2018-07-31 23:09:30'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2018-07-31 23:09:30', '2018-07-31 23:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `phone`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin a', 'admin@admin.com', '9779400856', 'users/default.png', '$2y$10$MoSEfw0kjCkIwbOUmkR1HulkIC9x0CplrBLJheSo2lcAzJTtwvGNW', '7DBcJIPkkLvMnndkmhOborkWl9axZV2hlfCZoGfmahQG2sb6VOyyRI1TN3rE', NULL, '2018-07-31 23:09:24', '2018-08-23 06:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_name_unique` (`name`),
  ADD UNIQUE KEY `brand_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_fields`
--
ALTER TABLE `product_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_metas`
--
ALTER TABLE `product_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_verifications`
--
ALTER TABLE `profile_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `suggested_bussinesses`
--
ALTER TABLE `suggested_bussinesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_fields`
--
ALTER TABLE `supplier_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_metas`
--
ALTER TABLE `supplier_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_parts`
--
ALTER TABLE `template_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_fields`
--
ALTER TABLE `product_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_metas`
--
ALTER TABLE `product_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profile_verifications`
--
ALTER TABLE `profile_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `suggested_bussinesses`
--
ALTER TABLE `suggested_bussinesses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_fields`
--
ALTER TABLE `supplier_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier_metas`
--
ALTER TABLE `supplier_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_parts`
--
ALTER TABLE `template_parts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
