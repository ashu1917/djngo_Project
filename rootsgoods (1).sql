-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 03:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rootsgoods`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `holdername` varchar(250) DEFAULT NULL,
  `accountnumber` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `ifsc` varchar(250) DEFAULT NULL,
  `bank_name` varchar(250) DEFAULT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `status`, `phone`) VALUES
(1, 'admin', 'admin@codes.com', 'pbkdf2_sha256$390000$sinj1YDhK2YIGlEh6845wb$iO50XbFKyVcZ0eSJ2XqT07DuLk8/C/tfl852tqX9fsg=', '1', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `admins_notifications`
--

CREATE TABLE `admins_notifications` (
  `id` int(11) NOT NULL,
  `roleid` varchar(250) DEFAULT NULL,
  `userid` varchar(250) DEFAULT NULL,
  `productid` varchar(250) DEFAULT NULL,
  `datetime` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins_qualityparam`
--

CREATE TABLE `admins_qualityparam` (
  `id` int(11) NOT NULL,
  `certificat_id` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `cropid` varchar(250) DEFAULT NULL,
  `testid` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins_transactionhistory`
--

CREATE TABLE `admins_transactionhistory` (
  `id` int(11) NOT NULL,
  `userid` varchar(250) DEFAULT NULL,
  `productid` varchar(250) DEFAULT NULL,
  `amount` varchar(250) DEFAULT NULL,
  `datetime` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `id` int(11) NOT NULL,
  `fid` varchar(250) DEFAULT NULL,
  `productid` varchar(250) DEFAULT NULL,
  `userid` varchar(250) DEFAULT NULL,
  `datetime` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add users', 7, 'add_users'),
(26, 'Can change users', 7, 'change_users'),
(27, 'Can delete users', 7, 'delete_users'),
(28, 'Can view users', 7, 'view_users'),
(29, 'Can add roles', 8, 'add_roles'),
(30, 'Can change roles', 8, 'change_roles'),
(31, 'Can delete roles', 8, 'delete_roles'),
(32, 'Can view roles', 8, 'view_roles'),
(33, 'Can add account', 9, 'add_account'),
(34, 'Can change account', 9, 'change_account'),
(35, 'Can delete account', 9, 'delete_account'),
(36, 'Can view account', 9, 'view_account'),
(37, 'Can add admin', 10, 'add_admin'),
(38, 'Can change admin', 10, 'change_admin'),
(39, 'Can delete admin', 10, 'delete_admin'),
(40, 'Can view admin', 10, 'view_admin'),
(41, 'Can add notification', 11, 'add_notification'),
(42, 'Can change notification', 11, 'change_notification'),
(43, 'Can delete notification', 11, 'delete_notification'),
(44, 'Can view notification', 11, 'view_notification'),
(45, 'Can add qualityparam', 12, 'add_qualityparam'),
(46, 'Can change qualityparam', 12, 'change_qualityparam'),
(47, 'Can delete qualityparam', 12, 'delete_qualityparam'),
(48, 'Can view qualityparam', 12, 'view_qualityparam'),
(49, 'Can add transactionhistory', 13, 'add_transactionhistory'),
(50, 'Can change transactionhistory', 13, 'change_transactionhistory'),
(51, 'Can delete transactionhistory', 13, 'delete_transactionhistory'),
(52, 'Can view transactionhistory', 13, 'view_transactionhistory'),
(53, 'Can add notifications', 11, 'add_notifications'),
(54, 'Can change notifications', 11, 'change_notifications'),
(55, 'Can delete notifications', 11, 'delete_notifications'),
(56, 'Can view notifications', 11, 'view_notifications'),
(57, 'Can add crops', 14, 'add_crops'),
(58, 'Can change crops', 14, 'change_crops'),
(59, 'Can delete crops', 14, 'delete_crops'),
(60, 'Can view crops', 14, 'view_crops'),
(61, 'Can add auction', 15, 'add_auction'),
(62, 'Can change auction', 15, 'change_auction'),
(63, 'Can delete auction', 15, 'delete_auction'),
(64, 'Can view auction', 15, 'view_auction'),
(65, 'Can add quaitytestuser', 16, 'add_quaitytestuser'),
(66, 'Can change quaitytestuser', 16, 'change_quaitytestuser'),
(67, 'Can delete quaitytestuser', 16, 'delete_quaitytestuser'),
(68, 'Can view quaitytestuser', 16, 'view_quaitytestuser'),
(69, 'Can add product', 17, 'add_product'),
(70, 'Can change product', 17, 'change_product'),
(71, 'Can delete product', 17, 'delete_product'),
(72, 'Can view product', 17, 'view_product');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, '123', '2023-03-16 13:05:46.000000', 0, 'admin', 'Nitish', 'kumar', 'admin@codes.com', 0, 1, '2023-03-26 13:05:46.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `name`, `status`, `image`) VALUES
(1, 'Rabi', '1', NULL),
(2, 'Kharif', '1', 'pearl-millet-204091_1920.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(9, 'admins', 'account'),
(10, 'admins', 'admin'),
(15, 'admins', 'auction'),
(14, 'admins', 'crops'),
(11, 'admins', 'notifications'),
(17, 'admins', 'product'),
(16, 'admins', 'quaitytestuser'),
(12, 'admins', 'qualityparam'),
(8, 'admins', 'roles'),
(13, 'admins', 'transactionhistory'),
(7, 'admins', 'users'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-25 06:24:01.114657'),
(2, 'auth', '0001_initial', '2023-03-25 06:24:07.264887'),
(3, 'admin', '0001_initial', '2023-03-25 06:24:08.821743'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-25 06:24:08.870688'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-25 06:24:08.927681'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-25 06:24:09.588605'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-25 06:24:10.180595'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-25 06:24:10.587491'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-25 06:24:10.646479'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-25 06:24:11.140477'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-25 06:24:11.189470'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-25 06:24:11.229410'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-25 06:24:11.325397'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-25 06:24:11.449382'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-25 06:24:11.634359'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-25 06:24:11.928330'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-25 06:24:12.198292'),
(18, 'sessions', '0001_initial', '2023-03-25 06:24:12.505264'),
(19, 'admins', '0001_initial', '2023-03-25 06:37:21.512921'),
(20, 'admins', '0002_users_delete_student', '2023-03-25 06:37:22.012859'),
(21, 'admins', '0003_users_status', '2023-03-25 06:39:15.847298'),
(22, 'admins', '0004_alter_users_aadharno_alter_users_email_and_more', '2023-03-25 06:43:18.589301'),
(23, 'admins', '0005_roles', '2023-03-25 09:12:34.542885'),
(24, 'admins', '0006_account', '2023-03-28 04:59:50.321405'),
(25, 'admins', '0007_admin_notification_qualityparam_transactionhistory', '2023-03-28 05:17:56.927465'),
(26, 'admins', '0008_delete_notification_delete_qualityparam_and_more', '2023-03-28 05:19:26.286701'),
(27, 'admins', '0009_notification', '2023-03-28 05:20:46.970983'),
(28, 'admins', '0010_qualityparam_transactionhistory', '2023-03-28 05:21:24.690439'),
(29, 'admins', '0011_delete_notification_delete_qualityparam_and_more', '2023-03-28 05:24:33.322720'),
(30, 'admins', '0012_delete_admin', '2023-03-28 05:24:33.443703'),
(31, 'admins', '0013_notification', '2023-03-28 05:25:30.648814'),
(32, 'admins', '0014_rename_notification_notifications', '2023-03-28 05:27:28.451674'),
(33, 'admins', '0015_qualityparam_transactionhistory', '2023-03-28 05:30:00.986257'),
(34, 'admins', '0016_alter_users_table', '2023-03-28 05:32:08.401904'),
(35, 'admins', '0017_admin', '2023-03-28 05:33:00.535630'),
(36, 'admins', '0018_crops', '2023-03-28 05:35:06.931402'),
(37, 'admins', '0019_auction', '2023-03-28 05:42:51.062495'),
(38, 'admins', '0020_quaitytestuser', '2023-03-28 05:48:29.905683'),
(39, 'admins', '0021_product', '2023-03-28 05:50:18.959551'),
(40, 'admins', '0022_remove_admin_name', '2023-03-28 05:55:29.726540'),
(41, 'admins', '0023_admin_phone', '2023-03-28 07:34:46.555294'),
(42, 'admins', '0024_crops_image', '2023-03-29 08:04:39.516390'),
(43, 'admins', '0025_product_image_product_name', '2023-03-30 10:18:18.983503'),
(44, 'admins', '0026_product_roleid', '2023-03-30 10:31:50.413247'),
(45, 'admins', '0027_alter_product_image', '2023-03-30 11:18:09.364432'),
(46, 'admins', '0028_remove_product_roleid', '2023-03-30 11:27:12.945671'),
(47, 'admins', '0029_product_roleid', '2023-03-30 11:28:07.444276');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('c77g819ueontjp24b7x488yioaxq1my2', '.eJyrVkpMyc3Mi89MUbIy1IFyUnMTM3OUrCA8h-T8lNRiveT8XCWYfGlxalFeYm4qTAlQIr44tbg4Mx-ot6Igs6hSycrcyMCgFgALMCCU:1phqao:CXgXHHxRBgYBp1KRXhMLfTJhZqDrICHbSNSdzm6yn1M', '2023-03-30 13:37:22.572090'),
('f1rxp2ymecp4ob630oaubn7w42pzj83f', '.eJyrVkpMyc3Mi89MUbIy1IFyUnMTM3OUrCA8h-T8lNRiveT8XCUdpfji1OLizHygkoqCzKJKJStzIwMDmLbS4tSivMTcVJhOpVoABe0glA:1phoIt:JOIoZ-_7AY8YIx2KsKqbgQ51dGckzKcKcSaSBKgktvk', '2023-03-30 11:10:43.809568'),
('o5xb9964891e1bh8nwlbikau2g3b6f7e', '.eJyrVkpMyc3Mi89MUbIy1IFyUnMTM3OUrCA8h-T8lNRiveT8XCWYfGlxalFeYm4qTAlQIr44tbg4Mx-ot6Igs6hSycrcyMCgFgALMCCU:1pi8mv:wmzeCLYkE6mIk8mM3cqIoY6s4uGMRHvMhTPS94w4FRE', '2023-03-31 09:03:05.217553'),
('utg8t4mpphiiperenoik9fc1g1lz01op', '.eJyrVkpMyc3Mi89MUbJSSk7UM1DSgYqk5iZm5kAEDYGC8cWpxcWZ-UDxioLMokolK3MjA4NaAIpzFGk:1ph5Un:k_3f2DeXJyebAY8_7LUzCwmmtQ612aCuWtM6cdDQO4Y', '2023-03-28 11:20:01.766517');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `userid` varchar(250) DEFAULT NULL,
  `cropid` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `quality` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `datetime` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `roleid` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `userid`, `cropid`, `price`, `quality`, `location`, `datetime`, `status`, `image`, `name`, `roleid`) VALUES
(1, '1', '1', '255', 'Best', 'Lucknow', '30/03/2022', '1', NULL, NULL, NULL),
(2, '1', '1', '400', 'Good', 'Varanasi', '30/03/2022', '1', NULL, NULL, NULL),
(5, '26', '1', '200', 'best', NULL, NULL, '1', 'product/home.png', 'abc', '1'),
(6, '14', '1', '205', 'best', NULL, '<module \'datetime\' from \'C:\\\\Users\\\\aja14\\\\AppData\\\\Local\\\\Programs\\\\Python\\\\Python311\\\\Lib\\\\datetime.py\'>', '1', 'product/5985513.png', 'Corn', '2'),
(7, '14', '1', '205', 'best', NULL, '2023-03-31 13:59:21.039520', '1', 'product/5985513_yhGbSOY.png', 'Corn', '2');

-- --------------------------------------------------------

--
-- Table structure for table `qualitytestuser`
--

CREATE TABLE `qualitytestuser` (
  `id` int(11) NOT NULL,
  `userid` varchar(250) DEFAULT NULL,
  `productid` varchar(250) DEFAULT NULL,
  `certificateno` varchar(250) DEFAULT NULL,
  `datetime` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `status`) VALUES
(1, 'Farmer', 'farmer', '1'),
(2, 'Buyer', 'buyer', '1'),
(3, 'Logitics', 'logitics', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `fathername` varchar(250) DEFAULT NULL,
  `aadharno` varchar(250) DEFAULT NULL,
  `roll_id` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `fathername`, `aadharno`, `roll_id`, `status`) VALUES
(1, 'Nitish Guptas', 'nitishkumargupta@gmail.com', '6306139181', '1234567890', 'Sunil Gupta ', '114477885544', '1', '1'),
(3, 'nitish', 'nitishkumar@gmail.com', '6306139171', '12345678', 'sunil', '114477885555', '3', '1'),
(4, 'Rohit Kumar', 'admin@codes.com', '123', '12345678', 'Prajapati', '114455223366', '1', '1'),
(11, 'rahul', 'nitishkumargupta@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(12, 'rahul', 'nitishkumargupta@gmail.co', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(13, 'rahul', 'nitishkumar@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(14, 'rahul', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(15, 'rahul', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(16, 'rahul', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(17, 'rahul', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(18, 'rahul', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(19, 'Nikita', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(20, 'Nikita', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(21, 'Nikita', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(22, 'Nikita', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(23, 'Nikita', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(24, 'Nikita', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(25, 'Nikita', 'nitish@gmail.com', '12345678', '8887652143', 'hhh', '11447885', '1', '1'),
(26, 'Abhinav', 'abhinav@codes.com', 'pbkdf2_sha256$390000$sinj1YDhK2YIGlEh6845wb$iO50XbFKyVcZ0eSJ2XqT07DuLk8/C/tfl852tqX9fsg=', '1144225566', 'Mishra', '112233665544', NULL, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins_notifications`
--
ALTER TABLE `admins_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins_qualityparam`
--
ALTER TABLE `admins_qualityparam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins_transactionhistory`
--
ALTER TABLE `admins_transactionhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auctions`
--
ALTER TABLE `auctions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualitytestuser`
--
ALTER TABLE `qualitytestuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins_notifications`
--
ALTER TABLE `admins_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins_qualityparam`
--
ALTER TABLE `admins_qualityparam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins_transactionhistory`
--
ALTER TABLE `admins_transactionhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auctions`
--
ALTER TABLE `auctions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `qualitytestuser`
--
ALTER TABLE `qualitytestuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
