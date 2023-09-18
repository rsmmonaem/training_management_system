-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 18, 2023 at 11:16 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainee_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE IF NOT EXISTS `admin_user` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass_word` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_type` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`u_id`, `user_id`, `user_name`, `full_name`, `pass_word`, `user_type`, `status`, `update_date`) VALUES
(1, 'admin', 'admin', 'Super Admin', 'admin', 'super_admin', 'ENABLE', '2024-10-15 00:00:00'),
(129, '4444', 'deo_admin', 'Rsm Monaem', '123', 'deo_admin', 'ENABLE', '0000-00-00 00:00:00'),
(130, '275182', 'int_admin', 'Jubo Unnon Odidoptor Ullapara', '123', 'institute_admin', 'ENABLE', '0000-00-00 00:00:00'),
(131, '2', '924987', 'Rsm Monaem', '817549', 'trainee', 'ENABLE', '0000-00-00 00:00:00'),
(133, '', '123456', 'durjay ghosh', 'admin', '', 'ENABLE', '0000-00-00 00:00:00'),
(135, '', 'dopavo', 'lezyruwecu', 'rupiz', 'super_admin', 'ENABLE', '0000-00-00 00:00:00'),
(136, '', 'siqosij', 'Monaem', 'admin', 'super_admin', 'ENABLE', '0000-00-00 00:00:00'),
(137, '', '123456', 'durjay ghosh', 'admin', 'deo_admin', 'ENABLE', '0000-00-00 00:00:00'),
(138, '515900', '019', 'SEO BD', '842876', 'institute_admin', 'ENABLE', '0000-00-00 00:00:00'),
(139, '340195', '01721620', 'Bogura Self Made Training Institute', '648652', 'institute_admin', 'ENABLE', '0000-00-00 00:00:00'),
(140, '', '692289', 'Breanna White', '745147', 'trainee', 'ENABLE', '0000-00-00 00:00:00'),
(141, '', '856245', 'Nathan Atkins', '362942', 'trainee', 'ENABLE', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `birth_chack`
--

DROP TABLE IF EXISTS `birth_chack`;
CREATE TABLE IF NOT EXISTS `birth_chack` (
  `birth_chack_id` int NOT NULL AUTO_INCREMENT,
  `birth_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`birth_chack_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `birth_chack`
--

INSERT INTO `birth_chack` (`birth_chack_id`, `birth_id`) VALUES
(1, '12345678'),
(2, '5555');

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

DROP TABLE IF EXISTS `contact_message`;
CREATE TABLE IF NOT EXISTS `contact_message` (
  `ctm_id` int NOT NULL AUTO_INCREMENT,
  `ctm_name` varchar(400) NOT NULL,
  `ctm_email` varchar(255) NOT NULL,
  `ctm_subject` varchar(400) NOT NULL,
  `ctm_description` text NOT NULL,
  `ctm_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`ctm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`ctm_id`, `ctm_name`, `ctm_email`, `ctm_subject`, `ctm_description`, `ctm_date`) VALUES
(1, 'Ila Lott', 'qohewufij@mailinator.com', 'Sapiente ab reprehen', 'Qui quod aliquam nih', '2023-07-11 09:36:59.507932'),
(2, 'Knox Delgado', 'fumahapa@mailinator.com', 'Possimus animi ali', 'Commodi amet aut ea', '2023-07-11 09:36:59.507932'),
(3, 'Veda Bryan', 'kavepiqad@mailinator.com', 'Sed libero ut perfer', 'Beatae sunt eu volup', '2023-07-11 09:36:59.507932'),
(4, 'Halla Hull', 'fenukasug@mailinator.com', 'Officia dolor odio l', 'Reiciendis iusto per', '2023-07-11 09:36:59.507932'),
(5, 'Scarlett Bird', 'hysusixy@mailinator.com', 'Dolor totam suscipit', 'In odit est est dese', '2023-07-11 09:36:59.507932'),
(6, 'Austin Dudley', 'jyhitaruge@mailinator.com', 'Quidem quidem modi q', 'Tenetur aspernatur p', '2023-07-11 09:36:59.507932'),
(7, 'Daria Melendez', 'tenomypa@mailinator.com', 'Temporibus suscipit ', 'Odit id quibusdam do', '2023-07-11 09:36:59.507932'),
(8, 'Durjay Ghosh ', 'email.com@gmm.com', 'Ddddhhdjfhfhf', 'Cbfhfhcbfbhxc cc ya fg hi ICICI do tx go into it XXL hi ggg', '2023-07-11 09:36:59.507932'),
(9, 'Ulric Hayden', 'fini@mailinator.com', 'Ex mollitia ratione ', 'Eius pariatur Conse', '2023-07-11 09:36:59.507932'),
(10, 'Alisa Bonner', 'rohyhifi@mailinator.com', 'Et tempore non quis', 'Sapiente quaerat eos', '2023-07-11 09:36:59.507932'),
(11, 'Mollie Fisher', 'qozin@mailinator.com', 'Et eu qui molestiae ', 'Nihil laboris ea bla', '2023-07-11 09:36:59.507932');

-- --------------------------------------------------------

--
-- Table structure for table `contact_page`
--

DROP TABLE IF EXISTS `contact_page`;
CREATE TABLE IF NOT EXISTS `contact_page` (
  `con_id` int NOT NULL AUTO_INCREMENT,
  `con_title` text NOT NULL,
  `con_facebook` text NOT NULL,
  `con_instagram` text NOT NULL,
  `con_twitter` text NOT NULL,
  `con_youtube` text NOT NULL,
  `con_google` text NOT NULL,
  `con_email` text NOT NULL,
  `con_phone` text NOT NULL,
  `con_address` text NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_page`
--

INSERT INTO `contact_page` (`con_id`, `con_title`, `con_facebook`, `con_instagram`, `con_twitter`, `con_youtube`, `con_google`, `con_email`, `con_phone`, `con_address`) VALUES
(1, 'যোগাযোগ করুন', 'https://facebook.com', 'https://instagram.com', 'https://twitter.com', 'https://youtube.com', 'https://google.com/', 'defenedap@mailinator.com', '123456789', 'Rerum ipsum autem ne');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `inst_rel_id` int NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `dept_code` varchar(255) NOT NULL,
  `dept_image` text NOT NULL,
  `dept_info` text NOT NULL,
  `inst_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dept_status` text NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `inst_rel_id`, `dept_name`, `dept_code`, `dept_image`, `dept_info`, `inst_name`, `dept_status`) VALUES
(1, 38, 'WEB RTC', 'WEB_RTC', 'fKIL4ndqgc.jpg', 'Natus provident dol', 'SEO BD', 'Running'),
(2, 41, 'Laravel', 'Mohammad Luna', 'Jr38hlGbLO.jpg', 'Eaque maiores lorem ', 'Jubo Unnon Odidoptor Ullapara', 'Running'),
(3, 41, 'Mysqli', 'Minus doloremque ape', 'HBmtOK1nY9.jpg', 'Consequatur laudant', 'Jubo Unnon Odidoptor Ullapara', 'Running'),
(41, 38, 'php', 'WEB_RTC', 'fKIL4ndqgc.jpg', 'Natus provident dol', 'SEO BD', 'Running');

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

DROP TABLE IF EXISTS `institute`;
CREATE TABLE IF NOT EXISTS `institute` (
  `inst_id` int NOT NULL AUTO_INCREMENT,
  `department_rel_id` int NOT NULL,
  `inst_user_id` int NOT NULL,
  `inst_eiin` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `inst_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `inst_founded` date NOT NULL,
  `inst_board` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `inst_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `inst_contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`inst_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`inst_id`, `department_rel_id`, `inst_user_id`, `inst_eiin`, `inst_name`, `inst_founded`, `inst_board`, `inst_logo`, `inst_contact`) VALUES
(38, 44, 275182, 'Qui expedita fugiat', 'Jubo Unnon Odidoptor Ullapara', '2001-10-31', 'Tempor in magnam ame', 'BWLFAvpdEq.jpg', '123'),
(39, 18, 818210, '546456', 'Joshua Skinner ss', '2024-07-26', 'BTEB', 'vQDsyX7YJm.jpg', '123456'),
(40, 18, 515900, '70', 'SEO BD', '2006-09-05', 'Islam', 'BUfmj8k2Pc.jpg', '019'),
(41, 0, 340195, '1504', 'Bogura Self Made Training Institute', '2015-08-02', 'Islam', 'FfZlTn567S.jpg', '01721620');

-- --------------------------------------------------------

--
-- Table structure for table `measure`
--

DROP TABLE IF EXISTS `measure`;
CREATE TABLE IF NOT EXISTS `measure` (
  `msr_id` int NOT NULL AUTO_INCREMENT,
  `measure_name` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `measure_code` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `procat_id` int DEFAULT NULL,
  `pro_cat_name` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`msr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `measure`
--

INSERT INTO `measure` (`msr_id`, `measure_name`, `measure_code`, `procat_id`, `pro_cat_name`) VALUES
(7, 'Packet', 'MSR-475', NULL, NULL),
(8, 'Gram', 'MSR-993', NULL, NULL),
(9, 'KG', 'MSR-376', NULL, NULL),
(10, 'Piece', 'MSR-109', NULL, NULL),
(11, 'ML', 'MSR-815', NULL, NULL),
(13, 'Litter', 'MSR-489', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `news_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `news_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_description`, `news_image`) VALUES
(14, 'সরবরাহকৃত তথ্যের বিবরণ বার্ষিক ক্রয় পরিকল্পনা', '<p>dfdfdf </p>', 'yUABmt9k6d.jpg'),
(5, 'সেবা প্রদান প্রতিশ্রুতি (সিটিজেন চার্টার)', 'Voluptas eaque conse', 'ru3Jm7ldFx.jpg'),
(15, 'জেলা পর্যায়ের বার্ষিক উদ্ভাবন পরিকল্পনা ২০২২-২০২৩', '<p>জেলা পর্যায়ের বার্ষিক উদ্ভাবন পরিকল্পনা ২০২২-২০২৩<br></p>', 'eBWLmSrkpQ.jpg'),
(18, 'ডিজিটাল বাংলাদেশ থেকে স্মার্ট বাংলাদেশ এর অভিযাত্রা	', 'ডিজিটাল বাংলাদেশ থেকে স্মার্ট বাংলাদেশ এর অভিযাত্রা	ডিজিটাল বাংলাদেশ থেকে স্মার্ট বাংলাদেশ এর অভিযাত্রা	ডিজিটাল বাংলাদেশ থেকে স্মার্ট বাংলাদেশ এর অভিযাত্রা	ডিজিটাল বাংলাদেশ থেকে স্মার্ট বাংলাদেশ এর অভিযাত্রা	ডিজিটাল বাংলাদেশ থেকে স্মার্ট বাংলাদেশ এর অভিযাত্রা	', '2qNAriCT9D.jpg'),
(19, 'স্মার্ট বাংলাদেশ\n', 'স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ স্মার্ট বাংলাদেশ ', 'eBWLmSrkpQ.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nid_test`
--

DROP TABLE IF EXISTS `nid_test`;
CREATE TABLE IF NOT EXISTS `nid_test` (
  `nid_id` int NOT NULL AUTO_INCREMENT,
  `nid_name` varchar(255) NOT NULL,
  `nid_number` varchar(255) NOT NULL,
  `nid_dob` varchar(255) NOT NULL,
  PRIMARY KEY (`nid_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `not_id` int NOT NULL AUTO_INCREMENT,
  `not_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `not_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `not_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `not_thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`not_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`not_id`, `not_title`, `not_category`, `not_description`, `not_thumbnail`) VALUES
(4, ' ভূমিসেবা সপ্তাহ-২০২৩ (২২-২৮ মে) সংক্রান্ত', 'Voluptatum doloremqu', 'hlw', 'O6xW7wlpJH.jpg'),
(3, ' অফিস আদেশ (জনাব উজ্জ্বল কুমার ঘোষ(১৬৪৩২)(উপসচিব), অতিরিক্ত জেলা প্রশাসক(রাজস্ব), বগুড়াকে অবমুক্তকরণ সংক্রান্ত)', 'Reprehenderit porro', 'অফিস আদেশ (জনাব উজ্জ্বল কুমার ঘোষ(১৬৪৩২)(উপসচিব), অতিরিক্ত জেলা প্রশাসক(রাজস্ব), বগুড়াকে অবমুক্তকরণ সংক্রান্ত)\nঅফিস আদেশ (জনাব উজ্জ্বল কুমার ঘোষ(১৬৪৩২)(উপসচিব), অতিরিক্ত জেলা প্রশাসক(রাজস্ব), বগুড়াকে অবমুক্তকরণ সংক্রান্ত)\nঅফিস আদেশ (জনাব উজ্জ্বল কুমার ঘোষ(১৬৪৩২)(উপসচিব), অতিরিক্ত জেলা প্রশাসক(রাজস্ব), বগুড়াকে অবমুক্তকরণ সংক্রান্ত)\nঅফিস আদেশ (জনাব উজ্জ্বল কুমার ঘোষ(১৬৪৩২)(উপসচিব), অতিরিক্ত জেলা প্রশাসক(রাজস্ব), বগুড়াকে অবমুক্তকরণ সংক্রান্ত)\nঅফিস আদেশ (জনাব উজ্জ্বল কুমার ঘোষ(১৬৪৩২)(উপসচিব), অতিরিক্ত জেলা প্রশাসক(রাজস্ব), বগুড়াকে অবমুক্তকরণ সংক্রান্ত)\nঅফিস আদেশ (জনাব উজ্জ্বল কুমার ঘোষ(১৬৪৩২)(উপসচিব), অতিরিক্ত জেলা প্রশাসক(রাজস্ব), বগুড়াকে অবমুক্তকরণ সংক্রান্ত)\nঅফিস আদেশ (জনাব উজ্জ্বল কুমার ঘোষ(১৬৪৩২)(উপসচিব), অতিরিক্ত জেলা প্রশাসক(রাজস্ব), বগুড়াকে অবমুক্তকরণ সংক্রান্ত)\nঅফিস আদেশ (জনাব উজ্জ্বল কুমার ঘোষ(১৬৪৩২)(উপসচিব), অতিরিক্ত জেলা প্রশাসক(রাজস্ব), বগুড়াকে অবমুক্তকরণ সংক্রান্ত)\nঅফিস আদেশ (জনাব উজ্জ্বল কুমার ঘোষ(১৬৪৩২)(উপসচিব), অতিরিক্ত জেলা প্রশাসক(রাজস্ব), বগুড়াকে অবমুক্তকরণ সংক্রান্ত)\n', 'asnPCr4KcM.jpg'),
(5, ' জনাব মোঃ মাসুদ প্রামানিক, অফিস সহায়ক, জেলা প্রশাসকের কার্যালয়, বগুড়া এর (বহি: বাংলাদেশ) ছুটি সংক্রান্ত অফিস আদেশ', 'Debitis expedita con', '                                                                        Commodo ea ea quam e                                                                ', 'QcrokDT1EW.jpg'),
(7, 'শেখ রাসেল পদক ২০২৩ এর জন্য আবেদন আহবান।', 'Impedit pariatur V', '                                                                                   \r\n                                          fsfsdfsdf                                ', 'tiP8nDLGV7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `objections`
--

DROP TABLE IF EXISTS `objections`;
CREATE TABLE IF NOT EXISTS `objections` (
  `obj_id` int NOT NULL AUTO_INCREMENT,
  `obj_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `obj_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `obj_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `obj_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`obj_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `objections`
--

INSERT INTO `objections` (`obj_id`, `obj_title`, `obj_category`, `obj_description`, `obj_image`) VALUES
(3, 'Dignissimos aliquid ', 'Pariatur Maiores no444', 'Amet voluptatem hic', 'srEog2Rb3f.jpg'),
(2, 'Dignissimos aliquid ', 'Pariatur Maiores no', 'Amet voluptatem hic', 'Juw1WCEHnN.jpg'),
(4, 'Optio sunt ipsa it', 'Rerum architecto imp444', 'Nostrud velit ea cup', 'Js4kgVIpv3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `pages_id` int NOT NULL AUTO_INCREMENT,
  `pages_title` varchar(3000) NOT NULL,
  `pages_image` text NOT NULL,
  `pages_description` longtext NOT NULL,
  `create_at` date NOT NULL,
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pages_id`, `pages_title`, `pages_image`, `pages_description`, `create_at`) VALUES
(1, 'আমাদের সম্পর্কে', 'gai8E7lzSv.jpg', '<p>অ্যাডপিসিং প্রক্রিয়ার দিকে মনোযোগ দেওয়া গ্রাহকের জন্য খুবই গুরুত্বপূর্ণ। আমি দরজা খুলব, আমি চাটুকারে তার যন্ত্রণা ব্যাখ্যা করব, এবং কেউ জিজ্ঞাসা করবে না যেন সে দোষী! যাইহোক, অপরাধবোধের যন্ত্রণা এই ফাইন্ডিং ফ্লাইট মহান, ছোট প্রয়োজন, পরিত্রাণ পেতে, আমরা কি গ্রহণ করতে অস্বীকার করতে পারি? কিন্তু সত্যের সত্যতা কী? আমরা তাকে আনন্দের দ্বারা আবদ্ধ হওয়ার অভিযোগ করি। অ্যাডপিসিং প্রক্রিয়ার দিকে মনোযোগ দেওয়া গ্রাহকের জন্য খুবই গুরুত্বপূর্ণ। যাইহোক, নির্বাচিত ত্রুটিটি প্রত্যাখ্যান করার জন্য একটি দুর্দান্ত বিনামূল্যে উপহার হিসাবে পরিণত হবে। অভিযুক্তদের পরিণতি, তার প্রশিক্ষণের বেদনা দ্বারা নির্বাচিত, এই এক আমাদের অধিকাংশ পলায়ন যাক, আমরা যে কেউ কর্তব্য করতে পারেন না, কারণ কেউ প্রায়ই কোন নেই! বেদনা নিতে এবং তোষামোদ করার জন্য, যে কোনো কারণে যারা তার প্রশংসা করে তাদের প্রয়োজনে সে দ্রুত পালিয়ে যায়। খুব</p>', '2023-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(255) NOT NULL,
  `slider_image` text NOT NULL,
  `slider_description` longtext NOT NULL,
  `slider_category` varchar(255) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_title`, `slider_image`, `slider_description`, `slider_category`) VALUES
(2, 'Nostrud tempor at to update', 'o4rk5XmB9A.jpg', 'Perspiciatis verita', 'In excepteur tempore'),
(18, 'At debitis architect', '7rqHDAh6dX.jpg', 'Distinctio Non omni', 'Ab nihil amet a qua'),
(15, 'Cumque ratione eaque', 'yG06RKHpkL.jpg', 'Doloribus nostrud do', 'Asperiores perferend');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `st_id` int NOT NULL AUTO_INCREMENT,
  `st_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_date_of_birth` date NOT NULL,
  `st_gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_bg_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_religion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_nid_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_birth_certificate_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_health_condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_inst_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_present_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `st_permanent_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `st_name`, `st_date_of_birth`, `st_gender`, `st_bg_group`, `st_religion`, `st_phone`, `st_nid_no`, `st_birth_certificate_id`, `st_health_condition`, `st_photo`, `st_inst_name`, `st_present_address`, `st_permanent_address`) VALUES
(9, 'Jane Finch', '2006-06-28', 'Female', 'A-', 'Buddha', '+1 (606) 945-8267', 'Do enim facere offic', 'Accusamus rerum eaqu', 'Murphy Oconnor', 'jD06VUb2ul.jpg', 'Kaitlin Bryan', 'Pariatur Voluptates', 'Exercitation excepte'),
(10, 'Charlotte Wyatttt', '1976-05-27', '', '', '', '+1 (127) 151-9324', 'Ab aliquid ipsa iru', 'Aliquip temporibus d', 'Kirk Woodard', 'ljczr571Fs.jpg', 'Medge Estesss', 'Sit corporis vel au', 'Et fugiat ipsam ill'),
(11, 'Kalia Bryan', '1982-09-16', 'Male', 'O+', 'Islam', '+1 (822) 894-8441', 'Sit mollitia mollit ', 'A facilis laborum V', 'Shaine Edwards', 'E4dvAOlCcu.jpg', 'Dana Calhoun', 'Enim perspiciatis c', 'Ab voluptatem ad co'),
(12, 'Cheryl Castaneda', '1980-07-19', 'Female', 'O-', 'Buddha', '+1 (257) 613-2372', 'Iure repudiandae lau', 'Est explicabo Et p', 'Uriah Rosario', 'default.png', 'Dana Calhoun', 'Enim corrupti offic', 'Deserunt eos placea');

-- --------------------------------------------------------

--
-- Table structure for table `trainee`
--

DROP TABLE IF EXISTS `trainee`;
CREATE TABLE IF NOT EXISTS `trainee` (
  `trainee_id` int NOT NULL AUTO_INCREMENT,
  `trainee_name` varchar(255) NOT NULL,
  `trainee_username` varchar(255) NOT NULL,
  `trainee_password` varchar(255) NOT NULL,
  `trainee_name_eng` varchar(255) NOT NULL,
  `trainee_father_name` varchar(255) NOT NULL,
  `trainee_father_name_eng` varchar(255) NOT NULL,
  `trainee_mother_name` varchar(255) NOT NULL,
  `trainee_mother_name_eng` varchar(255) NOT NULL,
  `trainee_dob` varchar(255) NOT NULL,
  `trainee_current_age` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trainee_nid` varchar(255) NOT NULL,
  `trainee_present_address` text NOT NULL,
  `trainee_permanent_address` text NOT NULL,
  `trainee_education` text NOT NULL,
  `trainee_religion` varchar(255) NOT NULL,
  `trainee_gender` varchar(255) NOT NULL,
  `trainee_phone` varchar(255) NOT NULL,
  `trainee_alternate_phone` varchar(255) NOT NULL,
  `trainee_past_training` varchar(255) NOT NULL,
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trainee_training_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trainee_image` text NOT NULL,
  `trainee_history` int NOT NULL,
  `trainee_status` varchar(255) NOT NULL,
  `inst_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trainee_created_by` varchar(255) DEFAULT NULL,
  `certificate_status` varchar(255) NOT NULL DEFAULT 'InProcess',
  `trainee_qr_code` text,
  `trainee_qr_code_file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`trainee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trainee`
--

INSERT INTO `trainee` (`trainee_id`, `trainee_name`, `trainee_username`, `trainee_password`, `trainee_name_eng`, `trainee_father_name`, `trainee_father_name_eng`, `trainee_mother_name`, `trainee_mother_name_eng`, `trainee_dob`, `trainee_current_age`, `trainee_nid`, `trainee_present_address`, `trainee_permanent_address`, `trainee_education`, `trainee_religion`, `trainee_gender`, `trainee_phone`, `trainee_alternate_phone`, `trainee_past_training`, `dept_name`, `trainee_training_reason`, `trainee_image`, `trainee_history`, `trainee_status`, `inst_name`, `trainee_created_by`, `certificate_status`, `trainee_qr_code`, `trainee_qr_code_file`) VALUES
(31, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Labore aut ut maxime', 'Nihil temporibus adi', '2020', 'Christian', 'Male', '544', '771', 'Mccoy Noel Traders', 'Web Development', 'Ab aut voluptatem su', 'VedFL52shB.jpg', 0, 'Complete', 'SEO BD', NULL, 'Complete', 'http://103.145.112.179/training_management_system/home/trainee_certificate/31', 'assets/media/qrcode/687474703a2f2f3130332e3134352e3131322e3137392f747261696e696e675f6d616e6167656d656e745f73797374656d2f686f6d652f747261696e65655f63657274696669636174652f3331.png'),
(41, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Labore aut ut maxime', 'Nihil temporibus adi', '2020', 'Christian', 'Male', '544', '771', 'Mccoy Noel Traders', 'WEB RTC', 'Ab aut voluptatem su', 'VedFL52shB.jpg', 0, 'Complete', 'Jubo Unnon Odidoptor Ullapara', NULL, 'Complete', 'http://103.145.112.179/training_management_system/home/trainee_certificate/41', 'assets/media/qrcode/687474703a2f2f3130332e3134352e3131322e3137392f747261696e696e675f6d616e6167656d656e745f73797374656d2f686f6d652f747261696e65655f63657274696669636174652f3431.png'),
(36, 'Durjay Ghosh', 'durjay1', '12345678', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '12365', 'Vero est qui in cons', 'Nihil temporibus adi', '2000', 'Christian', 'Male', '544', '771', 'Walls and Walsh Co', 'Asher Spears', 'Quo aliquid ea est ', 'VedFL52shB.jpg', 0, 'Complete', 'Jubo Unnon Odidoptor Ullapara', NULL, 'Complete', 'http://103.145.112.179/training_management_system/home/trainee_certificate/36', 'assets/media/qrcode/687474703a2f2f3130332e3134352e3131322e3137392f747261696e696e675f6d616e6167656d656e745f73797374656d2f686f6d652f747261696e65655f63657274696669636174652f3336.png'),
(38, 'Monaem', 'Monaem', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Labore aut ut maxime', 'Nihil temporibus adi', '2003', 'Islam', 'Male', '544', '771', 'Mccoy Noel Traders', 'Asher Spears', 'Ab aut voluptatem su', 'YN9IlvT673.jpg', 0, 'Active', 'Jubo Unnon Odidoptor Ullapara', NULL, 'InProcess', NULL, ''),
(39, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Labore aut ut maxime', 'Nihil temporibus adi', '2022', 'Christian', 'Male', '544', '771', 'fsdfd', 'WEB RTC', 'Ab aut voluptatem su', 'VedFL52shB.jpg', 0, 'Complete', 'SEO BD', NULL, 'InProcess', NULL, ''),
(40, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Labore aut ut maxime', 'Nihil temporibus adi', '2020', 'Christian', 'Male', '544', '771', 'Mccoy Noel Traders', 'WEB RTC', 'Ab aut voluptatem su', 'VedFL52shB.jpg', 0, 'Pending', 'SEO BD', NULL, 'InProcess', NULL, ''),
(42, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Labore aut ut maxime', 'Nihil temporibus adi', '2020', 'Christian', 'Male', '544', '771', 'Mccoy Noel Traders', 'WEB RTC', 'Ab aut voluptatem su', 'VedFL52shB.jpg', 0, 'Pending', 'Jubo Unnon Odidoptor Ullapara', NULL, 'InProcess', NULL, ''),
(43, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Labore aut ut maxime', 'Nihil temporibus adi', '2020', 'Christian', 'Male', '544', '771', 'Mccoy Noel Traders', 'WEB RTC', 'Ab aut voluptatem su', 'VedFL52shB.jpg', 0, 'Pending', 'Joshua Skinner ss', NULL, 'InProcess', NULL, ''),
(44, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Atque ipsa neque cu', 'Nihil temporibus adi', '95', 'Christian', 'Male', '544', '771', 'Laborum Quam assume', 'Asher Spears', 'Suscipit nihil tempo', 'VedFL52shB.jpg', 0, 'Pending', 'SEO BD', NULL, 'InProcess', NULL, ''),
(45, 'Breanna White', '692289', '745147', 'Alisa Hunter', 'Kenyon Hensley', 'Jenette Dyer', 'Ashely Bruce', 'Ruth Bartlett', '2020-11-20', 'Isaiah Franco', '123456789', 'Natus exercitation n', 'Incidunt pariatur ', 'HSC 2015', 'Hindu', 'Male', '123456987', '974', 'php', 'Laravel', 'Quasi recusandae De', 'qWENJCY0FI.jpg', 0, 'Complete', 'SEO BD', NULL, 'InProcess', NULL, ''),
(46, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Labore aut ut maxime', 'Nihil temporibus adi', '2020', 'Christian', 'Male', '544', '771', 'Mccoy Noel Traders', 'Laravel', 'Ab aut voluptatem su', 'VedFL52shB.jpg', 0, 'Complete', 'SEO BD', NULL, 'Complete', 'http://103.145.112.179/training_management_system/home/trainee_certificate/46', 'assets/media/qrcode/687474703a2f2f3130332e3134352e3131322e3137392f747261696e696e675f6d616e6167656d656e745f73797374656d2f686f6d652f747261696e65655f63657274696669636174652f3436.png'),
(47, 'Nathan Atkins', '856245', '362942', 'Rhoda Sargent', 'Charde Roberts', 'Jillian Gardner', 'Nathaniel Schmidt', 'Christian Osborne', '2007-12-31', 'Victor Rodgers', '88888888888888888', 'Doloribus blanditiis', 'Quidem cupidatat off', '+1 (826) 776-5574', 'Islam', 'Female', '24', '169', '+1 (151) 514-2868', '', 'Anim ipsum reiciendi', 'Zj6aCk4DS5.jpg', 0, 'Complete', 'WEB RTC', NULL, 'Complete', 'http://103.145.112.179/training_management_system/home/trainee_certificate/47', 'assets/media/qrcode/687474703a2f2f3130332e3134352e3131322e3137392f747261696e696e675f6d616e6167656d656e745f73797374656d2f686f6d652f747261696e65655f63657274696669636174652f3437.png'),
(48, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Labore aut ut maxime', 'Nihil temporibus adi', '2020', 'Christian', 'Male', '544', '771', 'Mccoy Noel Traders', 'Mysqli', 'Ab aut voluptatem su', 'VedFL52shB.jpg', 0, 'Pending', 'Bogura Self Made Training Institute', NULL, 'InProcess', NULL, ''),
(49, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '123', 'Labore aut ut maxime', 'Nihil temporibus adi', '2020', 'Christian', 'Male', '544', '771', 'Mccoy Noel Traders', 'Mysqli', 'Ab aut voluptatem su', 'VedFL52shB.jpg', 0, 'Complete', 'Bogura Self Made Training Institute', NULL, 'InProcess', NULL, ''),
(50, 'Rsm Monaem', '924987', '817549', 'Clayton Foster', 'Alden Giles', 'Charity Galloway', 'Rhona Armstrong', 'Ursula Odom', '1994-03-16', 'Gray Barnes', '12345', 'Labore aut ut maxime', 'Nihil temporibus adi', '2020', 'Christian', 'Male', '544', '771', 'Mccoy Noel Traders', 'lara 2', 'Ab aut voluptatem su', 'VedFL52shB.jpg', 0, 'Complete', 'Laravel', NULL, 'Complete', 'http://103.145.112.179/training_management_system/home/trainee_certificate/50', 'assets/media/qrcode/687474703a2f2f3130332e3134352e3131322e3137392f747261696e696e675f6d616e6167656d656e745f73797374656d2f686f6d652f747261696e65655f63657274696669636174652f3530.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
