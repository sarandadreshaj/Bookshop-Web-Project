-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 11:32 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projektineweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `activityType` varchar(255) NOT NULL,
  `changedItem` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user`, `activityType`, `changedItem`, `time`) VALUES
(23, 'saranda.saranda', 'Edited product', 'White Fragility   ', '24/04/2022 10:10 pm'),
(24, 'saranda.saranda', 'Edited product', 'White Fragility   ', '24/04/2022 10:10 pm'),
(25, 'saranda.saranda', 'Edited product', 'White Fragilityy    ', '24/04/2022 10:11 pm'),
(26, 'saranda.saranda', 'Edited product', 'White Fragilityy    ', '24/04/2022 10:11 pm');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu_image` varchar(255) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `menu_category` varchar(255) NOT NULL,
  `menu_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu_image`, `menu_title`, `menu_category`, `menu_price`) VALUES
(8, './img/whitefragility.jpg', 'White Fragility   ', 'English, Hardback', '12.99$         '),
(9, './img/nomercy.jpg', 'No Mercy', 'English, Hardback', '22.99$  '),
(10, './img/here.jpg', 'Here and Now', 'English, Hardback', '34.99$'),
(11, './img/whocares.jpg', 'Who Cares, Wins', 'English, Hardback', '10.99$'),
(12, './img/catch.jpg', 'The Catch', 'English, Paperbackhh', '40.99$ '),
(13, './img/disappear.jpg', 'How To Disappear', 'English, Hardback', '31.99$'),
(14, './img/normal.jpg', 'Normal People', 'English, Hardback', '15,79$'),
(16, './img/dead.jpg', 'Find them Dead', 'English, Paperback', '19,99$'),
(17, './img/hello.jpg', 'Hello Again', 'English, Paperback', '16,68$'),
(18, './img/ifi.jpg', 'If i can\'t have you', 'English, Paperback', '8.99$'),
(19, './img/catchh.jpg', 'Catch and Kill ', 'English, Hardback', '13.45$ '),
(20, './img/soyou.jpg', 'Got Problems?', 'English, Hardback', '13.45$'),
(21, './img/thehand.jpg', 'The Handmaid\'s tale', 'English, Paperback', '21.99$'),
(22, './img/girl.jpg', 'Girl, Woman and other', 'English, Hardback', '30.12$'),
(23, './img/gotta.jpg', 'Gotta Get Theroux this', 'English, Hardback', '54.12$'),
(24, './img/house - Copy.jpg', 'Slaughterhouse', 'English, Hardback', '30.45$'),
(25, './img/ballad.jpg', 'The Ballad', 'English, Hardback', '22.28$'),
(30, './img/life.jpg', 'Life and Fate', 'English, Hardback', '13.45$'),
(38, './img/orlando.jpg', 'Orlando King', 'English, Hardback', '19,99$'),
(39, './img/runaways.jpg', 'The runaways', 'English, Paperback', '12.99$');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role` varchar(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `name`, `surname`, `email`, `username`, `password`) VALUES
(4, 'user', 'Tringa', 'Desku', 'td@gmail.com', 'tringa.desku', 'Tringa123'),
(12, 'user', 'Valza', 'Dreshaj', 'valza@gmail.com', 'valza.dreshaj', 'Valza1233'),
(21, 'user', 'Anida', 'Dreshaj', 'anida123@gmail.com', 'anida.dreshaj', 'anida1233'),
(51, 'admin', 'Saranda', 'Dreshaj', 'sarandadreshaj17@gmail.com', 'saranda.saranda', 'Saranda123');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_logs`
--

CREATE TABLE `visitor_logs` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `referrer_url` varchar(255) NOT NULL,
  `user_ip_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitor_logs`
--

INSERT INTO `visitor_logs` (`id`, `page_url`, `referrer_url`, `user_ip_address`, `user_agent`, `created`) VALUES
(1, 'http://localhost/test1/index.php', '/', '::1', '0', '2022-04-24 01:38:19'),
(2, 'http://localhost/test1/index.php', 'http://localhost/test1/login.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 01:41:15'),
(3, 'http://localhost/test1/menuDashboard.php', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 01:46:25'),
(4, 'http://localhost/test1/menuDashboard.php', 'http://localhost/test1/userDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 01:46:36'),
(5, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 01:47:29'),
(6, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 01:48:10'),
(7, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 01:48:12'),
(8, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 01:48:40'),
(9, 'http://localhost/test1/index.php', 'http://localhost/test1/userDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 02:19:00'),
(10, 'http://localhost/test1/index.php', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 02:19:02'),
(11, 'http://localhost/test1/index.php', 'http://localhost/test1/register.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 02:47:29'),
(12, 'http://localhost/test1/index.php', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 02:47:36'),
(13, 'http://localhost/test1/index.php', 'http://localhost/test1/login.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 02:48:13'),
(14, 'http://localhost/test1/index.php', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 02:48:15'),
(15, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 02:48:41'),
(16, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 02:49:04'),
(17, 'http://localhost/test1/index.php', 'http://localhost/test1/aboutus.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 13:53:39'),
(18, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 13:53:56'),
(19, 'http://localhost/test1/index.php', '/', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 14:17:14'),
(20, 'http://localhost/test1/index.php', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 14:17:16'),
(21, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/aboutus.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 14:17:27'),
(22, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/userDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 14:17:27'),
(23, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/edit-menu.php?id=8', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 15:09:15'),
(24, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 15:09:17'),
(25, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 15:34:32'),
(26, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 16:18:16'),
(27, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/edit-users.php?id=4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 16:18:24'),
(28, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/edit-users.php?id=12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 16:18:50'),
(29, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/edit-users.php?id=12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 16:23:46'),
(30, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/edit-users.php?id=12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 16:23:47'),
(31, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/userDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 16:23:57'),
(32, 'http://localhost/test1/userdashboard.php', 'http://localhost/test1/userDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 16:24:01'),
(33, 'http://localhost/test1/index.php', 'http://localhost/test1/userdashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:39:15'),
(34, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:39:17'),
(35, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:39:21'),
(36, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:40:07'),
(37, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:40:16'),
(38, 'http://localhost/test1/userDashboard.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:40:29'),
(39, 'http://localhost/test1/index.php', 'http://localhost/test1/userDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:40:38'),
(40, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:41:13'),
(41, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:41:44'),
(42, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:42:26'),
(43, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:43:37'),
(44, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 20:46:49'),
(45, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 22:42:56'),
(46, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 22:44:47'),
(47, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 22:44:53'),
(48, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 22:45:07'),
(49, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 22:45:32'),
(50, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 22:46:10'),
(51, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 22:46:19'),
(52, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 22:52:24'),
(53, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 22:52:31'),
(54, 'http://localhost/test1/index.php?', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 22:52:34'),
(55, 'http://localhost/test1/index.php?', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:01:23'),
(56, 'http://localhost/test1/index.php?', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:01:59'),
(57, 'http://localhost/test1/index.php?', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:02:45'),
(58, 'http://localhost/test1/index.php?', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:03:19'),
(59, 'http://localhost/test1/index.php?', 'http://localhost/test1/index.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:04:18'),
(60, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:05:05'),
(61, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:05:07'),
(62, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:07:22'),
(63, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:07:24'),
(64, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:07:24'),
(65, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:08:07'),
(66, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:08:08'),
(67, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:19:30'),
(68, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:19:34'),
(69, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:19:34'),
(70, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:19:34'),
(71, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:19:34'),
(72, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:20:43'),
(73, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:20:45'),
(74, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:23:41'),
(75, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:25:00'),
(76, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:25:12'),
(77, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:25:18'),
(78, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:25:31'),
(79, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:25:38'),
(80, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:25:45'),
(81, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:25:54'),
(82, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:26:03'),
(83, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:26:21'),
(84, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:26:26'),
(85, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:26:49'),
(86, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:26:52'),
(87, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:26:54'),
(88, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:27:00'),
(89, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:27:17'),
(90, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:27:22'),
(91, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:31:11'),
(92, 'http://localhost/test1/index.php', 'http://localhost/test1/menuDashboard.php', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', '2022-04-24 23:31:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
