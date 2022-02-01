-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 12:58 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `revved_up`
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
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `first_name`, `last_name`, `phone_no`, `email`, `subject`, `company`, `message`, `created_at`, `updated_at`) VALUES
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
  `description` text DEFAULT NULL,
  `images` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(53, 'Exercitationem magna', 'Veniam recusandae', '1631228399.jpg', 1, '2021-09-09 17:59:59', '2021-09-13 15:13:41');

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
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `images`, `author`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Commodi aute debitis', 'Et est esse necessi', '1631294709.jfif', 1, 1, '2021-09-10 12:25:09', '2021-09-10 12:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
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
  `sub_heading` text DEFAULT NULL,
  `description_1` text DEFAULT NULL,
  `description_2` text DEFAULT NULL,
  `image_1` varchar(555) DEFAULT NULL,
  `image_2` varchar(555) DEFAULT NULL,
  `video_1` varchar(555) DEFAULT NULL,
  `video_2` varchar(555) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `page`, `title`, `sub_heading`, `description_1`, `description_2`, `image_1`, `image_2`, `video_1`, `video_2`, `status`, `created_at`, `updated_at`) VALUES
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `email`, `phone`, `currency`, `address`, `fb_link`, `twitter_link`, `insta_link`, `linkedin_link`, `copyright`, `created_at`, `updated_at`) VALUES
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
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
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `title`, `sub_heading`, `price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(6, '6 WEEK PROGRAM', 'Weekly Group Sessions', 2500, '<ul class=\"_3-q0m pp-plan-benefits-divider-color _1Np2U\"><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-bottom: 1.5em;\">Identify Your Financial Stage And Risk Tolerance</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Which Investment Strategy Best Fits Your Objective</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Choose a Geographical Market</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Financing Options</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Acquiring Funds For Down Payment + Carrying Costs (Reserves)</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Evaluating Deals Before Executing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Strategies For Using Hard Money</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">General Rehab Best Practices</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em;\">Income Property Management Overview</span></li></ul>', 1, '2021-06-16 18:46:14', '2021-06-23 03:55:54'),
(8, '1 ON 1 MENTORSHIP', 'Weekly Group Sessions PLUS 1 -0n-1 Sessions', 5000, '<ul class=\"_3-q0m pp-plan-benefits-divider-color _1Np2U\"><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-bottom: 1.5em;\">Access to Weekly Round Up</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Building Your Team - Understanding The Different Roles...</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Scheduling Your Time And Prioritizing Next Steps</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Basic Understanding of the Rehab Process</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Creative Financing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Creating a System to Secure Deals</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Real Estate Marketing Ideas</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Home Flipping Risk Assessment</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Working with Contractors</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Your Financial Stage And Risk Tolerance</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Which Investment Strategy Best Fits Your Objective</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Choose a Geographical Market</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Identify Financing Options</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Acquiring Funds For Down Payment + Carrying Costs (Reserves)</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Evaluating Deals Before Executing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Strategies For Using Hard Money</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">General Rehab Best Practices</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Income Property Management Overview</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em;\">Wholesaling –  Get The Tools Become a Successful Wholesaler</span></li></ul>', 1, '2021-06-17 11:14:06', '2021-06-22 06:39:25'),
(9, 'BUILD YOUR BUSINESS', 'Meet Odis in Your Market', 7500, '<ul class=\"_3-q0m pp-plan-benefits-divider-color _1Np2U\"><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-bottom: 1.5em;\">Enrolled in Business Consultant Program</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Wealth Strategy Consultation</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Connect you to all systems you need to operate</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Access to Weekly Round Up</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Multifamily Financing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Multifamily Management</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Incudes In Person Two Day Business Building Session</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em;\">Hands on Consulting “Building Your Business”</span></li></ul>', 1, '2021-06-17 11:14:45', '2021-06-22 06:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `membership_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 = not cancelled\r\n1 = cancelled\r\n',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `membership_id`, `payment_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 8, 'ch_1J4tXuCmaCeXAIYUb93RxWJK', 0, '2021-06-21 15:16:37', '2021-06-21 15:16:37'),
(3, 3, 8, 'ch_1J4tlJCmaCeXAIYUrn0KVvMt', 0, '2021-06-21 15:30:28', '2021-06-21 15:30:28'),
(4, 3, 9, 'ch_1J4w2LCmaCeXAIYUf1WUugp3', 0, '2021-06-22 05:56:13', '2021-06-22 05:56:13'),
(5, 3, 8, 'ch_1J4wJ9CmaCeXAIYUcaclKOar', 0, '2021-06-22 06:13:34', '2021-06-22 06:13:34'),
(6, 1, 6, 'ch_1J5dHPCmaCeXAIYUH0s42vP6', 0, '2021-06-23 16:06:40', '2021-06-23 16:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sub_categories` int(11) NOT NULL,
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
  `condition` int(11) NOT NULL DEFAULT 0 COMMENT '0 = old, 1 = new',
  `rare` int(11) NOT NULL DEFAULT 0 COMMENT '0 = notrare, 1 = rare',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sub_categories`, `title`, `description`, `retail_price`, `our_price`, `brand`, `stock`, `sku`, `oem`, `make`, `year`, `model`, `submodel`, `engine`, `condition`, `rare`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 1, 'Radiator', '(Only works if your inlet hose diameter is 1 1/2)', 550, 400, 'BMW', 200, '321654', '123', 3, 82, 3, 3, 3, 0, 1, 1, '2022-01-05 14:36:12', '2022-01-05 14:36:12', '2022-01-05 19:36:12'),
(22, 1, 'Explicabo Ipsa des', 'Aut quidem minim exp', 977, 596, 'Reprehenderit cupid', 96, '48', '82', 5, 65, 2, 2, 3, 0, 0, 1, '2022-01-05 16:06:29', '2022-01-05 16:06:29', '2022-01-05 21:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_engine`
--

CREATE TABLE `product_engine` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_engine`
--

INSERT INTO `product_engine` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, '2.4L', '2021-12-27 18:09:34', '2021-12-27 18:09:34'),
(3, '2.0L-L4 120CID', '2022-01-05 12:16:41', '2022-01-05 12:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `title`, `product_id`, `created_at`, `updated_at`) VALUES
(41, '1641411372.jpg', 21, '2022-01-05 14:36:12', '2022-01-05 14:36:12'),
(42, '1641416789.jfif', 22, '2022-01-05 16:06:29', '2022-01-05 16:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_make`
--

CREATE TABLE `product_make` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_make`
--

INSERT INTO `product_make` (`id`, `title`, `created_at`, `updated_at`) VALUES
(3, 'ACURA', '2021-12-27 17:38:02', '2021-12-27 17:38:02'),
(4, 'ALFA ROMEO', '2022-01-04 12:43:48', '2022-01-04 12:43:48'),
(5, 'AM GENERAL', '2022-01-04 12:44:09', '2022-01-04 12:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_model`
--

CREATE TABLE `product_model` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_model`
--

INSERT INTO `product_model` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, 'TLX', '2021-12-27 17:38:37', '2021-12-27 17:39:21'),
(3, 'Spider', '2022-01-05 12:16:02', '2022-01-05 12:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_submodel`
--

CREATE TABLE `product_submodel` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_submodel`
--

INSERT INTO `product_submodel` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, 'Base', '2021-12-27 17:39:08', '2021-12-27 17:39:08'),
(3, 'VELOCE', '2022-01-05 12:16:20', '2022-01-05 12:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_year`
--

CREATE TABLE `product_year` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
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
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `phone_no` varchar(225) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=payment not proceed\r\n1= payment proceeded',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `fullname`, `email`, `payment_id`, `phone_no`, `address`, `country`, `city`, `state`, `zip`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lila Mcbride', 'qipirato@mailinator.com', 'ch_1J4vaYCmaCeXAIYUgyW68heo', '+1 (211) 272-1475', 'asd', 'France', 'asd', 'asd', 'asd', 1, '2021-06-21 17:27:28', '2021-06-21 17:27:28'),
(2, 'dev petyr', 'test123@gmail.com', 'ch_1J4w0UCmaCeXAIYUt2fTSt3t', '213', 'sad', 'USA', 'sad', 'sa', '213', 1, '2021-06-22 05:54:17', '2021-06-22 05:54:17'),
(3, 'Vernon Britt', 'toga@mailinator.com', 'ch_1J5CSTCmaCeXAIYUJNVVLk8c', '+1 (916) 892-9912', 'test', 'USA', 'test', 'test', '123456', 1, '2021-06-22 23:28:17', '2021-06-22 23:28:17'),
(4, 'Sa m', 'vitaldesigning7@gmail.com', 'ch_1J5GzkCmaCeXAIYUUphk8cne', '1234567890', 'm', 'USA', 'sdf', 'sdf', '12345', 1, '2021-06-23 04:18:57', '2021-06-23 04:18:57'),
(5, 'Ava Macdonald', 'nowuwal@mailinator.com', 'ch_1J5H6yCmaCeXAIYUH86sXRki', '+1 (621) 348-9275', 'Magna est eum conse', 'UK', 'Aliqua Dolor nulla', 'Est enim et eu ullam', '16289', 1, '2021-06-23 04:26:24', '2021-06-23 04:26:24'),
(6, 'Blythe Johnson', 'nujitura@mailinator.com', 'ch_1J5vJ1CmaCeXAIYUNwK9amqZ', '+1 (273) 607-5669', 'asd', 'UK', 'asd', 'asd', 'asd', 1, '2021-06-24 11:21:32', '2021-06-24 11:21:32'),
(7, 'Aaron Small', 'zicihima@mailinator.com', 'ch_1J5vwnCmaCeXAIYU6KC3afP4', '+1 (896) 989-2466', 'asd', 'France', 'asd', 'asd', 'asd', 1, '2021-06-24 12:02:38', '2021-06-24 12:02:38'),
(8, 'Aaron Small', 'zicihima@mailinator.com', 'ch_1J5vwuCmaCeXAIYUeIa33TU5', '+1 (896) 989-2466', 'asd', 'France', 'asd', 'asd', 'asd', 1, '2021-06-24 12:02:45', '2021-06-24 12:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `images` varchar(55) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `images`, `description`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Real Estate Invester', '1631309065.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent viverra, nisl a consectetur aliquam, velit mauris mollis ipsum, ac tristique ligula ex nec lorem. Fusce pellentesque elit fringilla mauris dapibus, sagittis convallis purus ultricies. Nullam non libero nec tortor gravida volutpat consequat sed nisl.', 1, '2021-06-16 18:34:42', '2021-09-10 16:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parent_category` int(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `title`, `parent_category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test12', 1, 1, '2021-09-10 18:42:57', '2021-09-10 18:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `images` varchar(55) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `designation` varchar(55) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `description`, `images`, `name`, `designation`, `status`, `created_at`, `updated_at`) VALUES
(21, 'Voluptate voluptatem', '1631298126.jfif', 'Rachel Sanford', 'Elit accusantium ad', 1, '2021-09-10 13:00:19', '2021-09-10 13:22:06'),
(22, 'Fugiat ut consequat', '1631297099.jpg', 'Venus Carey', 'Deserunt nisi est e', 0, '2021-09-10 13:04:59', '2021-09-10 13:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(555) DEFAULT NULL,
  `user_role` int(1) NOT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `provider_id`, `avatar`, `password`, `user_role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', NULL, NULL, '$2y$10$eBzm3cEsbRSf2djUAs1P2eyT.yQlWP3XJQb737CalCQoTsdTbRvja', 1, 1, '2021-06-16 21:48:41', '2021-09-13 15:12:37'),
(2, 'test', 'test123@gmail.com', NULL, NULL, 'test', 4, 1, '2021-06-18 18:14:13', '2021-09-10 14:42:03'),
(3, 'dev petyr', 'devpetyr911@gmail.com', '105866561827322939177', 'https://lh3.googleusercontent.com/a/AATXAJytHN79d16llvC2GrMy98m9LEXZxwv5cd5ZWDUX=s96-c', NULL, 2, 1, '2021-06-18 18:32:20', '2021-09-10 14:33:55'),
(8, 'muzz', 'muzz@gmail.com', NULL, NULL, 'password', 2, 1, '2021-06-23 04:13:26', '2021-09-10 14:34:37'),
(10, 'test', 'asd@mail.com', NULL, NULL, '123', 2, 0, '2021-06-24 11:45:41', '2021-06-24 11:45:41'),
(11, 'haris', 'haris@gmail.com', NULL, NULL, 'haris123', 3, 0, '2021-06-24 12:58:44', '2021-09-10 14:42:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user_id`),
  ADD KEY `product` (`product_id`);

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
-- Indexes for table `product_engine`
--
ALTER TABLE `product_engine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_ibfk_1` (`product_id`);

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
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_ibfk_1` (`parent_category`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_engine`
--
ALTER TABLE `product_engine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product_make`
--
ALTER TABLE `product_make`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_model`
--
ALTER TABLE `product_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_submodel`
--
ALTER TABLE `product_submodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_year`
--
ALTER TABLE `product_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`parent_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
