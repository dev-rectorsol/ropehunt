-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 07, 2020 at 02:27 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ropehunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) DEFAULT NULL,
  `house` varchar(32) DEFAULT NULL,
  `post` varchar(32) DEFAULT NULL,
  `dist` varchar(32) DEFAULT NULL,
  `state` varchar(12) DEFAULT NULL,
  `city` varchar(12) DEFAULT NULL,
  `country` varchar(6) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `house`, `post`, `dist`, `state`, `city`, `country`, `pincode`) VALUES
(1, '100', 'dlw', 'dlw', 'varanasi', 'UP', 'varanasi', 'India', '123456'),
(2, '200', 'akarmatta', 'dlw', 'varanasi', 'UP', 'varanasi', 'India', '123456'),
(3, '300', 'Raju Lal ', 'kakarmatta', 'varanasi', 'jgh.jpg', 'Varanasi', 'India', '221010'),
(4, '400', 'sdafsfsdf', 'kkaskasaska', 'varanasi', 'UP', 'Varansi', 'India', '222100');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `ansid` char(32) NOT NULL,
  `question` char(32) NOT NULL,
  `answers` text NOT NULL,
  `userid` char(32) NOT NULL,
  PRIMARY KEY (`ansid`),
  KEY `question` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` char(32) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(128) NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `public_at` datetime NOT NULL,
  `is_publish` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `postid`, `title`, `slug`, `created_by`, `content`, `public_at`, `is_publish`, `deleted`, `created_at`) VALUES
(14, '5eb7e2b69d95e', 'priyanka singh yadav', 'dgdfg', 'AKIASZ001', '<p>Add a content here</p><p><span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">There are latest blog posts</span><br></p>', '2020-05-10 17:17:10', 0, 1, '2020-05-10 11:47:10'),
(15, '145eb7e300aa928', 'ME0000003878', 'hello', 'AKIASZ001', '<p>Add a content here</p><p><span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">There are latest blog posts</span></p><p><span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">There are latest blog posts</span><span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\"><br></span><br></p>', '2020-05-10 17:18:24', 0, 1, '2020-05-10 11:48:24'),
(16, '155eb7e32a600ad', 'singh', 'dgdfg', 'AKIASZ001', 'Add a content here', '2020-05-10 17:19:06', 0, 1, '2020-05-10 11:49:06'),
(17, '165eb7e3556098e', 'arti singh patel', 'dgdfg', 'AKIASZ001', 'Add a content here', '2020-05-10 17:19:49', 0, 1, '2020-05-10 11:49:49'),
(18, '175eb7e3a210c5f', 'arti singh patel', 'hello', 'AKIASZ001', 'Add a content here', '2020-05-10 17:21:06', 0, 1, '2020-05-10 11:51:06'),
(19, 'post19', 'arti', 'hello', 'AKIASZ001', 'Add a content here', '2020-06-01 12:15:50', 0, 1, '2020-06-01 06:45:50'),
(20, 'post20', 'hello', 'dgdfg', 'AKIASZ001', 'Add a content here', '2020-06-01 12:55:57', 0, 1, '2020-06-01 07:25:57'),
(21, 'post21', 'hello', 'dgdfg', 'AKIASZ001', 'Add a content here', '2020-06-01 12:57:39', 0, 1, '2020-06-01 07:27:39'),
(22, 'post22', 'arti', 'dgdfg', 'AKIASZ001', 'Add a content here', '0000-00-00 00:00:00', 0, 0, '2020-06-01 07:32:55'),
(23, 'post23', 'arti singh patel', 'hello', 'AKIASZ001', 'Add a content here', '2020-06-01 14:35:54', 1, 0, '2020-06-01 09:05:54'),
(24, 'post24', 'priya', 'hello', 'AKIASZ001', 'Add a content here', '2020-06-01 14:43:56', 1, 0, '2020-06-01 09:13:56'),
(25, 'post25', 'pinki', 'pink', 'AKIASZ001', 'Add a content here', '2020-06-01 14:44:42', 1, 0, '2020-06-01 09:14:42'),
(26, 'post26', 'ruchi singh', 'ruchi', 'AKIASZ001', 'Add a content here', '2020-06-01 14:45:19', 1, 0, '2020-06-01 09:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
CREATE TABLE IF NOT EXISTS `attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `name`, `created_at`) VALUES
(20, 'Color', '2020-04-24 15:10:00'),
(21, 'Fabric', '2020-04-24 15:10:16'),
(22, 'Stitch', '2020-04-24 15:10:27'),
(23, 'Dye', '2020-04-24 15:10:39'),
(24, 'Pattern', '2020-06-18 08:34:07'),
(25, 'Weaving', '2020-06-18 08:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

DROP TABLE IF EXISTS `carousel`;
CREATE TABLE IF NOT EXISTS `carousel` (
  `carousel_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('saree','suit','dupatta','lehenga') NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sno` varchar(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`carousel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`carousel_id`, `type`, `updated_at`, `sno`, `product_id`) VALUES
(41, 'saree', '2020-06-24 20:51:47', 'Corousel1', 47),
(42, 'saree', '2020-06-24 20:51:47', 'Corousel2', 50),
(43, 'saree', '2020-06-24 20:51:47', 'Corousel3', 47),
(44, 'saree', '2020-06-24 20:51:47', 'Corousel4', 50),
(45, 'saree', '2020-06-24 20:51:47', 'Corousel5', 0),
(46, 'saree', '2020-06-24 20:51:47', 'Corousel6', 0),
(47, 'saree', '2020-06-24 20:51:47', 'Corousel7', 0),
(48, 'saree', '2020-06-24 20:51:47', 'Corousel8', 0),
(49, 'saree', '2020-06-24 20:51:47', 'Corousel9', 0),
(50, 'saree', '2020-06-24 20:51:47', 'Corousel10', 0),
(51, 'dupatta', '2020-06-24 20:51:53', 'Corousel1', 25),
(52, 'dupatta', '2020-06-24 20:51:54', 'Corousel2', 49),
(53, 'dupatta', '2020-06-24 20:51:54', 'Corousel3', 25),
(54, 'dupatta', '2020-06-24 20:51:54', 'Corousel4', 49),
(55, 'dupatta', '2020-06-24 20:51:54', 'Corousel5', 25),
(56, 'dupatta', '2020-06-24 20:51:54', 'Corousel6', 25),
(57, 'dupatta', '2020-06-24 20:51:54', 'Corousel7', 0),
(58, 'dupatta', '2020-06-24 20:51:54', 'Corousel8', 0),
(59, 'dupatta', '2020-06-24 20:51:54', 'Corousel9', 0),
(60, 'dupatta', '2020-06-24 20:51:54', 'Corousel10', 0),
(61, 'suit', '2020-06-24 20:51:59', 'Corousel1', 45),
(62, 'suit', '2020-06-24 20:51:59', 'Corousel2', 45),
(63, 'suit', '2020-06-24 20:51:59', 'Corousel3', 45),
(64, 'suit', '2020-06-24 20:51:59', 'Corousel4', 0),
(65, 'suit', '2020-06-24 20:51:59', 'Corousel5', 0),
(66, 'suit', '2020-06-24 20:51:59', 'Corousel6', 0),
(67, 'suit', '2020-06-24 20:51:59', 'Corousel7', 0),
(68, 'suit', '2020-06-24 20:51:59', 'Corousel8', 0),
(69, 'suit', '2020-06-24 20:51:59', 'Corousel9', 0),
(70, 'suit', '2020-06-24 20:51:59', 'Corousel10', 0),
(71, 'lehenga', '2020-06-24 20:52:04', 'Corousel1', 46),
(72, 'lehenga', '2020-06-24 20:52:04', 'Corousel2', 48),
(73, 'lehenga', '2020-06-24 20:52:04', 'Corousel3', 46),
(74, 'lehenga', '2020-06-24 20:52:04', 'Corousel4', 48),
(75, 'lehenga', '2020-06-24 20:52:04', 'Corousel5', 0),
(76, 'lehenga', '2020-06-24 20:52:04', 'Corousel6', 0),
(77, 'lehenga', '2020-06-24 20:52:04', 'Corousel7', 0),
(78, 'lehenga', '2020-06-24 20:52:04', 'Corousel8', 0),
(79, 'lehenga', '2020-06-24 20:52:04', 'Corousel9', 0),
(80, 'lehenga', '2020-06-24 20:52:04', 'Corousel10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `parent` varchar(32) NOT NULL,
  `source` varchar(262) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent`, `source`) VALUES
(11, 'Mens', 'none', NULL),
(12, 'Women', 'none', NULL),
(13, 'Kids', 'none', NULL),
(14, 'Accessories', 'none', NULL),
(15, 'Miscellaneous', 'none', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
CREATE TABLE IF NOT EXISTS `collection` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `sub_title` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `menu` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collection_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `title`, `sub_title`, `created_at`, `menu`) VALUES
(4, 'Collection', '<span xss=removed>Collection</span> ', '2020-06-27 17:33:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `collection_product`
--

DROP TABLE IF EXISTS `collection_product`;
CREATE TABLE IF NOT EXISTS `collection_product` (
  `cp_id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`cp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collection_product`
--

INSERT INTO `collection_product` (`cp_id`, `collection_id`, `product_id`) VALUES
(4, 4, 23),
(5, 4, 27),
(6, 4, 28),
(7, 4, 45);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(62) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `subject` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `status` enum('New','Done') NOT NULL DEFAULT 'New',
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `subject`, `message`, `status`, `added_date`) VALUES
(1, 'ruchi singh', '01231312323', 'artisinghh11@gmail.com', 'SM Consultancy', 'bf  fghf bgf  hf  gfn  g  h c bgfn g  f  h f b h', 'New', '2020-04-16 06:31:18'),
(2, 'ruchi singh', '01231312323', 'artisinghh11@gmail.com', 'SM Consultancy', 'bf  fghf bgf  hf  gfn  g  h c bgfn g  f  h f b h', 'New', '2020-04-16 06:31:50'),
(4, 'ruchi singh', '8040729016', 'a@gmail.com', 'something', 'hello', 'Done', '2020-06-01 10:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` int(6) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `customer_name`, `email`, `phone`, `postcode`, `address`, `created`, `modified`, `status`) VALUES
(21, 'AKIASZ001', 'pooja singh', 'singhseema4581@gmail.com', '01231312323', 123455, 'sikiya narapur', '0000-00-00 00:00:00', '2020-06-05 23:43:18', '1'),
(30, NULL, 'arti singh patel', 'singhseema4581@gmail.com', '08840729016', 123455, 'sikiya', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(31, NULL, 'golu', 'g@gmail.com', '01231312323', 123455, 'vns', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(32, 'EDO100135', 'ruchi singh', 'ruchisingh.vns1211@gmail.com', '9876543210', 221005, 'A/12 sector A lanka road sunderpur (up)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(33, 'EDO100138', 'adity', '', '', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(36, 'EDO100139', 'payal', 'payal@gmail.com', '08840729016', 123455, 'vns', '2020-06-05 23:17:03', '2020-06-07 09:48:59', '1'),
(37, 'EDO100140', 'singharti ', 'a@gmail.com', '01231312323', 123455, 'sikiya', '2020-06-06 16:15:30', '2020-06-07 10:49:32', '1');

-- --------------------------------------------------------

--
-- Table structure for table `docfile`
--

DROP TABLE IF EXISTS `docfile`;
CREATE TABLE IF NOT EXISTS `docfile` (
  `docid` char(32) NOT NULL,
  `nodeid` char(32) NOT NULL,
  `type` enum('free','paid') NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `size` varchar(32) NOT NULL,
  `doctype` varchar(32) NOT NULL,
  `download` tinyint(1) NOT NULL,
  PRIMARY KEY (`docid`),
  KEY `nodeid` (`nodeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(132) DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `indexing`
--

DROP TABLE IF EXISTS `indexing`;
CREATE TABLE IF NOT EXISTS `indexing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) NOT NULL,
  `port` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `root` (`root`),
  KEY `port` (`port`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indexing`
--

INSERT INTO `indexing` (`id`, `root`, `port`, `type`) VALUES
(265, 168, 1, 'tag'),
(266, 168, 11, 'category'),
(267, 169, 2, 'tag'),
(268, 169, 12, 'category'),
(269, 170, 2, 'tag'),
(270, 170, 12, 'category'),
(271, 171, 2, 'tag'),
(272, 171, 12, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
CREATE TABLE IF NOT EXISTS `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 'kogk44c00ksswwg44sssgg8c8sws8g0ogocgkg84', 10, 1, 0, NULL, 1584184675);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(32) NOT NULL,
  `ip` varchar(24) NOT NULL,
  `lastlog` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `user_id`, `ip`, `lastlog`) VALUES
(1, '200', '::1', '2020-03-13 08:03:11'),
(2, '200', '::1', '2020-03-13 08:03:06'),
(3, '200', '100.0.0.100', '2020-03-16 09:03:21'),
(4, '400', '100.0.0.100', '2020-03-16 09:03:21'),
(5, '400', '192.168.0.1', '2020-03-16 10:03:04'),
(6, '400', '192.168.0.1', '2020-03-16 10:03:32'),
(7, '400', '192.168.0.1', '2020-03-16 10:03:20'),
(8, '400', '192.168.0.1', '2020-03-16 10:03:15'),
(9, '400', '192.168.0.1', '2020-03-16 10:03:35'),
(10, '400', '192.168.0.1', '2020-03-16 10:03:07'),
(11, '400', '192.168.0.1', '2020-03-16 10:03:06'),
(12, '400', '192.168.0.1', '2020-03-16 10:03:11'),
(13, '400', '192.168.0.1', '2020-03-16 10:03:35'),
(14, '400', '192.168.0.1', '2020-03-16 10:03:56'),
(15, '400', '192.168.0.1', '2020-03-16 10:03:43'),
(16, '400', '192.168.0.1', '2020-03-16 11:03:05'),
(17, '400', '192.168.0.1', '2020-03-16 11:03:33'),
(18, '400', '192.168.0.1', '2020-03-16 11:03:45'),
(200, '', '::1', '2020-03-19 07:03:49'),
(201, '200', '::1', '2020-03-19 07:03:07'),
(202, '200', '::1', '2020-03-19 07:03:49'),
(203, '200', '::1', '2020-03-19 07:03:25'),
(204, '200', '::1', '2020-03-19 07:03:10'),
(205, '200', '::1', '2020-03-19 07:03:41'),
(206, '200', '::1', '2020-03-19 07:03:55'),
(207, '200', '::1', '2020-03-19 07:03:21'),
(208, '200', '::1', '2020-03-19 07:03:31'),
(209, '200', '::1', '2020-03-19 07:03:47'),
(210, '200', '::1', '2020-03-19 07:03:19'),
(211, '200', '::1', '2020-03-19 07:03:32'),
(212, '200', '::1', '2020-03-19 07:03:56'),
(213, '200', '::1', '2020-03-19 07:03:44'),
(214, '200', '::1', '2020-03-19 07:03:10'),
(215, '200', '::1', '2020-03-19 07:03:39'),
(216, '200', '::1', '2020-03-19 07:03:11'),
(217, '300', '::1', '2020-03-20 08:03:12'),
(218, '300', '::1', '2020-03-20 08:03:39'),
(219, '200', '::1', '2020-03-20 08:03:59'),
(220, '200', '::1', '2020-03-20 08:03:42'),
(221, '200', '::1', '2020-03-20 08:03:57'),
(222, '200', '::1', '2020-03-20 08:03:38'),
(223, '200', '::1', '2020-03-20 08:03:57'),
(224, '200', '::1', '2020-03-20 08:03:22'),
(225, '200', '::1', '2020-03-20 08:03:10'),
(226, '200', '::1', '2020-03-20 08:03:11'),
(227, '200', '::1', '2020-03-20 08:03:25'),
(228, '200', '::1', '2020-03-20 08:03:59'),
(229, '200', '::1', '2020-03-20 08:03:38'),
(230, '200', '::1', '2020-03-20 08:03:44'),
(231, '200', '::1', '2020-03-20 08:03:06'),
(232, '200', '::1', '2020-03-20 08:03:00'),
(233, '200', '::1', '2020-03-20 08:03:26'),
(234, '200', '::1', '2020-03-20 08:03:06'),
(235, '200', '::1', '2020-03-20 08:03:25'),
(236, '200', '::1', '2020-03-20 08:03:56'),
(237, '200', '::1', '2020-03-20 08:03:26'),
(238, '200', '::1', '2020-03-20 08:03:41'),
(239, '200', '::1', '2020-03-20 09:03:24'),
(240, '200', '::1', '2020-03-20 09:03:47'),
(241, '300', '::1', '2020-03-20 09:03:17'),
(242, '200', '::1', '2020-03-20 10:03:27'),
(243, '200', '::1', '2020-03-21 06:03:33'),
(244, '200', '::1', '2020-03-23 03:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `logme`
--

DROP TABLE IF EXISTS `logme`;
CREATE TABLE IF NOT EXISTS `logme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logid` char(9) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `language` enum('english','hindi') DEFAULT NULL,
  `role` char(5) NOT NULL,
  `status` enum('active','deactive') NOT NULL,
  `joindate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=100141 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logme`
--

INSERT INTO `logme` (`id`, `logid`, `phone`, `email`, `password`, `language`, `role`, `status`, `joindate`, `updated_at`, `deleted_at`, `deleted`) VALUES
(100101, 'AKIASZ001', '7905004391', 'omie@gmail.com', '$2y$10$RiAZ5AQUiLJBlSyNagz/yOHVYzhhWv3t5LfADRTGI4TQaiAV3DUmK', 'english', 'a', 'active', '2020-03-13 00:00:00', '2020-03-18 11:43:03', '0000-00-00 00:00:00', 0),
(100137, 'EDO100137', NULL, 'ruchisingh@gmail.com', '$2y$10$eX5DTDyoAVVgWA8unK4DBuAYZZuU08JnQ5OltMf.IA6NtRLt6nA8K', NULL, 'u', 'active', '2020-06-05 13:26:53', '2020-06-05 12:56:53', NULL, 0),
(100138, 'EDO100138', NULL, 'adity@gmail.com', '$2y$10$zE506nolSXAtTaVqRiLMmeazcRDdXpE7nN0BwzNoIuC7ry3F6C32K', NULL, 'u', 'active', '2020-06-05 19:06:30', '2020-06-05 18:36:30', NULL, 0),
(100139, 'EDO100139', NULL, 'payal@gmail.com', '$2y$10$ZMXDLttly5l6RkhUW5Po6ukT9/TMo5gbP.jqJEOIjtZSlc39Zx5Bm', NULL, 'u', 'active', '2020-06-05 23:47:02', '2020-06-05 23:17:02', NULL, 0),
(100140, 'EDO100140', NULL, 'a@gmail.com', '$2y$10$egAl8xBx2zO6PkqjqaNaDu3axldaF3IC9qTadspX7da7fYDdkvrai', NULL, 'u', 'active', '2020-06-06 16:45:30', '2020-06-06 16:15:30', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------dc86471a86024c76\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602388, 1.59393, '1', 201),
(2, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------9310426db8a20720\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602442, 0.394157, '1', 0),
(3, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------c07f8dac69e6dd4f\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602558, 0.0782301, '1', 0),
(4, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------2bbd95f48ea85a50\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602637, 0.157143, '1', 0),
(5, 'api/Login', 'post', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"86fd8d17-de9f-441c-a560-1736528be0cb\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602744, 0.129579, '1', 0),
(6, 'api/Login', 'post', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"e9a6934d-bd08-4e65-86eb-1e4f33910192\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602826, 0.222999, '1', 201),
(7, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------3c47f35839bdf500\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602869, 0.32407, '1', 201),
(8, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------6f7dbceb2640d8ef\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602905, 0.26103, '1', 201),
(9, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------205c489c311ace26\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602950, 0.208422, '1', 201),
(10, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------02fa45c52c6d47d3\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602981, 0.0971799, '1', 201),
(11, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------b34b041a2f16f440\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603054, 0.161104, '1', 201),
(12, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------f61eccc30b08c44e\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603081, 0.322779, '1', 201),
(13, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------3567e5f9ec1732cf\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603271, 0.139919, '1', 201),
(14, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------8822b84224a4072c\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603347, 0.264792, '1', 201),
(15, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------312fcda55573967f\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603439, 0.135676, '1', 201),
(16, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------fd00e29d873f3d83\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603872, 0.278166, '1', 201),
(17, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------84d2e3c14a1662f0\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603896, 0.281119, '1', 201),
(18, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------6ffdd5a4508df4f4\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603944, 0.170359, '1', 201),
(19, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------234434975d33544c\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603970, 0.220311, '1', 201),
(20, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------b41190ac79762c25\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603999, 0.108457, '1', 201),
(21, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"246\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------c8407a2a3300715a\";s:5:\"email\";s:4:\"root\";s:8:\"password\";s:5:\"admin\";}', '', '::1', 1584604014, 0.163954, '1', 204),
(22, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"246\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------aee0123d00ae023c\";s:5:\"email\";s:4:\"root\";s:8:\"password\";s:5:\"admin\";}', '', '::1', 1584604130, 0.199594, '1', 204),
(23, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"246\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------e627ff8ea7037baa\";s:5:\"email\";s:4:\"root\";s:8:\"password\";s:5:\"admin\";}', '', '::1', 1584604135, 0.154999, '1', 204),
(24, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------e6e1d137b9a0c28b\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584604151, 0.111509, '1', 201),
(25, 'api/signup/otp', 'put', 'a:11:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"84558422-f673-48d0-90d8-4ca5adacc59e\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"17\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"mobile\";s:10:\"7668498112\";}', '', '::1', 1584605929, 0.919467, '1', 201),
(26, 'api/users', 'get', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"0e1e2559-9486-4752-939b-a003b967f6f1\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"17\";s:10:\"Connection\";s:10:\"keep-alive\";}', '', '::1', 1584688264, 1.90539, '1', 200),
(27, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"256\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------e542d057d5fd2cb3\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:5:\"12345\";}', '', '::1', 1584691807, 0.232942, '1', 204),
(28, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------2b60db0b55209b54\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584691818, 0.128321, '1', 204),
(29, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------a9f984a4a5bf5536\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692005, 0.250493, '1', 204),
(30, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------56ae17612e5113df\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692168, 0.114027, '1', 204),
(31, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------6825de4554985700\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692180, 0.140713, '1', 204),
(32, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------e399c8539873aead\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692208, 0.0860889, '1', 204),
(33, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------24ee6f7fdf99fa91\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692270, 0.170467, '1', 204),
(34, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------5c22faee9bae0616\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692396, 0.256813, '1', 204),
(35, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------b82bd1aa7acbe679\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692417, 0.177258, '1', 204),
(36, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------7ef9c66fc3acc62c\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692477, 0.163793, '1', 204),
(37, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------79b9abe368127611\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692546, 0.11574, '1', 204),
(38, 'api/Login', 'post', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"249129fa-3bcf-4e75-9526-ecd8e7d11e71\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692626, 0.134079, '1', 204),
(39, 'api/Login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7524829f-8c6b-4314-9cda-90f62d43df66\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692701, 0.160372, '1', 204),
(40, 'api/Login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"01d86a95-f43a-4266-b37d-34910e7aed86\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------827250464519600781342123\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:14:\"Content-Length\";s:3:\"287\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692744, 0.306863, '1', 204),
(41, 'api/login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"8769a102-fd87-461b-866c-e959b4e900e9\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692810, 0.139524, '1', 204),
(42, 'api/login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"2848c164-9997-4435-8874-0445b3dc802d\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";}', '', '::1', 1584692832, 0.322264, '1', 201),
(43, 'api/login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f32c9ca6-6d16-45cc-b245-ce5f2900b643\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692852, 0.086364, '1', 204),
(44, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------bad4535c9ad3b088\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";}', '', '::1', 1584692900, 0.367161, '1', 204),
(45, 'api/login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"df302ac9-ac39-4a43-9152-d36fb89d965d\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";}', '', '::1', 1584692923, 0.16898, '1', 204),
(46, 'api/login', 'post', 'a:14:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a1d98c23-bf29-4922-954d-42ef7c267c9e\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"45\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693088, 0.105505, '1', 204),
(47, 'api/login', 'post', 'a:14:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"8855e79c-ecc0-45c1-8680-01a8be2deabf\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"45\";s:6:\"Cookie\";s:43:\"ci_session=in6e7naibj3rkfnr5dku66jh8s26kis4\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";s:4:\"role\";s:1:\"s\";}', '', '::1', 1584693099, 0.3226, '1', 201),
(48, 'api/login', 'post', 'a:14:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"b2296ded-71a3-4a42-a1a2-b9728fb59656\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"45\";s:6:\"Cookie\";s:43:\"ci_session=in6e7naibj3rkfnr5dku66jh8s26kis4\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693179, 0.308308, '1', 201),
(49, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------fd505e8b2f18d869\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693282, 0.144112, '1', 201),
(50, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------cb7951ffa5bfe94d\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693357, 0.18238, '1', 201),
(51, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------5d77f125891aa5f5\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693397, 0.137795, '1', 201),
(52, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------cef93a6d8046c089\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693477, 0.178403, '1', 201),
(53, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------d5aa774327c990b0\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693501, 0.21852, '1', 201),
(54, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------995b5b81614da22e\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693610, 0.299046, '1', 201),
(55, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------06e4c76aecbf17fc\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693671, 0.136203, '1', 201),
(56, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------9d3cc4573c083e2b\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693925, 0.199257, '1', 201),
(57, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------edb83fc294af9a35\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694019, 0.1715, '1', 201),
(58, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------8650d7455ff6b8f7\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694058, 0.101836, '1', 201),
(59, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------96339d1987d62bee\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694184, 0.316631, '1', 201),
(60, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------bd53fc468d179e21\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694206, 0.167158, '1', 201),
(61, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------71e18a42f4b36294\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694319, 0.203884, '1', 201),
(62, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------14d5737ec33b9cc4\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694406, 0.112315, '1', 201),
(63, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------727e8715cde55007\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694506, 0.259325, '1', 201),
(64, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------1a08dee71e3c5a9f\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694525, 0.192755, '1', 201),
(65, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------9a779a782a885e37\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694676, 0.20404, '1', 201),
(66, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------ab959eb0eaeff9c4\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694766, 0.134476, '1', 201),
(67, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------c60fdf4f7513551c\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694781, 0.292675, '1', 201),
(68, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------47e2ac5b3c4923e4\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694824, 0.143524, '1', 201),
(69, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------967b50347a7f21d5\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694847, 0.162707, '1', 201),
(70, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------b29a921acdaad87d\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694877, 0.165407, '1', 201),
(71, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------98409086bc50671e\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584699387, 0.241007, '1', 201),
(72, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------bfcaa807ba6642f5\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584770553, 0.814498, '1', 201),
(73, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------16faa89f7da12b07\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584933874, 1.79188, '1', 201),
(74, 'api/Login', 'post', 'a:16:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"f11467d3-4e3c-b32b-ed58-2514864dccdf\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";}', '', '::1', 1585125739, 0.44133, '1', 204),
(75, 'api/Signup', 'post', 'a:18:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarybV97p1ozAsBTFwjz\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"8b85d7b7-ebb3-7925-47bc-64b5d57559b6\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"mobile\";s:10:\"7905004391\";}', '', '::1', 1585283153, 0.56331, '1', 0),
(76, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundary8XmecQ665DGxzLj9\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"280d23d3-3336-f8ca-db18-e57a99b5c525\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=sa3uijo5mf3ttiqjgmhr94v11vcqk3km\";s:6:\"mobile\";s:10:\"7905004391\";}', '', '::1', 1585283191, 0.219044, '1', 404),
(77, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundaryawLNaMufgXV6ttii\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"ee08e5ad-3327-34d5-ff49-8ade7eec22bf\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=sa3uijo5mf3ttiqjgmhr94v11vcqk3km\";s:6:\"mobile\";s:10:\"8853120459\";}', '', '::1', 1585283310, 0.313454, '1', 201),
(78, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarytXYwZBgDIzvUtMAV\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"c5333875-84f9-7fb1-d50f-0b95ba3587de\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=sa3uijo5mf3ttiqjgmhr94v11vcqk3km\";s:6:\"mobile\";s:10:\"8853120459\";}', '', '::1', 1585283331, 0.159369, '1', 404),
(79, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarywNZPpSJxKvdv1x6W\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"ebe1ac53-d1e3-44c4-178d-65ebec0d6837\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=sa3uijo5mf3ttiqjgmhr94v11vcqk3km\";s:6:\"mobile\";s:10:\"8853120450\";}', '', '::1', 1585283393, 0.238131, '1', 0),
(80, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarypyz0QB7v1GfYowO6\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"9faffb00-c92d-dc7b-7477-60ddbeb74591\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=sa3uijo5mf3ttiqjgmhr94v11vcqk3km\";s:6:\"mobile\";s:10:\"8853120450\";}', '', '::1', 1585283474, 0.619877, '1', 404),
(81, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarylbPibEpybehA6wRA\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"19d18b2e-a087-1343-466b-a27ce41c2e38\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=324r09c6h3et9t4p93jhe5cv468uai9i\";s:6:\"mobile\";s:10:\"8853120456\";}', '', '::1', 1585283498, 0.362385, '1', 0),
(82, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundaryvShQfKAfxeU1KLqQ\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"226ce77f-d511-2ea7-36dd-536279b363a4\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=324r09c6h3et9t4p93jhe5cv468uai9i\";s:6:\"mobile\";s:10:\"8853120455\";}', '', '::1', 1585283572, 4.3544, '1', 201);

-- --------------------------------------------------------

--
-- Table structure for table `megamenu`
--

DROP TABLE IF EXISTS `megamenu`;
CREATE TABLE IF NOT EXISTS `megamenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` enum('shop','collection','technique') NOT NULL,
  `type` enum('text','pic') NOT NULL,
  `title` varchar(64) NOT NULL,
  `url` varchar(256) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `megamenu`
--

INSERT INTO `megamenu` (`menu_id`, `parent`, `type`, `title`, `url`, `image`, `updated_at`) VALUES
(1, 'shop', 'text', 'Fresh of the Loom', 'http://localhost/kashika/web/shop/shop_by_category/7', NULL, '2020-06-25 17:27:49'),
(2, 'shop', 'pic', 'title1', 'http://localhost/kashika/web/shop/shop_by_category/7 ', 'day3.png', '2020-06-25 18:09:50'),
(3, 'shop', 'pic', 'title2', '', 'DSC_0507-copy-330x413.jpg', '2020-06-25 18:09:50'),
(6, 'shop', 'pic', 'title3', '', 'DSC_0507-copy-330x413.jpg', '2020-06-25 18:10:57'),
(9, 'collection', 'pic', 'title1', '', '002-330x413.jpg', '2020-06-25 20:12:30'),
(10, 'collection', 'pic', 'title2', '', 'download_(1).jpg', '2020-06-25 20:13:26'),
(11, 'collection', 'pic', 'sdfsdfds', '', 'download_(1).jpg', '2020-06-25 20:13:50'),
(22, 'collection', 'text', 'Collection', 'Pages/collection/4', NULL, '2020-06-27 17:33:14'),
(23, 'technique', 'text', 'Technique', 'Pages/technique/3', NULL, '2020-06-27 17:39:36'),
(19, 'technique', 'pic', 'Title1', '', 'DSC_0507-copy-330x413.jpg', '2020-06-27 15:35:24'),
(20, 'technique', 'pic', 'Title2', '', 'DSC_0507-copy-330x413.jpg', '2020-06-27 15:35:31'),
(21, 'technique', 'pic', 'Title3', '', 'DSC_0507-copy-330x413.jpg', '2020-06-27 15:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) NOT NULL,
  `code` varchar(6) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `key`, `code`, `time`) VALUES
(21, '9984661737', '172914', '2020-03-17 07:03:13'),
(20, '7668498112', '953507', '2020-03-19 08:03:50'),
(22, '7668498113', '106939', '2020-03-17 02:03:18'),
(12, '8951122124', '357692', '2020-03-16 11:03:46'),
(13, '8951122123', '798448', '2020-03-16 01:03:40'),
(23, '8853120455', '789022', '2020-03-27 05:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `grand_total` float(10,2) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('1','2','3','4') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_id`, `grand_total`, `created`, `modified`, `status`) VALUES
(45, 'EDO100140', 37, 10200.00, '2020-06-07 10:18:02', '2020-06-07 10:18:02', '4'),
(46, 'EDO100140', 37, 10000.00, '2020-06-07 10:19:32', '2020-06-07 10:19:32', '2');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `product_id`, `quantity`, `sub_total`) VALUES
(47, 'EDO100140', 45, 46, 2, 10000.00),
(48, 'EDO100140', 45, 31, 1, 200.00),
(49, 'EDO100140', 46, 47, 1, 10000.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_meta`
--

DROP TABLE IF EXISTS `order_meta`;
CREATE TABLE IF NOT EXISTS `order_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` char(6) NOT NULL,
  `order_id` char(32) NOT NULL,
  `price` double(5,2) NOT NULL,
  `discount_price` double(5,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment` char(32) NOT NULL,
  `transaction` varchar(64) NOT NULL,
  `userid` char(32) NOT NULL,
  `orderid` varchar(32) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('1','2','3','4') NOT NULL,
  PRIMARY KEY (`payment`),
  KEY `userid` (`userid`),
  KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment`, `transaction`, `userid`, `orderid`, `created_date`, `status`) VALUES
('pay_EzbkNzrUKVOJd3', '1020000', '37', '45', '2020-06-07 10:18:19', '1'),
('pay_EzblwruyHgygNd', '1000000', '37', '46', '2020-06-07 10:19:45', '1');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `description` tinytext,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

DROP TABLE IF EXISTS `permission_roles`;
CREATE TABLE IF NOT EXISTS `permission_roles` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pbc` varchar(32) DEFAULT NULL COMMENT 'Releted to id',
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` int(5) NOT NULL,
  `profile_pic` text NOT NULL,
  `discount` int(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `handwoven` varchar(20) DEFAULT NULL,
  `status` enum('On_Sell','Best_Sell') DEFAULT 'On_Sell',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pbc`, `name`, `description`, `price`, `profile_pic`, `discount`, `quantity`, `handwoven`, `status`, `created_at`, `updated_at`) VALUES
(168, NULL, 'Shirt for men', '<h1 class=\"pdp-name\" xss=removed>Men Black & Grey Regular Fit Shadow Check Casual Shirt</h1>', 649, 'day.png', 10, 5, 'option4', 'On_Sell', '2020-07-06 13:24:12', NULL),
(169, NULL, 'Shirt For Women', '<p><span xss=removed>Olive Green solid woven shirt style top with ruffles detail, has a mandarin collar, three-quarter sleeves, button closure</span><br xss=removed></p>', 549, 'Ed_Sheeran.png', 10, 5, 'option3', 'On_Sell', '2020-07-06 13:30:00', NULL),
(170, NULL, 'Saree', '<p><span xss=removed>Polyester</span><br></p>', 529, '27c1872b18649839dbc682ff3d4bf0e2--traditional-sarees-traditional-outfits.jpg', 10, 5, 'option3', 'On_Sell', '2020-07-06 13:32:15', NULL),
(171, NULL, 'Suit', '<p><span xss=removed>Polyester</span><br></p>', 1000, '2635sl06-59224.jpg', 10, 5, NULL, 'On_Sell', '2020-07-06 13:33:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
CREATE TABLE IF NOT EXISTS `product_attributes` (
  `product_attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`product_attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`product_attribute_id`, `product_id`, `attribute_id`, `value`) VALUES
(351, 168, 20, 'Black'),
(352, 168, 21, '100% cotton'),
(353, 168, 22, 'Regular fit'),
(354, 169, 20, 'Olive Green'),
(355, 169, 21, 'Polyester'),
(356, 170, 20, 'Brown'),
(357, 170, 21, 'Polyester'),
(358, 171, 20, 'Greenish Blue'),
(359, 171, 21, 'Cotton'),
(360, 171, 23, 'Natural');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `product_images_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`product_images_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`product_images_id`, `product_id`, `image`, `color`) VALUES
(1, 19, 'Ed_Sheeran1.png', '#F37A60'),
(2, 19, 'educationaduca.png', '#F37A60'),
(3, 20, 'slid4.jpg', '#F1182B'),
(4, 23, 'DSC_0381-330x413.jpg', '#0EF923'),
(5, 23, 'DSC_0621-copy-330x413.jpg', '#0EF923'),
(6, 24, 'download.jpg', '#FFC300'),
(7, 25, 'DSC_0507-copy-330x413.jpg', '#C70039'),
(8, 25, 'DSC_0500-copy-1-330x413.jpg', '#F9F20E '),
(9, 27, '5085_12.jpg', '#E811D4'),
(10, 28, 'download_(3).jpg', '#C70039'),
(11, 29, 'download_(3)2.jpg', '#F37A60'),
(14, 1, 'download_(2)1.jpg', '#56E628 '),
(15, 1, 'download_(2)1.jpg', '#F1182B'),
(16, 1, 'download_(2)1.jpg', '#09B4C5 '),
(17, 1, 'download_(2)1.jpg', '#18F073 '),
(18, 24, 'download_(1)3.jpg', '#18F073 '),
(19, 24, 'download3.jpg', '#0EF923'),
(20, 24, 'download_(3)5.jpg', '#18F073 '),
(21, 40, 'DSC_0381-330x4134.jpg', '#F9F20E '),
(22, 42, '1562871246794_0_2.jpg', '#56E628 '),
(24, 44, 'download_(3)6.jpg', '#faf4f4'),
(26, 45, 'skcit19_enlarge.jpg', '#fd8bee'),
(25, 45, '2635sl06-59224.jpg', '#57e5e2'),
(27, 45, 'Cotton-Patiala-Salwar-Kameez.jpg', '#ab0da5'),
(28, 45, 'Salwar-Kameez-Designs-2018-1.jpeg', '#5e5a5a'),
(29, 46, 'download_(2)2.jpg', '#c69faf'),
(30, 46, 'PRN4847-Red-color-Net-Lehenga-Choli_LC1387.jpg', '#db1a27'),
(31, 46, 'download.jpg', '#871212'),
(32, 47, '91nycgf7mbL__UY550_.jpg', '#d33c69'),
(33, 47, 'dulhan-saree-500x500.jpg', '#f33551'),
(34, 47, '27c1872b18649839dbc682ff3d4bf0e2--traditional-sarees-traditional-outfits.jpg', '#114b15'),
(35, 47, '0621119_admirable-mehendi-silk-sarees1.jpeg', '#73990a'),
(36, 48, '1562871246794_0_2.jpg', '#000000'),
(37, 48, 'download_(3).jpg', '#000000'),
(38, 48, 'images.jpg', '#000000'),
(39, 48, 'download_(2)3.jpg', '#000000'),
(40, 49, 's-l300.jpg', '#d02530'),
(41, 50, '91nycgf7mbL__UY550_1.jpg', '#bb6c2a');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE IF NOT EXISTS `results` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` char(32) NOT NULL,
  `user_id` char(32) NOT NULL,
  `obtained` int(6) NOT NULL,
  `attemptq` int(6) NOT NULL,
  `correctq` int(6) NOT NULL,
  `wrongq` int(6) NOT NULL,
  PRIMARY KEY (`result_id`),
  KEY `test_id` (`test_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(30) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_user_roles_role_Name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'admin', 1, NULL, NULL, NULL),
(2, 'student', 'Student', 'Student', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE IF NOT EXISTS `roles_users` (
  `user_id` char(9) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
('AKIASZ001', 1),
('EDO100100', 2),
('EDO100134', 2),
('EDO100135', 2),
('EDO100136', 2),
('EDO100137', 2),
('EDO100138', 2),
('EDO100139', 2),
('EDO100140', 2);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(128) NOT NULL,
  `setting_value` longtext NOT NULL,
  `autoload` varchar(8) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`setting_id`),
  KEY `setting_name` (`setting_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`, `autoload`) VALUES
(1, 'application_name', 'Rope Hunt', 'yes'),
(2, 'application_title', '{\"3\":{\"title\":\"BEST CLOTHING SITE\",\"source\":\"uploads\\/images\\\\\\/thumbnail\\/download_thumb-175x200.png\"}}', 'yes'),
(3, 'home_slider', '[]', 'yes'),
(4, 'social_icon', '[{\"link\":\"https:\\/\\/www.facebook.com\\/\",\"icon\":\"icon-line-awesome-facebook\"},{\"link\":\"https:\\/\\/twitter.com\\/Twitter\",\"icon\":\"icon-line-awesome-twitter-square\"},{\"link\":\"https:\\/\\/www.youtube.com\\/\",\"icon\":\"icon-line-awesome-youtube\"}]', 'yes'),
(5, 'contact_us', '{\"3\":{\"address\":\"12\\/A sector 3 varanasi up India\",\"email\":\"onlinekashika@gmail.com\",\"phone\":\"9876543210\"}}', 'yes'),
(6, 'application_logo', '[{\"discription\":\"Hello , What are you Say this site?\",\"source\":\"uploads\\/images\\\\\\/medium\\/logo-maker-02_medium-450x387.png\"}]', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`) VALUES
(4, 'Accessories'),
(12, 'Autumn'),
(15, 'Bottom Wear'),
(7, 'Brand'),
(8, 'Branded'),
(3, 'Kids Wear'),
(1, 'Mens Wear'),
(5, 'Miscellaneous'),
(11, 'Rainy '),
(13, 'Spring'),
(9, 'Summer '),
(6, 'Top Brand'),
(14, 'Top Wear'),
(16, 'Under garments'),
(10, 'Winter'),
(2, 'Women Wear ');

-- --------------------------------------------------------

--
-- Table structure for table `technique`
--

DROP TABLE IF EXISTS `technique`;
CREATE TABLE IF NOT EXISTS `technique` (
  `technique_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) NOT NULL,
  `sub_title` text NOT NULL,
  `description` text NOT NULL,
  `menu` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`technique_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `technique`
--

INSERT INTO `technique` (`technique_id`, `title`, `sub_title`, `description`, `menu`, `created_at`) VALUES
(3, 'Technique', '<p>Subtitle<span xss=removed>Celebrity Daughter Opens Up About Having Her Eye Color Changed \r\n</span></p><p> </p>', '<p>Description<span xss=removed>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate perferendis consequuntur illo aliquid nihil ad neque, debitis praesentium libero ullam asperiores exercitationem deserunt inventore facilis, officiis,\r\nQuisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur. venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed, cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin dictum tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque scelerisque.\r\naliquam maiores asperiores recusandae commodi blanditiis ipsum tempora culpa possimus assumenda ab quidem a voluptatum quia natus? Ex neque, saepe reiciendis quasi velit perspiciatis error vel quas quibusdam autem nesciunt voluptas odit quis dignissimos eos aspernatur voluptatum est repellat. Pariatur praesentium, corrupti deserunt ducimus quo doloremque nostrum aspernatur saepe cupiditate sit autem exercitationem debitis, maiores vitae perferendis nemo? Voluptas illo, animi temporibus quod earum molestias eaque, iure rem amet autem dignissimos officia dolores numquam distinctio esse voluptates optio pariatur aspernatur omnis? Ipsam qui commodi velit natus reiciendis quod quibusdam nemo eveniet similique animi!</span></p><p> </p>', 1, '2020-06-27 17:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
CREATE TABLE IF NOT EXISTS `testimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(62) DEFAULT NULL,
  `discription` text,
  `image` varchar(62) DEFAULT NULL,
  `ratting` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `discription`, `image`, `ratting`, `created_at`) VALUES
(3, 'arti', 'Add a content here', 'images.png', 3, '2020-05-06 14:57:55'),
(4, 'arti singh patel', 'Add a content here', 'download_(1).png', 5, '2020-05-06 17:02:54'),
(5, 'singh arti', 'Add a content here', 'images2.png', 5, '2020-05-07 06:56:01'),
(6, 'arti singh', 'Add a content here', 'download.png', 4, '2020-05-07 06:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE IF NOT EXISTS `tests` (
  `testid` char(32) NOT NULL,
  `nodeid` char(32) NOT NULL,
  `title` text NOT NULL,
  `duration` varchar(12) NOT NULL,
  `nofqus` int(6) NOT NULL,
  `totalno` int(6) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`testid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thumbnail`
--

DROP TABLE IF EXISTS `thumbnail`;
CREATE TABLE IF NOT EXISTS `thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` char(32) NOT NULL,
  `thumb` text,
  `image` text,
  PRIMARY KEY (`id`),
  KEY `root` (`root`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thumbnail`
--

INSERT INTO `thumbnail` (`id`, `root`, `thumb`, `image`) VALUES
(16, 'EDO100134', NULL, NULL),
(17, 'EDO100135', NULL, NULL),
(18, 'EDO100136', NULL, NULL),
(19, 'post19', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg'),
(20, 'post20', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg'),
(21, '20', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg'),
(22, '23', 'uploads/images\\/thumbnail/16704_thumb-200x143.jpg', 'uploads/images\\/thumbnail/16704_thumb-200x143.jpg'),
(23, '24', 'uploads/product/1562871246794_0_2.jpg', 'uploads/product/1562871246794_0_2.jpg'),
(24, '25', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg'),
(25, '26', 'uploads/images\\/thumbnail/5085_1_thumb-142x200.jpg', 'uploads/images\\/thumbnail/5085_1_thumb-142x200.jpg'),
(26, 'EDO100137', NULL, NULL),
(27, 'EDO100138', NULL, NULL),
(28, 'EDO100139', NULL, NULL),
(29, 'EDO100140', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_aim`
--

DROP TABLE IF EXISTS `user_aim`;
CREATE TABLE IF NOT EXISTS `user_aim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) NOT NULL,
  `aim_id` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_aim`
--

INSERT INTO `user_aim` (`id`, `user_id`, `aim_id`) VALUES
(1, 'EDO100503', 1),
(2, 'EDO100503', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `details` text,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `name`, `mobile`, `details`, `updated_at`) VALUES
(2, 'AKIASZ001', 'Kali', '4684655654', 'njkskdsd\nnsdksknvvnxvn\nxncvxvnmxv,cxvmxnvx,m,xcv,mx', '2020-03-18 11:42:15'),
(24, 'EDO100100', 'bhawana', NULL, NULL, '2020-03-30 15:10:19'),
(25, 'EDO100134', 'art', NULL, NULL, '2020-05-31 15:50:11'),
(26, 'EDO100135', 'artisingh ', '8840729016', 'hello', '2020-05-31 16:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `videoid` char(32) NOT NULL,
  `nodeid` char(32) NOT NULL,
  `type` enum('free','paid') NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `size` varchar(32) NOT NULL,
  `videotype` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `rating` int(5) NOT NULL,
  `rate_count` int(11) NOT NULL,
  `download` tinyint(1) NOT NULL,
  `time` varchar(32) NOT NULL,
  PRIMARY KEY (`videoid`),
  KEY `nodeid` (`nodeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
