-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 08, 2023 at 02:26 AM
-- Server version: 5.7.33
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cca123`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'admin', 1, '2021-10-25 06:38:31', 0),
(2, '::1', 'admin', 3, '2021-10-25 06:46:09', 0),
(3, '::1', 'kholil@jagoancomputer.net', 3, '2021-10-25 06:46:31', 1),
(4, '::1', 'kholil@jagoancomputer.net', 7, '2021-10-28 04:29:01', 1),
(5, '::1', 'kholil@jagoancomputer.net', 7, '2021-10-28 07:38:04', 1),
(6, '::1', 'kholil@jagoancomputer.net', 7, '2021-10-28 07:46:39', 1),
(7, '::1', 'kholil@jagoancomputer.net', 7, '2021-10-28 07:47:14', 1),
(8, '::1', 'kholil@jagoancomputer.net', 7, '2021-10-28 07:49:04', 1),
(9, '::1', 'kholil@jagoancomputer.net', 7, '2021-10-28 08:07:55', 1),
(10, '::1', 'kholil@jagoancomputer.net', 7, '2021-10-28 08:10:51', 1),
(11, '::1', 'kholil@jagoancomputer.net', 7, '2021-10-28 08:41:24', 1),
(12, '::1', 'kholil@jagoancomputer.net', 7, '2021-10-28 08:43:16', 1),
(13, '::1', 'kholil@jagoancomputer.net', 7, '2021-10-28 08:43:53', 1),
(14, '10.23.123.188', 'admin', NULL, '2021-11-08 07:52:52', 0),
(15, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-08 07:53:11', 1),
(16, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-08 08:07:38', 1),
(17, '10.23.123.188', 'admin', NULL, '2021-11-10 00:20:40', 0),
(18, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-10 00:20:52', 1),
(19, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-10 18:33:04', 1),
(20, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-10 20:17:48', 1),
(21, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-10 22:24:47', 1),
(22, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-14 08:18:27', 1),
(23, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-14 08:57:57', 1),
(24, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-15 10:16:46', 1),
(25, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-16 02:01:40', 1),
(26, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-16 09:26:38', 1),
(27, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-16 17:56:15', 1),
(28, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-16 20:54:07', 1),
(29, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-16 21:02:56', 1),
(30, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-17 20:15:25', 1),
(31, '10.23.123.97', 'admin', NULL, '2021-11-17 20:38:34', 0),
(32, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-17 20:39:27', 1),
(33, '10.23.123.97', 'kholil@jagoancomputer.net', 7, '2021-11-17 20:41:13', 1),
(34, '10.23.123.97', 'kholil@jagoancomputer.net', 7, '2021-11-17 21:16:50', 1),
(35, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-17 23:41:58', 1),
(36, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-18 00:37:59', 1),
(37, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-18 06:19:42', 1),
(38, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-18 06:25:34', 1),
(39, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-20 08:12:32', 1),
(40, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-24 02:04:11', 1),
(41, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-24 18:38:33', 1),
(42, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-24 19:27:19', 1),
(43, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-11-26 15:59:22', 1),
(44, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-12-01 18:19:14', 1),
(45, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-12-01 21:22:39', 1),
(46, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-12-02 06:21:38', 1),
(47, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-12-02 07:43:37', 1),
(48, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-12-23 18:59:30', 1),
(49, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2021-12-24 19:13:54', 1),
(50, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-01-04 00:39:46', 1),
(51, '10.23.123.188', 'admin', NULL, '2022-01-22 16:16:35', 0),
(52, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-01-25 02:43:17', 1),
(53, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-02-12 01:54:35', 1),
(54, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-02-18 02:17:27', 1),
(55, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-02-20 03:12:33', 1),
(56, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-02-21 18:19:38', 1),
(57, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-02-24 21:06:20', 1),
(58, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-03-17 06:56:56', 1),
(59, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-03-20 19:20:07', 1),
(60, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-03-22 06:04:52', 1),
(61, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-03-25 07:30:37', 1),
(62, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-03-26 07:18:24', 1),
(63, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-03-29 00:14:37', 1),
(64, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-03-29 00:23:27', 1),
(65, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-03-29 00:25:13', 1),
(66, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-03-29 00:31:54', 1),
(67, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-03-30 06:20:17', 1),
(68, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-04-02 21:11:23', 1),
(69, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-04-06 23:48:21', 1),
(70, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-04-21 03:28:11', 1),
(71, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-04-21 03:38:55', 1),
(72, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-04-27 22:58:09', 1),
(73, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-04-29 02:40:43', 1),
(74, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-05-12 03:35:10', 1),
(75, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-05-15 01:48:56', 1),
(76, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-05-15 01:54:57', 1),
(77, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-05-18 02:23:25', 1),
(78, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-05-20 20:32:08', 1),
(79, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-05-24 21:48:52', 1),
(80, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-05-24 22:02:25', 1),
(81, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-05-24 22:03:18', 1),
(82, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-05-25 03:41:17', 1),
(83, '10.23.123.189', 'kholil@jagoancomputer.net', 7, '2022-05-25 11:31:50', 1),
(84, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-05-27 02:13:11', 1),
(85, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-06-06 04:06:31', 1),
(86, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-06-06 04:13:33', 1),
(87, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-06-06 04:26:38', 1),
(88, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-06-08 21:33:12', 1),
(89, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-06-11 01:42:25', 1),
(90, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-06-13 02:06:34', 1),
(91, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-06-15 22:14:54', 1),
(92, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-06-17 03:52:23', 1),
(93, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-06-30 04:30:52', 1),
(94, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-07-07 00:22:47', 1),
(95, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-07-12 23:29:01', 1),
(96, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-07-13 03:42:54', 1),
(97, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-07-24 23:20:51', 1),
(98, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-07-26 20:51:37', 1),
(99, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-07-26 20:55:04', 1),
(100, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-07-28 03:34:59', 1),
(101, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-07-28 21:01:42', 1),
(102, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-08-02 01:33:27', 1),
(103, '10.23.123.97', 'kholil@jagoancomputer.net', 7, '2022-08-02 01:38:19', 1),
(104, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-08-09 19:58:30', 1),
(105, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-08-10 20:03:16', 1),
(106, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-08-12 00:04:23', 1),
(107, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-08-13 20:44:59', 1),
(108, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-08-16 01:27:41', 1),
(109, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-08-16 03:51:56', 1),
(110, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-08-18 10:46:02', 1),
(111, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-08-20 09:49:12', 1),
(112, '10.23.123.195', 'kholil@jagoancomputer.net', 7, '2022-09-03 17:04:53', 1),
(113, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-09-04 20:58:28', 1),
(114, '10.23.123.97', 'kholil@jagoancomputer.net', 7, '2022-09-05 01:26:48', 1),
(115, '10.23.123.97', 'admin', NULL, '2022-09-05 02:02:04', 0),
(116, '10.23.123.97', 'kholil@jagoancomputer.net', 7, '2022-09-05 02:02:26', 1),
(117, '10.23.123.97', 'kholil@jagoancomputer.net', 7, '2022-09-05 02:07:24', 1),
(118, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-09-06 03:55:26', 1),
(119, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-09-07 04:04:06', 1),
(120, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-09-08 03:30:45', 1),
(121, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-09-11 21:53:20', 1),
(122, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-09-12 00:16:19', 1),
(123, '10.23.123.97', 'kholil@jagoancomputer.net', 7, '2022-09-12 20:53:49', 1),
(124, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-09-12 21:30:05', 1),
(125, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-09-13 01:53:34', 1),
(126, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-09-13 21:47:57', 1),
(127, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-09-14 03:42:26', 1),
(128, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-10-14 02:19:15', 1),
(129, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-10-14 10:26:23', 1),
(130, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-10-26 00:35:56', 1),
(131, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-10-26 02:21:30', 1),
(132, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-10-31 02:39:49', 1),
(133, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-10-31 03:01:15', 1),
(134, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-10-31 03:07:35', 1),
(135, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-11-23 21:28:45', 1),
(136, '10.23.123.97', 'admin', NULL, '2022-12-09 02:13:27', 0),
(137, '10.23.123.97', 'kholil@jagoancomputer.net', 7, '2022-12-09 02:14:44', 1),
(138, '10.23.123.97', 'kholil@jagoancomputer.net', 7, '2022-12-09 02:32:15', 1),
(139, '10.23.123.185', 'admin', NULL, '2022-12-26 20:31:04', 0),
(140, '10.23.123.185', 'admin', NULL, '2022-12-26 20:31:25', 0),
(141, '10.23.123.185', 'ADMIN', NULL, '2022-12-26 20:31:38', 0),
(142, '10.23.123.185', 'kholil@jagoancomputer.net', 7, '2022-12-26 20:32:38', 1),
(143, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-12-28 18:35:26', 1),
(144, '10.23.123.185', 'kholil@jagoancomputer.net', 7, '2022-12-28 18:42:11', 1),
(145, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2022-12-29 02:34:58', 1),
(146, '10.23.123.185', 'kholil@jagoancomputer.net', 7, '2023-01-01 21:37:39', 1),
(147, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-01-12 21:47:36', 1),
(148, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-01-25 00:48:14', 1),
(149, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-02-09 05:00:04', 1),
(150, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-02-10 01:38:23', 1),
(151, '10.23.123.185', 'kholil@jagoancomputer.net', 7, '2023-02-12 18:59:26', 1),
(152, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-02-13 20:25:37', 1),
(153, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-03-04 02:19:47', 1),
(154, '10.23.123.118', 'admin', NULL, '2023-03-04 02:22:26', 0),
(155, '10.23.123.118', 'admin', NULL, '2023-03-04 02:22:35', 0),
(156, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-03-04 02:34:04', 1),
(157, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-03-10 02:22:49', 1),
(158, '10.23.123.97', 'admin', NULL, '2023-03-11 05:28:49', 0),
(159, '10.23.123.97', 'admin', NULL, '2023-03-11 05:29:43', 0),
(160, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-03-11 05:35:21', 1),
(161, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-03-19 22:48:58', 1),
(162, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-03-20 22:21:14', 1),
(163, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-03-24 02:03:41', 1),
(164, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-03-27 02:09:01', 1),
(165, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-03-28 02:01:07', 1),
(166, '10.23.123.97', 'kholil@jagoancomputer.net', 7, '2023-03-29 18:25:49', 1),
(167, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-03-29 18:29:11', 1),
(168, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-04-06 03:08:55', 1),
(169, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-04-09 08:13:33', 1),
(170, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-04-10 02:14:39', 1),
(171, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-04-10 02:24:05', 1),
(172, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-04-20 00:02:56', 1),
(173, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-01 07:59:03', 1),
(174, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-01 22:38:59', 1),
(175, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-08 02:35:38', 1),
(176, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-15 03:43:45', 1),
(177, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-15 08:49:54', 1),
(178, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-18 19:58:21', 1),
(179, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-18 20:14:37', 1),
(180, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-18 20:26:39', 1),
(181, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-18 20:37:20', 1),
(182, '10.23.123.185', 'kholil@jagoancomputer.net', 7, '2023-05-18 21:12:00', 1),
(183, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-25 22:13:23', 1),
(184, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-26 00:40:33', 1),
(185, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-29 21:36:31', 1),
(186, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-05-31 21:40:27', 1),
(187, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-02 19:09:27', 1),
(188, '10.23.123.194', 'kholil@jagoancomputer.net', 7, '2023-06-03 20:58:16', 1),
(189, '10.23.123.194', 'kholil@jagoancomputer.net', 7, '2023-06-03 21:17:16', 1),
(190, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-03 21:21:37', 1),
(191, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-06 03:50:08', 1),
(192, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-06 19:15:12', 1),
(193, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-07 09:12:44', 1),
(194, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-14 21:03:04', 1),
(195, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-14 21:04:38', 1),
(196, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-19 03:41:39', 1),
(197, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-20 02:32:57', 1),
(198, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-26 23:07:34', 1),
(199, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-27 01:41:55', 1),
(200, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-28 00:05:25', 1),
(201, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-28 03:16:16', 1),
(202, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-06-30 04:43:13', 1),
(203, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-07-11 19:29:33', 1),
(204, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-07-12 06:44:01', 1),
(205, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-07-12 06:47:35', 1),
(206, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-07-12 06:53:53', 1),
(207, '10.23.123.118', 'admin', NULL, '2023-07-12 06:55:27', 0),
(208, '10.23.123.118', 'admin', NULL, '2023-07-12 06:55:58', 0),
(209, '10.23.123.118', 'kholil@jagoancomputer.net', 7, '2023-07-12 06:56:23', 1),
(210, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-07-12 07:04:55', 1),
(211, '10.23.123.118', 'kholil@jagoancomputer.net', 7, '2023-07-12 07:13:57', 1),
(212, '10.23.123.118', 'kholil@jagoancomputer.net', 7, '2023-07-16 02:58:52', 1),
(213, '10.23.123.118', 'kholil@jagoancomputer.net', 7, '2023-07-16 02:59:18', 1),
(214, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-07-17 00:08:41', 1),
(215, '10.23.123.118', 'kholil@jagoancomputer.net', 7, '2023-07-20 10:13:37', 1),
(216, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-07-20 10:20:42', 1),
(217, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-07-26 21:23:26', 1),
(218, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-07-27 20:16:04', 1),
(219, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-07-29 04:05:47', 1),
(220, '10.23.123.185', 'kholil@jagoancomputer.net', 7, '2023-08-01 19:41:52', 1),
(221, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-08-01 23:41:06', 1),
(222, '10.23.123.118', 'kholil@jagoancomputer.net', 7, '2023-08-22 21:08:11', 1),
(223, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-08-22 23:17:39', 1),
(224, '10.23.123.118', 'kholil@jagoancomputer.net', 7, '2023-08-24 02:10:42', 1),
(225, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-08-24 02:11:19', 1),
(226, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-08-24 02:24:01', 1),
(227, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-08-24 02:31:44', 1),
(228, '10.23.123.185', 'kholil@jagoancomputer.net', 7, '2023-08-24 02:32:32', 1),
(229, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-08-31 08:40:08', 1),
(230, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-09-11 22:35:40', 1),
(231, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-09-14 02:19:07', 1),
(232, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-09-14 02:38:40', 1),
(233, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-09-14 02:50:44', 1),
(234, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-09-17 02:34:25', 1),
(235, '10.23.123.188', 'kholil@jagoancomputer.net', 7, '2023-09-19 23:28:26', 1),
(236, '10.23.123.173', 'kholil@jagoancomputer.net', 7, '2023-10-07 19:47:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(2, '2021-10-06-104838', 'App\\Database\\Migrations\\MigrationMenu', 'default', 'App', 1633531596, 1),
(12, '2021-10-18-122440', 'App\\Database\\Migrations\\MigrateaddkolomtbMenu', 'default', 'App', 1634560366, 1),
(13, '2021-10-15-124544', 'App\\Database\\Migrations\\Migratepdf', 'default', 'App', 1635088356, 2),
(14, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1635161283, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` int(10) UNSIGNED NOT NULL,
  `menu` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `controller` varchar(200) DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `jenis_menu` varchar(50) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `path_pdf` varchar(200) DEFAULT NULL,
  `sort_menu` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `menu`, `url`, `controller`, `menu_id`, `jenis_menu`, `icon`, `path_pdf`, `sort_menu`, `is_active`) VALUES
(2, 'Catatan CSO', 'catatan-cso', '', 0, 'side-bar', 'nav-icon fas fa-book', 'default.pdf', 1, 0),
(3, 'News Update', 'news-update', '', 0, 'side-bar', 'nav-icon fas fa-book', 'default.pdf', 2, 1),
(4, 'NIAGA', 'niaga', '', 0, 'side-bar', 'nav-icon fas fa-book', 'default.pdf', 4, 1),
(6, 'Data Seluruh Indonesia', 'data-seluruh-indonesia', '', 0, 'side-bar', 'nav-icon fas fa-book', 'default.pdf', 6, 1),
(8, 'Prabayar / Prepaid', 'prabayar-prepaid', '', 0, 'side-bar', 'nav-icon fa fa-book', 'default.pdf', 7, 1),
(9, 'TEKNIK', 'teknik', '', 0, 'side-bar', 'nav-icon fas fa-book', 'default.pdf', 8, 1),
(10, 'Daftar PPOB', 'daftar-ppob', '', 0, 'side-bar', 'nav-icon fa fa-book', 'default.pdf', 9, 1),
(11, 'Aplikasi / Produk Terbaru', 'aplikasi-produkterbaru', '', 0, 'side-bar', 'nav-icon fa fa-book', 'default.pdf', 10, 1),
(12, 'PJU All Site', 'pju-allsite', '', 0, 'side-bar', 'nav-icon fas fa-book', 'default.pdf', 11, 1),
(13, 'KONSUIL - PPILN', 'konsuil', '', 0, 'side-bar', 'nav-icon fa fa-book', 'KONSUIL - PPILN 1684462955_9ead39e5fdd259e66343.htm', 12, 1),
(14, 'LAIN-LAIN', 'lain', '', 0, 'side-bar', 'nav-icon fa fa-ellipsis-h', 'default.pdf', 13, 0),
(16, 'SOP', 'sop', '', 0, 'side-bar', 'nav-icon fas fa-book', 'default.pdf', 3, 1),
(17, 'TTL UJL & Perhitungan', 'wqe', '', 0, 'side-bar', 'nav-icon fas fa-book', 'default.pdf', 5, 1),
(36, 'SOP Gelegar Cuan PLN Mobile Rev1', 'sopgelegar', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Gelegar Cuan PLN Mobile  1634996947_d1f7e76cb656192af428.pdf', 126, 1),
(38, 'SOP Layanan Gebyar PON XX Papua 2021-Promo Tambah ', 'SOP-Layanan-Gebyar-PON-XX-Papua-2021', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Layanan Gebyar PON XX Papua 2021-Promo Tambah Daya 1634997283_5e7d080e9940e79c5d0a.pdf', 125, 0),
(39, 'SOP Program Rewards PLN - Gelegar Cuan PLN Mobile', 'SOP-Program-Rewards-PLN', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Rewards PLN - Gelegar Cuan PLN Mobile 1634997966_e38564c3c511bd01f48b.pdf', 124, 0),
(40, 'DAFTAR PEL JKT PENERIMA HADIAH', 'DAFTAR-PEL-JKT-PENERIMA-HADIAH', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'DAFTAR PEL JKT PENERIMA HADIAH 1635000638_bf6f0666e04937d05745.htm', 123, 1),
(49, 'SOP Perlakuan Layanan Laporan Berulang Non Teknis ', 'SOP-Perlakuan-Layanan-Laporan-Berulang-Non-Teknis', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan Laporan Berulang Non Teknis (APKT Keluhan) 1635088572_d5bf7a92b02aa7571398.pdf', 122, 1),
(52, 'SOP Promo Tambah Daya Nyaman Kompor Induksi', 'Promo-Tambah-Daya', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Promo Tambah Daya Nyaman Kompor Induksi 1635238388_bc0bcbf142171cdff67e.pdf', 121, 1),
(53, 'SOP Upgrade KRN-2 STS pada kWh Meter Prabayar (Rev-1)', 'SOP-Upgrade-KRN-2', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Upgrade KRN-2 STS pada kWh Meter Prabayar (Rev-1) 1635238634_37cf59cf2cf47688e372.pdf', 120, 1),
(54, 'SOP Perlakuan Layanan Informasi Produk ICONNET di CC PLN 123-Transfer Layanan (Rev-1)', 'SOP-Perlakuan-Layanan-Informasi', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan Informasi Produk ICONNET di CC PLN 123-Transfer Layanan (Rev-1) 1635238709_639cd154c9b4b43fb2b0.pdf', 119, 1),
(55, 'SOP Kelengkapan NPWP untuk PBPD di CC PLN123 (Rev1)', 'SOP-Kelengkapan-NPWP', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Kelengkapan NPWP untuk PBPD di CC PLN123 (Rev1) 1635238791_1202e06ec73a1bead0cf.pdf', 118, 1),
(58, 'SOP Pembaruan Data Pelanggan PLN & Layanan Invoice Tagihan Listrik di PLN Mobile', 'SOP-Pembaruan-Data', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Pembaruan Data Pelanggan PLN & Layanan Invoice Tagihan Listrik di PLN Mobile 1635239714_8331bcea6a5d75ae376a.pdf', 117, 1),
(59, 'SOP Perpanjangan Produk Layanan Green Lifestyle s.d 31 Agustus 2021', 'SOP-Perpanjangan-Produk ', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan Produk Layanan Green Lifestyle s.d 31 Agustus 2021 1635239876_c1264b88350135e6a201.pdf', 116, 1),
(61, 'SOP Super Merdeka Listrik, Promo Biaya Penyambungan untuk Tambah Daya', 'SOP-Super-Merdeka-Listrik,', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Super Merdeka Listrik, Promo Biaya Penyambungan untuk Tambah Daya 1635240003_3c41ce4227cd843f5539.pdf', 115, 1),
(62, '20210706 Pembayaran Non Taglis di PLN Mobile', '20210706', NULL, 3, '', 'nav-icon far fa-circle text-warning', '20210706 Pembayaran Non Taglis di PLN Mobile 1635240185_d12f1bbbe25376fb629c.pdf', 114, 1),
(63, 'Q&A Program Bundling Iconnet dan Tambah Daya 28062021 dr PLN', 'Q&A-Program', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Q&A Program Bundling Iconnet dan Tambah Daya 28062021 dr PLN 1635240250_6cc0e52f282e8e3dbc09.pdf', 113, 1),
(64, 'SOP Perpanjangan Diskon Tarif Listrik & Pembebasan Biaya Beban serta Rekmin TW III 2021', 'SOP-Perpanjangan-Diskon', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan Diskon Tarif Listrik & Pembebasan Biaya Beban serta Rekmin TW III 2021 1635240318_40ee11c61d8299724437.pdf', 112, 1),
(65, 'FAQ Produk Internet ICONNET', 'FAQ', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'FAQ Produk Internet ICONNET 1635240385_22a0091c8218d0d14f16.pdf', 111, 1),
(66, 'SOP Bundling ICONNET dengan Produk Layanan Tambah Daya (Electrinet Lifestyle)', 'SOP-Bundling-ICONNET', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Bundling ICONNET dengan Produk Layanan Tambah Daya (Electrinet Lifestyle) 1635240478_78c1219ba63bc627dc52.pdf', 110, 0),
(67, 'SOP Penginputan Laporan Terkait ICONNET dan ListriQu', 'SOPPenginputan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Penginputan Laporan Terkait ICONNET dan ListriQu 1635240555_ef2f1d19c3c1be4536c1.pdf', 109, 1),
(68, 'SOP Kebijakan PLN UID Jakarta, Program Pelanggan Terbaik', 'SOP-Kebijakan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Kebijakan PLN UID Jakarta, Program Pelanggan Terbaik 1635240627_732a926883b19d6da6b7.pdf', 108, 1),
(69, 'Rekap Keterangan Program Promo PD', 'RekapKeterangan ', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Rekap Keterangan Program Promo PD 1635240707_825b1c97e97119921c96.pdf', 107, 1),
(70, 'Cara Mendapatkan e-Voucher untuk Semua e-Commerce & Pembelian REC', 'Cara', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Cara Mendapatkan e-Voucher untuk Semua e-Commerce & Pembelian REC 1635240743_5ae8d9c47aaa69ef778d.pdf', 106, 1),
(71, 'SOP Perpanjangan Paket Bundling Peralatan Elektornik untuk PD dengan e-Voucher sd Tgl 31 Mei 2021', 'Elektornik', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan Paket Bundling Peralatan Elektornik untuk PD dengan e-Voucher sd Tgl 31 Mei 2021 1635240809_b150d38c60fe1a48956a.pdf', 105, 1),
(72, 'SOP Pengalihan Laporan Keluhan Menjadi Gangguan pada APKT', 'SOP-Pengaliha', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Pengalihan Laporan Keluhan Menjadi Gangguan pada APKT 1635243861_5361b3e527fcacf6bcd1.pdf', 104, 1),
(73, 'SOP Penjelasan Implementasi Stimulus Pelanggan Prabayar Sebelum 1 April 2021-Rev 2', 'Penjelasan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Penjelasan Implementasi Stimulus Pelanggan Prabayar Sebelum 1 April 2021-Rev 2 1635243902_a4cd6d581fd8308b1d58.pdf', 103, 1),
(74, 'SOP Paket Bundling Peralatan Elektornik untuk PD dengan e-Voucher di ALFAGIFT', 'ALFAGIFT', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Paket Bundling Peralatan Elektornik untuk PD dengan e-Voucher di ALFAGIFT 1635243940_6b9493c724aece2efc7f.pdf', 102, 1),
(75, 'SOP Produk Layanan Paket Hari Besar Keagamaan Ramadhan Peduli (Promo Tambah Daya)', 'Ramadhan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Produk Layanan Paket Hari Besar Keagamaan Ramadhan Peduli (Promo Tambah Daya) 1635244164_9d1752182bc365ffd5e5.pdf', 101, 1),
(76, 'SOP Perlakuan Layanan Laporan Gangguan Instalasi Milik Pelanggan (IML) Rev-3', 'GangguanInstalasi', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan Laporan Gangguan Instalasi Milik Pelanggan (IML) Rev-3 1635244208_1e7daf8ad7a88556771b.pdf', 100, 0),
(77, 'SOP Perpanjangan Diskon Tarif Listrik & Pembebasan Biaya Beban serta Rekmin2', 'Rekmin2', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan Diskon Tarif Listrik & Pembebasan Biaya Beban serta Rekmin2 1635244249_e84b5dda38549a37d50c.pdf', 99, 1),
(78, 'RANGKUMAN PAKET BUNDLING PARTNER YANG BEKERJASAMA', 'PARTNER ', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'RANGKUMAN PAKET BUNDLING PARTNER YANG BEKERJASAMA 1635244296_479da370df58c2fb8f3a.pdf', 98, 1),
(79, 'Tokopedia Promo Bundling Skema', 'Tokopediaa', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Tokopedia Promo Bundling Skema 1635245517_ba678bfb645edfc9e406.pdf', 97, 1),
(80, 'SOP Update - Paket Bundling Peralatan Elektornik untuk PD dengan e-Voucher di TOKOPEDIA', 'iTOKOPEDIA', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Update - Paket Bundling Peralatan Elektornik untuk PD dengan e-Voucher di TOKOPEDIA 1635245565_165b5c5c1f0eeed88555.pdf', 96, 1),
(81, 'SOP Paket Bundling Peralatan Elektornik untuk Penambahan Daya dengan e-Voucher', 'e-Voucher', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Paket Bundling Peralatan Elektornik untuk Penambahan Daya dengan e-Voucher 1635245601_df00030d6669acb48628.pdf', 95, 1),
(82, 'SOP Penyederhanaan Tipe Permasalahan pada APKT Keluhan', 'SOPP', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Penyederhanaan Tipe Permasalahan pada APKT Keluhan 1635245639_eabf5c6ef1dc56e72024.pdf', 94, 1),
(83, 'SOP Kelengkapan Data NPWP pada Permohonan PBPD', 'PermohonanPBPD', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Kelengkapan Data NPWP pada Permohonan PBPD 1635245672_0fe87abe7143e1c99289.pdf', 93, 1),
(84, 'SOP Upgrade KRN-2 STS pada kWh Meter Prabayar', 'MeterPrabayar', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Upgrade KRN-2 STS pada kWh Meter Prabayar 1635245711_17e702fbe52d82ae7866.pdf', 92, 1),
(86, 'SOP Program Stimulus Percepatan Penggunaan Kendaraan Bermotor Listrik Berbasis Baterai (KBLBB)', 'KBLBB', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Stimulus Percepatan Penggunaan Kendaraan Bermotor Listrik Berbasis Baterai 1635246179_6650b3a588391bb23a43.pdf', 91, 1),
(87, 'SOP Penyempurnaan Pengaturan Alokasi Meter Layanan PBPD', 'PBPD', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Penyempurnaan Pengaturan Alokasi Meter Layanan PBPD 1635246732_a706a6a205996bb1e877.pdf', 90, 1),
(88, 'SOP Perubahan Campaign dan Salam Penutup - Rev1', 'Campaign', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perubahan Campaign dan Salam Penutup - Rev1 1635246794_1963380ad13c3bb76f13.pdf', 89, 1),
(89, 'SOP Perpanjangan Kebijakan Diskon Tarif Tenaga Listrik dan Pembebasan B.Beban atau Rekmin (Rev1)', 'Pembebasan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan Kebijakan Diskon Tarif Tenaga Listrik dan Pembebasan B.Beban atau Rekmin (Rev1) 1635246839_541ed2358b5bd21fec1d.pdf', 88, 1),
(90, 'QUESTION AND ANSWER', 'QUESTION', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'QUESTION AND ANSWER 1635246969_cc516c52bfe2f737fb82.pdf', 87, 1),
(91, 'SOP Layanan New PLN Mobile melalui CC PLN 123 (Rev 3)', 'CC-PLN-123', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Layanan New PLN Mobile melalui CC PLN 123 (Rev 3) 1635247022_e2ba37b004acebbef3a2.pdf', 86, 1),
(92, 'SOP Tambahan Informasi untuk Permohonan PB', 'PB', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Tambahan Informasi untuk Permohonan PB 1635247443_aa614b014322269caa81.pdf', 85, 1),
(93, 'SOP Informasi Tagihan Rekening Listrik dan Invoice melalui CC PLN 123 dan Website PLN', 'Website', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Informasi Tagihan Rekening Listrik dan Invoice melalui CC PLN 123 dan Website PLN 1635247502_85c9848e275ee7920089.pdf', 84, 1),
(94, 'SOP Pemberian Reward Program STARWARS PLN UID Jaya kepada Pelanggan', 'jaya', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Pemberian Reward Program STARWARS PLN UID Jaya kepada Pelanggan 1635247533_624fb19432c78fa2eda9.pdf', 83, 1),
(95, 'SOP Perpanjangan ke-3 Promo Super Merdeka UMKM, IKM Tarif Bisnis dan Industri', 'ke3', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan ke-3 Promo Super Merdeka UMKM, IKM Tarif Bisnis dan Industri 1635247663_4e9d44e03068fc6394e4.pdf', 82, 1),
(96, 'SOP Penggantian kWh Meter Tua atau Rusak Gratis', 'kwh', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Penggantian kWh Meter Tua atau Rusak Gratis 1635247692_928c2a2536d98005f95b.pdf', 81, 1),
(97, 'SOP Perpanjangan ke-2 Promo Super Merdeka UMKM, IKM Tarif Bisnis & Industri', 'ke2', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan ke-2 Promo Super Merdeka UMKM, IKM Tarif Bisnis & Industri 1635247728_be58c672804c2917bea9.pdf', 80, 1),
(98, 'SOP Kegiatan Survey Tahunan Kepuasan Pelanggan', 'survei', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Kegiatan Survey Tahunan Kepuasan Pelanggan 1635247783_747c82c26666b842abc9.pdf', 79, 1),
(99, 'FAQ - Launching REC PLN', 'Ffaqrec', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'FAQ - Launching REC PLN 1635247852_e5beecc868184da32acb.pdf', 78, 1),
(101, 'SOP Produk REC (Renewable Energy Certificate)', 'renew', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Produk REC (Renewable Energy Certificate) 1635248067_51e0fe95503fe9071a81.pdf', 77, 1),
(102, 'SOP Penggantian kWh Meter Prabayar Merk Sanxing (Tipe P12A4) di Wilayah PLN UID Jateng dan DIY', 'diy', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Penggantian kWh Meter Prabayar Merk Sanxing (Tipe P12A4) di Wilayah PLN UID Jateng dan DIY 1635248194_ce0e28214a2071aa13ae.pdf', 76, 1),
(103, 'SOP Program Diskon Biaya Penyambungan utk PB Apartemen, Rusun', 'penyambungan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Diskon Biaya Penyambungan utk PB Apartemen, Rusun 1635248237_953842c048d1d27cc0f1.pdf', 75, 1),
(104, 'SOP Perpanjangan Promo Super Merdeka UMKM, IKM Tarif Bisnis & Industri', 'umkm', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan Promo Super Merdeka UMKM, IKM Tarif Bisnis & Industri 1635248308_adc2d801acc08a649072.pdf', 74, 1),
(105, 'SOP Layanan New PLN Mobile melalui CC PLN 123 revisi2', 'newplnmobile', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Layanan New PLN Mobile melalui CC PLN 123 revisi2 1635248361_56d183db4f53740ad8ce.pdf', 73, 1),
(106, 'RANGKUMAN PROMO', 'rangkumanpromo', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'RANGKUMAN PROMO 1635248476_f2f2f93489c8ebfa3dcc.jpeg', 72, 1),
(107, 'SOP Promo Super Merdeka UMKM, IKM Tarif Bisnis & Industri', 'promomer', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Promo Super Merdeka UMKM, IKM Tarif Bisnis & Industri 1635248612_72c9ee195bc1ae302f3f.pdf', 71, 1),
(108, 'SOP Perpanjangan Kebijakan Diskon Tarif Tenaga Listrik Tarif R, B & I', 'perpanjangandiskon', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan Kebijakan Diskon Tarif Tenaga Listrik Tarif R, B & I 1635248655_44641a9264001b5a8e2c.pdf', 70, 1),
(109, 'TABEL PERLAKUAN LAYANAN PELANGGAN (ARAHKAN KE UNIT)', 'tabelperlakuan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'TABEL PERLAKUAN LAYANAN PELANGGAN (ARAHKAN KE UNIT) 1635249721_1322bd3b95fa768777d0.jpeg', 69, 1),
(110, 'SOP Program Pemerintah Stimulus Pembebasan Biaya Rekmin atau Biaya Beban Tarif B, I dan S', 'bidans', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Pemerintah Stimulus Pembebasan Biaya Rekmin atau Biaya Beban Tarif B, I dan S 1635249762_580ec70d23ae6be89a67.pdf', 68, 1),
(111, 'QnA Stimulus Pembebasan Biaya Beban atau Rekmin Gol Tarif Sosial,Bisnis dan Industri (Rev)-1', 'qna', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'QnA Stimulus Pembebasan Biaya Beban atau Rekmin Gol Tarif Sosial,Bisnis dan Industri (Rev)-1 1635249885_5894827d1d86b7c9074f.pdf', 67, 1),
(112, 'SOP Tambahan Penjelasan Terkait SLO & LSP serta Informasi Lainnya', 'penjelasanlain', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Tambahan Penjelasan Terkait SLO & LSP serta Informasi Lainnya 1635249942_cb5d3f860b44e09aeaad.pdf', 66, 1),
(113, 'Pomo Hut RI 2020', 'RI2020', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Pomo Hut RI 2020 1635250290_de02376b94e114e9e43d.pdf', 65, 1),
(114, 'SOP Promo HUT RI ke 75 Keringanan BP untuk PD Rumah Tangga', 'soppromohut', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Promo HUT RI ke 75 Keringanan BP untuk PD Rumah Tangga 1635250327_b28bc49545eb2a304d5b.pdf', 64, 1),
(115, 'SOP Tagihan Susulan Biaya Keterlambatan Rekening Juni 2020', 'tagihan2020', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Tagihan Susulan Biaya Keterlambatan Rekening Juni 2020 1635250396_592788721478d66b31dd.pdf', 63, 1),
(116, 'SOP Skema Perlindungan Terhadap Lonjakan Tagihan Listrik Juni 2020', '2020juni', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Skema Perlindungan Terhadap Lonjakan Tagihan Listrik Juni 2020 1635250442_0557a9b58db5a5ae4bd3.pdf', 62, 1),
(117, 'SOP Turun Daya dan Gangguan 1 Persil Kondisi Pademi Covid19', 'turubdaya', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Turun Daya dan Gangguan 1 Persil Kondisi Pademi Covid19 1635250476_982438b300b8e0741836.pdf', 61, 1),
(118, 'Jawaban Perpanjangan diskon listirk', 'diskonlistrik', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Jawaban Perpanjangan diskon listirk 1635256305_19e3000419f97667bc00.pdf', 60, 1),
(119, 'Perubahan Golongan Tarif P & P3 pada Keperluan Peruntukan', 'perubahangolongan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Perubahan Golongan Tarif P & P3 pada Keperluan Peruntukan 1635256332_3b4d23bd735106fb047b.pdf', 59, 1),
(120, 'Q & A Seputar Program Keringanan Tagihan Listrik Untuk Pelanggan BISNIS & INDUSTRI Daya 450 VA Th 2020', 'keringanantagihan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Q & A Seputar Program Keringanan Tagihan Listrik Untuk Pelanggan BISNIS & INDUSTRI Daya 450 VA Th 2020 1635256373_756d638da879f3a4c32a.pdf', 58, 1),
(121, 'SOP Program Cater Mandiri Kondisi Pademi Covid19 (Rev 1) ', 'cater', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Cater Mandiri Kondisi Pademi Covid19 (Rev 1)  1635256412_70f690e3103b77bf0b54.pdf', 57, 1),
(122, 'Penjelasan Meningkatnya Tagihan Rekening Listrik Pelanggan Kondisi Pademi Covid-19', 'meningkat', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Penjelasan Meningkatnya Tagihan Rekening Listrik Pelanggan Kondisi Pademi Covid-19 1635256451_af4d8eb6678977bba3fc.pdf', 56, 1),
(123, 'SOP Kebijakan PLN UID Jakarta-Stimulus Pemasaran masa Covid 19', 'uid', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Kebijakan PLN UID Jakarta-Stimulus Pemasaran masa Covid 19 1635256487_7f38b25ea41672f43bee.pdf', 55, 1),
(126, 'SOP Mekanisme Diskon Tarif Listrik Bagi Pelanggan Bisnis & Industri Daya 450 VA', '450va', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Mekanisme Diskon Tarif Listrik Bagi Pelanggan Bisnis & Industri Daya 450 VA 1635256816_4b229d8fe275712899ae.pdf', 54, 1),
(127, 'SOP Program Light Up Indonesia', 'lightup', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Light Up Indonesia 1635256867_27f06132c390701b9f2f.pdf', 53, 1),
(128, 'SOP Program Cater Mandiri Kondisi Pademi Covid19', 'catermandiri', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Cater Mandiri Kondisi Pademi Covid19 1635256948_0768c248ad9cc7be1acf.pdf', 52, 1),
(129, 'SOP Perlakuan Layanan Keluhan PBPD Belum Realisasi Kondisi COVID19', 'pbpds', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan Keluhan PBPD Belum Realisasi Kondisi COVID19 1635257042_6b60aceffc97f89b50f4.pdf', 51, 1),
(130, 'SOP Perubahan Kebijakan Niaga (PS) PLN Wilayah Nusa Tenggara Timur (NTT)', 'ntt', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perubahan Kebijakan Niaga (PS) PLN Wilayah Nusa Tenggara Timur (NTT) 1635257093_e154c648009f1e33f5be.pdf', 50, 1),
(131, 'SOP Update Hasil VC Tgl 7 April 2020 dan Informasi Lainnya', 'hasilvc', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Update Hasil VC Tgl 7 April 2020 dan Informasi Lainnya 1635257394_6f00099471f245658abd.pdf', 49, 1),
(132, 'Q&A Stimulus Covid19 060420201', 'stimuliusqa', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Q&A Stimulus Covid19 060420201 1635257499_c08c2676ceb098b2db8f.pdf', 48, 1),
(133, 'Mekanisme Kebijakan Pemerintah Keringanan Pembayaran Listrik Daya 450 VA,900 VA Subsidi', 'kebijakanpemerint', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Mekanisme Kebijakan Pemerintah Keringanan Pembayaran Listrik Daya 450 VA,900 VA Subsidi 1635257584_8753df5a2a42477d2886.pdf', 47, 1),
(134, 'SOP Update Ketentuan Mengenai LSP, SLO dan LIT TR', 'sopupdt', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Update Ketentuan Mengenai LSP, SLO dan LIT TR 1635257694_5b059493830bf2f75fda.pdf', 46, 1),
(135, 'Pengukuran Penggunaan atau Pemakaian Listrik Prabayar Setiap Bulan', 'pengulkuranls', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Pengukuran Penggunaan atau Pemakaian Listrik Prabayar Setiap Bulan 1635257768_c353b78206ebb0a3ded5.pdf', 45, 1),
(136, 'Q&A Kebijakan Layanan Atisipasi Covid19', 'qakebja', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Q&A Kebijakan Layanan Atisipasi Covid19 1635257803_b1b4cd9fdae7cbe6a725.pdf', 44, 1),
(137, 'RANGKUMAN SOP PROGRAM DISKON BIAYA PENYAMBUNGAN 3T', 'rangkmuman', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'RANGKUMAN SOP PROGRAM DISKON BIAYA PENYAMBUNGAN 3T 1635257872_d9cad8d06c9bc577c209.pdf', 43, 1),
(138, 'SOP Program Diskon BP untuk PB BDT TNP2K & Daerah 3T', 'diskon11', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Diskon BP untuk PB BDT TNP2K & Daerah 3T 1635257950_42de0a1623b10b1d1171.pdf', 42, 1),
(139, 'SOP Kebijakan Niaga PLN UIW NTB Program 75.000 Terang Gemilang ', '75000', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Kebijakan Niaga PLN UIW NTB Program 75.000 Terang Gemilang  1635258036_847e9f13070aa155b881.pdf', 41, 1),
(140, 'SOP Permintaan Data Alamat Email dan No. Handphone Pelanggan (REV)', 'alamatemail', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Permintaan Data Alamat Email dan No. Handphone Pelanggan (REV) 1635259349_76356ae36c320c651737.pdf', 40, 1),
(141, 'SOP Update Informasi Permohonan Penyambungan listrik rumah kos-sewa', 'sewakos', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Update Informasi Permohonan Penyambungan listrik rumah kos-sewa 1635259382_d22e1de7737f6cd750a9.pdf', 39, 1),
(142, 'SOP Program Kegiatan Pemeriksaan & Penggantian kWh Meter Prabayar(3)', 'prabayar3', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Kegiatan Pemeriksaan & Penggantian kWh Meter Prabayar(3) 1635259559_57d990d65d0bf9b796bd.pdf', 38, 1),
(143, 'SOP PB Rumah Kost atau Sewa atau 1 (Satu) Persil Lebih dari 1 (Satu) IDPEL', 'rumahkost', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP PB Rumah Kost atau Sewa atau 1 (Satu) Persil Lebih dari 1 (Satu) IDPEL 1635259600_7ad82596e0e2b496d892.pdf', 37, 1),
(144, 'SOP transaksi tidak perlu menanyakan email', 'menanyakanemail', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP transaksi tidak perlu menanyakan email 1635259693_e77de25dd742d748674f.htm', 36, 1),
(145, 'SOP Pencatatan & Verifikasi Data Alamat Email Pelanggan', 'emailpelanggan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Pencatatan & Verifikasi Data Alamat Email Pelanggan 1635259742_c7d76d9568394de81a85.pdf', 35, 1),
(146, 'SOP Update Informasi Berakhirnya Diskon Tarif Rumah Tangga Mampu 900 VA Rp.52,- Per kWh', 'rumahtanggamampu', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Update Informasi Berakhirnya Diskon Tarif Rumah Tangga Mampu 900 VA Rp.52,- Per kWh 1635259823_1ac90e20f7a3948fed73.pdf', 34, 1),
(147, 'SOP Permintaan Data Alamat Email dan Nomor Handphone Pelanggan', 'nomorpelanggan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Permintaan Data Alamat Email dan Nomor Handphone Pelanggan 1635260073_3ef3479731de68648b09.pdf', 33, 1),
(148, 'SOP Kegiatan Survey Kepuasan Pelanggan', 'kepuasanpelanggan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Kegiatan Survey Kepuasan Pelanggan 1635260155_e09808b6bad79e71ebbb.pdf', 32, 1),
(149, 'SOP penutupan perubahan tarif di PLN 123', 'penutupan-perubahan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP penutupan perubahan tarif di PLN 123 1635260204_81dd6c25cc3c02c623e2.png', 31, 1),
(150, 'Mekanisme Blocking Token dan Informasi Saldo Piutang Pelanggan pada AP2T', 'blocking', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Mekanisme Blocking Token dan Informasi Saldo Piutang Pelanggan pada AP2T 1635260270_29113246997c2728f113.pdf', 30, 1),
(151, '1. SOP Penyampaian Kompensasi atas Gangguan PTL (Data Kompensasi Tersedia pada Aplikasi)', '1sop', NULL, 3, '', 'nav-icon far fa-circle text-warning', '1. SOP Penyampaian Kompensasi atas Gangguan PTL (Data Kompensasi Tersedia pada Aplikasi) 1635260303_76a34e4f442e0888f3d9.pdf', 29, 1),
(152, '2. SOP Penyampaian Kompensasi atas Gangguan PTL (Data Kompensasi Belum Tersedia pada Aplikasi)', '2sop', NULL, 3, '', 'nav-icon far fa-circle text-warning', '2. SOP Penyampaian Kompensasi atas Gangguan PTL (Data Kompensasi Belum Tersedia pada Aplikasi) 1635260334_5acf71452c453c255eaf.pdf', 28, 1),
(153, 'SOP Pengenaan PPN atas Biaya Penyambungan, Tarif R3 Daya di atas 6.600 VA', 'soppengenaan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Pengenaan PPN atas Biaya Penyambungan, Tarif R3 Daya di atas 6.600 VA 1635260398_272a0b0edeed8f45cc8e.pdf', 27, 1),
(154, 'SOP Program Kegiatan Pemeriksaan & Penggantian kWh Meter Prabayar', 'kwhmeterprabayar', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Kegiatan Pemeriksaan & Penggantian kWh Meter Prabayar 1635260477_5591a7dd7e8d4c6f4e5f.pdf', 26, 1),
(155, 'SOP Perubahan Perlakuan Layanan di PLN 123', 'perlakuanlayanan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perubahan Perlakuan Layanan di PLN 123 1635260525_5814f146cc61976eb4c2.pdf', 24, 1),
(156, 'SOP LSP Tarif Bisnis & Industri, Daya 100-200 kVA', 'soplsp', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP LSP Tarif Bisnis & Industri, Daya 100-200 kVA 1635260563_0ff20d81e65ec0646e1f.pdf', 23, 1),
(157, 'SOP Perubahan Data Pelanggan (alamat) via PLN 123 -20190218 -', '20190218 -', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perubahan Data Pelanggan (alamat) via PLN 123 -20190218 - 1635260657_bceb4215e6ece468b515.pdf', 22, 1),
(158, 'Disbali SOP Perubahan Layanan PBPD di PLN UID BALI', 'disbali', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Disbali SOP Perubahan Layanan PBPD di PLN UID BALI 1635260682_7de3b8e71cc6b912c561.pdf', 21, 1),
(159, 'SOP LSP PB 450-82.500 VA Seluruh Tarif', 'soplspselur', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP LSP PB 450-82.500 VA Seluruh Tarif 1635260744_758144707451d84c88e5.pdf', 20, 1),
(160, 'Tata Cara Pembayaran ICONPAY GATEWAY_V1.0.3', 'iconpaygateway', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Tata Cara Pembayaran ICONPAY GATEWAY_V1.0.3 1635260830_8b98205e457cf0b551ac.pdf', 19, 1),
(161, 'PLN SUMUT Kebijakan Probis PLN Area Medan', 'sumutmedan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'PLN SUMUT Kebijakan Probis PLN Area Medan 1635261084_02174163b5e9f6ef858f.pdf', 18, 1),
(162, 'Kelengkapan Data NPWP', 'kelengkapandatnpwp', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Kelengkapan Data NPWP 1635261127_527dab9396037f2f0a5f.htm', 17, 1),
(163, 'Perubahan Bea Materai pada Tagihan Rekening Listrik', 'beamaterai', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Perubahan Bea Materai pada Tagihan Rekening Listrik 1635261195_767bc0452fd4e7866328.htm', 16, 1),
(164, 'Pelayanan Invoice Melalui CC Socmed', 'inovioce', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Pelayanan Invoice Melalui CC Socmed 1635261288_fe96b16dd3f3d22d5951.png', 15, 1),
(165, 'Mekanisme R1 900VA subsidi & nonsubsidi', 'r1900VA', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Mekanisme R1 900VA subsidi & nonsubsidi 1635261408_95ae957d29c9c6cbed86.htm', 14, 1),
(166, 'Penyediaan Lahan Gardu Daya 41.500VA', 'gardufaya', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Penyediaan Lahan Gardu Daya 41.500VA 1635261541_17076b78bb9e13711399.pdf', 13, 1),
(167, 'Layanan Satu Pintu (ke Site) Paket dan Non Paket SLO', 'sloq', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Layanan Satu Pintu (ke Site) Paket dan Non Paket SLO 1635261614_defc9fc5fd30914665c3.pdf', 12, 1),
(168, 'INFORMASI TIDAK DAPAT MELAKUKAN PEMBELIAN LISTRIK', 'infrmasi', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'INFORMASI TIDAK DAPAT MELAKUKAN PEMBELIAN LISTRIK 1635262359_81ddd5457f35e8ca4463.pdf', 11, 1),
(169, 'VERIFIKASI PEMERIKSAAN TIM P2TL', 'timpemeriksaan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'VERIFIKASI PEMERIKSAAN TIM P2TL 1635262437_1b1d14f78c8bcfbe8758.jpg', 10, 1),
(170, 'SOP CIPC MUNCUL DIDEPAN SAAT AKTIF CALL', 'cipc-muncul', NULL, 2, '', 'nav-icon far fa-circle text-warning', 'SOP CIPC MUNCUL DIDEPAN SAAT AKTIF CALLSOP CIPC MUNCUL DIDEPAN SAAT AKTIF CALL 1635322376_7e2b084597e80492376e.pdf', 50, 0),
(171, 'SOP PENGECEKAN SOUND CIPC', 'pengecekansound', NULL, 2, '', 'nav-icon far fa-circle text-warning', 'SOP PENGECEKAN SOUND CIPC 1635322430_96642f73445c58060241.pdf', 51, 0),
(172, 'SOP PENGECEKAN SOUND CIPC', 'penge-', NULL, 2, '', 'nav-icon far fa-circle text-warning', 'SOP PENGECEKAN SOUND CIPC 1635322822_c649d3846bffe391b7fb.pdf', 52, 1),
(173, 'SOP Kordinat google map', 'kordinat', NULL, 2, '', 'nav-icon far fa-circle text-warning', 'SOP Kordinat google map 1635322860_17e36b13058f97a188cc.pdf', 53, 1),
(174, 'SOP IK (SHIELD DISABLED FINESSE)', 'shield', NULL, 2, '', 'nav-icon far fa-circle text-warning', 'SOP IK (SHIELD DISABLED) 1635323053_9ebd43ad9c388b13b4d7.pdf', 54, 1),
(175, 'SOP APKT Pengisian Koordinat Latitute & Longitude Pelanggan', 'KORDINATLANG', NULL, 2, '', 'nav-icon far fa-circle text-warning', 'SOP APKT Pengisian Koordinat Latitute & Longitude Pelanggan 1635323121_728ded1c321c6a46f8f1.pdf', 55, 1),
(177, 'SOP PB Reguler s.d Daya 197 kVA, Update', '197kva', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP PB Reguler s.d Daya 197 kVA, Update 1635324262_ebdf32590f17bd0eb2c9.pdf', 30, 1),
(178, 'Tabel Layanan PS', 'tabellayanan', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'Tabel Layanan PS 1635324355_9af33d8a85c56f9c2eae.htm', 29, 1),
(179, 'Perubahan Script pada Layanan Niaga', 'perubahanscript', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'Perubahan Script pada Layanan Niaga 1635324497_30dc10b387777408a002.pdf', 28, 1),
(180, 'SOP Perlakuan Layanan Laporan Gangguan Instalasi Milik Pelanggan (IML)', 'iml', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan Laporan Gangguan Instalasi Milik Pelanggan (IML) 1635324583_7ab35f57bdf658e4a438.pdf', 27, 0),
(181, 'SOP tower BTS - reklame - Pju update nov 20', 'bts', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP tower BTS - reklame - Pju update nov 20 1635324880_1ceec87fbf89900fbd9b.htm', 26, 1),
(182, 'Data Niaga 1 Phasa 7.700 VA & 11.000 VA Sel Wil (Status s.d 5 Mar 2020) update okt 20', 'phasa7700', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'Data Niaga 1 Phasa 7.700 VA & 11.000 VA Sel Wil (Status s.d 5 Mar 2020) update okt 20 1635325030_24b136a2658038f794a1.htm', 25, 0),
(183, 'Ketentuan PBPD', 'ketpbpd', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'Ketentuan PBPD 1635325897_ec995757fec273d0d250.jpg', 24, 1),
(184, 'Pembatasan Akses & Acuan Lokasi', 'pembatasan', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'Pembatasan Akses & Acuan Lokasi 1635325938_8d64da9bd0532271ad95.jpeg', 23, 1),
(185, 'SOP PD Reguler s.d. Daya 197 kVA (Rev-1)', 'pdreg', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP PD Reguler s.d. Daya 197 kVA (Rev-1) 1635326065_6d8028856749a28cf6d5.pdf', 22, 1),
(186, 'SOP Permohonan PS update Nov 2017', 'psupta', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP Permohonan PS update Nov 2017 1635326171_b58f634713531441f32c.pdf', 21, 1),
(187, 'Revisi SOP Tracking Progres Tindak Lanjut Gangguan', 'revisis', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'Revisi SOP Tracking Progres Tindak Lanjut Gangguan 1635326540_5bb572fbf39fdc06afbd.pdf', 20, 1),
(188, 'SOP Tracking Progres Tindak Lanjut Gangguan - Rev 1', 'trackingg', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP Tracking Progres Tindak Lanjut Gangguan - Rev 1 1635326921_795b97b4abd5b6a65fdc.pdf', 19, 1),
(189, 'PERLAKUAN LAYANAN PRABAYAR', 'perlakuan', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'PERLAKUAN LAYANAN PRABAYAR 1635327014_80b9abbcdd63ace374f6.png', 18, 1),
(190, 'Tusbung', 'Tusbung', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'Tusbung 1635327079_2e42ce7eb5b751d051aa.jpeg', 17, 1),
(192, 'SOP TANGGA DAYA YANG TIDAK DILAYANI DI PLN 123', 'tanngadaya', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TANGGA DAYA YANG TIDAK DILAYANI DI PLN 123 1635327387_a3a77ca6d197d61702a6.pdf', 16, 1),
(193, 'SOP Tracking Progres Tindak Lanjut Gangguan (15032018)', '5032018', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP Tracking Progres Tindak Lanjut Gangguan (15032018) 1635327482_f86ebc6ac2f5e995d8f1.pdf', 15, 1),
(194, 'Perlakuan APKT input update 18 mei 17', 'perlakuanapkt', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'Perlakuan APKT input update 18 mei 17 1635328072_de11e8fde477824cef56.htm', 14, 1),
(195, '1. SOP aplikasi AP2T jika downtime dari tanggal 10 - 13 mei 2013', '2013', NULL, 16, '', 'nav-icon far fa-circle text-warning', '1. SOP aplikasi AP2T jika downtime dari tanggal 10 - 13 mei 2013 1635328187_82fb8f9c76ee01e52111.pdf', 13, 1),
(196, '7. SOP Banyak Padam Tambahan Untuk SOP Perlakuan Layanan (Fix)', 'banyakpadam', NULL, 16, '', 'nav-icon far fa-circle text-warning', '7. SOP Banyak Padam Tambahan Untuk SOP Perlakuan Layanan (Fix) 1635328226_09a010344913b84fb161.pdf', 12, 1),
(197, 'SOP CSO.Tambahan Penjelasan Untuk SOP PB (Katalog Peruntukan) Kirim Site', 'site', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP CSO.Tambahan Penjelasan Untuk SOP PB (Katalog Peruntukan) Kirim Site 1635328308_eca6cdf0622d2d887dce.pdf', 11, 1),
(198, 'Kata-kata (Announcement) CSO selama input manual', 'katakata', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'Kata-kata (Announcement) CSO selama input manual 1635328411_e8d716ba564199f70a35.png', 10, 1),
(199, 'Katalog Tarif Update Juni 2016 update', 'katalog', NULL, 4, '', 'nav-icon far fa-circle text-warning', 'Katalog Tarif Update Juni 2016 update 1635331654_59704c608c546a23fba1.htm', 19, 1),
(200, 'SOP PB (Katalog Peruntukan)', 'soppb', NULL, 4, '', 'nav-icon far fa-circle text-warning', 'SOP PB (Katalog Peruntukan) 1635331754_918f007f775c4454c2b5.pdf', 18, 1),
(201, 'TMP Baru', 'tmp', NULL, 4, '', 'nav-icon far fa-circle text-warning', 'TMP Baru 1635331802_80bbfb6d10523ea63eb6.png', 17, 1),
(202, 'TMP Lama', 'tmplama', NULL, 4, '', 'nav-icon far fa-circle text-warning', 'TMP Lama 1635331939_4c404451569f79446e95.png', 16, 1),
(203, 'Keperluan untuk tarif LT', 'tariflt', NULL, 4, '', 'nav-icon far fa-circle text-warning', 'Keperluan untuk tarif LT 1635332070_b4ad819b34f58277a44f.png', 15, 1),
(204, 'JENIS KOREKSI', 'koresksi', NULL, 4, '', 'nav-icon far fa-circle text-warning', 'JENIS KOREKSI 1635332126_b440b91d78759f91777f.pdf', 14, 1),
(205, 'KODE KOREKSI', 'koekoreksi', NULL, 4, '', 'nav-icon far fa-circle text-warning', 'KODE KOREKSI 1635332172_f9f26a08786210de473e.pdf', 13, 1),
(206, 'JENIS KODE MUTASI', 'kodemutasi', NULL, 4, '', 'nav-icon far fa-circle text-warning', 'JENIS KODE MUTASI 1635332240_17310ef101e2fe9bdfdc.pdf', 12, 1),
(207, 'EMIN PS', 'emin', NULL, 4, '', 'nav-icon far fa-circle text-warning', '8. EMIN PS 1635332268_b178b4347bc3defa0058.jpg', 11, 1),
(208, 'BTS ADDEMDUM PKS TOWER BERSAMA GROUP', 'adendum', NULL, 4, '', 'nav-icon far fa-circle text-warning', 'BTS ADDEMDUM PKS TOWER BERSAMA GROUP 1635332316_629ce6df039d6a2ce0ac.pdf', 10, 1),
(209, 'Rekap Tarif Tenaga Listrik 2014-2020', 'rekaptarif', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'Rekap Tarif Tenaga Listrik 2014-2020 1635332593_5a87c2002c6172ac6988.htm', 23, 0),
(210, 'TTL Oktober - Desember 2020', 'ttl2020', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'TTL Oktober - Desember 2020 1635332721_457c2987b3e389630989.pdf', 22, 1),
(211, 'CASE BERHITUNG rev', 'caserev', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'CASE BERHITUNG rev 1635332756_c8cbdbd46ba5cc91ffbe.htm', 21, 1),
(212, 'Permen ESDM No. 28 Tahun 2016', 'permen28', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'Permen ESDM No. 28 Tahun 2016 1635332859_542d2bb440d56eae2711.pdf', 20, 1),
(213, 'Permen ESDM No. 29 Tahun 2016', 'permen29', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'Permen ESDM No. 29 Tahun 2016 1635332896_df15a4ddcf6168dcae22.pdf', 19, 1),
(214, 'Perhitungan KWH dan Rekening 2016', 'rek2016', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'Perhitungan KWH dan Rekening 2016 1635341853_9b03be276d01fb079e4c.htm', 18, 1),
(215, 'Biaya Keterlambatan PERMEN ESDM No 33 Tahun 2014', 'no332014', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'Biaya Keterlambatan PERMEN ESDM No 33 Tahun 2014 1635341989_f064e827376dad2cc916.pdf', 17, 1),
(216, 'Biaya Penyambungan', 'Biaya-Penyambungan', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'Biaya Penyambungan 1635342056_f093c24bf6a30a4707d1.htm', 16, 1),
(217, 'informasi perubahan kompensasi TMP (2015)', 'tmp2015', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'informasi perubahan kompensasi TMP (2015) 1635342186_561d8d9c4db7b176a34a.pdf', 15, 1),
(218, 'P2TL', 'P2TL', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'P2TL 1635342224_b2a5a5c9d54f6868162d.htm', 14, 1),
(219, 'UJL', 'UJL', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'UJL 1635342313_7c3e5490d4daf44df3ee.htm', 13, 1),
(220, 'UJL SK DIR No. 424 tentang UJL.pdf', 'ujl424', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'UJL SK DIR No. 424 tentang UJL.pdf 1635342370_5cab465341821b671dde.pdf', 12, 1),
(221, 'UJL Tanya Jawab seputar UJL 26 Juni 2013 - REKENING', 'ujl-tanya-jawab', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'UJL Tanya Jawab seputar UJL 26 Juni 2013 - REKENING 1635342403_bf63f52cc33943063001.pdf', 11, 1),
(222, 'contoh PERHITUNGAN UJL', 'perhitunganujl', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'contoh PERHITUNGAN UJL 1635342439_f9af2e42433eb0e6e761.pdf', 10, 1),
(223, 'ALAMAT PLN SE INDONESIA UPDATE MEI 2018', 'meidataselindo2018', NULL, 6, '', 'nav-icon far fa-circle text-warning', 'ALAMAT PLN SE INDONESIA UPDATE MEI 2018 1635342626_6ce4ec23f4dda2a1df7c.htm', 12, 1),
(224, 'Kode No Telpon Se Indonesia', 'kodesindo', NULL, 6, '', 'nav-icon far fa-circle text-warning', 'Kode No Telpon Se Indonesia 1635342856_b519428abe75ba184268.pdf', 11, 1),
(225, 'LOKASI PERBATASAN WILAYAH BALIKPAPAN', 'bppperbatasan', NULL, 6, '', 'nav-icon far fa-circle text-warning', 'LOKASI PERBATASAN WILAYAH BALIKPAPAN 1635342897_307cb7230a1a00523447.htm', 10, 1),
(226, 'CARA BELI TOKEN VIA INTERNET BANKING', 'tokenbanking', NULL, 8, '', 'nav-icon far fa-circle text-warning', 'CARA BELI TOKEN VIA INTERNET BANKING 1635343106_b8646bc872bbab4446f8.pdf', 17, 1),
(227, 'CARA PEMBELIAN TOKEN BBRP ATM', 'tokenatm', NULL, 8, '', 'nav-icon far fa-circle text-warning', 'CARA PEMBELIAN TOKEN BBRP ATM 1635343157_bb300bde36aff2381dd5.pdf', 16, 1),
(228, 'denominasi token', 'denominasi-token', NULL, 8, '', 'nav-icon far fa-circle text-warning', 'denominasi token 1635343204_38a4e550cac455d4071d.jpg', 15, 1),
(229, 'Indikator Tempering LPB', 'IndikatorTemperingLPB', NULL, 8, '', 'nav-icon far fa-circle text-warning', 'Indikator Tempering LPB 1635343239_193bda14ca5b5a7cd4fc.pdf', 14, 1),
(230, 'Istilah-Istilah Prabayar', 'istilahprabyar', NULL, 8, '', 'nav-icon far fa-circle text-warning', 'Istilah-Istilah Prabayar 1635343278_1379998a8d3bd453b784.pdf', 13, 1),
(231, 'KWH METER LPB', 'kwhmeter', NULL, 8, '', 'nav-icon far fa-circle text-warning', 'KWH METER LPB 1635343313_74056159dea7ec403ffe.pdf', 12, 1),
(232, 'SHORTCODE METER PRABAYAR', 'shortcode', NULL, 8, '', 'nav-icon far fa-circle text-warning', 'SHORTCODE METER PRABAYAR 1635343369_0aa25ef4881270e1af1c.htm', 11, 1),
(233, 'STATUS TAMPER PRABAYAR', 'tamperprabayar', NULL, 8, '', 'nav-icon far fa-circle text-warning', 'STATUS TAMPER PRABAYAR 1635343406_6b1d649d7103033267a0.htm', 10, 1),
(234, 'DAFTAR DAYA PERALATAN LISTRIK', 'dayaperalatanlistrik', NULL, 9, '', 'nav-icon far fa-circle text-warning', 'DAFTAR DAYA PERALATAN LISTRIK 1635343613_d68b0487a56b5bcb76ea.pdf', 13, 1),
(235, 'ISTILAH KELISTRIKAN', 'ISTILAHKELISTRIKAN', NULL, 9, '', 'nav-icon far fa-circle text-warning', 'ISTILAH KELISTRIKAN 1635343852_0ee499df0b2b0f91ca8c.htm', 12, 1),
(236, 'MCB sebagai Proteksi dan Pembatas Daya Listrik', 'mcbproteks', NULL, 9, '', 'nav-icon far fa-circle text-warning', 'MCB sebagai Proteksi dan Pembatas Daya Listrik 1635344021_6efd33e21195b27aa2f8.htm', 11, 1),
(237, 'STANDAR LAYANAN GANGGUAN TEKNIK', 'gangguantekhnik', NULL, 9, '', 'nav-icon far fa-circle text-warning', 'STANDAR LAYANAN GANGGUAN TEKNIK 1635344067_98c77eaf19a6686e10cd.htm', 10, 1),
(238, 'DAFTAR LOKET PPOB KALTIMRA', 'loketppobka', NULL, 10, '', 'nav-icon far fa-circle text-warning', 'DAFTAR LOKET PPOB KALTIMRA 1635344175_09088de5dc3551e09765.htm', 10, 1),
(239, 'Fotovoltaik - Juklak Pelaksanaan Fotovoltaik', 'fotovoltaik', NULL, 11, '', 'nav-icon far fa-circle text-warning', 'Fotovoltaik - Juklak Pelaksanaan Fotovoltaik 1635344485_fe7f8055affb25aa7a2f.pdf', 19, 1),
(240, 'Fotovoltaik - Permen ESDM 17 2013 Fotovoltaik', 'fotovotau=ik2013', NULL, 11, '', 'nav-icon far fa-circle text-warning', 'Fotovoltaik - Permen ESDM 17 2013 Fotovoltaik 1635344647_32903a618db5843eb001.pdf', 18, 1),
(241, 'Fotovoltaik -Informasi Produk FOTOVOLTAIK (5 jan 2015)', 'fotjan2015', NULL, 11, '', 'nav-icon far fa-circle text-warning', 'Fotovoltaik -Informasi Produk FOTOVOLTAIK (5 jan 2015) 1635344695_0bb63be085e6c3264110.pdf', 17, 1),
(243, 'Pemanfaatan Energi Listrik dari Fotovoltaik oleh Pelanggan PT PLN ', 'pemanfaatan', NULL, 11, '', 'nav-icon far fa-circle text-warning', 'Pemanfaatan Energi Listrik dari Fotovoltaik oleh Pelanggan PT PLN  1635344885_f429ae0680d5fa216b33.pdf', 16, 1),
(244, 'Listrik Pintar Komunikasi Dua Arah - Bahan Sosialisasi Umum', 'kmnikasi', NULL, 11, '', 'nav-icon far fa-circle text-warning', 'Listrik Pintar Komunikasi Dua Arah - Bahan Sosialisasi Umum 1635345011_a5445488598e88c21701.pdf', 14, 1),
(245, 'NFC - SOP Layanan Prabayar Dengan Teknologi NFC DI AP2T', 'nfcap2t', NULL, 11, '', 'nav-icon far fa-circle text-warning', 'NFC - SOP Layanan Prabayar Dengan Teknologi NFC DI AP2T 1635345103_98c47f2737cca96e4054.pdf', 13, 1),
(246, 'PANDUAN PB ONLINE OK', 'PANDUAN-PB-ONLINE-OK', NULL, 11, '', 'nav-icon far fa-circle text-warning', 'PANDUAN PB ONLINE OK 1635345171_fb70fc03f7787a7f7a5e.pdf', 12, 1),
(247, 'PERDIR 0066.K_DIR_2014 Listrik Pintar Komunikasi Dua Arah', 'perdir', NULL, 11, '', 'nav-icon far fa-circle text-warning', 'PERDIR 0066.K_DIR_2014 Listrik Pintar Komunikasi Dua Arah 1635345210_28d32cecece2a1db3f89.pdf', 11, 1),
(248, 'INFORMASI APLIKASI PLN MOBEL', 'mobel', NULL, 11, '', 'nav-icon far fa-circle text-warning', 'INFORMASI APLIKASI PLN MOBEL 1635345237_e3bbbe2fd48bbe17d10a.pdf', 10, 1),
(249, 'DAFTAR PJU ALL SITE (Kirim ke Site)', 'dafatrpju', NULL, 12, '', 'nav-icon far fa-circle text-warning', 'DAFTAR PJU ALL SITE (Kirim ke Site) 1635345403_4f71b9efb7ed1da51bfb.htm', 13, 1),
(250, 'PPJ KALIMANTAN', 'ppjkaltim', NULL, 12, '', 'nav-icon far fa-circle text-warning', 'PPJ KALIMANTAN 1635345504_07f1bfa4e2f18f68c36d.htm', 12, 1),
(251, 'ALAMAT KONSUIL 2', 'kpsnul2', NULL, 13, '', 'nav-icon far fa-circle text-warning', 'ALAMAT KONSUIL 2 1635345682_d15eb37d6ac1e9655ede.htm', 11, 1),
(252, 'ALAMAT PPILN', 'ppiln', NULL, 13, '', 'nav-icon far fa-circle text-warning', 'ALAMAT PPILN 1635345711_8d913496bcf067899bef.htm', 10, 1),
(253, 'MoM KALIBRASI NASIONAL TGL 14-17 OKT 2019 DI ICON+ MAMPANG', 'mampang', NULL, 14, '', 'nav-icon far fa-circle text-warning', 'MoM KALIBRASI NASIONAL TGL 14-17 OKT 2019 DI ICON+ MAMPANG 1635346147_150ae3e618855bdfe1ce.pdf', 11, 0),
(254, 'MOM KALIBRSI NASIONAL OKTOBER 2019', '2019kalibrasi', NULL, 14, '', 'nav-icon far fa-circle text-warning', 'MOM KALIBRSI NASIONAL OKTOBER 2019 1635346198_75d5db60ab3b165b454a.pdf', 10, 1),
(255, 'SOP PLN TJSL Marketplace & PLN Mobile', 'tjsl', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP PLN TJSL Marketplace & PLN Mobile 1636525360_e1a26e473ffa5b55f562.pdf', 127, 1),
(258, 'SOP Perlakuan Layanan Laporan Gangguan Instalasi Milik Pelanggan (IML) Rev-11', 'SOP-IML-REV-11', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan Laporan Gangguan Instalasi Milik Pelanggan (IML) Rev-11 1637118070_0e6dbe6c80824c4c6c95.pdf', 128, 1),
(265, 'TESTESTES', 'sopsept2021', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT terupdate September 2021 1637219181_4646bd8cf88519a6336a.htm', 129, 0),
(266, 'SOP TERPUSAT update November 2021', 'SOP-NOV-2021', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update November 2021 1637743246_2bb8f558b7d56a3edc1c.htm', 108, 0),
(268, 'SOP Promo Paket Data Telkomsel bagi Pengunduh PLN Mobile', 'SOPPromoTelkomselMobile', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Promo Paket Data Telkomsel bagi Pengunduh PLN Mobile 1637964229_3f26fd7db91d7cbdf464.pdf', 129, 1),
(269, 'SOP Perlakuan Layanan Laporan Gangguan Instalasi Milik Pelanggan (IML) untuk Pelanggan UP3 Makassar Selatan', 'NEWS-2DES-2021', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan Laporan Gangguan Instalasi Milik Pelanggan (IML) untuk Pelanggan UP3 Makassar Selatan 1638404846_dad62615fb5ddeed2681.pdf', 130, 1),
(270, 'PROMO PLN', 'PROMO-PLN', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'PROMO PLN 1638406371_b1c14417907d31e11e61.pdf', 131, 1),
(271, 'SOP TERPUSAT update Desember 2021', 'SOP-DES-2021', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Desember 2021 1638415826_f6acafa37e4b631967db.htm', 31, 0),
(272, 'SOP Giveaway Cuan & Update Info Gelegar Cuan PLN Mobile', 'cuanpln', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Giveaway Cuan & Update Info Gelegar Cuan PLN Mobile 1638447893_47eb023d8b44b8b7eee5.pdf', 132, 0),
(273, 'SOP Laporan Keluhan Display pada APP Tertera Periksa', 'SOPLaporanKeluhan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Laporan Keluhan Display pada APP Tertera Periksa 1640307786_e77203dcc290e031bab1.pdf', 133, 0),
(275, 'SOP Perpanjangan Electrinet Lifestyle s.d 30 Juni 2022', 'Electrinet', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan Electrinet Lifestyle s.d 30 Juni 2022 1644652674_dda998003a002f398ec7.pdf', 135, 1),
(276, 'PK Penutupan LSP Selain Tarif B&I Daya 100-200 kVA', 'LSP', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'PK Penutupan LSP Selain Tarif B&I Daya 100-200 kVA 1644652727_4edc62bc0d87502015dd.pdf', 136, 1),
(277, 'SOP Laporan Keluhan Display pada APP Tertera Periksa - Rev1', 'SOPLayananKeluhanDisplaypadaAppp', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Laporan Keluhan Display pada APP Tertera Periksa - Rev1 1645172408_554e50fa238cf72e9b24.pdf', 137, 0),
(278, 'Evaluasi Masing masing Kanal Layanan', 'EvaluasiMasingmasingKanalLayanan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Evaluasi Masing masing Kanal Layanan 1645758537_ba5e3328e2f72eebc9eb.pdf', 138, 1),
(280, 'SOP Perubahan Script Layanan pada Transaksi Niaga (PBPD) di CC PLN 123', 'SOPPerubahanScriptLayananpadaTransaksiNiagaPBPDdiCC123', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perubahan Script Layanan pada Transaksi Niaga (PBPD) di CC PLN 123 1645758676_dc19675a5131777ef8ff.pdf', 140, 1),
(281, 'SOP Perlakuan Layanan untuk Laporan Berulang Laporan Melebihi SLA ', 'SOPperlakuanLayaanan', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan untuk Laporan Berulang Laporan Melebihi SLA BARUUU 1645759007_54097327bef728470229.pdf', 139, 0),
(282, 'SOP Perlakuan Layanan untuk Laporan Berulang & Laporan Melebihi SLA - Rev1', 'berulang', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan untuk Laporan Berulang & Laporan Melebihi SLA - Rev1 1647518285_78d07b7fefa0aeee5c0e.pdf', 141, 1),
(283, 'SOP Perubahan Script Layanan pada Transaksi Niaga (PBPDPS) di CC PLN 123-Rev1', 'SOPPerubahanScriptLayananpadaTransaksiNiagaPBPDPSdiCC123-Rev1', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perubahan Script Layanan pada Transaksi Niaga (PBPDPS) di CC PLN 123-Rev1 1647947589_2480c8d86731e5027a38.pdf', 142, 1),
(284, 'SOP Perlakuan Layanan untuk Laporan Berulang & Laporan Melebihi SLA - Rev2', 'SOPPerlakuanLayananuntukLaporanRev2', NULL, 3, 'nav-bar', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan untuk Laporan Berulang & Laporan Melebihi SLA - Rev2 1648211520_783e25baf57a67cefa16.pdf', 143, 1),
(285, 'SOP Laporan Keluhan Display pada APP Tertera Periksa - Rev2', 'SOPLaporanKeluhanDisplaypadaAPPTerteraPeriksaRev2', NULL, 3, 'nav-bar', 'nav-icon far fa-circle text-warning', 'SOP Laporan Keluhan Display pada APP Tertera Periksa - Rev2 1648211935_3501476b627576c1cae2.pdf', 144, 0);
INSERT INTO `tb_menu` (`id_menu`, `menu`, `url`, `controller`, `menu_id`, `jenis_menu`, `icon`, `path_pdf`, `sort_menu`, `is_active`) VALUES
(286, 'SOP Perubahan Tarif PPN di Tagihan Listrik, Non Tag Listrik & Pembelian Token', 'SOPPerubahanTarifPPNdiTagihanListrikNonTagListrikPembelianToken', NULL, 3, 'nav-bar', 'nav-icon far fa-circle text-warning', 'SOP Perubahan Tarif PPN di Tagihan Listrik, Non Tag Listrik & Pembelian Token 1648211980_d2ea95c3ad5c3ea3b0e0.pdf', 146, 1),
(287, 'SOP Program Super EVeryday-Promo PB bagi Pemilik KBLBB', 'SOPProgramSuperEVerydayPromoPBbagiPemilikKBLBB', NULL, 3, 'nav-bar', 'nav-icon far fa-circle text-warning', 'SOP Program Super EVeryday-Promo PB bagi Pemilik KBLBB 1648297206_9fefca5bcfbde27d8080.pdf', 147, 1),
(288, 'SOP Promo Tambah Daya Home Charging Services - Integrasi APKT ListriQu', 'SOPPromoTambahDayaHomeChargingServicesIntegrasiAPKTListriQu', NULL, 3, 'nav-bar', 'nav-icon far fa-circle text-warning', 'SOP Promo Tambah Daya Home Charging Services - Integrasi APKT ListriQu 1648297252_08aa404f1eb5f2babb6a.pdf', 148, 1),
(291, 'SOP Produk Layanan Ramadhan Berkah (Promo Tambah Daya untuk Rumah Ibadah)', 'SOPProdukLayananRamadhanBerkah', NULL, 3, 'nav-bar', 'nav-icon far fa-circle text-warning', 'SOP Produk Layanan Ramadhan Berkah (Promo Tambah Daya untuk Rumah Ibadah) 1648532905_0574456be8d50605a17a.pdf', 149, 1),
(292, 'SOP Perpanjangan Promo Tambah Daya Nyaman Kompor Induksi s.d 31 Desember 2022', 'SOPPerpanjanganPromoTambahDayaNyamanKomporInduksis.d31Desember2022', NULL, 3, 'nav-bar', 'nav-icon far fa-circle text-warning', 'SOP Perpanjangan Promo Tambah Daya Nyaman Kompor Induksi s.d 31 Desember 2022 1648639974_db4359a27e0bf73fc836.pdf', 150, 1),
(293, 'Materi OVO Promo Regular dan New User', 'materiOVO', NULL, 3, 'nav-bar', 'nav-icon far fa-circle text-warning', 'Materi OVO Promo Regular dan New User 1648951923_44dcf6dccc9efdda0664.pdf', 151, 1),
(294, 'SOP Promo Tambah Daya Lebaran Ceria sd 31 Mei 2022', 'Lebaran', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Promo Tambah Daya Lebaran Ceria sd 31 Mei 2022 1649306949_c024a8488492aa84eb39.pdf', 152, 0),
(295, 'SOP Penyampaian Informasi Data Instalatir Resmi pada Website ESDM Siujang', 'Siujang', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Penyampaian Informasi Data Instalatir Resmi pada Website ESDM Siujang 1650530513_9c53deaa6d7296566e9f.pdf', 154, 1),
(296, 'SOP TERPUSAT April 2022 pln mobile', 'sop30', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT April 2022 pln mobile 1651218734_dc542d126613f13fbabb.xlsx', 30, 0),
(297, 'SOP Terpusat APRIL 2022', 'SOPterpusatapril20221', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP Terpusat APRIL 2022 1651219754_72e3596d22fb3a9b8e8d.htm', 31, 0),
(298, 'TESTES', 'JADWALL', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'TESTES 1651219571_8c3e3c66b05732fcd337.xlsx', 33, 0),
(299, 'JADWAL MEI TES', 'JADWAL', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'JADWAL MEI TES 1651220779_8d9135f8c1a9fe21c49d.htm', 35, 0),
(300, 'SOP Terpusat MEI 2022', 'SOPterpusatmei2022', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP Terpusat MEI 2022 1652344943_e4fd8221bacf3d54bef4.htm', 32, 0),
(301, 'SOP Mekanisme Pengajuan menjadi Seller & Penanganan Permasalahan di CCPLN123 Promo Lebaran Ceria', 'newsupdate156', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Mekanisme Pengajuan menjadi Seller & Penanganan Permasalahan di CCPLN123 Promo Lebaran Ceria 1652597525_ce8a02b6bfc5bd6dfafa.pdf', 156, 0),
(302, 'SOP Status Informasi Progres Laporan Keluhan pada APP Tertera Periksa', 'newsupdate157', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Status Informasi Progres Laporan Keluhan pada APP Tertera Periksa 1652597648_f7247452cd0b9a687e6d.pdf', 157, 1),
(303, 'SOP Pengeluaran Pelanggan R1 450 VA Non DTKS menjadi Pelanggan Non Subsidi', 'newsupdate158', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Pengeluaran Pelanggan R1 450 VA Non DTKS menjadi Pelanggan Non Subsidi 1652597813_b4888ced3a041b4bcecb.pdf', 158, 1),
(307, 'SOP Pembatalan Kebijakan Pengeluaran Pelanggan R1 450 VA Non DTKS menjadi Pelanggan Non Subsidi', 'newsupdate159', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Pembatalan Kebijakan Pengeluaran Pelanggan R1 450 VA Non DTKS menjadi Pelanggan Non Subsidi 1653448177_dfb64007bf31635d933e.pdf', 159, 1),
(317, 'SOP TERPUSAT update Juni 2022', 'sop31', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Juni 2022 1654510645_b1eb7d0f2b6d7942e7c7.htm', 31, 0),
(318, 'SOP Laporan Keluhan Display pada APP Tertera Periksa-Rev3', 'SOPLaporanKeluhanDisplayDiagnosis-Rev3', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Laporan Keluhan Display pada APP Tertera Periksa, Seluruh Wilayah Sudah Menggunakan Self Diagnosis-Rev3 1654930121_9a09ffbf41abeda3148f.pdf', 160, 1),
(319, 'PENYESUAIAN TARIF TENAGA LISTRIK 2022', 'PENYESUAIANTARIFTENAGALISTRIK2022', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'PENYESUAIAN TARIF TENAGA LISTRIK 2022 1655104051_d3c99dee53ff977a0e93.pdf', 170, 1),
(321, 'SOP Penyesuaian Tarif Adjustment', 'sop172', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Penyesuaian Tarif Adjustment 1655349474_67bf32507cd490eb5574.pdf', 172, 1),
(322, 'SOP TERPUSAT update Juni 2022', 'SOPNEW32', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Juni 2022 1655456504_51feafa5796d9d8ee6b9.htm', 32, 0),
(323, 'TTL 2022', 'TTL2022-24', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'TTL 2022 1655457856_5f3c103c7de482e15255.png', 24, 1),
(325, 'SOP TERPUSAT update Juli 2022 on progres2', 'SOPNEW34', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Juli 2022 on progres2 1657687487_1e12ea8ffcfe02f95e4d.htm', 34, 0),
(326, 'SOP TERPUSAT update Juli 2022 on progres2', 'SOP35', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Juli 2022 on progres2 1657688829_73634dcfb831a8a3a357.htm', 35, 0),
(327, 'SOP Informasi terkait SPKLU, SPLU & Charge.In', 'SOPInformasiterkaitSPKLU', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Informasi terkait SPKLU, SPLU & Charge.In 1657701831_03fdc967ba9679c6ada0.pdf', 173, 1),
(328, 'SOP TERPUSAT update Juli 2022 on progres3', 'SOP36', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Juli 2022 on progres3 1658723157_3c68d1bdf2bafc628555.htm', 36, 0),
(330, 'SOP Program Pemerintah Konversi Kompor', 'SOPProgram176', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Pemerintah Konversi Kompor 1658887051_962ad5f77ec9e6a998d8.pdf', 176, 1),
(331, 'Resume Hasil Test Call Pertama (27 & 28 Jul 22)', 'resumetestcall177', NULL, 3, '', 'nav-icon far fa-circle text-warning', '1. Resume Hasil Test Call Pertama (27 & 28 Jul 22) 1658997696_0cc386f25921e5affdc4.pdf', 177, 1),
(332, 'Materi Sosialisasi Kompor Induksi_v4', 'newsupdate178', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Materi Sosialisasi Kompor Induksi_v4 1659060613_e3a1896d9ba8369c19f6.pdf', 178, 1),
(333, 'Data Niaga 1 Phasa 7.700 VA & 11.000 VA Sel Wil (Status s.d 5 Mar 2020) update januari 2022', 'SOP37', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'Data Niaga 1 Phasa 7.700 VA & 11.000 VA Sel Wil (Status s.d 5 Mar 2020) update januari 2022 1659422330_4a4dee44ce83f6000beb.htm', 37, 1),
(347, 'Penetapan tarif layanan premium Juli-September 2022', 'TTL25', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'Penetapan tarif layanan premium Juli-September 2022 1660441605_5e770b1632a263494cc0.jpeg', 25, 1),
(348, 'Penyampaian Mekanisme CH Pengaduan Kompor Induksi', 'newsupdate179', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Penyampaian Mekanisme CH Pengaduan Kompor Induksi 1660631409_715c868b6dedb441ed49.pdf', 179, 1),
(349, 'Sop Complain pada Kompor Induksi_16 Agustus 2022', 'newsupdate180', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Sop Complain pada Kompor Induksi_16 Agustus 2022 1660640024_d9fe8a29db12eccf6a88.pdf', 180, 1),
(350, 'SOP Layanan Nyalakan Kemerdekaan, Promo BP Tambah Daya & PS Kemerdekaan', 'newsupdate181', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Layanan Nyalakan Kemerdekaan, Promo BP Tambah Daya & PS Kemerdekaan 1660837631_520a5994ab10453fedaf.pdf', 181, 1),
(353, 'Rekap Tarif Tenaga Listrik 2014-2020', 'TTUJL26', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'Rekap Tarif Tenaga Listrik 2014-2020 1662362353_5d1b74c2cea705fc9255.htm', 26, 1),
(354, 'SOP Perubahan Salam Pembuka, Hari Pelanggan Nasional Tgl 4 September 2022', 'newsupdate182', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perubahan Salam Pembuka, Hari Pelanggan Nasional Tgl 4 September 2022 1662454650_2fb699b5d6cd673a8deb.pdf', 182, 1),
(355, 'SOP TERPUSAT update September 2022', 'SOP42', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update September 2022 1662454884_4488c8ead7d8721eef0c.htm', 42, 0),
(356, 'SOP TERPUSAT update September 2022 - 2', 'SOP43', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update September 2022 - 2 1662542131_0d7c21a70a6a4706cbe6.htm', 43, 0),
(357, 'SOP TERPUSAT update September 2022 - 3', 'SOP44', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update September 2022 - 3 1662626008_7c01261404e91ee8595e.htm', 44, 0),
(358, 'SOP Program ICONNET SEHATI', 'newsupdate183', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program ICONNET SEHATI 1662951433_eb668daa80ae6b03c16d.pdf', 183, 1),
(359, 'SOP Program Gamification PLN Mobile', 'newsupdate184', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Program Gamification PLN Mobile 1662959884_55c10a836b87f1d9d7e7.pdf', 184, 1),
(362, 'SOP TERPUSAT update September 2022 - 4', 'SOP45', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update September 2022 - 4 1663123763_4ddaa3c4e406837737fd.htm', 45, 0),
(364, 'SOP TERPUSAT update September 2022 - 5', 'SOP46', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update September 2022 - 5 1663147094_6e0630a68dbc02043d31.htm', 46, 0),
(365, 'SOP TERPUSAT update Oktober 2022', 'SOP47', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Oktober 2022 1665732506_a0f46991b4a2e2189268.htm', 47, 0),
(366, 'SOP KEGIATAN PENDATAAN', 'SOPKEGIATAN', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP KEGIATAN PENDATAAN 1666762866_05d4932f9134d78ec893.pdf', 185, 1),
(367, 'SOP Layanan SPBKLU', 'SOPLAYANANSPBKLU', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Layanan SPBKLU 1666769043_8a335ea7a224f092912d.pdf', 186, 1),
(371, 'SOP TERPUSAT update Oktober 2022 -3', 'SOP48', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Oktober 2022 -3 1667204188_a551fd6b04a265ca219d.htm', 48, 0),
(372, 'SOP TERPUSAT update November 1', 'SOPNOV1', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update November 1 1669260844_f0f87fa07d644b99a7a6.htm', 587, 0),
(375, 'SOP TERPUSAT update Desember 2022', '39', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Desember 2022 1670575179_d738b77f8d1e01f0c902.htm', 39, 0),
(377, 'SOP Layanan Satu Pintu Plus', 'newsupdate187', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Layanan Satu Pintu Plus 1672274684_ee76dcc17821723b2c63.pdf', 187, 1),
(378, 'SOP Penambahan Informasi Penanganan pada Status Selesai Padam Meluas di APKT', 'newsupdate188', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Penambahan Informasi Penanganan pada Status Selesai Padam Meluas di APKT 1672303083_d379062d3d5875db6107.pdf', 188, 1),
(379, 'Penetapan Tariff Adjustment TW 1 2023', 'TTL27', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'Penetapan Tariff Adjustment TW 1 2023 1672630699_3e701d87183bbf88e05c.pdf', 27, 1),
(382, 'SKEMA PEMBUKAAN TRANSAKSI NIAGA CC 123', 'newsupdate189', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SKEMA PEMBUKAAN TRANSAKSI NIAGA CC 123 1674629988_d53cb47f8d8c9a92382e.pdf', 189, 1),
(384, 'SOP PBPDPS 25012023', 'SOP49', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP PBPDPS 25012023 1674632225_1997b3f9d77e6dcd4f1c.htm', 49, 0),
(385, 'SOP Program Memberi Terang Membangun Negeri (Diskon BP 50% Rumah Tangga DTKS & Daerah 3T)', 'newsupdate191', NULL, 3, 'nav-bar', 'nav-icon far fa-circle text-warning', 'SOP Program Memberi Terang Membangun Negeri (Diskon BP 50% Rumah Tangga DTKS & Daerah 3T) 1675940544_3676a2367076da7ec38a.pdf', 191, 1),
(386, 'rangkuman PROMO 2023', 'newsupdate192', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'rangkuman PROMO 2023 1676014844_f2b86222b9737df11930.htm', 192, 1),
(387, 'Daftar daerah 3T BU', 'newsupdate193', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Daftar daerah 3T BU 1676250036_9c20b3dcf10330dd100a.pdf', 193, 1),
(391, 'SOP Promo Tambah Daya Terangi Ramadhan sd 30 April 2023', 'newsupdate194', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Promo Tambah Daya Terangi Ramadhan sd 30 April 2023 1679284212_e11effb1cff8eee7f4b7.pdf', 194, 1),
(392, 'SOP Promo Tambah Daya Ramadhan Berkah untuk Rumah Ibadah sd 30 April 2023', 'newsupdate195', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Promo Tambah Daya Ramadhan Berkah untuk Rumah Ibadah sd 30 April 2023 1679284260_b700c82a492d70a33623.pdf', 195, 1),
(397, 'PENYESUAIAN TARIF TENAGA LISTRIK (TARIFF ADJUSTMENT)APRIL-JUNI 2023', 'TTL28', NULL, 17, '', 'nav-icon far fa-circle text-warning', 'PENYESUAIAN TARIF TENAGA LISTRIK (TARIFF ADJUSTMENT)APRIL-JUNI 2023 1680768642_74dda995c462f129d4a6.jpeg', 28, 1),
(400, 'Data SPKLU 20 April 2023', 'newsupdate196', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Data SPKLU 20 April 2023 1681967118_5f78e39e8dca60ed70ee.htm', 196, 1),
(401, 'SOP Promo Tambah Daya Produk Layanan Hari Belanja Nasional PLN 2023', 'newsupdate197', NULL, 3, 'nav-bar', 'nav-icon far fa-circle text-warning', 'SOP Promo Tambah Daya Produk Layanan Hari Belanja Nasional PLN 2023 1682946729_fe8fe2207a5622be19a0.pdf', 197, 1),
(415, 'English', 'english', NULL, 0, 'side-bar', 'nav-icon fas fa-book', 'default.pdf', 14, 1),
(416, 'Listrik Padam Satu Rumah englsh', 'english1', NULL, 415, '', 'nav-icon far fa-circle text-warning', 'Listrik Padam Satu Rumah englsh 1685071131_5eedd5e6a3dbda796d70.pdf', 1, 1),
(423, 'SOP TERPUSAT update Mei 2023-update niaga', 'SOP51', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Mei 2023-update niaga 1685848923_7473abd545bfdb62eede.htm', 51, 0),
(425, 'SOP Promo Tambah Daya Home Charging Services - Perubahan Menu EV Home Charging di APKT', 'newsupdate198', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Promo Tambah Daya Home Charging Services - Perubahan Menu EV Home Charging di APKT 1686041706_f7cf7b190adadb3245eb.pdf', 198, 1),
(427, 'SOP Promo Gratis Ongkir Pembelian Produk UMKM di Marketplace PLN Mobile ( wilayah )', 'newsupdate199', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Promo Gratis Ongkir Pembelian Produk UMKM di Marketplace PLN Mobile ( wilayah ) 1686147314_aa9dd1d1fe9baa3fe299.pdf', 199, 1),
(428, 'SOP Gelegar Double Promo Diskon & Gratis Ongkir di Marketplace PLN Mobile', 'newsupdate200', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Gelegar Double Promo Diskon & Gratis Ongkir di Marketplace PLN Mobile 1686801795_cc6eac29bb25112f60d7.pdf', 200, 1),
(430, 'SOP TERPUSAT update Juni', 'SOP52', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Juni 1687166477_1360cbf512f88b190f85.htm', 52, 0),
(431, 'SOP TERPUSAT update Juni - pengajuan niaga', 'sop53', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Juni - pengajuan niaga 1687249492_d888a791604a0b365035.htm', 53, 0),
(433, 'SOP TERPUSAT update Juni -tabel layanan', 'SOP54', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Juni -tabel layanan 1687839398_9086fd7d6610cc7860bb.xls', 54, 0),
(435, 'SOP TERPUSAT update Juni -tabel layanan', 'SOP55', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update Juni -tabel layanan 1687839856_e8d723aee71ccebf0b9a.htm', 55, 0),
(436, 'BATAM', 'BATAM001', NULL, 0, 'side-bar', 'nav-icon fas fa-book', 'BATAM 1687849785_78f3d6549aed305fb436.jpeg', 15, 1),
(437, 'BATAM', 'BATAM002', NULL, 436, '', 'nav-icon far fa-circle text-warning', 'BATAM 1687850060_ba7c6882013bbb23be50.jpeg', 1, 1),
(444, 'SOP TERPUSAT Juni 30', 'SOP58', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT Juni 30 1688123621_7162019966c2e4388e3f.htm', 58, 0),
(446, 'SOP TERPUSAT Juli', 'SOP59', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT Juli 1689122351_02bd0e4717bfc58976c6.htm', 59, 0),
(450, 'Program Implementasi Smart Meter AMI', 'Program Implementasi Smart Meter AMI60', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Program Implementasi Smart Meter AMI 1689163368_949f429f6da7c82f6438.pdf', 202, 0),
(451, 'Program Implementasi Smart Meter AMI', 'SOP60', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Program Implementasi Smart Meter AMI 1689163742_6a4b2e4d766a610f9909.pdf', 203, 1),
(452, 'SOP TERPUSAT English', 'english2', NULL, 415, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT English 1689866476_b57749c4afa7c9e9de25.htm', 2, 0),
(454, 'SOP TERPUSAT English', 'english3', NULL, 415, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT English2 1689867047_0e794f78c09f6bcba065.htm', 3, 1),
(455, 'SOP Perlakuan Layanan Informasi Produk ELEKTRINET di CC PLN 123-Transfer Layanan- (2)', 'newsupdate204', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perlakuan Layanan Informasi Produk ELEKTRINET di CC PLN 123-Transfer Layanan- (2) 1690507088_1e2a4942c16d6b6c3a88.pdf', 204, 1),
(456, 'SOP Layanan Gebyar Kemerdekaan 2023 Keringanan Biaya Penyambungan untuk Tambah Daya', 'SOP205', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Layanan Gebyar Kemerdekaan 2023 Keringanan Biaya Penyambungan untuk Tambah Daya 1690951332_734709a94430ac8e7f62.pdf', 205, 1),
(457, 'Gelegar PLN Mobile Ags-Des 2023', 'newsupdate205', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Gelegar PLN Mobile Ags-Des 2023 1692756778_99346f429a11c7bbf730.pdf', 206, 1),
(460, 'SOP TERPUSAT AGUSTUS 2023', 'SOP62', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT AGUSTUS 2023 1692861425_4c5b5b1b16c81ecc1718.htm', 62, 0),
(461, 'SOP TERPUSAT AGUSTUS', 'SOP63', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT AGUSTUS 1692862037_ff46c4daa949ef5e2385.htm', 63, 0),
(462, 'SOP TERPUSAT AGUSTUS 2023', 'SOP64', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT AGUSTUS 2023 1692862550_35874fcba55a21356f7d.htm', 64, 0),
(463, 'SOP Perubahan Salam Pembuka, Hari Pelanggan Nasional Tgl 4 September 2023 (Digital)', 'newsupdate206', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perubahan Salam Pembuka, Hari Pelanggan Nasional Tgl 4 September 2023 (Digital) 1693489522_7a69ce49edfd166badf6.pdf', 207, 1),
(464, 'SOP Perubahan Salam Pembuka, Hari Pelanggan Nasional Tgl 4 September 2023 (Voice)', 'newsupdate207', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Perubahan Salam Pembuka, Hari Pelanggan Nasional Tgl 4 September 2023 (Voice) 1693489565_9781510bff4bbc6a1dce.pdf', 208, 1),
(465, 'SOP Promo Biaya Penyambungan untuk Tambah Daya dalam rangka HPN 2023', 'newsupdate208', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Promo Biaya Penyambungan untuk Tambah Daya dalam rangka HPN 2023 1693489584_2d01bd996ae630644a9b.pdf', 209, 1),
(470, 'SOP TERPUSAT update 14 September 2023 -3', 'SOP69', NULL, 16, '', 'nav-icon far fa-circle text-warning', 'SOP TERPUSAT update 14 September 2023 -3 1694677991_8e3898962ff27d1fd638.htm', 66, 1),
(471, 'Pejabat PLN', 'newsupdate210', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'Pejabat PLN 1694998192_1f53fd79d4cce1f99ff5.png', 210, 1),
(472, 'SOP Laporan Display APP Tertera Periksa, Seluruh Wilayah Sudah Menggunakan Self Diagnosis_Rev4', 'newsupdate211', NULL, 3, '', 'nav-icon far fa-circle text-warning', 'SOP Laporan Display APP Tertera Periksa, Seluruh Wilayah Sudah Menggunakan Self Diagnosis_Rev4 1695184193_7dddf4eb77af8d5eb4c6.pdf', 211, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pdf`
--

CREATE TABLE `tb_pdf` (
  `id_pdf` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) NOT NULL,
  `keterangan` varchar(1000) DEFAULT NULL,
  `path_pdf` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'kholil@jagoancomputer.net', 'admin', '$2y$10$y7PwWNIc1HKv0xTHsykFi.dOPxx7jReDCA1JoAhFxM2AJyAZrMPRO', NULL, NULL, NULL, '6df1b30be7c107e8376db46a84eb0d48', NULL, NULL, 1, 0, '2021-10-28 04:27:41', '2021-10-28 04:27:41', NULL),
(8, 'ts@gmail.com', 'adminlla', '$2y$10$squ0UuTHFImpVCk10JPi8Otok7kZYekrC0PtZBSUKAhy/hQetjO9K', NULL, NULL, NULL, '7ecbf15fe13f41faf3864794af1fa994', NULL, NULL, 0, 0, '2022-01-25 03:00:11', '2022-01-25 03:00:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tb_pdf`
--
ALTER TABLE `tb_pdf`
  ADD PRIMARY KEY (`id_pdf`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id_menu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT for table `tb_pdf`
--
ALTER TABLE `tb_pdf`
  MODIFY `id_pdf` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
