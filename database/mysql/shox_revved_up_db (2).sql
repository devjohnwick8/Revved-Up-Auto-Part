-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2022 at 03:21 PM
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
(43, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-02-15 06:53:53', '2022-02-15 06:53:53'),
(44, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-02-25 00:04:08', '2022-02-25 00:04:08'),
(45, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-02-25 01:17:32', '2022-02-25 01:17:32'),
(46, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-02-25 01:39:38', '2022-02-25 01:39:38'),
(47, 1, 'toguha', 'bufer', 'noq', 'Velit', 25766, NULL, NULL, '2022-03-01 00:25:25', '2022-03-01 00:25:25'),
(48, 16, 'address1', 'address2', 'city', 'state', 123456, NULL, NULL, '2022-03-01 00:59:09', '2022-03-01 00:59:09'),
(49, NULL, 'nicyf@mailinator.com', 'cype@mailinator.com', 'nogihabih@mailinator.com', 'Omnis fugit nulla q', 94222, NULL, NULL, '2022-03-04 05:23:08', '2022-03-04 05:23:08'),
(50, NULL, 'nicyf@mailinator.com', 'cype@mailinator.com', 'nogihabih@mailinator.com', 'Omnis fugit nulla q', 94222, NULL, NULL, '2022-03-04 05:30:32', '2022-03-04 05:30:32'),
(51, NULL, 'nivyho@mailinator.com', 'nuvyr@mailinator.com', 'xixejalyme@mailinator.com', 'Doloremque officia v', 93420, NULL, NULL, '2022-03-04 06:00:17', '2022-03-04 06:00:17'),
(52, 16, 'qitigavugy@mailinator.com', 'nyluxubope@mailinator.com', 'gafybyxe@mailinator.com', 'Eu cillum laborum A', 53763, NULL, NULL, '2022-03-04 06:06:15', '2022-03-04 06:06:15');

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
(1, 'Revved Up', NULL, 1, '2021-09-10 18:03:07', '2021-09-10 18:03:07');

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

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `comment`, `created_at`, `updated_at`) VALUES
(1, ' ', 'hozaty@mailinator.com', '27', 'Qui aliqua Est bla', '2021-06-22 17:11:36', '2021-06-22 17:11:36'),
(2, ' ', 'hipuhex@mailinator.com', '85', 'Illum sit do modi', '2021-06-23 05:21:10', '2021-06-23 05:21:10'),
(3, ' ', 'admin@mail.com', '21', 'a', '2021-06-24 13:00:38', '2021-06-24 13:00:38'),
(4, 'john', 'devjohnwick8@gmail.com', 'hello testing', 'hellow World', '2022-02-09 05:59:35', '2022-02-09 05:59:35'),
(5, 'john', 'devjohnwick8@gmail.com', 'hello testing', 'hellow World', '2022-02-09 06:03:26', '2022-02-09 06:03:26'),
(6, 'john', 'devjohnwick8@gmail.com', 'Aliquip dolor magni', 'asdasd', '2022-02-09 06:03:36', '2022-02-09 06:03:36'),
(7, 'john', 'devjohnwick8@gmail.com', 'Aliquip dolor magni', 'asdasd', '2022-02-09 06:10:56', '2022-02-09 06:10:56'),
(8, 'john', 'devjohnwick8@gmail.com', 'Aliquip dolor magni', 'asdasf as f asfdas da.', '2022-02-09 06:11:15', '2022-02-09 06:11:15'),
(9, 'john', 'devjohnwick8@gmail.com', 'Aliquip dolor magni', 'asdasf as f asfdas da.', '2022-02-09 06:12:06', '2022-02-09 06:12:06'),
(10, 'john', 'devjohnwick8@gmail.com', 'Aliquip dolor magni', 'asdasf as f asfdas da.', '2022-02-09 06:13:15', '2022-02-09 06:13:15'),
(11, 'john', 'devjohnwick8@gmail.com', 'Reprehenderit volupt', 'hhhh', '2022-02-09 06:14:10', '2022-02-09 06:14:10'),
(12, 'john', 'devjohnwick8@gmail.com', 'asdas fas', 'asfasf asfasf as', '2022-02-09 06:16:33', '2022-02-09 06:16:33'),
(13, 'john', 'devjohnwick8@gmail.com', 'hello testing', 'asfase qw zsa das  ax dsadash  as dashjbdas \r\ndaskdahj asd\r\nkl jkladasjhjd\'\r\naklshdasjkhdaw\r\nl;jsalkjdaskljdasjkl jdas  d  alskjd a asjd asjkljd askl \r\nalsjdklasjkljdklasjdlk a', '2022-02-09 06:32:39', '2022-02-09 06:32:39'),
(14, 'john', 'devjohnwick8@gmail.com', 'hello testing', 'asdfas das fas fas fas fas\r\n\r\n as fdaf as fas fas fa\r\n asf fas asf\r\n asf asf asf\r\nas sf\r\nasf asf', '2022-02-09 06:35:21', '2022-02-09 06:35:21'),
(15, 'john', 'devjohnwick8@gmail.com', 'hello testing', 'afsa fas f asf as fas fsa fas f asf as fsa', '2022-02-09 06:38:01', '2022-02-09 06:38:01'),
(16, 'john', 'devjohnwick8@gmail.com', 'hellow World', 'asdasda afs as dfas ds\r\n as das da da', '2022-02-09 23:10:43', '2022-02-09 23:10:43'),
(17, 'john', 'devjohnwick8@gmail.com', 'hello testing', 'asdasf as das das d\r\n asd asd\r\n asdasd as\r\n asd asd asd asd', '2022-02-09 23:18:46', '2022-02-09 23:18:46'),
(18, 'Petyr', 'devpetyr911@gmail.com', 'Product Refund', 'Damage Product Xyz', '2022-02-09 23:38:54', '2022-02-09 23:38:54'),
(19, 'Ria Johnston', 'luxomuqily@mailinator.com', 'Quo officia sequi il', 'Harum vero pariatur', '2022-02-09 23:42:18', '2022-02-09 23:42:18'),
(20, 'Joy Shaw', 'qebepekory@mailinator.com', 'Est possimus fugit', 'Cum ab velit qui quo', '2022-02-10 00:25:06', '2022-02-10 00:25:06'),
(21, 'Victor Valdez', 'quwuwysil@mailinator.com', 'hellow World', 'Beatae sed ab ut eli', '2022-02-10 01:40:55', '2022-02-10 01:40:55'),
(22, 'john', 'devjohnwick8@gmail.com', 'hello testing', 'hadhsa jksadashjkd jkashjkhdasjkhd  jkashdashk', '2022-02-12 05:57:39', '2022-02-12 05:57:39'),
(23, 'john', 'devjohnwick8@gmail.com', 'asd', 'asdas', '2022-02-25 01:55:42', '2022-02-25 01:55:42');

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
(9, 'BUILD YOUR BUSINESS', 'Meet Odis in Your Market', 7500, '<ul class=\"_3-q0m pp-plan-benefits-divider-color _1Np2U\"><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-bottom: 1.5em;\">Enrolled in Business Consultant Program</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Wealth Strategy Consultation</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Connect you to all systems you need to operate</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Access to Weekly Round Up</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Multifamily Financing</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Multifamily Management</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em; padding-bottom: 1.5em;\">Incudes In Person Two Day Business Building Session</span></li><li class=\"pp-plan-benefits-font-desktop\" tabindex=\"2\"><span data-hook=\"pp-plan-benefit\" style=\"padding-top: 1.5em;\">Hands on Consulting “Building Your Business”</span></li></ul>', 1, '2021-06-17 11:14:45', '2021-06-22 06:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login_status` int(11) DEFAULT NULL COMMENT '0 - Without Login ,',
  `membership_id` int(11) DEFAULT NULL,
  `sub_total` varchar(255) DEFAULT NULL,
  `ship_price` varchar(255) DEFAULT NULL,
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

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `first_name`, `email`, `login_status`, `membership_id`, `sub_total`, `ship_price`, `order_total`, `payment_id`, `status`, `billing_id`, `shipping_id`, `reciept_url`, `is_paid`, `created_at`, `updated_at`) VALUES
(39, '8498588639924291', 16, NULL, NULL, NULL, NULL, NULL, NULL, '380', 'ch_3KTFIiFMVKwOeEdh0S1bJ9F0', 0, 43, 43, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KTFIiFMVKwOeEdh0S1bJ9F0/rcpt_L9YPlqfoqxoEDiMDj9XH8KUUsBtEojv', 1, '2022-02-15 06:53:53', '2022-02-15 06:53:53'),
(40, '9706695644519143', 16, NULL, NULL, NULL, NULL, NULL, NULL, '413', 'ch_3KWlffFMVKwOeEdh0t93nhiD', 0, 44, 44, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KWlffFMVKwOeEdh0t93nhiD/rcpt_LDC30wDGYnosdeIsKkQi148k4QjY2C4', 1, '2022-02-25 00:04:09', '2022-02-25 00:04:09'),
(41, '9026187040079681', 16, NULL, NULL, NULL, NULL, '964', '71', '1035', 'ch_3KWnA5FMVKwOeEdh0CLAJRHW', 0, 46, 46, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KWnA5FMVKwOeEdh0CLAJRHW/rcpt_LDDb6ya7LCC8WOr50C747E14FCNFmoj', 1, '2022-02-25 01:39:38', '2022-02-25 01:39:38'),
(42, '7804119362393710', 1, NULL, NULL, NULL, NULL, '380', '71', '451', 'ch_3KYDuSFMVKwOeEdh04pM4eXK', 0, 47, 47, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KYDuSFMVKwOeEdh04pM4eXK/rcpt_LEhJimPMa98xVcIa3dlsO3jH6dgT6lJ', 1, '2022-03-01 00:25:25', '2022-03-01 00:25:25'),
(43, '2880994601132487', 16, NULL, NULL, NULL, NULL, '280', '71', '351', 'ch_3KYER7CikOPtLrlr1nR80WyG', 0, 48, 48, 'https://pay.stripe.com/receipts/acct_1GyKyPCikOPtLrlr/ch_3KYER7CikOPtLrlr1nR80WyG/rcpt_LEhqomYADWKtIVl5aNr0YykbTLY9QyW', 1, '2022-03-01 00:59:09', '2022-03-01 00:59:09'),
(44, '2465646348257527', NULL, 'Vera', 'devjohnwick8@gmail.com', 0, NULL, '380', '71', '451', 'ch_3KZO6NFMVKwOeEdh0IzkathV', 0, 50, 50, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KZO6NFMVKwOeEdh0IzkathV/rcpt_LFtuLP2NDNCmYtxBLl5T2GSVAqh8M9O', 1, '2022-03-04 05:30:32', '2022-03-04 05:30:32'),
(45, '2438864728573590', NULL, 'Kimberly', 'devjohnwick8@gmail.com', 0, NULL, '1140', '104', '1244', 'ch_3KZOZ7FMVKwOeEdh1r7kU8Sy', 0, 51, 51, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KZOZ7FMVKwOeEdh1r7kU8Sy/rcpt_LFuNLiKKzLh2p0EXJDIA0p25xxK23SR', 1, '2022-03-04 06:00:17', '2022-03-04 06:00:17'),
(46, '6200107213887208', 16, 'john', 'devjohnwick8@gmail.com', 1, NULL, '380', '71', '451', 'ch_3KZOewFMVKwOeEdh0RSbPjlX', 0, 52, 52, 'https://pay.stripe.com/receipts/acct_1K5D7xFMVKwOeEdh/ch_3KZOewFMVKwOeEdh0RSbPjlX/rcpt_LFuTDtEYzCGOjPwpUhTamrllgwPkovZ', 1, '2022-03-04 06:06:15', '2022-03-04 06:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
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
(50, 16, 28, '2022-02-15 06:53:53', '2022-02-15 06:53:53', '8498588639924291', 1),
(51, 16, 30, '2022-02-25 00:04:08', '2022-02-25 00:04:08', '9706695644519143', 1),
(52, 16, 28, '2022-02-25 01:39:38', '2022-02-25 01:39:38', '9026187040079681', 2),
(53, 16, 34, '2022-02-25 01:39:38', '2022-02-25 01:39:38', '9026187040079681', 1),
(54, 1, 28, '2022-03-01 00:25:25', '2022-03-01 00:25:25', '7804119362393710', 1),
(55, 16, 31, '2022-03-01 00:59:09', '2022-03-01 00:59:09', '2880994601132487', 1),
(56, NULL, 28, '2022-03-04 05:30:32', '2022-03-04 05:30:32', '2465646348257527', 1),
(57, NULL, 28, '2022-03-04 06:00:17', '2022-03-04 06:00:17', '2438864728573590', 3),
(58, 16, 28, '2022-03-04 06:06:15', '2022-03-04 06:06:15', '6200107213887208', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sub_categories` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `retail_price` decimal(14,2) NOT NULL,
  `our_price` decimal(14,2) NOT NULL,
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
(28, 1, '1963 - 1970 BUICK WILDCAT ALUMINUM DUAL PASS RADIATOR', 'LS Engine Swap', 400.00, 380.00, 'Revved Up', 491, 'CC161', '12', 9, 31, 7, 6, 7, 1, 1, 1, '2022-02-15 04:29:15', '2022-03-07 22:48:21', '2022-02-14 22:29:15'),
(29, 1, '1965 - 1966, 1980 - 1981 PONTIAC CATALINA ALUMINUM DUAL PASS RADIATOR', 'LS Engine Swap', 400.00, 380.00, 'Revved Up', 400, 'CC162', '12', 10, 42, 8, 6, 7, 1, 1, 1, '2022-02-15 04:56:41', '2022-02-15 04:56:41', '2022-02-14 22:56:41'),
(30, 1, '1977 PONTIAC GRAND SAFARI ALUMINUM RADIATOR', '-', 250.00, 210.00, 'Revved Up', 249, 'CC232', '12', 11, 38, 9, 7, 7, 1, 1, 1, '2022-02-15 06:22:34', '2022-02-25 00:04:08', '2022-02-15 00:22:34'),
(31, 1, '1967-1969 FORD FAIRLANE ALUMINUM RADIATOR', '24\" Wide Core - Lower Hose on Driver\'s Side', 300.00, 200.00, 'Revved Up', 399, 'CC379', '12', 12, 30, 10, 8, 7, 1, 1, 1, '2022-02-15 23:33:34', '2022-03-01 00:59:09', '2022-02-15 17:33:34'),
(32, 1, '1968-1970 PLYMOUTH GTX ALUMINUM RADIATOR', '26\" Wide Core - Upper Driver Hose/Lower Passenger Hose', 250.00, 210.00, 'Revved Up', 600, 'CC374B', '12', 13, 29, 11, 8, 7, 1, 1, 1, '2022-02-16 01:01:42', '2022-02-16 01:54:37', '2022-02-15 19:01:42'),
(33, 7, '12 INCH ELECTRIC FAN KIT WITH MOUNTING KIT', '-', 70.00, 55.00, 'Revved Up', 500, 'CCFK12', '12', 14, 82, 12, 9, 8, 1, 1, 1, '2022-02-16 02:00:55', '2022-02-16 02:00:55', '2022-02-15 20:00:55'),
(34, 7, '14 INCH ELECTRIC FAN KIT WITH MOUNTING KIT', '-', 80.00, 60.00, 'Revved Up', 499, 'CCFK14', '12', 15, 82, 12, 9, 8, 1, 1, 1, '2022-02-16 02:07:37', '2022-02-25 01:39:38', '2022-02-15 20:07:37'),
(35, 7, '16 INCH ELECTRIC FAN KIT WITH MOUNTING KIT', '-', 100.00, 80.00, 'Revved Up', 200, 'CCFK16', '12', 16, 82, 12, 9, 8, 1, 1, 1, '2022-02-16 02:35:33', '2022-02-16 02:35:33', '2022-02-15 20:35:33'),
(36, 5, 'FAN RELAY KIT', '-', 90.00, 75.00, 'Revved Up', 400, 'CCFKRL', '12', 17, 82, 12, 9, 8, 1, 1, 1, '2022-02-16 03:11:39', '2022-02-16 07:07:13', '2022-02-15 21:11:39');

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
(74, 28, 'Inlet Fitting', '2022-02-15 04:39:11', '2022-02-15 04:39:11'),
(75, 28, 'Outlet Fitting', '2022-02-15 04:39:24', '2022-02-15 04:39:24'),
(76, 28, 'Upgrade to Fan Package', '2022-02-15 04:39:31', '2022-02-15 04:39:31'),
(77, 28, 'Overflow Tank', '2022-02-15 04:39:36', '2022-02-15 04:39:36'),
(78, 29, 'Inlet Fitting', '2022-02-15 05:06:21', '2022-02-15 05:06:21'),
(79, 29, 'Outlet Fitting', '2022-02-15 05:06:34', '2022-02-15 05:06:34'),
(80, 29, 'Upgrade to Fan Package', '2022-02-15 05:06:45', '2022-02-15 05:06:45'),
(81, 29, 'Overflow Tank', '2022-02-15 05:06:51', '2022-02-15 05:06:51'),
(82, 30, 'Core Row Size', '2022-02-15 06:24:27', '2022-02-16 05:12:31'),
(83, 30, 'Upgrade to Fan Package', '2022-02-15 06:24:39', '2022-02-15 06:24:39'),
(84, 30, 'Coolant Filter', '2022-02-15 06:24:53', '2022-02-15 06:24:53'),
(85, 30, 'Overflow Tank', '2022-02-15 06:25:09', '2022-02-15 06:25:09'),
(86, 31, 'Core Row Size', '2022-02-15 23:36:30', '2022-02-16 04:57:17'),
(87, 31, 'Upgrade to Fan Package', '2022-02-15 23:36:39', '2022-02-15 23:36:39'),
(88, 31, 'Coolant Filter', '2022-02-15 23:36:49', '2022-02-15 23:36:49'),
(89, 31, 'Overflow Tank', '2022-02-15 23:36:54', '2022-02-15 23:36:54'),
(90, 32, 'Core Row Size', '2022-02-16 01:26:12', '2022-02-16 04:58:19'),
(91, 32, 'Upgrade to Fan Package', '2022-02-16 01:26:26', '2022-02-16 01:26:26'),
(92, 32, 'Coolant Filter', '2022-02-16 01:27:16', '2022-02-16 01:27:16'),
(93, 32, 'Overflow Tank', '2022-02-16 01:27:27', '2022-02-16 01:27:27');

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
(7, 'LS Engine Swap', '2022-02-15 04:26:21', '2022-02-15 04:26:21'),
(8, 'ELECTRIC', '2022-02-16 01:58:35', '2022-02-16 01:58:35');

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
(8, '1645030330.png', 29, '2022-02-16 22:52:10', '2022-02-16 22:52:10'),
(9, '1645031018.png', 30, '2022-02-16 23:03:38', '2022-02-16 23:03:38'),
(10, '1645041402.png', 31, '2022-02-17 01:56:42', '2022-02-17 01:56:42'),
(11, '1645041511.png', 32, '2022-02-17 01:58:31', '2022-02-17 01:58:31'),
(12, '1646072370.png', 28, '2022-03-01 00:19:30', '2022-03-01 00:19:30');

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
(93, '16449716460.jpg', 33, '2022-02-16 06:34:06', '2022-02-16 06:34:06'),
(94, '16449716740.jpg', 34, '2022-02-16 06:34:34', '2022-02-16 06:34:34'),
(95, '16449717300.jpg', 35, '2022-02-16 06:35:30', '2022-02-16 06:35:30'),
(96, '16449717301.jpg', 35, '2022-02-16 06:35:30', '2022-02-16 06:35:30'),
(97, '16449717730.jpg', 36, '2022-02-16 06:36:13', '2022-02-16 06:36:13'),
(98, '16449717731.jpg', 36, '2022-02-16 06:36:13', '2022-02-16 06:36:13'),
(99, '16468655570.jpg', 28, '2022-03-10 04:39:17', '2022-03-10 04:39:17'),
(100, '16468655571.jpg', 28, '2022-03-10 04:39:17', '2022-03-10 04:39:17'),
(101, '16468655572.jpg', 28, '2022-03-10 04:39:17', '2022-03-10 04:39:17'),
(102, '16468655573.jpg', 28, '2022-03-10 04:39:17', '2022-03-10 04:39:17'),
(103, '16468655990.jpg', 29, '2022-03-10 04:39:59', '2022-03-10 04:39:59'),
(104, '16468655991.jpg', 29, '2022-03-10 04:39:59', '2022-03-10 04:39:59'),
(105, '16468655992.jpg', 29, '2022-03-10 04:39:59', '2022-03-10 04:39:59'),
(106, '16468655993.jpg', 29, '2022-03-10 04:39:59', '2022-03-10 04:39:59'),
(107, '16468657690.jpg', 30, '2022-03-10 04:42:49', '2022-03-10 04:42:49'),
(108, '16468657691.jpg', 30, '2022-03-10 04:42:49', '2022-03-10 04:42:49'),
(109, '16468657692.jpg', 30, '2022-03-10 04:42:49', '2022-03-10 04:42:49'),
(110, '16468657693.jpg', 30, '2022-03-10 04:42:49', '2022-03-10 04:42:49'),
(111, '16468659880.jpg', 31, '2022-03-10 04:46:28', '2022-03-10 04:46:28'),
(112, '16468659881.jpg', 31, '2022-03-10 04:46:28', '2022-03-10 04:46:28'),
(113, '16468659882.jpg', 31, '2022-03-10 04:46:28', '2022-03-10 04:46:28'),
(114, '16468659883.jpg', 31, '2022-03-10 04:46:28', '2022-03-10 04:46:28'),
(115, '16468660340.jpg', 32, '2022-03-10 04:47:14', '2022-03-10 04:47:14'),
(116, '16468660341.jpg', 32, '2022-03-10 04:47:14', '2022-03-10 04:47:14'),
(117, '16468660342.jpg', 32, '2022-03-10 04:47:14', '2022-03-10 04:47:14'),
(118, '16468660343.jpg', 32, '2022-03-10 04:47:14', '2022-03-10 04:47:14');

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
(9, 'BUICK WILDCAT', '2022-02-15 04:25:16', '2022-02-15 04:25:16'),
(10, 'PONTIAC CATALINA', '2022-02-15 04:49:21', '2022-02-15 04:49:21'),
(11, 'PONTIAC GRAND', '2022-02-15 06:20:11', '2022-02-15 06:20:11'),
(12, 'FORD FAIRLANE', '2022-02-15 23:30:40', '2022-02-15 23:30:40'),
(13, 'PLYMOUTH GTX', '2022-02-16 00:28:31', '2022-02-16 00:28:31'),
(14, '12 INCH ELECTRIC FAN', '2022-02-16 01:57:05', '2022-02-16 02:04:07'),
(15, '14 INCH ELECTRIC', '2022-02-16 02:04:41', '2022-02-16 02:04:41'),
(16, '16 INCH ELECTRIC', '2022-02-16 02:30:10', '2022-02-16 02:30:10'),
(17, 'FAN RELAY KIT', '2022-02-16 03:09:44', '2022-02-16 03:09:44');

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
(7, 'WILDCAT', '2022-02-15 04:25:48', '2022-02-15 04:25:48'),
(8, 'CATALINA', '2022-02-15 04:49:34', '2022-02-15 04:49:34'),
(9, 'GRAND', '2022-02-15 06:20:31', '2022-02-15 06:20:31'),
(10, 'FAIRLANE', '2022-02-15 23:31:01', '2022-02-15 23:31:01'),
(11, 'GTX', '2022-02-16 00:29:04', '2022-02-16 00:29:04'),
(12, 'FAN KIT', '2022-02-16 01:57:21', '2022-02-16 01:57:21');

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
(3, '1 3/4', 0.00, 74, 28, '2022-02-15 04:39:56', '2022-02-15 04:39:56'),
(4, '1 3/4', 0.00, 75, 28, '2022-02-15 04:40:11', '2022-02-15 04:40:11'),
(5, '16 Fan', 79.00, 76, 28, '2022-02-15 04:43:10', '2022-02-15 04:43:10'),
(6, '16 Fan & Relay', 153.00, 76, 28, '2022-02-15 04:43:10', '2022-02-15 04:43:10'),
(7, '(2) 14 Fans', 118.00, 76, 28, '2022-02-15 04:43:10', '2022-02-15 04:43:10'),
(8, '(2) 14 Fans & Relay', 192.00, 76, 28, '2022-02-15 04:43:10', '2022-02-15 04:43:10'),
(9, '(2) 14 Fans w/Shroud', 282.00, 76, 28, '2022-02-15 04:43:10', '2022-02-15 04:43:10'),
(10, '(2) 14 Fans w/Shroud & Relay', 355.00, 76, 28, '2022-02-15 04:43:10', '2022-02-15 04:43:10'),
(11, 'stainless steel 2 x 10', 65.00, 77, 28, '2022-02-15 04:44:08', '2022-02-15 04:44:08'),
(12, 'stainless steel 2 x 13', 65.00, 77, 28, '2022-02-15 04:44:08', '2022-02-15 04:44:08'),
(13, 'stainless steel 3 x 9', 65.00, 77, 28, '2022-02-15 04:44:08', '2022-02-15 04:44:08'),
(14, 'stainless steel 3 x 10', 65.00, 77, 28, '2022-02-15 04:44:08', '2022-02-15 04:44:08'),
(15, 'stainless steel 3 x 16', 65.00, 77, 28, '2022-02-15 04:44:08', '2022-02-15 04:44:08'),
(16, '1 3/4', 0.00, 78, 29, '2022-02-15 05:36:32', '2022-02-15 05:36:32'),
(17, '1 3/4', 0.00, 79, 29, '2022-02-15 05:36:48', '2022-02-15 05:36:48'),
(18, '16 Fan', 79.00, 80, 29, '2022-02-15 05:40:22', '2022-02-15 05:40:22'),
(19, '16 Fan & Relay', 182.00, 80, 29, '2022-02-15 05:40:22', '2022-02-15 05:40:22'),
(20, '(2) 12 Fans', 108.00, 80, 29, '2022-02-15 05:40:22', '2022-02-15 05:40:22'),
(21, '(2) 12 Fans & Relay', 181.00, 80, 29, '2022-02-15 05:40:22', '2022-02-15 05:40:22'),
(22, '(2) 12 Fans w/Shroud', 272.00, 80, 29, '2022-02-15 05:40:22', '2022-02-15 05:40:22'),
(23, '(2) 12 Fans w/Shroud & Relay', 346.00, 80, 29, '2022-02-15 05:40:22', '2022-02-15 05:40:22'),
(24, 'stainless steel 2 x 10', 65.00, 81, 29, '2022-02-15 05:41:14', '2022-02-15 05:41:14'),
(25, 'stainless steel 2 x 13', 65.00, 81, 29, '2022-02-15 05:41:14', '2022-02-15 05:41:14'),
(26, 'stainless steel 3 x 9', 65.00, 81, 29, '2022-02-15 05:41:14', '2022-02-15 05:41:14'),
(27, 'stainless steel 3 x 10', 65.00, 81, 29, '2022-02-15 05:41:14', '2022-02-15 05:41:14'),
(28, 'stainless steel 3 x 16', 65.00, 81, 29, '2022-02-15 05:41:14', '2022-02-15 05:41:14'),
(29, '3 Row', 50.00, 82, 30, '2022-02-15 06:26:54', '2022-02-15 06:26:54'),
(30, '4 Row', 125.00, 82, 30, '2022-02-15 06:26:54', '2022-02-15 06:26:54'),
(31, '16 Fan', 78.00, 83, 30, '2022-02-15 06:31:14', '2022-02-15 06:31:14'),
(32, '16 Fan & Relay', 153.00, 83, 30, '2022-02-15 06:31:14', '2022-02-15 06:31:14'),
(33, '(2) 14 Fan', 117.00, 83, 30, '2022-02-15 06:31:14', '2022-02-15 06:31:14'),
(34, '(2) 14 Fan  & Relay', 191.00, 83, 30, '2022-02-15 06:31:14', '2022-02-15 06:31:14'),
(35, 'Black In-line Filter 1 1/2', 80.00, 84, 30, '2022-02-15 06:36:57', '2022-02-15 06:36:57'),
(36, 'White In-line Filter 1 1/2', 80.00, 84, 30, '2022-02-15 06:36:57', '2022-02-15 06:36:57'),
(37, 'stainless steel 2 x 10', 65.00, 85, 30, '2022-02-15 06:46:23', '2022-02-15 06:46:23'),
(38, 'stainless steel 2 x 13', 65.00, 85, 30, '2022-02-15 06:46:23', '2022-02-15 06:46:23'),
(39, 'stainless steel 3 x 9', 65.00, 85, 30, '2022-02-15 06:46:23', '2022-02-15 06:46:23'),
(40, 'stainless steel 3 x 10', 65.00, 85, 30, '2022-02-15 06:46:23', '2022-02-15 06:46:23'),
(41, 'stainless steel 3 x 16', 65.00, 85, 30, '2022-02-15 06:46:23', '2022-02-15 06:46:23'),
(42, '2 Row', 0.00, 86, 31, '2022-02-15 23:46:33', '2022-02-15 23:46:33'),
(43, '2 Row 1 Tubes w/ Billet Cap', 108.00, 86, 31, '2022-02-15 23:46:33', '2022-02-15 23:46:33'),
(44, '3 Row', 50.00, 86, 31, '2022-02-15 23:46:33', '2022-02-15 23:46:33'),
(45, '3 Row', 125.00, 86, 31, '2022-02-15 23:46:33', '2022-02-15 23:46:33'),
(46, '(2) 12 Fans', 108.00, 87, 31, '2022-02-15 23:49:02', '2022-02-15 23:49:02'),
(47, '(2) 12 Fans & Relay', 181.00, 87, 31, '2022-02-15 23:49:02', '2022-02-15 23:49:02'),
(48, '(2) 12 Fans w/shroud', 271.00, 87, 31, '2022-02-15 23:49:02', '2022-02-15 23:49:02'),
(49, '(2) 12 Fans w/shroud & Relay', 346.00, 87, 31, '2022-02-15 23:49:02', '2022-02-15 23:49:02'),
(50, 'Black In-line Filter 1 1/2', 80.00, 88, 31, '2022-02-15 23:50:25', '2022-02-15 23:50:25'),
(51, 'White In-line Filter 1 1/2', 80.00, 88, 31, '2022-02-15 23:50:25', '2022-02-15 23:50:25'),
(52, 'Stainless steel 2 x 10', 65.00, 89, 31, '2022-02-15 23:52:57', '2022-02-15 23:52:57'),
(53, 'Stainless steel 2 x 13', 65.00, 89, 31, '2022-02-15 23:52:57', '2022-02-15 23:52:57'),
(54, 'Stainless steel 3 x 9', 65.00, 89, 31, '2022-02-15 23:52:57', '2022-02-15 23:52:57'),
(55, 'Stainless steel 3 x 10', 65.00, 89, 31, '2022-02-15 23:52:57', '2022-02-15 23:52:57'),
(56, 'Stainless steel 3 x 16', 65.00, 89, 31, '2022-02-15 23:52:57', '2022-02-15 23:52:57'),
(57, '3 Row', 50.00, 90, 32, '2022-02-16 01:31:04', '2022-02-16 01:31:04'),
(58, '16 Fan', 78.00, 91, 32, '2022-02-16 01:33:35', '2022-02-16 01:33:35'),
(59, '16 Fan & Relay', 153.00, 91, 32, '2022-02-16 01:33:35', '2022-02-16 01:33:35'),
(60, '(12) 12 Fans', 108.00, 91, 32, '2022-02-16 01:33:35', '2022-02-16 01:33:35'),
(61, '(12) 12 Fans & Relay', 182.00, 91, 32, '2022-02-16 01:33:35', '2022-02-16 01:33:35'),
(62, '(12) 12 Fans w/Shroud', 272.00, 91, 32, '2022-02-16 01:33:35', '2022-02-16 01:33:35'),
(63, '(12) 12 Fans w/Shroud & Relay', 345.00, 91, 32, '2022-02-16 01:33:35', '2022-02-16 01:33:35'),
(64, 'Black In-line Filter 1 1/2', 80.00, 92, 32, '2022-02-16 01:51:00', '2022-02-16 01:51:00'),
(65, 'White In-line Filter 1 1/2', 80.00, 92, 32, '2022-02-16 01:51:00', '2022-02-16 01:51:00'),
(66, 'Stainless steel 2 x 10', 65.00, 93, 32, '2022-02-16 01:52:02', '2022-02-16 01:52:02'),
(67, 'Stainless steel 2 x 13', 65.00, 93, 32, '2022-02-16 01:52:03', '2022-02-16 01:52:03'),
(68, 'Stainless steel 3 x 9', 65.00, 93, 32, '2022-02-16 01:52:03', '2022-02-16 01:52:03'),
(69, 'Stainless steel 3 x 10', 65.00, 93, 32, '2022-02-16 01:52:03', '2022-02-16 01:52:03'),
(70, 'Stainless steel 3 x 16', 65.00, 93, 32, '2022-02-16 01:52:03', '2022-02-16 01:52:03');

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
(6, '1644878008.PNG', 28, '2022-02-15 04:33:28', '2022-02-15 04:33:28'),
(7, '1644879603.PNG', 29, '2022-02-15 05:00:03', '2022-02-15 05:05:06'),
(8, '1644884613.PNG', 30, '2022-02-15 06:23:33', '2022-02-15 06:23:33'),
(9, '1644946546.PNG', 31, '2022-02-15 23:35:46', '2022-02-15 23:35:46'),
(10, '1644951830.PNG', 32, '2022-02-16 01:03:50', '2022-02-16 01:03:50'),
(11, '1644959703.PNG', 33, '2022-02-16 02:14:36', '2022-02-16 03:15:03'),
(12, '1644959732.PNG', 34, '2022-02-16 02:14:48', '2022-02-16 03:15:32'),
(13, '1644959758.PNG', 35, '2022-02-16 02:35:59', '2022-02-16 03:15:58');

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
(6, 'ALUMINUM DUAL PASS', '2022-02-15 04:26:03', '2022-02-15 04:26:03'),
(7, 'SAFARI ALUMINUM', '2022-02-15 06:20:49', '2022-02-15 06:20:49'),
(8, 'ALUMINUM', '2022-02-15 23:31:15', '2022-02-15 23:31:15'),
(9, 'MOUNTING KIT', '2022-02-16 01:57:52', '2022-02-16 01:57:52');

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
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(11) NOT NULL,
  `claim` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `discription` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `description` text,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `images`, `description`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Real Estate Invester', '1631309065.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent viverra, nisl a consectetur aliquam, velit mauris mollis ipsum, ac tristique ligula ex nec lorem. Fusce pellentesque elit fringilla mauris dapibus, sagittis convallis purus ultricies. Nullam non libero nec tortor gravida volutpat consequat sed nisl.', 1, '2021-06-16 18:34:42', '2021-09-10 16:24:25');

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
  `type_address` int(11) DEFAULT NULL COMMENT '0 - residentual\r\n1 - Business ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `shipping_address`, `business`, `city`, `state`, `zip_code`, `phone`, `type_address`, `created_at`, `updated_at`) VALUES
(5, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 1, '2022-01-18 06:03:45', '2022-01-18 06:03:45'),
(6, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 0, '2022-01-18 06:35:10', '2022-01-18 06:35:10'),
(7, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 0, '2022-01-18 06:38:34', '2022-01-18 06:38:34'),
(8, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 0, '2022-01-18 06:41:15', '2022-01-18 06:41:15'),
(9, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 0, '2022-01-18 06:42:13', '2022-01-18 06:42:13'),
(10, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 0, '2022-01-18 06:44:00', '2022-01-18 06:44:00'),
(11, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 1, '2022-01-18 06:46:04', '2022-01-18 06:46:04'),
(12, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 1, '2022-01-18 06:46:52', '2022-01-18 06:46:52'),
(13, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 1, '2022-01-18 06:48:40', '2022-01-18 06:48:40'),
(14, 16, 'address11', 'address21', 'city1', 'state1', 1234561, '+311406615531', 1, '2022-01-18 06:57:12', '2022-01-18 06:57:12'),
(15, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 1, '2022-01-18 07:00:16', '2022-01-18 07:00:16'),
(16, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 1, '2022-01-18 07:02:02', '2022-01-18 07:02:02'),
(17, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 1, '2022-01-18 07:04:08', '2022-01-18 07:04:08'),
(18, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 1, '2022-01-18 07:05:21', '2022-01-18 07:05:21'),
(19, 16, 'address1', 'address2', 'city', 'state', 123456, '+311406615531', 1, '2022-01-18 07:07:35', '2022-01-18 07:07:35'),
(20, 17, 'address1', 'address2', 'city', 'state', 1234561, '16479643828', 1, '2022-01-19 02:38:07', '2022-01-19 02:38:07'),
(21, 1, 'vagyfunaxo@mailinator.com', 'hibavanoba@mailinator.com', 'jurocymody@mailinator.com', 'Dolore nihil id ull', 96116, 'susuto@mailinator.com', 1, '2022-01-19 09:03:34', '2022-01-19 09:03:34'),
(22, 1, 'lajydyg@mailinator.com', 'naby@mailinator.com', 'qewu@mailinator.com', 'Doloribus pariatur', 13490, 'nuqyh@mailinator.com', 1, '2022-01-20 23:49:27', '2022-01-20 23:49:27'),
(23, 1, 'cajowagij', 'hacedej', 'xyxuq', 'Voluptas', 77173, '56456', 0, '2022-01-22 02:26:20', '2022-01-22 02:26:20'),
(24, 1, 'birys@mailinator.com', 'mozeve@mailinator.com', 'poqobasa@mailinator.com', 'Pariatur Ea dolor e', 79329, 'mylesy@mailinator.com', 0, '2022-01-22 05:15:39', '2022-01-22 05:15:39'),
(25, 1, 'dajifa@mailinator.com', 'gadizib@mailinator.com', 'kuwa@mailinator.com', 'Aut earum odio et qu', 53243, 'kukulymex@mailinator.com', 1, '2022-01-26 06:38:30', '2022-01-26 06:38:30'),
(26, 16, 'penyrazyb@mailinator.com', 'defamymyly@mailinator.com', 'susohij@mailinator.com', 'Id odit laborum lab', 63703, 'funoso@mailinator.com', 1, '2022-01-27 03:44:19', '2022-01-27 03:44:19'),
(27, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-01-29 04:06:51', '2022-01-29 04:06:51'),
(28, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-01-29 04:07:43', '2022-01-29 04:07:43'),
(29, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-01-29 04:10:44', '2022-01-29 04:10:44'),
(30, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 0, '2022-01-29 04:14:09', '2022-01-29 04:14:09'),
(31, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-01-29 04:18:42', '2022-01-29 04:18:42'),
(32, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-01-29 04:19:43', '2022-01-29 04:19:43'),
(33, 19, 'Athena', 'Erich', 'Jillian', 'Gisela', 54583, '37053', 0, '2022-02-09 03:55:28', '2022-02-09 03:55:28'),
(34, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-10 04:11:01', '2022-02-10 04:11:01'),
(35, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-10 23:03:26', '2022-02-10 23:03:26'),
(36, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-12 03:34:41', '2022-02-12 03:34:41'),
(37, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-12 03:47:34', '2022-02-12 03:47:34'),
(38, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-12 03:56:16', '2022-02-12 03:56:16'),
(39, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-12 04:17:49', '2022-02-12 04:17:49'),
(40, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-12 04:22:06', '2022-02-12 04:22:06'),
(41, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-12 05:55:56', '2022-02-12 05:55:56'),
(42, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-13 21:50:33', '2022-02-13 21:50:33'),
(43, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-15 06:53:53', '2022-02-15 06:53:53'),
(44, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 1, '2022-02-25 00:04:08', '2022-02-25 00:04:08'),
(45, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 0, '2022-02-25 01:17:32', '2022-02-25 01:17:32'),
(46, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 0, '2022-02-25 01:39:38', '2022-02-25 01:39:38'),
(47, 1, 'faxebu', 'bokukom', 'ryvifu@mailina', 'vapydoho', 22674, '93', 0, '2022-03-01 00:25:25', '2022-03-01 00:25:25'),
(48, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 0, '2022-03-01 00:59:09', '2022-03-01 00:59:09'),
(49, NULL, 'caro@mailinator.com', 'hovaly@mailinator.com', 'xobidis@mailinator.com', 'bucu@mailinator.com', 84397, '24', 1, '2022-03-04 05:23:08', '2022-03-04 05:23:08'),
(50, NULL, 'caro@mailinator.com', 'hovaly@mailinator.com', 'xobidis@mailinator.com', 'bucu@mailinator.com', 84397, '24', 1, '2022-03-04 05:30:32', '2022-03-04 05:30:32'),
(51, NULL, 'ruxyresuze@mailinator.com', 'fuqexezy@mailinator.com', 'nadufyr@mailinator.com', 'mikuc@mailinator.com', 19423, '10', 1, '2022-03-04 06:00:17', '2022-03-04 06:00:17'),
(52, 16, 'address1', 'address2', 'city', 'state', 123456, '1234567', 0, '2022-03-04 06:06:15', '2022-03-04 06:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `spec_head` varchar(255) DEFAULT NULL,
  `spec_detail` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `vendor` int(11) DEFAULT NULL COMMENT '0 = vendor 1 , 1 = vendor 2',
  `parent_category` int(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `title`, `vendor`, `parent_category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Radiator', 0, 1, 1, '2021-09-10 18:42:57', '2021-09-10 18:48:23'),
(5, 'Fan Relay Kits', 1, 1, 1, '2022-02-10 05:01:47', '2022-02-10 05:01:47'),
(6, 'Overflow Tanks and External Transmission Cooler', 1, 1, 1, '2022-02-10 05:02:52', '2022-02-10 05:02:52'),
(7, 'Electric Fans', 1, 1, 1, '2022-02-10 05:03:36', '2022-02-10 05:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `description` text,
  `images` varchar(55) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `designation` varchar(55) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(16, 'john', 'wick', 'address1', 'address2', 'city', 'state', '123456', '1234567', '1234567', 'GOOGLE', 'devjohnwick8@gmail.com', NULL, NULL, '$2y$10$bQ6MvTvlsmZSMtPm4qrg9OTxBF4Xi1dHy9QfPkcE1DMHxmXxz0HdO', 2, NULL, '2022-01-14 02:37:02', '2022-01-25 05:49:25'),
(17, 'hello', 'helloway', 'address1', 'address2', 'city', 'state', '1234561', '16479643828', '123456', 'EBAY_LIST', 'john@mail.com', NULL, NULL, '$2y$10$df58k4lXumMWgz66AvO2HOcOaJgLoEbBYcPGv4PfkC0KDqLsN1y2e', 2, 0, '2022-01-19 01:34:51', '2022-01-19 01:34:51'),
(18, 'Mageehghghghg', 'Kelsie', 'Tyler', 'Damian', 'Yuri', 'Candace', '59201', '60600', 'Scarlet', 'YELLOWPAGES', 'riqony@mailinator.com', NULL, NULL, '$2y$10$MPOJchY2Py4k8K/v7K6R7uZbmyH9vPuLharqjaQ3iFYYfb4TiMHW.', 2, 0, '2022-01-19 09:20:26', '2022-01-19 09:20:26'),
(19, 'Stephen', 'Timon', 'Athena', 'Erich', 'Jillian', 'Gisela', '54583', '37053', 'Oscar', 'YELLOWPAGES', 'devjohnwick8@gmail.com', NULL, NULL, '$2y$10$ntuM4XwIkHgG0JTp988YGOoJwPBPBehwmIL41/uTVv0V4vlJg7MMS', 2, 1, '2022-02-09 02:06:18', '2022-02-09 03:57:25'),
(20, 'Kenneth', 'Karyn', 'Callie', 'Nero', 'Vivien', 'Quinn', '71221', '31108', 'Xenos', 'GOOGLE', 'lulujagi@mailinator.com', NULL, NULL, '$2y$10$4yu65EoBi0Rcqew4B8Xb4.yTTUK6FzLcXaQcR/zQb8HYy7IWLmQrW', 2, 0, '2022-02-12 07:43:37', '2022-02-12 07:43:37'),
(21, 'April', 'Caryn', 'Vielka', 'Rosalyn', 'Chancellor', 'Juliet', '72076', '44598', 'Rhea', 'YAHOO', 'cysi@mailinator.com', NULL, NULL, '$2y$10$mUxRR.yLJwS6pgijkkUYr.5fEPirUOwkdo6HGfLUuiwhHkkxq2jza', 2, 0, '2022-02-12 07:43:44', '2022-02-12 07:43:44'),
(22, 'Felicia', 'Dawn', 'Ainsley', 'Octavius', 'Bianca', 'Yolanda', '35118', '54306', 'Candice', 'OTHER', 'pohebiq@mailinator.com', NULL, NULL, '$2y$10$cL2CPx3Y9qg.jgGMwwDBuOxEbQ/yur.Xk2Eb4FwabfOE/xY0quQ7e', 2, 0, '2022-02-12 07:48:43', '2022-02-12 07:48:43'),
(23, 'hye bye dye bye', 'hello', 'gsadhjg', 'hsajkhdjkash', 'dhsajkhdjks', 'dsajhdj', '54461', '4564564', '54564', 'AOL_LIST', 'martin@mail.com', NULL, NULL, '$2y$10$ZFbPbGlGetW3AcnX3phzte1m7D4aVUKm7eMiDipFEC4rcdebuUN12', 2, NULL, '2022-02-13 20:02:05', '2022-02-13 20:03:20'),
(24, 'Gary', 'Williams', '8617 Spicewood Springs Rd,', 'Austin Tx', 'Austin', 'TX', '78759', '1234567890', '00', 'GOOGLE', 'gary.williams@elitedesignhub.com', NULL, NULL, '$2y$10$o5TOevyhIXBVxfjLizOXZ.ZPsn.nuMRsZ.7Lwha75QXDtZQ830vtS', 2, 1, '2022-02-25 03:41:37', '2022-02-25 03:41:37'),
(25, 'Robert', 'Cardona', '212 bulkhead ave', 'BULKHEAD AVE', 'Manahawkin', 'New Jersey', '08050', '6093840213', '122³3', 'GOOGLE', 'Revvedupautoparts@gmail.com', NULL, NULL, '$2y$10$.u645FBBRw8mC7zKh6naOugl0sl7493VqYueiNqH5jI3q7nxaguF.', 2, 1, '2022-02-25 03:48:26', '2022-02-25 03:48:26'),
(26, 'john', 'doe', '111 john doe st', 'john doe', 'john doe', 'tn', '08021', '6093840213', '12345687410', 'GOOGLE', 'johndoe@gmail.com', NULL, NULL, '$2y$10$j/AUf2Eh1u11kqzhA3528OnN0BzFHe4hTMW.iggu3FJAcywfmYGS.', 2, 1, '2022-03-01 03:49:57', '2022-03-01 03:49:57'),
(27, 'REVVEDUPAUTOPARTS@GMAIL.COM', 'doyle', '4856 ARENDELL ST.', 'Lot 4', 'MOREHEAD CITY', 'North Carolina', '28557', '2526261179', '1234562', 'GOOGLE', 'sonofligh1984@gmail.com', NULL, NULL, '$2y$10$m5jI8mVNLQfFujUZDJpqd.RUXkoVJmIZvMc.IV0KTqei4GpwEMpxS', 2, 1, '2022-03-02 04:57:13', '2022-03-02 04:57:13');

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
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
  ADD KEY `user_id` (`user_id`),
  ADD KEY `billing_id` (`billing_id`),
  ADD KEY `shipping_id` (`shipping_id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user_id`),
  ADD KEY `product` (`product_id`);

--
-- Indexes for table `part_not_founds`
--
ALTER TABLE `part_not_founds`
  ADD PRIMARY KEY (`id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_core` (`product_id`);

--
-- Indexes for table `product_engine`
--
ALTER TABLE `product_engine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_fitments`
--
ALTER TABLE `product_fitments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_fitment` (`product_id`);

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
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specification` (`product_id`);

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
-- Indexes for table `returns`
--
ALTER TABLE `returns`
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
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proid` (`product_id`);

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
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `part_not_founds`
--
ALTER TABLE `part_not_founds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_availables`
--
ALTER TABLE `product_availables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `product_engine`
--
ALTER TABLE `product_engine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_fitments`
--
ALTER TABLE `product_fitments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `product_make`
--
ALTER TABLE `product_make`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_model`
--
ALTER TABLE `product_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_options`
--
ALTER TABLE `product_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_submodel`
--
ALTER TABLE `product_submodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_year`
--
ALTER TABLE `product_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billings`
--
ALTER TABLE `billings`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `billing_id` FOREIGN KEY (`billing_id`) REFERENCES `billings` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `shipping_id` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`);

--
-- Constraints for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `part_not_founds`
--
ALTER TABLE `part_not_founds`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `product_availables`
--
ALTER TABLE `product_availables`
  ADD CONSTRAINT `prod_core` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_fitments`
--
ALTER TABLE `product_fitments`
  ADD CONSTRAINT `product_fitment` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD CONSTRAINT `product_specific` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `proid` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`parent_category`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
