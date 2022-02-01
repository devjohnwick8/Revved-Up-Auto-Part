-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2022 at 05:04 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shox_revved_up_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `phone_no` int(15) NOT NULL,
  `email` varchar(55) NOT NULL,
  `subject` varchar(55) DEFAULT NULL,
  `company` varchar(55) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `first_name`, `last_name`, `phone_no`, `email`, `subject`, `company`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Frances', 'Simpson', 75, 'ridatysaqa@mailinator.com', 'Doloremque cupidatat', 'Zimmerman Zimmerman Co', 'Fugit soluta a quis', '2021-06-17 15:39:19', '2021-06-17 15:39:19'),
(2, 'Jack', 'Arnold', 81, 'goqybidy@mailinator.com', 'Tempor aliquip elit', 'Flores and Bruce Inc', 'Expedita qui rerum c', '2021-06-23 05:17:35', '2021-06-23 05:17:35'),
(3, 'Porter', 'Allison', 38, 'jehy@mailinator.com', 'Totam mollitia conse', 'Greene and Paul Traders', 'Ullamco consequatur', '2021-06-23 05:18:26', '2021-06-23 05:18:26'),
(4, 'Phoebe', 'Hays', 70, 'diwaqynemo@mailinator.com', 'Rerum eos adipisicin', 'Pratt and Arnold Plc', 'In ea non et officia', '2021-06-23 05:19:00', '2021-06-23 05:19:00'),
(1, 'Frances', 'Simpson', 75, 'ridatysaqa@mailinator.com', 'Doloremque cupidatat', 'Zimmerman Zimmerman Co', 'Fugit soluta a quis', '2021-06-17 15:39:19', '2021-06-17 15:39:19'),
(2, 'Jack', 'Arnold', 81, 'goqybidy@mailinator.com', 'Tempor aliquip elit', 'Flores and Bruce Inc', 'Expedita qui rerum c', '2021-06-23 05:17:35', '2021-06-23 05:17:35'),
(3, 'Porter', 'Allison', 38, 'jehy@mailinator.com', 'Totam mollitia conse', 'Greene and Paul Traders', 'Ullamco consequatur', '2021-06-23 05:18:26', '2021-06-23 05:18:26'),
(4, 'Phoebe', 'Hays', 70, 'diwaqynemo@mailinator.com', 'Rerum eos adipisicin', 'Pratt and Arnold Plc', 'In ea non et officia', '2021-06-23 05:19:00', '2021-06-23 05:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` text,
  `images` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `images`, `status`, `created_at`, `updated_at`) VALUES
(38, 'Quas eum distinctio', 'asd', '1631228743.jfif', 1, '2021-09-09 16:51:12', '2021-09-09 18:05:43'),
(41, 'Quas eum distinctio', NULL, '1631225291.jfif', 1, '2021-09-09 17:08:11', '2021-09-09 17:08:11'),
(42, 'Quas eum distinctio', NULL, '1631225435.jfif', 0, '2021-09-09 17:09:52', '2021-09-09 17:11:42'),
(44, 'Nostrud anim et elig', 'Dignissimos enim dol', '1631228274.jpg', 1, '2021-09-09 17:38:55', '2021-09-09 17:57:54'),
(52, 'Molestias sunt maxim', 'Voluptas adipisicing', '1631228357.png', 0, '2021-09-09 17:59:17', '2021-09-09 17:59:17'),
(53, 'Exercitationem magna', 'Veniam recusandae', '1631228399.jpg', 1, '2021-09-09 17:59:59', '2021-09-13 15:13:41'),
(38, 'Quas eum distinctio', 'asd', '1631228743.jfif', 1, '2021-09-09 16:51:12', '2021-09-09 18:05:43'),
(41, 'Quas eum distinctio', NULL, '1631225291.jfif', 1, '2021-09-09 17:08:11', '2021-09-09 17:08:11'),
(42, 'Quas eum distinctio', NULL, '1631225435.jfif', 0, '2021-09-09 17:09:52', '2021-09-09 17:11:42'),
(44, 'Nostrud anim et elig', 'Dignissimos enim dol', '1631228274.jpg', 1, '2021-09-09 17:38:55', '2021-09-09 17:57:54'),
(52, 'Molestias sunt maxim', 'Voluptas adipisicing', '1631228357.png', 0, '2021-09-09 17:59:17', '2021-09-09 17:59:17'),
(53, 'Exercitationem magna', 'Veniam recusandae', '1631228399.jpg', 1, '2021-09-09 17:59:59', '2021-09-13 15:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `billing_address` text,
  `business` varchar(255) DEFAULT NULL,
  `city` text,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` int(16) DEFAULT NULL,
  `ref_email` varchar(255) DEFAULT NULL,
  `coupan_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `user_id`, `billing_address`, `business`, `city`, `state`, `zip_code`, `ref_email`, `coupan_code`, `created_at`, `updated_at`) VALUES
(1, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 03:35:52', '2022-01-18 03:35:52'),
(2, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 05:46:50', '2022-01-18 05:46:50'),
(3, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 05:58:45', '2022-01-18 05:58:45'),
(4, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 06:02:37', '2022-01-18 06:02:37'),
(5, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 06:03:45', '2022-01-18 06:03:45'),
(6, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 06:35:10', '2022-01-18 06:35:10'),
(7, 16, 'zukipa@mailinator.com', 'bakulo@mailinator.com', 'lafymide@mailinator.com', 'Quisquam similique e', 33467, 'tekoqa@mailinator.com', 'nifahin@mailinator.com', '2022-01-18 06:38:34', '2022-01-18 06:38:34'),
(8, 16, 'zukipa@mailinator.com', 'bakulo@mailinator.com', 'lafymide@mailinator.com', 'Quisquam similique e', 33467, 'tekoqa@mailinator.com', 'nifahin@mailinator.com', '2022-01-18 06:41:15', '2022-01-18 06:41:15'),
(9, 16, 'zukipa@mailinator.com', 'bakulo@mailinator.com', 'lafymide@mailinator.com', 'Quisquam similique e', 33467, 'tekoqa@mailinator.com', 'nifahin@mailinator.com', '2022-01-18 06:42:13', '2022-01-18 06:42:13'),
(10, 16, 'zukipa@mailinator.com', 'bakulo@mailinator.com', 'lafymide@mailinator.com', 'Quisquam similique e', 33467, 'tekoqa@mailinator.com', 'nifahin@mailinator.com', '2022-01-18 06:44:00', '2022-01-18 06:44:00'),
(11, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 06:46:04', '2022-01-18 06:46:04'),
(12, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 06:46:52', '2022-01-18 06:46:52'),
(13, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 06:48:40', '2022-01-18 06:48:40'),
(14, 16, 'address11', 'address21', 'city1', 'state1', 1234561, NULL, NULL, '2022-01-18 06:57:12', '2022-01-18 06:57:12'),
(15, 16, 'lykag@mailinator.com', 'cebetyheqi@mailinator.com', 'qesyqy@mailinator.com', 'Totam consectetur qu', 87720, NULL, NULL, '2022-01-18 07:00:16', '2022-01-18 07:00:16'),
(16, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 07:02:01', '2022-01-18 07:02:01'),
(17, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 07:04:08', '2022-01-18 07:04:08'),
(18, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-18 07:05:21', '2022-01-18 07:05:21'),
(19, 16, 'jyzapud@mailinator.com', 'pybogu@mailinator.com', 'tusehuxev@mailinator.com', 'Sit proident odit c', 27063, 'kupotiv@mailinator.com', 'lykimopiji@mailinator.com', '2022-01-18 07:07:35', '2022-01-18 07:07:35'),
(20, 17, 'address1', 'address2', 'city', 'state', 1234561, NULL, NULL, '2022-01-19 02:38:07', '2022-01-19 02:38:07'),
(21, 1, 'kyqi@mailinator.com', 'mydacywi@mailinator.com', 'vireny@mailinator.com', 'Deserunt sunt aspern', 77312, 'tixeg@mailinator.com', 'jyrezowoba@mailinator.com', '2022-01-19 09:03:33', '2022-01-19 09:03:33'),
(22, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-31 22:49:05', '2022-01-31 22:49:05'),
(23, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-31 22:58:28', '2022-01-31 22:58:28'),
(24, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-31 23:10:17', '2022-01-31 23:10:17'),
(25, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-31 23:18:07', '2022-01-31 23:18:07'),
(26, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-31 23:20:52', '2022-01-31 23:20:52'),
(27, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-01-31 23:40:07', '2022-01-31 23:40:07'),
(28, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-02-01 05:41:23', '2022-02-01 05:41:23'),
(29, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-02-01 05:45:18', '2022-02-01 05:45:18'),
(30, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-02-01 05:48:44', '2022-02-01 05:48:44'),
(31, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-02-01 05:51:20', '2022-02-01 05:51:20'),
(32, 16, 'dsaaaaawd', 'address2', 'dsada', 'state2', 12312, 'admin@mail.com', NULL, '2022-02-01 06:13:48', '2022-02-01 06:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `author` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `images`, `author`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Commodi aute debitis', 'Et est esse necessi', '1631294709.jfif', 1, 1, '2021-09-10 12:25:09', '2021-09-10 12:25:09'),
(1, 'Commodi aute debitis', 'Et est esse necessi', '1631294709.jfif', 1, 1, '2021-09-10 12:25:09', '2021-09-10 12:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `images` text,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `images`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test', NULL, 1, '2021-09-10 18:03:07', '2021-09-10 18:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `page` varchar(55) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `sub_heading` text,
  `description_1` text,
  `description_2` text,
  `image_1` varchar(555) DEFAULT NULL,
  `image_2` varchar(555) DEFAULT NULL,
  `video_1` varchar(555) DEFAULT NULL,
  `video_2` varchar(555) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `page`, `title`, `sub_heading`, `description_1`, `description_2`, `image_1`, `image_2`, `video_1`, `video_2`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home-Section-1', 'About Us', 'Your sub-Heading Here', '<p class=\"wow fadeInUp\" data-wow-delay=\"0.3s\" style=\"visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;\">In my experience mentoring people, I found fear to be the most common denominator among new investors, and potential entrepreneurs. The road to wealth begins in the mind. That’s where our journey begins. While much of my focus is in real estate, wealth is the ultimate objective. This means incorporating the following into a single program:</p>\r\n                        <ul class=\"wow fadeInUp\" data-wow-delay=\"0.4s\" style=\"visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;\">\r\n                            <li><p>Financial Literacy</p></li>\r\n                            <li><p>Leveraging Assets</p></li>\r\n                            <li><p>Real Estate Investments</p></li>\r\n                        </ul>\r\n                        <p class=\"wow fadeInUp\" data-wow-delay=\"0.5s\" style=\"visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;\"><br></p>', '<p class=\"wow zoomin animated\" data-wow-delay=\"0.5s\" style=\"visibility: visible; animation-delay: 0.5s;\">“My goal is to create 600 new investors / entrepreneurs in the next year (and each year after that). I limit the number of participants to 50 to ensure I have the capacity to give each person the necessary attention. I invite you to begin your journey to success today.”</p>', '1625266668.jpg', NULL, NULL, NULL, 1, '2021-06-17 12:06:55', '2021-07-02 17:57:48'),
(1, 'Home-Section-1', 'About Us', 'Your sub-Heading Here', '<p class=\"wow fadeInUp\" data-wow-delay=\"0.3s\" style=\"visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;\">In my experience mentoring people, I found fear to be the most common denominator among new investors, and potential entrepreneurs. The road to wealth begins in the mind. That’s where our journey begins. While much of my focus is in real estate, wealth is the ultimate objective. This means incorporating the following into a single program:</p>\r\n                        <ul class=\"wow fadeInUp\" data-wow-delay=\"0.4s\" style=\"visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;\">\r\n                            <li><p>Financial Literacy</p></li>\r\n                            <li><p>Leveraging Assets</p></li>\r\n                            <li><p>Real Estate Investments</p></li>\r\n                        </ul>\r\n                        <p class=\"wow fadeInUp\" data-wow-delay=\"0.5s\" style=\"visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;\"><br></p>', '<p class=\"wow zoomin animated\" data-wow-delay=\"0.5s\" style=\"visibility: visible; animation-delay: 0.5s;\">“My goal is to create 600 new investors / entrepreneurs in the next year (and each year after that). I limit the number of participants to 50 to ensure I have the capacity to give each person the necessary attention. I invite you to begin your journey to success today.”</p>', '1625266668.jpg', NULL, NULL, NULL, 1, '2021-06-17 12:06:55', '2021-07-02 17:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `insta_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `email`, `phone`, `currency`, `address`, `fb_link`, `twitter_link`, `insta_link`, `linkedin_link`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'info@odisjames.com', '832.402.9934', 'USD', 'James Street Capital 3225 McLeod Drive, Suite 100 Las Vegas, Nevada 89121', '#', '#', '#', '#', '© Copyright 2021 James-Street. All rights reserved.', '2021-06-22 22:45:08', '2021-06-23 05:50:43'),
(1, 'info@odisjames.com', '832.402.9934', 'USD', 'James Street Capital 3225 McLeod Drive, Suite 100 Las Vegas, Nevada 89121', '#', '#', '#', '#', '© Copyright 2021 James-Street. All rights reserved.', '2021-06-22 22:45:08', '2021-06-23 05:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, ' ', 'hozaty@mailinator.com', '27', 'Qui aliqua Est bla', '2021-06-22 17:11:36', '2021-06-22 17:11:36'),
(2, ' ', 'hipuhex@mailinator.com', '85', 'Illum sit do modi', '2021-06-23 05:21:10', '2021-06-23 05:21:10'),
(3, ' ', 'admin@mail.com', '21', 'a', '2021-06-24 13:00:38', '2021-06-24 13:00:38'),
(1, ' ', 'hozaty@mailinator.com', '27', 'Qui aliqua Est bla', '2021-06-22 17:11:36', '2021-06-22 17:11:36'),
(2, ' ', 'hipuhex@mailinator.com', '85', 'Illum sit do modi', '2021-06-23 05:21:10', '2021-06-23 05:21:10'),
(3, ' ', 'admin@mail.com', '21', 'a', '2021-06-24 13:00:38', '2021-06-24 13:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `sub_heading` varchar(55) DEFAULT NULL,
  `price` float NOT NULL,
  `description` text,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `title`, `sub_heading`, `price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(6, '6 WEEK PROGRAM', 'Weekly Group Sessions', 2500, '<ul class=\"_3-q0m pp-plan-benefits-divider-color _1Np2U\"><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-bottom: 1.5em;\">Identify Your Financial Stage And Risk Tolerance</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Which Investment Strategy Best Fits Your Objective</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Choose a Geographical Market</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Financing Options</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Acquiring Funds For Down Payment + Carrying Costs (Reserves)</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Evaluating Deals Before Executing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Strategies For Using Hard Money</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">General Rehab Best Practices</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em;\">Income Property Management Overview</span></li></ul>', 1, '2021-06-16 18:46:14', '2021-06-23 03:55:54'),
(8, '1 ON 1 MENTORSHIP', 'Weekly Group Sessions PLUS 1 -0n-1 Sessions', 5000, '<ul class=\"_3-q0m pp-plan-benefits-divider-color _1Np2U\"><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-bottom: 1.5em;\">Access to Weekly Round Up</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Building Your Team - Understanding The Different Roles...</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Scheduling Your Time And Prioritizing Next Steps</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Basic Understanding of the Rehab Process</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Creative Financing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Creating a System to Secure Deals</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Real Estate Marketing Ideas</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Home Flipping Risk Assessment</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Working with Contractors</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Your Financial Stage And Risk Tolerance</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Which Investment Strategy Best Fits Your Objective</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Choose a Geographical Market</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Financing Options</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Acquiring Funds For Down Payment + Carrying Costs (Reserves)</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Evaluating Deals Before Executing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Strategies For Using Hard Money</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">General Rehab Best Practices</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Income Property Management Overview</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em;\">Wholesaling –  Get The Tools Become a Successful Wholesaler</span></li></ul>', 1, '2021-06-17 11:14:06', '2021-06-22 06:39:25'),
(9, 'BUILD YOUR BUSINESS', 'Meet Odis in Your Market', 7500, '<ul class=\"_3-q0m pp-plan-benefits-divider-color _1Np2U\"><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-bottom: 1.5em;\">Enrolled in Business Consultant Program</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Wealth Strategy Consultation</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Connect you to all systems you need to operate</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Access to Weekly Round Up</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Multifamily Financing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Multifamily Management</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Incudes In Person Two Day Business Building Session</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em;\">Hands on Consulting “Building Your Business”</span></li></ul>', 1, '2021-06-17 11:14:45', '2021-06-22 06:41:47'),
(6, '6 WEEK PROGRAM', 'Weekly Group Sessions', 2500, '<ul class=\"_3-q0m pp-plan-benefits-divider-color _1Np2U\"><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-bottom: 1.5em;\">Identify Your Financial Stage And Risk Tolerance</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Which Investment Strategy Best Fits Your Objective</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Choose a Geographical Market</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Financing Options</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Acquiring Funds For Down Payment + Carrying Costs (Reserves)</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Evaluating Deals Before Executing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Strategies For Using Hard Money</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">General Rehab Best Practices</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em;\">Income Property Management Overview</span></li></ul>', 1, '2021-06-16 18:46:14', '2021-06-23 03:55:54'),
(8, '1 ON 1 MENTORSHIP', 'Weekly Group Sessions PLUS 1 -0n-1 Sessions', 5000, '<ul class=\"_3-q0m pp-plan-benefits-divider-color _1Np2U\"><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-bottom: 1.5em;\">Access to Weekly Round Up</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Building Your Team - Understanding The Different Roles...</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Scheduling Your Time And Prioritizing Next Steps</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Basic Understanding of the Rehab Process</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Creative Financing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Creating a System to Secure Deals</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Real Estate Marketing Ideas</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Home Flipping Risk Assessment</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Working with Contractors</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Your Financial Stage And Risk Tolerance</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Which Investment Strategy Best Fits Your Objective</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Choose a Geographical Market</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Financing Options</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Acquiring Funds For Down Payment + Carrying Costs (Reserves)</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Evaluating Deals Before Executing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Strategies For Using Hard Money</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">General Rehab Best Practices</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Income Property Management Overview</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em;\">Wholesaling –  Get The Tools Become a Successful Wholesaler</span></li></ul>', 1, '2021-06-17 11:14:06', '2021-06-22 06:39:25'),
(9, 'BUILD YOUR BUSINESS', 'Meet Odis in Your Market', 7500, '<ul class=\"_3-q0m pp-plan-benefits-divider-color _1Np2U\"><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-bottom: 1.5em;\">Enrolled in Business Consultant Program</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Wealth Strategy Consultation</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Connect you to all systems you need to operate</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Access to Weekly Round Up</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Multifamily Financing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Multifamily Management</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Incudes In Person Two Day Business Building Session</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em;\">Hands on Consulting “Building Your Business”</span></li></ul>', 1, '2021-06-17 11:14:45', '2021-06-22 06:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `membership_id` int(11) DEFAULT NULL,
  `order_total` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 = pending,\r\n1 = processing,\r\n2 = onhold,\r\n3 = completed,\r\n4 = cancelled,\r\n5 = refunded,\r\n6 = failed,\r\n',
  `billing_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `reciept_url` text,
  `is_paid` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `membership_id`, `order_total`, `payment_id`, `status`, `billing_id`, `shipping_id`, `reciept_url`, `is_paid`, `created_at`, `updated_at`) VALUES
(2, NULL, 3, 8, NULL, 'ch_1J4tXuCmaCeXAIYUb93RxWJK', 0, NULL, NULL, NULL, NULL, '2021-06-21 15:16:37', '2021-06-21 15:16:37'),
(3, NULL, 3, 8, NULL, 'ch_1J4tlJCmaCeXAIYUrn0KVvMt', 0, NULL, NULL, NULL, NULL, '2021-06-21 15:30:28', '2021-06-21 15:30:28'),
(4, NULL, 3, 9, NULL, 'ch_1J4w2LCmaCeXAIYUf1WUugp3', 0, NULL, NULL, NULL, NULL, '2021-06-22 05:56:13', '2021-06-22 05:56:13'),
(5, NULL, 3, 8, NULL, 'ch_1J4wJ9CmaCeXAIYUcaclKOar', 0, NULL, NULL, NULL, NULL, '2021-06-22 06:13:34', '2021-06-22 06:13:34'),
(6, NULL, 1, 6, NULL, 'ch_1J5dHPCmaCeXAIYUH0s42vP6', 0, NULL, NULL, NULL, NULL, '2021-06-23 16:06:40', '2021-06-23 16:06:40'),
(7, '7942446122149202', 16, NULL, '1100', 'ch_3KJ3IhFMVKwOeEdh13diqz7z', 0, 5, 5, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ3IhFMVKwOeEdh13diqz7z/rcpt_Kz1LBFRok9mOhizVn5RPv8xtravk4PW', 1, '2022-01-18 06:03:45', '2022-01-18 06:03:45'),
(8, '2905643840477593', 16, NULL, '2050', 'ch_3KJ3n7FMVKwOeEdh1wPUdz9p', 0, 6, 6, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ3n7FMVKwOeEdh1wPUdz9p/rcpt_Kz1qvsLPE9qlxE7VeSqGxiwmnfKBUon', 1, '2022-01-18 06:35:10', '2022-01-18 06:35:10'),
(9, '4190343699755750', 16, NULL, '2050', 'ch_3KJ3vfFMVKwOeEdh0syHISFs', 0, 10, 10, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ3vfFMVKwOeEdh0syHISFs/rcpt_Kz1zHt4cVd6TDDiyRj5RDvFbKL4HMYt', 1, '2022-01-18 06:44:00', '2022-01-18 06:44:00'),
(10, '4272493350706504', 16, NULL, '2050', 'ch_3KJ40BFMVKwOeEdh1vAhoGpe', 0, 13, 13, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ40BFMVKwOeEdh1vAhoGpe/rcpt_Kz246seswrWPneZHKNGHwbYLED5Gtyl', 1, '2022-01-18 06:48:40', '2022-01-18 06:48:40'),
(11, '4227391541771670', 16, NULL, '2050', 'ch_3KJ48RFMVKwOeEdh0HTQ52LJ', 0, 14, 14, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ48RFMVKwOeEdh0HTQ52LJ/rcpt_Kz2CmLRPsgaRXUBStA47NQAQMRWJIoF', 1, '2022-01-18 06:57:12', '2022-01-18 06:57:12'),
(12, '6674990753702475', 16, NULL, '1100', 'ch_3KJ4BPFMVKwOeEdh0vcw6DOs', 0, 15, 15, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ4BPFMVKwOeEdh0vcw6DOs/rcpt_Kz2FCazPsTBnnMvDZWwXgiq7tQ3loXj', 1, '2022-01-18 07:00:16', '2022-01-18 07:00:16'),
(13, '8418911984563174', 16, NULL, '800', 'ch_3KJ4D6FMVKwOeEdh1Sp6PqGt', 0, 16, 16, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ4D6FMVKwOeEdh1Sp6PqGt/rcpt_Kz2HF3FqULMVqu4G2GgSPbhhL79I6Hn', 1, '2022-01-18 07:02:02', '2022-01-18 07:02:02'),
(14, '9350458562620798', 16, NULL, '400', 'ch_3KJ4F9FMVKwOeEdh1IEbcfjo', 0, 17, 17, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ4F9FMVKwOeEdh1IEbcfjo/rcpt_Kz2JQG0O0X9fwTJCNO5drR4AF4mZzfh', 1, '2022-01-18 07:04:08', '2022-01-18 07:04:08'),
(15, '8224522184200630', 16, NULL, '400', 'ch_3KJ4GKFMVKwOeEdh0WKVOpw9', 0, 18, 18, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ4GKFMVKwOeEdh0WKVOpw9/rcpt_Kz2LZY6aQDQKiPiEsTJxdNlUYHiT71Q', 1, '2022-01-18 07:05:21', '2022-01-18 07:05:21'),
(16, '9078311787097421', 16, NULL, '400', 'ch_3KJ4IUFMVKwOeEdh1QvEuAzm', 0, 19, 19, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ4IUFMVKwOeEdh1QvEuAzm/rcpt_Kz2NwiqO9yHQh4bxHSJS4C8dl8NKiT3', 1, '2022-01-18 07:07:35', '2022-01-18 07:07:35'),
(17, '3676668904957518', 17, NULL, '800', 'ch_3KJMZHFMVKwOeEdh1wzDhuE1', 0, 20, 20, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJMZHFMVKwOeEdh1wzDhuE1/rcpt_KzLFq4vyetBvsfphWH2vaB4KjF4nSeW', 1, '2022-01-19 02:38:07', '2022-01-19 02:38:07'),
(18, '2971928897173918', 1, NULL, '1100', 'ch_3KJSaHFMVKwOeEdh1x8JF1No', 0, 21, 21, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJSaHFMVKwOeEdh1x8JF1No/rcpt_KzRTz1NYoj5fkbvb17ZvlbwjiIO6dKH', 1, '2022-01-19 09:03:34', '2022-01-19 09:03:34'),
(19, '8197827094591587', 1, NULL, '800', 'ch_3KK2t8FMVKwOeEdh1vYQ747N', 0, 22, 22, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KK2t8FMVKwOeEdh1vYQ747N/rcpt_L02zeYAkPqfcZhTJUXURx9nPr0KhVP8', 1, '2022-01-20 23:49:27', '2022-01-20 23:49:27'),
(20, '5533391573540696', 1, NULL, '1600', 'ch_3KKRoVFMVKwOeEdh0JboHYb5', 0, 23, 23, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KKRoVFMVKwOeEdh0JboHYb5/rcpt_L0SjFKQE0d37tPNQClYaBr3SW4eqE9t', 1, '2022-01-22 02:26:20', '2022-01-22 02:26:20'),
(21, '8208489302684499', 1, NULL, '400', 'ch_3KKUSLFMVKwOeEdh1mRYpMT7', 0, 24, 24, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KKUSLFMVKwOeEdh1mRYpMT7/rcpt_L0VTA9xOlo8g9xy4md7Ajicy6tmNZiq', 1, '2022-01-22 05:15:39', '2022-01-22 05:15:39'),
(22, '9325485231602230', 1, NULL, '2400', 'ch_3KLxekFMVKwOeEdh1EWWMhiy', 0, 25, 25, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KLxekFMVKwOeEdh1EWWMhiy/rcpt_L21i6NBUe0GsOkcbOqGxGlQ2d0fSYNv', 1, '2022-01-26 06:38:30', '2022-01-26 06:38:30'),
(23, '8644900694118816', 16, NULL, '800', 'ch_3KMHPiFMVKwOeEdh16IjAvZS', 0, 26, 26, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KMHPiFMVKwOeEdh16IjAvZS/rcpt_L2M7YffSaenAayi5HvnRxAf6JEO7m06', 1, '2022-01-27 03:44:19', '2022-01-27 03:44:19'),
(24, '8514643321253384', 16, NULL, '800', 'ch_3KN0icFMVKwOeEdh1RZwcYoo', 0, 27, 27, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KN0icFMVKwOeEdh1RZwcYoo/rcpt_L36wXJrWFmMVsSyytwk2nwGiP5EsBBX', 1, '2022-01-29 04:06:51', '2022-01-29 04:06:51'),
(25, '6802480168276532', 16, NULL, '800', 'ch_3KN0jSFMVKwOeEdh1EznOcdw', 0, 28, 28, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KN0jSFMVKwOeEdh1EznOcdw/rcpt_L36xjR9p1TnR3G1UOTuVERxXArM0ADC', 1, '2022-01-29 04:07:43', '2022-01-29 04:07:43'),
(26, '6321946874927179', 16, NULL, '400', 'ch_3KN0mOFMVKwOeEdh0pKRHqA9', 0, 29, 29, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KN0mOFMVKwOeEdh0pKRHqA9/rcpt_L370XfvU3X8xCsMJjwpYHWsUuK2yIFT', 1, '2022-01-29 04:10:44', '2022-01-29 04:10:44'),
(27, '5495374322844755', 16, NULL, '400', 'ch_3KN0pgFMVKwOeEdh1zK2L7ax', 0, 30, 30, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KN0pgFMVKwOeEdh1zK2L7ax/rcpt_L373I2dysMfLno3spWZFiMv7rEDAERZ', 1, '2022-01-29 04:14:09', '2022-01-29 04:14:09'),
(28, '4840657986349340', 16, NULL, '400', 'ch_3KN0v4FMVKwOeEdh1DSjROZN', 0, 32, 32, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KN0v4FMVKwOeEdh1DSjROZN/rcpt_L379fBGNd8oBYgKO4HPnuzP1jgtSlew', 1, '2022-01-29 04:19:43', '2022-01-29 04:19:43'),
(7, '7942446122149202', 16, NULL, '1100', 'ch_3KJ3IhFMVKwOeEdh13diqz7z', 3, 5, 5, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ3IhFMVKwOeEdh13diqz7z/rcpt_Kz1LBFRok9mOhizVn5RPv8xtravk4PW', 1, '2022-01-18 06:03:45', '2022-01-21 06:40:04'),
(8, '2905643840477593', 16, NULL, '2050', 'ch_3KJ3n7FMVKwOeEdh1wPUdz9p', 0, 6, 6, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ3n7FMVKwOeEdh1wPUdz9p/rcpt_Kz1qvsLPE9qlxE7VeSqGxiwmnfKBUon', 1, '2022-01-18 06:35:10', '2022-01-18 06:35:10'),
(9, '4190343699755750', 16, NULL, '2050', 'ch_3KJ3vfFMVKwOeEdh0syHISFs', 4, 10, 10, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ3vfFMVKwOeEdh0syHISFs/rcpt_Kz1zHt4cVd6TDDiyRj5RDvFbKL4HMYt', 1, '2022-01-18 06:44:00', '2022-01-21 02:25:32'),
(10, '4272493350706504', 16, NULL, '2050', 'ch_3KJ40BFMVKwOeEdh1vAhoGpe', 0, 13, 13, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ40BFMVKwOeEdh1vAhoGpe/rcpt_Kz246seswrWPneZHKNGHwbYLED5Gtyl', 1, '2022-01-18 06:48:40', '2022-01-18 06:48:40'),
(11, '4227391541771670', 16, NULL, '2050', 'ch_3KJ48RFMVKwOeEdh0HTQ52LJ', 0, 14, 14, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ48RFMVKwOeEdh0HTQ52LJ/rcpt_Kz2CmLRPsgaRXUBStA47NQAQMRWJIoF', 1, '2022-01-18 06:57:12', '2022-01-18 06:57:12'),
(12, '6674990753702475', 16, NULL, '1100', 'ch_3KJ4BPFMVKwOeEdh0vcw6DOs', 0, 15, 15, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ4BPFMVKwOeEdh0vcw6DOs/rcpt_Kz2FCazPsTBnnMvDZWwXgiq7tQ3loXj', 1, '2022-01-18 07:00:16', '2022-01-18 07:00:16'),
(13, '8418911984563174', 16, NULL, '800', 'ch_3KJ4D6FMVKwOeEdh1Sp6PqGt', 0, 16, 16, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ4D6FMVKwOeEdh1Sp6PqGt/rcpt_Kz2HF3FqULMVqu4G2GgSPbhhL79I6Hn', 1, '2022-01-18 07:02:02', '2022-01-18 07:02:02'),
(14, '9350458562620798', 16, NULL, '400', 'ch_3KJ4F9FMVKwOeEdh1IEbcfjo', 4, 17, 17, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ4F9FMVKwOeEdh1IEbcfjo/rcpt_Kz2JQG0O0X9fwTJCNO5drR4AF4mZzfh', 1, '2022-01-18 07:04:08', '2022-01-21 03:22:34'),
(15, '8224522184200630', 16, NULL, '400', 'ch_3KJ4GKFMVKwOeEdh0WKVOpw9', 0, 18, 18, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ4GKFMVKwOeEdh0WKVOpw9/rcpt_Kz2LZY6aQDQKiPiEsTJxdNlUYHiT71Q', 1, '2022-01-18 07:05:21', '2022-01-18 07:05:21'),
(16, '9078311787097421', 16, NULL, '400', 'ch_3KJ4IUFMVKwOeEdh1QvEuAzm', 0, 19, 19, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJ4IUFMVKwOeEdh1QvEuAzm/rcpt_Kz2NwiqO9yHQh4bxHSJS4C8dl8NKiT3', 1, '2022-01-18 07:07:35', '2022-01-18 07:07:35'),
(17, '3676668904957518', 17, NULL, '800', 'ch_3KJMZHFMVKwOeEdh1wzDhuE1', 6, 20, 20, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJMZHFMVKwOeEdh1wzDhuE1/rcpt_KzLFq4vyetBvsfphWH2vaB4KjF4nSeW', 1, '2022-01-19 02:38:07', '2022-01-21 03:22:40'),
(18, '2971928897173918', 1, NULL, '1100', 'ch_3KJSaHFMVKwOeEdh1x8JF1No', 3, 21, 21, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KJSaHFMVKwOeEdh1x8JF1No/rcpt_KzRTz1NYoj5fkbvb17ZvlbwjiIO6dKH', 1, '2022-01-19 09:03:34', '2022-01-21 03:22:50'),
(19, '6513439696689272', 16, NULL, '400', 'ch_3KO33sFMVKwOeEdh08vQCGi1', 0, 22, 22, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KO33sFMVKwOeEdh08vQCGi1/rcpt_L4BQJ6QJRJ0Dg8oUHlD2N5amxRzAIu1', 1, '2022-01-31 22:49:05', '2022-01-31 22:49:05'),
(20, '7262209986262528', 16, NULL, '400', 'ch_3KO3CxFMVKwOeEdh1pQRCzWw', 0, 23, 23, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KO3CxFMVKwOeEdh1pQRCzWw/rcpt_L4BaspGRzmaHdS6lgb6gsNUsD973CuF', 1, '2022-01-31 22:58:28', '2022-01-31 22:58:28'),
(21, '9417360761796460', 16, NULL, '400', 'ch_3KO3OOFMVKwOeEdh1dKCh1kJ', 0, 24, 24, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KO3OOFMVKwOeEdh1dKCh1kJ/rcpt_L4BlOM4dWpkgr02teg4An0ZESGyViT0', 1, '2022-01-31 23:10:17', '2022-01-31 23:10:17'),
(22, '7552251918198291', 16, NULL, '400', 'ch_3KO3VzFMVKwOeEdh0PRWTgJX', 0, 25, 25, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KO3VzFMVKwOeEdh0PRWTgJX/rcpt_L4Btg5QOzMotwMNpk4qWSuuWD8XTdlv', 1, '2022-01-31 23:18:07', '2022-01-31 23:18:07'),
(23, '2545798118589238', 16, NULL, '400', 'ch_3KO3YeFMVKwOeEdh1tVcIFak', 0, 26, 26, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KO3YeFMVKwOeEdh1tVcIFak/rcpt_L4BwoIUcE9swc1Q2AgTmWrMdESzRL49', 1, '2022-01-31 23:20:53', '2022-01-31 23:20:53'),
(24, '7803018152805226', 16, NULL, '800', 'ch_3KO3rGFMVKwOeEdh1ZbTxVVY', 0, 27, 27, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KO3rGFMVKwOeEdh1ZbTxVVY/rcpt_L4CFYoux91caUYWN1jjbW9MS1CkEqwZ', 1, '2022-01-31 23:40:07', '2022-01-31 23:40:07'),
(0, '9671315566219188', 16, NULL, '400', 'ch_3KO9eVFMVKwOeEdh0XldbwV3', 0, 31, 1, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KO9eVFMVKwOeEdh0XldbwV3/rcpt_L4IEmvMJSZr1GxfyswEmdnr0h3CLmZH', 1, '2022-02-01 05:51:20', '2022-02-01 05:51:20'),
(0, '2735377103807623', 16, NULL, '1100', 'ch_3KOA0FFMVKwOeEdh1Bs40GVZ', 0, 32, 2, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KOA0FFMVKwOeEdh1Bs40GVZ/rcpt_L4IbU0uE9vWer13jCxkYxY86gRHn0vQ', 1, '2022-02-01 06:13:48', '2022-02-01 06:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_number` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`, `order_number`, `quantity`) VALUES
(1, 16, 21, '2022-01-18 05:46:50', '2022-01-18 05:46:50', '2353940933013469', 1),
(2, 16, 21, '2022-01-18 05:58:45', '2022-01-18 05:58:45', '6956780712718639', 2),
(3, 16, 21, '2022-01-18 06:03:45', '2022-01-18 06:03:45', '7942446122149202', 2),
(4, 16, 21, '2022-01-18 06:35:10', '2022-01-18 06:35:10', '2905643840477593', 3),
(5, 16, 24, '2022-01-18 06:35:10', '2022-01-18 06:35:10', '2905643840477593', 1),
(6, 16, 21, '2022-01-18 06:38:34', '2022-01-18 06:38:34', '7589172870989994', 3),
(7, 16, 24, '2022-01-18 06:38:34', '2022-01-18 06:38:34', '7589172870989994', 1),
(8, 16, 21, '2022-01-18 06:41:15', '2022-01-18 06:41:15', '2536966139071442', 3),
(9, 16, 24, '2022-01-18 06:41:15', '2022-01-18 06:41:15', '2536966139071442', 1),
(10, 16, 21, '2022-01-18 06:42:13', '2022-01-18 06:42:13', '2751282908718530', 3),
(11, 16, 24, '2022-01-18 06:42:13', '2022-01-18 06:42:13', '2751282908718530', 1),
(12, 16, 21, '2022-01-18 06:44:00', '2022-01-18 06:44:00', '4190343699755750', 3),
(13, 16, 24, '2022-01-18 06:44:00', '2022-01-18 06:44:00', '4190343699755750', 1),
(14, 16, 21, '2022-01-18 06:46:04', '2022-01-18 06:46:04', '6749343215885096', 3),
(15, 16, 24, '2022-01-18 06:46:04', '2022-01-18 06:46:04', '6749343215885096', 1),
(16, 16, 21, '2022-01-18 06:46:52', '2022-01-18 06:46:52', '5989011199600861', 3),
(17, 16, 24, '2022-01-18 06:46:52', '2022-01-18 06:46:52', '5989011199600861', 1),
(18, 16, 21, '2022-01-18 06:48:40', '2022-01-18 06:48:40', '4272493350706504', 3),
(19, 16, 24, '2022-01-18 06:48:40', '2022-01-18 06:48:40', '4272493350706504', 1),
(20, 16, 21, '2022-01-18 06:57:12', '2022-01-18 06:57:12', '4227391541771670', 3),
(21, 16, 24, '2022-01-18 06:57:12', '2022-01-18 06:57:12', '4227391541771670', 1),
(22, 16, 21, '2022-01-18 07:00:16', '2022-01-18 07:00:16', '6674990753702475', 2),
(23, 16, 24, '2022-01-18 07:02:02', '2022-01-18 07:02:02', '8418911984563174', 2),
(24, 16, 24, '2022-01-18 07:04:08', '2022-01-18 07:04:08', '9350458562620798', 1),
(25, 16, 24, '2022-01-18 07:05:21', '2022-01-18 07:05:21', '8224522184200630', 1),
(26, 16, 24, '2022-01-18 07:07:35', '2022-01-18 07:07:35', '9078311787097421', 1),
(27, 17, 24, '2022-01-19 02:38:07', '2022-01-19 02:38:07', '3676668904957518', 2),
(28, 1, 21, '2022-01-19 09:03:34', '2022-01-19 09:03:34', '2971928897173918', 2),
(29, 1, 21, '2022-01-20 23:49:27', '2022-01-20 23:49:27', '8197827094591587', 2),
(30, 1, 21, '2022-01-22 02:26:20', '2022-01-22 02:26:20', '5533391573540696', 3),
(31, 1, 25, '2022-01-22 02:26:20', '2022-01-22 02:26:20', '5533391573540696', 1),
(32, 1, 21, '2022-01-22 05:15:39', '2022-01-22 05:15:39', '8208489302684499', 1),
(33, 1, 21, '2022-01-26 06:38:30', '2022-01-26 06:38:30', '9325485231602230', 6),
(34, 16, 27, '2022-01-27 03:44:19', '2022-01-27 03:44:19', '8644900694118816', 1),
(35, 16, 21, '2022-01-29 04:06:51', '2022-01-29 04:06:51', '8514643321253384', 2),
(36, 16, 21, '2022-01-29 04:07:43', '2022-01-29 04:07:43', '6802480168276532', 2),
(37, 16, 21, '2022-01-29 04:10:44', '2022-01-29 04:10:44', '6321946874927179', 1),
(38, 16, 21, '2022-01-29 04:14:09', '2022-01-29 04:14:09', '5495374322844755', 1),
(39, 16, 21, '2022-01-29 04:19:43', '2022-01-29 04:19:43', '4840657986349340', 1),
(1, 16, 21, '2022-01-18 05:46:50', '2022-01-18 05:46:50', '2353940933013469', 1),
(2, 16, 21, '2022-01-18 05:58:45', '2022-01-18 05:58:45', '6956780712718639', 2),
(3, 16, 21, '2022-01-18 06:03:45', '2022-01-18 06:03:45', '7942446122149202', 2),
(4, 16, 21, '2022-01-18 06:35:10', '2022-01-18 06:35:10', '2905643840477593', 3),
(5, 16, 24, '2022-01-18 06:35:10', '2022-01-18 06:35:10', '2905643840477593', 1),
(6, 16, 21, '2022-01-18 06:38:34', '2022-01-18 06:38:34', '7589172870989994', 3),
(7, 16, 24, '2022-01-18 06:38:34', '2022-01-18 06:38:34', '7589172870989994', 1),
(8, 16, 21, '2022-01-18 06:41:15', '2022-01-18 06:41:15', '2536966139071442', 3),
(9, 16, 24, '2022-01-18 06:41:15', '2022-01-18 06:41:15', '2536966139071442', 1),
(10, 16, 21, '2022-01-18 06:42:13', '2022-01-18 06:42:13', '2751282908718530', 3),
(11, 16, 24, '2022-01-18 06:42:13', '2022-01-18 06:42:13', '2751282908718530', 1),
(12, 16, 21, '2022-01-18 06:44:00', '2022-01-18 06:44:00', '4190343699755750', 3),
(13, 16, 24, '2022-01-18 06:44:00', '2022-01-18 06:44:00', '4190343699755750', 1),
(14, 16, 21, '2022-01-18 06:46:04', '2022-01-18 06:46:04', '6749343215885096', 3),
(15, 16, 24, '2022-01-18 06:46:04', '2022-01-18 06:46:04', '6749343215885096', 1),
(16, 16, 21, '2022-01-18 06:46:52', '2022-01-18 06:46:52', '5989011199600861', 3),
(17, 16, 24, '2022-01-18 06:46:52', '2022-01-18 06:46:52', '5989011199600861', 1),
(18, 16, 21, '2022-01-18 06:48:40', '2022-01-18 06:48:40', '4272493350706504', 3),
(19, 16, 24, '2022-01-18 06:48:40', '2022-01-18 06:48:40', '4272493350706504', 1),
(20, 16, 21, '2022-01-18 06:57:12', '2022-01-18 06:57:12', '4227391541771670', 3),
(21, 16, 24, '2022-01-18 06:57:12', '2022-01-18 06:57:12', '4227391541771670', 1),
(22, 16, 21, '2022-01-18 07:00:16', '2022-01-18 07:00:16', '6674990753702475', 2),
(23, 16, 24, '2022-01-18 07:02:02', '2022-01-18 07:02:02', '8418911984563174', 2),
(24, 16, 24, '2022-01-18 07:04:08', '2022-01-18 07:04:08', '9350458562620798', 1),
(25, 16, 24, '2022-01-18 07:05:21', '2022-01-18 07:05:21', '8224522184200630', 1),
(26, 16, 24, '2022-01-18 07:07:35', '2022-01-18 07:07:35', '9078311787097421', 1),
(27, 17, 24, '2022-01-19 02:38:07', '2022-01-19 02:38:07', '3676668904957518', 2),
(28, 1, 21, '2022-01-19 09:03:34', '2022-01-19 09:03:34', '2971928897173918', 2),
(29, 16, 21, '2022-01-31 22:49:05', '2022-01-31 22:49:05', '6513439696689272', 1),
(30, 16, 21, '2022-01-31 22:58:28', '2022-01-31 22:58:28', '7262209986262528', 1),
(31, 16, 21, '2022-01-31 23:10:17', '2022-01-31 23:10:17', '9417360761796460', 1),
(32, 16, 21, '2022-01-31 23:18:07', '2022-01-31 23:18:07', '7552251918198291', 1),
(33, 16, 21, '2022-01-31 23:20:52', '2022-01-31 23:20:52', '2545798118589238', 1),
(34, 16, 21, '2022-01-31 23:40:07', '2022-01-31 23:40:07', '7803018152805226', 2),
(0, 16, 21, '2022-02-01 05:51:20', '2022-02-01 05:51:20', '9671315566219188', 1),
(0, 16, 27, '2022-02-01 06:13:48', '2022-02-01 06:13:48', '2735377103807623', 1),
(0, 16, 21, '2022-02-01 06:13:48', '2022-02-01 06:13:48', '2735377103807623', 1);

-- --------------------------------------------------------

--
-- Table structure for table `part_not_founds`
--

CREATE TABLE `part_not_founds` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ac` varchar(255) DEFAULT NULL,
  `how_can` text,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `part_not_founds`
--

INSERT INTO `part_not_founds` (`id`, `product_id`, `ac`, `how_can`, `first_name`, `last_name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 24, 'Voluptatem Eu conse', 'Voluptate ut quia es', 'Zephania', 'Ward', 'xitelu@mailinator.com', '+1 (336) 916-1303', 'Quisquam fugiat comm', '2022-01-19 05:27:09', '2022-01-19 05:27:09'),
(2, 24, 'Minus nisi voluptate', 'Odit quo occaecat re', 'Alana', 'Fernandez', 'duvulu@mailinator.com', '+1 (447) 815-8507', 'Molestiae molestiae', '2022-01-19 05:27:14', '2022-01-19 05:27:14'),
(3, 24, 'Do et dolor enim con', 'Consectetur ad ipsum', 'Abbot', 'Gould', 'sydyhebutu@mailinator.com', '+1 (908) 115-4234', 'Eu blanditiis minima', '2022-01-19 06:08:26', '2022-01-19 06:08:26'),
(4, 24, 'Aut iure voluptas ve', 'In id laborum Dolor', 'Jolene', 'Fitzpatrick', 'cabufoko@mailinator.com', '+1 (913) 372-4133', 'Vel recusandae Temp', '2022-01-19 06:08:47', '2022-01-19 06:08:47'),
(5, 24, 'Asperiores dolor Nam', 'Consequatur rem des', 'Macey', 'Craig', 'hylile@mailinator.com', '+1 (369) 324-1995', 'Consectetur assumend', '2022-01-19 06:08:59', '2022-01-19 06:08:59'),
(6, 24, 'Quibusdam velit blan', 'Non fugiat reprehend', 'Rhonda', 'Mcneil', 'gunudygahi@mailinator.com', '+1 (577) 808-1264', 'Mollitia ducimus qu', '2022-01-19 09:11:01', '2022-01-19 09:11:01'),
(1, 24, 'Voluptatem Eu conse', 'Voluptate ut quia es', 'Zephania', 'Ward', 'xitelu@mailinator.com', '+1 (336) 916-1303', 'Quisquam fugiat comm', '2022-01-19 05:27:09', '2022-01-19 05:27:09'),
(2, 24, 'Minus nisi voluptate', 'Odit quo occaecat re', 'Alana', 'Fernandez', 'duvulu@mailinator.com', '+1 (447) 815-8507', 'Molestiae molestiae', '2022-01-19 05:27:14', '2022-01-19 05:27:14'),
(3, 24, 'Do et dolor enim con', 'Consectetur ad ipsum', 'Abbot', 'Gould', 'sydyhebutu@mailinator.com', '+1 (908) 115-4234', 'Eu blanditiis minima', '2022-01-19 06:08:26', '2022-01-19 06:08:26'),
(4, 24, 'Aut iure voluptas ve', 'In id laborum Dolor', 'Jolene', 'Fitzpatrick', 'cabufoko@mailinator.com', '+1 (913) 372-4133', 'Vel recusandae Temp', '2022-01-19 06:08:47', '2022-01-19 06:08:47'),
(5, 24, 'Asperiores dolor Nam', 'Consequatur rem des', 'Macey', 'Craig', 'hylile@mailinator.com', '+1 (369) 324-1995', 'Consectetur assumend', '2022-01-19 06:08:59', '2022-01-19 06:08:59'),
(6, 24, 'Quibusdam velit blan', 'Non fugiat reprehend', 'Rhonda', 'Mcneil', 'gunudygahi@mailinator.com', '+1 (577) 808-1264', 'Mollitia ducimus qu', '2022-01-19 09:11:01', '2022-01-19 09:11:01'),
(0, 27, 'YEs', 'asd', 'john', 'ds', 'john@mail.com', '+311406615531', 'hello', '2022-02-01 06:03:02', '2022-02-01 06:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sub_categories` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `retail_price` float NOT NULL,
  `our_price` float NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `oem` varchar(255) DEFAULT NULL,
  `make` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `submodel` int(11) DEFAULT NULL,
  `engine` int(11) DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT '0 = old, 1 = new',
  `rare` int(11) NOT NULL DEFAULT '0' COMMENT '0 = notrare, 1 = rare',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sub_categories`, `title`, `description`, `retail_price`, `our_price`, `brand`, `stock`, `sku`, `oem`, `make`, `year`, `model`, `submodel`, `engine`, `condition`, `rare`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 1, 'Radiator', '(Only works if your inlet hose diameter is 1 1/2)', 550, 400, 'BMW', 178, '321654', '123', 3, 82, 3, 3, 3, 0, 1, 1, '2022-01-05 14:36:12', '2022-02-01 06:13:48', '2022-01-05 19:36:12'),
(22, 1, 'Explicabo Ipsa des', 'Aut quidem minim exp', 977, 596, 'Reprehenderit cupid', 96, '48', '82', 5, 65, 2, 2, 3, 0, 0, 1, '2022-01-05 16:06:29', '2022-01-05 16:06:29', '2022-01-05 21:06:29'),
(24, 1, 'Americ', 'Hello World', 400, 500, '1', 0, '3', '4', NULL, 81, 4, 2, 4, 0, 1, 1, '2022-01-15 01:36:35', '2022-01-25 20:45:02', '2022-01-14 17:36:35'),
(25, NULL, '1960 - 1964 BUICK ELECTRA ALUMINUM RADIATOR', 'The Best Product', 500, 400, '1', 20, '100', '120', 5, 21, 3, 3, 2, 1, 1, 1, '2022-01-20 02:30:08', '2022-01-20 02:30:08', '2022-01-19 18:30:08'),
(27, NULL, 'Test Product', 'Testing Product', 800, 700, 'Revved Up', 14, '1010', '0001', 7, 78, 5, 4, 5, 1, 1, 1, '2022-02-01 05:59:00', '2022-02-01 06:13:48', '2022-01-31 23:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_availables`
--

CREATE TABLE `product_availables` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_availables`
--

INSERT INTO `product_availables` (`id`, `product_id`, `heading`, `created_at`, `updated_at`) VALUES
(73, 21, 'Core Row', '2022-02-01 06:49:02', '2022-02-01 06:49:02');

-- --------------------------------------------------------

--
-- Table structure for table ` product_coolant_filters`
--

CREATE TABLE ` product_coolant_filters` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `amount` decimal(14,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_core_rows`
--

CREATE TABLE `product_core_rows` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `amount` decimal(14,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_engine`
--

CREATE TABLE `product_engine` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_engine`
--

INSERT INTO `product_engine` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, '2.4L', '2021-12-27 18:09:34', '2021-12-27 18:09:34'),
(3, '2.0L-L4 120CID', '2022-01-05 12:16:41', '2022-01-05 12:16:41'),
(4, 'InterCooler', '2022-01-15 01:32:48', '2022-01-15 01:32:48'),
(5, 'test engine', '2022-02-01 05:56:23', '2022-02-01 05:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_fan_packages`
--

CREATE TABLE `product_fan_packages` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `amount` decimal(14,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_fitments`
--

CREATE TABLE `product_fitments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_fitments`
--

INSERT INTO `product_fitments` (`id`, `title`, `product_id`, `created_at`, `updated_at`) VALUES
(4, '1643144699.PNG', 21, '2022-01-26 05:04:59', '2022-01-26 05:04:59'),
(5, '1643225808.PNG', 21, '2022-01-27 03:36:48', '2022-01-27 03:36:48'),
(6, '1643225837.PNG', 27, '2022-01-27 03:37:17', '2022-01-27 03:37:17'),
(4, '1643144699.PNG', 21, '2022-01-26 05:04:59', '2022-01-26 05:04:59'),
(4, '1643144699.PNG', 21, '2022-01-26 05:04:59', '2022-01-26 05:04:59'),
(5, '1643225808.PNG', 21, '2022-01-27 03:36:48', '2022-01-27 03:36:48'),
(6, '1643225837.PNG', 27, '2022-01-27 03:37:17', '2022-01-27 03:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `title`, `product_id`, `created_at`, `updated_at`) VALUES
(42, '1641416789.jfif', 22, '2022-01-05 16:06:29', '2022-01-05 16:06:29'),
(43, '1642181795.png', 24, '2022-01-15 01:36:35', '2022-01-15 01:36:35'),
(45, '1642803867.jpg', 25, '2022-01-22 06:24:27', '2022-01-22 06:24:27'),
(47, '1643131632.png', 26, '2022-01-26 01:27:12', '2022-01-26 01:27:12'),
(48, '1643131632.jpg', 26, '2022-01-26 01:27:12', '2022-01-26 01:27:12'),
(49, '1643131632.png', 26, '2022-01-26 01:27:12', '2022-01-26 01:27:12'),
(50, '1643152893.PNG', 21, '2022-01-26 07:21:33', '2022-01-26 07:21:33'),
(51, '1643152893.jpg', 21, '2022-01-26 07:21:33', '2022-01-26 07:21:33'),
(41, '1641411372.jpg', 21, '2022-01-05 14:36:12', '2022-01-05 14:36:12'),
(42, '1641416789.jfif', 22, '2022-01-05 16:06:29', '2022-01-05 16:06:29'),
(44, '1642617008.jpg', 25, '2022-01-20 02:30:08', '2022-01-20 02:30:08'),
(45, '1643121902.jpg', 24, '2022-01-25 20:45:02', '2022-01-25 20:45:02'),
(46, '1643121902.jfif', 24, '2022-01-25 20:45:02', '2022-01-25 20:45:02'),
(47, '1643121902.jfif', 24, '2022-01-25 20:45:02', '2022-01-25 20:45:02'),
(0, '1643673540.png', 27, '2022-02-01 05:59:00', '2022-02-01 05:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_make`
--

CREATE TABLE `product_make` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_make`
--

INSERT INTO `product_make` (`id`, `title`, `created_at`, `updated_at`) VALUES
(3, 'ACURA', '2021-12-27 17:38:02', '2021-12-27 17:38:02'),
(4, 'ALFA ROMEO', '2022-01-04 12:43:48', '2022-01-04 12:43:48'),
(5, 'AM GENERAL', '2022-01-04 12:44:09', '2022-01-04 12:44:09'),
(6, 'American Motors', '2022-01-15 01:31:07', '2022-01-15 01:31:07'),
(7, 'test Make', '2022-02-01 05:55:19', '2022-02-01 05:55:19'),
(8, 'test Make', '2022-02-01 05:55:20', '2022-02-01 05:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_model`
--

CREATE TABLE `product_model` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_model`
--

INSERT INTO `product_model` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, 'TLX', '2021-12-27 17:38:37', '2021-12-27 17:39:21'),
(3, 'Spider', '2022-01-05 12:16:02', '2022-01-05 12:16:02'),
(4, 'Eagle', '2022-01-15 01:31:49', '2022-01-15 01:31:49'),
(5, 'test model', '2022-02-01 05:55:38', '2022-02-01 05:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(14,2) DEFAULT NULL,
  `available_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`id`, `title`, `price`, `available_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '3 Row 12', 50.00, 73, 21, '2022-02-02 02:38:15', '2022-02-02 04:28:51'),
(2, '3 Row 2', 50.00, 73, 21, '2022-02-02 02:38:26', '2022-02-02 04:28:45'),
(9, '3 Row 2', 50.00, 73, 21, '2022-02-02 03:58:52', '2022-02-02 03:58:52'),
(10, '3 Row 1', 40.00, 73, 21, '2022-02-02 03:58:52', '2022-02-02 04:35:38');

-- --------------------------------------------------------

--
-- Table structure for table ` product_overflow_tanks`
--

CREATE TABLE ` product_overflow_tanks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `amount` decimal(14,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `title`, `product_id`, `created_at`, `updated_at`) VALUES
(5, '1643224399.PNG', 27, '2022-01-27 03:13:19', '2022-01-27 03:13:19'),
(5, '1643224399.PNG', 27, '2022-01-27 03:13:19', '2022-01-27 03:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_submodel`
--

CREATE TABLE `product_submodel` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_submodel`
--

INSERT INTO `product_submodel` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, 'Base', '2021-12-27 17:39:08', '2021-12-27 17:39:08'),
(3, 'VELOCE', '2022-01-05 12:16:20', '2022-01-05 12:16:20'),
(4, 'test SubModel', '2022-02-01 05:55:53', '2022-02-01 05:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_year`
--

CREATE TABLE `product_year` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_year`
--

INSERT INTO `product_year` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, '1940', '2022-01-04 13:37:08', '2022-01-04 13:37:08'),
(2, '1941', '2022-01-04 13:37:42', '2022-01-04 13:37:42'),
(3, '1942', '2022-01-04 13:37:46', '2022-01-04 13:37:46'),
(4, '1943', '2022-01-04 13:37:59', '2022-01-04 13:37:59'),
(5, '1944', '2022-01-04 13:38:07', '2022-01-04 13:38:07'),
(6, '1945', '2022-01-04 13:38:10', '2022-01-04 13:38:10'),
(7, '1946', '2022-01-04 13:38:13', '2022-01-04 13:38:13'),
(8, '1947', '2022-01-04 13:38:16', '2022-01-04 13:38:16'),
(9, '1948', '2022-01-04 13:38:20', '2022-01-04 13:38:20'),
(10, '1949', '2022-01-04 13:38:22', '2022-01-04 13:38:22'),
(11, '1950', '2022-01-04 13:38:25', '2022-01-04 13:38:25'),
(12, '1951', '2022-01-04 13:38:29', '2022-01-04 13:38:29'),
(13, '1952', '2022-01-04 13:38:32', '2022-01-04 13:38:32'),
(14, '1953', '2022-01-04 13:38:34', '2022-01-04 13:38:34'),
(15, '1954', '2022-01-04 13:38:37', '2022-01-04 13:38:37'),
(16, '1955', '2022-01-04 13:38:40', '2022-01-04 13:38:40'),
(17, '1956', '2022-01-04 13:38:42', '2022-01-04 13:38:42'),
(18, '1957', '2022-01-04 13:38:50', '2022-01-04 13:38:50'),
(19, '1958', '2022-01-04 13:39:45', '2022-01-04 13:39:45'),
(20, '1959', '2022-01-04 13:39:48', '2022-01-04 13:39:48'),
(21, '1960', '2022-01-04 13:39:52', '2022-01-04 13:39:52'),
(22, '1961', '2022-01-04 13:39:56', '2022-01-04 13:39:56'),
(23, '1962', '2022-01-04 13:40:02', '2022-01-04 13:40:02'),
(24, '1963', '2022-01-04 13:40:05', '2022-01-04 13:40:05'),
(25, '1964', '2022-01-04 13:40:08', '2022-01-04 13:40:08'),
(26, '1965', '2022-01-04 13:40:11', '2022-01-04 13:40:11'),
(27, '1966', '2022-01-04 13:40:14', '2022-01-04 13:40:14'),
(28, '1967', '2022-01-04 13:40:17', '2022-01-04 13:40:17'),
(29, '1968', '2022-01-04 13:40:20', '2022-01-04 13:40:20'),
(30, '1969', '2022-01-04 13:40:35', '2022-01-04 13:40:35'),
(31, '1970', '2022-01-04 13:40:38', '2022-01-04 13:40:38'),
(32, '1971', '2022-01-04 13:40:41', '2022-01-04 13:40:41'),
(33, '1972', '2022-01-04 13:40:44', '2022-01-04 13:40:44'),
(34, '1973', '2022-01-04 13:40:48', '2022-01-04 13:40:48'),
(35, '1974', '2022-01-04 13:40:52', '2022-01-04 13:40:52'),
(36, '1975', '2022-01-04 13:40:55', '2022-01-04 13:40:55'),
(37, '1976', '2022-01-04 13:40:58', '2022-01-04 13:40:58'),
(38, '1977', '2022-01-04 13:41:01', '2022-01-04 13:41:01'),
(39, '1978', '2022-01-04 13:41:05', '2022-01-04 13:41:05'),
(40, '1979', '2022-01-04 13:41:08', '2022-01-04 13:41:08'),
(41, '1980', '2022-01-04 13:41:12', '2022-01-04 13:41:12'),
(42, '1981', '2022-01-04 13:41:15', '2022-01-04 13:41:15'),
(43, '1982', '2022-01-04 13:41:19', '2022-01-04 13:41:19'),
(44, '1983', '2022-01-04 13:41:23', '2022-01-04 13:41:23'),
(45, '1984', '2022-01-04 13:41:26', '2022-01-04 13:41:26'),
(46, '1985', '2022-01-04 13:41:29', '2022-01-04 13:41:29'),
(47, '1986', '2022-01-04 13:41:33', '2022-01-04 13:41:33'),
(48, '1987', '2022-01-04 13:42:12', '2022-01-04 13:42:12'),
(49, '1988', '2022-01-04 13:42:15', '2022-01-04 13:42:15'),
(50, '1989', '2022-01-04 13:42:18', '2022-01-04 13:42:18'),
(51, '1990', '2022-01-04 13:42:21', '2022-01-04 13:42:21'),
(52, '1991', '2022-01-04 13:42:24', '2022-01-04 13:42:24'),
(53, '1992', '2022-01-04 13:42:26', '2022-01-04 13:42:26'),
(54, '1993', '2022-01-04 13:42:29', '2022-01-04 13:42:29'),
(55, '1994', '2022-01-04 13:42:31', '2022-01-04 13:42:31'),
(56, '1995', '2022-01-04 13:42:35', '2022-01-04 13:42:35'),
(57, '1996', '2022-01-04 13:42:39', '2022-01-04 13:42:39'),
(58, '1997', '2022-01-04 13:42:42', '2022-01-04 13:42:42'),
(59, '1998', '2022-01-04 13:42:44', '2022-01-04 13:42:44'),
(60, '1999', '2022-01-04 13:42:47', '2022-01-04 13:42:47'),
(61, '2000', '2022-01-04 13:42:50', '2022-01-04 13:42:50'),
(62, '2001', '2022-01-04 13:42:53', '2022-01-04 13:42:53'),
(63, '2002', '2022-01-04 13:42:57', '2022-01-04 13:42:57'),
(64, '2003', '2022-01-04 13:43:00', '2022-01-04 13:43:00'),
(65, '2004', '2022-01-04 13:43:04', '2022-01-04 13:43:04'),
(66, '2005', '2022-01-04 13:43:07', '2022-01-04 13:43:07'),
(67, '2006', '2022-01-04 13:43:10', '2022-01-04 13:43:10'),
(68, '2007', '2022-01-04 13:43:12', '2022-01-04 13:43:12'),
(69, '2008', '2022-01-04 13:43:15', '2022-01-04 13:43:15'),
(70, '2009', '2022-01-04 13:43:18', '2022-01-04 13:43:18'),
(71, '2010', '2022-01-04 13:43:21', '2022-01-04 13:43:21'),
(72, '2011', '2022-01-04 13:43:23', '2022-01-04 13:43:23'),
(73, '2012', '2022-01-04 13:43:27', '2022-01-04 13:43:27'),
(74, '2013', '2022-01-04 13:43:29', '2022-01-04 13:43:29'),
(75, '2014', '2022-01-04 13:43:32', '2022-01-04 13:43:32'),
(76, '2015', '2022-01-04 13:43:35', '2022-01-04 13:43:35'),
(77, '2016', '2022-01-04 13:43:38', '2022-01-04 13:43:38'),
(78, '2017', '2022-01-04 13:43:42', '2022-01-04 13:43:42'),
(79, '2018', '2022-01-04 13:43:45', '2022-01-04 13:43:45'),
(80, '2019', '2022-01-04 13:43:48', '2022-01-04 13:43:48'),
(81, '2020', '2022-01-04 13:43:51', '2022-01-04 13:43:51'),
(82, '2021', '2022-01-04 13:43:55', '2022-01-04 13:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shipping_address` text,
  `business` varchar(255) DEFAULT NULL,
  `city` text,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` int(16) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `shipping_address`, `business`, `city`, `state`, `zip_code`, `phone`, `type_address`, `created_at`, `updated_at`) VALUES
(1, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', '1', '2022-02-01 05:51:20', '2022-02-01 05:51:20'),
(2, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', '0', '2022-02-01 06:13:48', '2022-02-01 06:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parent_category` int(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `title`, `parent_category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test12', 1, 1, '2021-09-10 18:42:57', '2021-09-10 18:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address1` text,
  `address2` text,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `where_heard` varchar(255) DEFAULT NULL,
  `email` varchar(55) NOT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(555) DEFAULT NULL,
  `user_role` int(1) NOT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `address1`, `address2`, `city`, `state`, `zip_code`, `phone`, `fax`, `where_heard`, `email`, `provider_id`, `avatar`, `password`, `user_role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin@mail.com', NULL, NULL, '$2y$10$eBzm3cEsbRSf2djUAs1P2eyT.yQlWP3XJQb737CalCQoTsdTbRvja', 1, 1, '2021-06-16 21:48:41', '2021-09-13 15:12:37'),
(2, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test123@gmail.com', NULL, NULL, 'test', 4, 1, '2021-06-18 18:14:13', '2021-09-10 14:42:03'),
(3, 'dev petyr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'devpetyr911@gmail.com', '105866561827322939177', 'https://lh3.googleusercontent.com/a/AATXAJytHN79d16llvC2GrMy98m9LEXZxwv5cd5ZWDUX=s96-c', NULL, 2, 1, '2021-06-18 18:32:20', '2021-09-10 14:33:55'),
(8, 'muzz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'muzz@gmail.com', NULL, NULL, 'password', 2, 1, '2021-06-23 04:13:26', '2021-09-10 14:34:37'),
(10, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asd@mail.com', NULL, NULL, '123', 2, 0, '2021-06-24 11:45:41', '2021-06-24 11:45:41'),
(11, 'haris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'haris@gmail.com', NULL, NULL, 'haris123', 3, 0, '2021-06-24 12:58:44', '2021-09-10 14:42:20'),
(16, 'john', 'wick', 'address1', 'address2', 'city', 'state', '123456', '+311406615531', '1234567', 'GOOGLE', 'devjohnwick8@gmail.com', NULL, NULL, '$2y$10$SGqWLVCKHkcAAFyjQ5yyy.ulh97hpQt9zMoM4xYXu.OdCWMwBRXMK', 2, 0, '2022-01-14 02:37:02', '2022-01-14 02:37:02'),
(17, 'hello', 'helloway', 'address1', 'address2', 'city', 'state', '1234561', '16479643828', '123456', 'EBAY_LIST', 'john@mail.com', NULL, NULL, '$2y$10$df58k4lXumMWgz66AvO2HOcOaJgLoEbBYcPGv4PfkC0KDqLsN1y2e', 2, 0, '2022-01-19 01:34:51', '2022-01-19 01:34:51'),
(18, 'Mageehghghghg', 'Kelsie', 'Tyler', 'Damian', 'Yuri', 'Candace', '59201', '60600', 'Scarlet', 'YELLOWPAGES', 'riqony@mailinator.com', NULL, NULL, '$2y$10$MPOJchY2Py4k8K/v7K6R7uZbmyH9vPuLharqjaQ3iFYYfb4TiMHW.', 2, 0, '2022-01-19 09:20:26', '2022-01-19 09:20:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories` (`sub_categories`),
  ADD KEY `make1` (`make`),
  ADD KEY `submodel1` (`submodel`),
  ADD KEY `engine1` (`engine`),
  ADD KEY `model1` (`model`),
  ADD KEY `pro_year` (`year`);

--
-- Indexes for table `product_availables`
--
ALTER TABLE `product_availables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_engine`
--
ALTER TABLE `product_engine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_make`
--
ALTER TABLE `product_make`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_model`
--
ALTER TABLE `product_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_submodel`
--
ALTER TABLE `product_submodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_year`
--
ALTER TABLE `product_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_ibfk_1` (`parent_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_availables`
--
ALTER TABLE `product_availables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `product_engine`
--
ALTER TABLE `product_engine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_make`
--
ALTER TABLE `product_make`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_model`
--
ALTER TABLE `product_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_options`
--
ALTER TABLE `product_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_submodel`
--
ALTER TABLE `product_submodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_year`
--
ALTER TABLE `product_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billings`
--
ALTER TABLE `billings`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `engine1` FOREIGN KEY (`engine`) REFERENCES `product_engine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `make1` FOREIGN KEY (`make`) REFERENCES `product_make` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `model1` FOREIGN KEY (`model`) REFERENCES `product_model` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pro_year` FOREIGN KEY (`year`) REFERENCES `product_year` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`sub_categories`) REFERENCES `sub_categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `submodel1` FOREIGN KEY (`submodel`) REFERENCES `product_submodel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`parent_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
