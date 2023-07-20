-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 02:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_vue3`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `technician_id` int(11) DEFAULT NULL,
  `services` varchar(255) DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `technician_id`, `services`, `from_time`, `to_time`, `status`, `created_at`, `updated_at`, `customer_id`) VALUES
(2, 1, 2, '1', '08:00:00', '08:15:00', 1, '2023-07-20 05:10:12', '2023-07-20 05:10:12', 7),
(3, 1, 2, '1', '09:30:00', '09:45:00', 1, '2023-07-20 05:48:20', '2023-07-20 05:48:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_services`
--

CREATE TABLE `appointment_services` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_services`
--

INSERT INTO `appointment_services` (`id`, `appointment_id`, `service_id`, `created_at`, `updated_at`) VALUES
(2, 4, 1, '2023-07-20 01:46:26', '2023-07-20 01:46:26'),
(3, 5, 1, '2023-07-20 04:48:11', '2023-07-20 04:48:11'),
(4, 5, 2, '2023-07-20 04:48:11', '2023-07-20 04:48:11'),
(5, 6, 1, '2023-07-20 04:48:59', '2023-07-20 04:48:59'),
(6, 6, 2, '2023-07-20 04:48:59', '2023-07-20 04:48:59'),
(7, 7, 1, '2023-07-20 04:50:36', '2023-07-20 04:50:36'),
(8, 7, 2, '2023-07-20 04:50:36', '2023-07-20 04:50:36'),
(9, 8, 1, '2023-07-20 04:55:07', '2023-07-20 04:55:07'),
(10, 8, 2, '2023-07-20 04:55:07', '2023-07-20 04:55:07'),
(11, 9, 1, '2023-07-20 04:57:06', '2023-07-20 04:57:06'),
(12, 9, 2, '2023-07-20 04:57:06', '2023-07-20 04:57:06'),
(13, 10, 1, '2023-07-20 04:59:52', '2023-07-20 04:59:52'),
(14, 10, 2, '2023-07-20 04:59:52', '2023-07-20 04:59:52'),
(15, 11, 1, '2023-07-20 05:00:27', '2023-07-20 05:00:27'),
(16, 11, 2, '2023-07-20 05:00:27', '2023-07-20 05:00:27'),
(17, 12, 1, '2023-07-20 05:01:31', '2023-07-20 05:01:31'),
(18, 12, 2, '2023-07-20 05:01:31', '2023-07-20 05:01:31'),
(19, 13, 1, '2023-07-20 05:01:55', '2023-07-20 05:01:55'),
(20, 13, 2, '2023-07-20 05:01:55', '2023-07-20 05:01:55'),
(21, 14, 1, '2023-07-20 05:02:32', '2023-07-20 05:02:32'),
(22, 14, 2, '2023-07-20 05:02:32', '2023-07-20 05:02:32'),
(23, 15, 1, '2023-07-20 05:03:04', '2023-07-20 05:03:04'),
(24, 15, 2, '2023-07-20 05:03:04', '2023-07-20 05:03:04'),
(25, 1, 1, '2023-07-20 05:07:18', '2023-07-20 05:07:18'),
(26, 2, 1, '2023-07-20 05:10:12', '2023-07-20 05:10:12'),
(27, 3, 1, '2023-07-20 05:48:21', '2023-07-20 05:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Madisin', 'orange', 1, '2023-06-15 06:02:27', '2023-06-15 06:02:27'),
(2, 1, 'Newcategory', 'purple', 1, '2023-06-15 06:29:51', '2023-06-15 06:29:51'),
(3, 1, 'new c', 'orange', 1, '2023-07-18 06:23:07', '2023-07-18 06:23:07'),
(4, 1, 'tedt', 'darkblue', 1, '2023-07-18 06:29:01', '2023-07-18 06:29:01'),
(5, 1, 'ede', 'purple', 1, '2023-07-18 06:29:38', '2023-07-18 06:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `fname`, `lname`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rakesh', 'Verma', '8989898989', 1, '2023-04-21 23:54:57', '2023-06-15 11:23:26'),
(6, 1, 'Ravi', 'Kant', '5868585895', 1, '2023-06-15 06:00:51', '2023-06-15 06:00:51'),
(7, 1, 'Shyam', 'Sharma', '9696958585', 1, '2023-06-15 06:28:29', '2023-06-15 06:28:29'),
(8, 1, 'test', 'de', '56565665', 1, '2023-07-18 06:35:17', '2023-07-18 06:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `name`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'New Package', 4000.00, '/uploads/1686830556.jpg', 1, '2023-06-15 06:32:36', '2023-06-15 06:32:36'),
(2, 1, 'New Package', 4000.00, '/uploads/1686830557.jpg', 1, '2023-06-15 06:32:37', '2023-06-15 06:32:37'),
(3, 1, 'adss', 100.00, '/uploads/1689682430.jpg', 1, '2023-07-18 06:43:51', '2023-07-18 06:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `from_time`, `to_time`, `created_at`, `updated_at`, `user_id`) VALUES
(8, '01:00:00', '01:00:00', '2023-06-27 05:41:51', '2023-06-27 05:41:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `duration` int(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `category_id`, `name`, `image`, `duration`, `price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Package', '/uploads/1688473319.webp', 23, 45.00, 'sdsdd', 1, '2023-07-04 06:51:59', '2023-07-08 06:24:09'),
(2, 1, 2, 'Package 2', '/uploads/1688473395.webp', 30, 20.00, 'xzxxz', 1, '2023-07-04 06:53:15', '2023-07-08 06:24:13'),
(3, 1, 1, 'Package', '/uploads/1689682687.jpg', 56, 30000.00, 'xccxcc', 1, '2023-07-18 06:48:07', '2023-07-18 06:48:07'),
(4, 1, 1, 'Package2', '/uploads/1689682922.jpg', 30, 10.00, 'zxdsdsd', 1, '2023-07-18 06:52:02', '2023-07-18 06:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `id` int(11) NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `date` date DEFAULT NULL,
  `technician_id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `from_time`, `to_time`, `date`, `technician_id`, `appointment_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '08:01:00', '08:02:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:18', '2023-07-20 05:10:12'),
(2, '08:02:00', '08:03:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:18', '2023-07-20 05:10:12'),
(3, '08:03:00', '08:04:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:18', '2023-07-20 05:10:12'),
(4, '08:04:00', '08:05:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:18', '2023-07-20 05:10:12'),
(5, '08:05:00', '08:06:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:18', '2023-07-20 05:10:12'),
(6, '08:06:00', '08:07:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:18', '2023-07-20 05:10:12'),
(7, '08:07:00', '08:08:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:18', '2023-07-20 05:10:12'),
(8, '08:08:00', '08:09:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:18', '2023-07-20 05:10:12'),
(9, '08:09:00', '08:10:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:18', '2023-07-20 05:10:12'),
(10, '08:10:00', '08:11:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:19', '2023-07-20 05:10:12'),
(11, '08:11:00', '08:12:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:19', '2023-07-20 05:10:12'),
(12, '08:12:00', '08:13:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:19', '2023-07-20 05:10:12'),
(13, '08:13:00', '08:14:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:19', '2023-07-20 05:10:12'),
(14, '08:14:00', '08:15:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:19', '2023-07-20 05:10:12'),
(15, '08:15:00', '08:16:00', '2023-07-20', 2, 2, 2, '2023-07-20 05:07:19', '2023-07-20 05:10:12'),
(16, '08:16:00', '08:17:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(17, '08:17:00', '08:18:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(18, '08:18:00', '08:19:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(19, '08:19:00', '08:20:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(20, '08:20:00', '08:21:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(21, '08:21:00', '08:22:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(22, '08:22:00', '08:23:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(23, '08:23:00', '08:24:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(24, '08:24:00', '08:25:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(25, '08:25:00', '08:26:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(26, '08:26:00', '08:27:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(27, '08:27:00', '08:28:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(28, '08:28:00', '08:29:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(29, '08:29:00', '08:30:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(30, '08:30:00', '08:31:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(31, '08:31:00', '08:32:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(32, '08:32:00', '08:33:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(33, '08:33:00', '08:34:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(34, '08:34:00', '08:35:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(35, '08:35:00', '08:36:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(36, '08:36:00', '08:37:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(37, '08:37:00', '08:38:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(38, '08:38:00', '08:39:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(39, '08:39:00', '08:40:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(40, '08:40:00', '08:41:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:19', '2023-07-20 05:07:19'),
(41, '08:41:00', '08:42:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(42, '08:42:00', '08:43:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(43, '08:43:00', '08:44:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(44, '08:44:00', '08:45:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(45, '08:45:00', '08:46:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(46, '08:46:00', '08:47:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(47, '08:47:00', '08:48:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(48, '08:48:00', '08:49:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(49, '08:49:00', '08:50:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(50, '08:50:00', '08:51:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(51, '08:51:00', '08:52:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(52, '08:52:00', '08:53:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(53, '08:53:00', '08:54:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(54, '08:54:00', '08:55:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(55, '08:55:00', '08:56:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(56, '08:56:00', '08:57:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(57, '08:57:00', '08:58:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(58, '08:58:00', '08:59:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(59, '09:01:00', '09:02:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(60, '09:02:00', '09:03:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(61, '09:03:00', '09:04:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(62, '09:04:00', '09:05:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(63, '09:05:00', '09:06:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(64, '09:06:00', '09:07:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(65, '09:07:00', '09:08:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(66, '09:08:00', '09:09:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(67, '09:09:00', '09:10:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(68, '09:10:00', '09:11:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(69, '09:11:00', '09:12:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(70, '09:12:00', '09:13:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(71, '09:13:00', '09:14:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(72, '09:14:00', '09:15:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(73, '09:15:00', '09:16:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(74, '09:16:00', '09:17:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(75, '09:17:00', '09:18:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(76, '09:18:00', '09:19:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:20', '2023-07-20 05:07:20'),
(77, '09:19:00', '09:20:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(78, '09:20:00', '09:21:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(79, '09:21:00', '09:22:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(80, '09:22:00', '09:23:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(81, '09:23:00', '09:24:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(82, '09:24:00', '09:25:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(83, '09:25:00', '09:26:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(84, '09:26:00', '09:27:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(85, '09:27:00', '09:28:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(86, '09:28:00', '09:29:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(87, '09:29:00', '09:30:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(88, '09:30:00', '09:31:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(89, '09:31:00', '09:32:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(90, '09:32:00', '09:33:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(91, '09:33:00', '09:34:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(92, '09:34:00', '09:35:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(93, '09:35:00', '09:36:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(94, '09:36:00', '09:37:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(95, '09:37:00', '09:38:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(96, '09:38:00', '09:39:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(97, '09:39:00', '09:40:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(98, '09:40:00', '09:41:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(99, '09:41:00', '09:42:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(100, '09:42:00', '09:43:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(101, '09:43:00', '09:44:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(102, '09:44:00', '09:45:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(103, '09:45:00', '09:46:00', '2023-07-20', 2, 3, 2, '2023-07-20 05:07:21', '2023-07-20 05:48:21'),
(104, '09:46:00', '09:47:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(105, '09:47:00', '09:48:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(106, '09:48:00', '09:49:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:21', '2023-07-20 05:07:21'),
(107, '09:49:00', '09:50:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:22', '2023-07-20 05:07:22'),
(108, '09:50:00', '09:51:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:22', '2023-07-20 05:07:22'),
(109, '09:51:00', '09:52:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:22', '2023-07-20 05:07:22'),
(110, '09:52:00', '09:53:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:22', '2023-07-20 05:07:22'),
(111, '09:53:00', '09:54:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:22', '2023-07-20 05:07:22'),
(112, '09:54:00', '09:55:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:22', '2023-07-20 05:07:22'),
(113, '09:55:00', '09:56:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:22', '2023-07-20 05:07:22'),
(114, '09:56:00', '09:57:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:22', '2023-07-20 05:07:22'),
(115, '09:57:00', '09:58:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:22', '2023-07-20 05:07:22'),
(116, '09:58:00', '09:59:00', '2023-07-20', 2, NULL, 1, '2023-07-20 05:07:22', '2023-07-20 05:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `image` varchar(225) NOT NULL,
  `services` varchar(255) DEFAULT NULL,
  `schedules` varchar(255) DEFAULT NULL,
  `workingTime` varchar(225) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`id`, `user_id`, `fname`, `lname`, `image`, `services`, `schedules`, `workingTime`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'test new', 'Doe2', '/uploads/1688029002.jpg', '3,4', '8', 'mon|3:00:00,mon|11:00:00,mon|12:00:00', 1, '2023-06-29 03:26:42', '2023-06-29 03:26:42'),
(3, 1, 'test new', 'dsds', '/uploads/1688029091.webp', '4,3', NULL, 'mon|11:00:00,mon|5:00:00,mon|6:00:00,mon|14:00:00', 1, '2023-06-29 03:28:11', '2023-06-29 03:28:11'),
(4, 1, 'test new', 'Doe2', '/uploads/1689683430.jpg', NULL, NULL, NULL, 1, '2023-07-18 07:00:30', '2023-07-18 07:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `temp_services`
--

CREATE TABLE `temp_services` (
  `id` int(11) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `service_id` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temp_services`
--

INSERT INTO `temp_services` (`id`, `user_id`, `service_id`, `created_at`, `updated_at`) VALUES
(30, '1', '1', '2023-07-18 07:12:25', '2023-07-18 07:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$sdWojiUZJS716kPcygyg4.Eq17Nban7MIvQ8pOaYAblGJlqrlLoCS', NULL, '2023-02-08 03:37:16', '2023-02-08 03:37:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_services`
--
ALTER TABLE `appointment_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_services`
--
ALTER TABLE `temp_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointment_services`
--
ALTER TABLE `appointment_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temp_services`
--
ALTER TABLE `temp_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
