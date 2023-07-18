-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Jul 18, 2023 at 04:10 PM
=======
-- Generation Time: Jul 18, 2023 at 12:10 PM
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `technician_id`, `services`, `from_time`, `to_time`, `created_at`, `updated_at`, `customer_id`) VALUES
(1, 1, 1, '1,2', '12:00:00', '12:00:00', '2023-07-11 06:43:52', '2023-07-11 06:43:52', NULL),
(2, 1, 2, '13', '01:00:00', '01:00:00', '2023-07-15 02:54:31', '2023-07-15 02:54:31', NULL),
<<<<<<< HEAD
(3, 1, 2, '13', '01:00:00', '01:00:00', '2023-07-15 04:48:29', '2023-07-15 04:48:29', NULL),
(4, 1, 2, '30', '01:00:00', '01:00:00', '2023-07-18 08:35:47', '2023-07-18 08:35:47', 1),
(5, 1, 2, '30', '01:00:00', '01:00:00', '2023-07-18 08:39:49', '2023-07-18 08:39:49', 7);
=======
(3, 1, 2, '13', '01:00:00', '01:00:00', '2023-07-15 04:48:29', '2023-07-15 04:48:29', NULL);
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

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
<<<<<<< HEAD
(2, 1, 'Newcategory', 'purple', 1, '2023-06-15 06:29:51', '2023-06-15 06:29:51'),
(3, 1, 'new c', 'orange', 1, '2023-07-18 06:23:07', '2023-07-18 06:23:07'),
(4, 1, 'tedt', 'darkblue', 1, '2023-07-18 06:29:01', '2023-07-18 06:29:01'),
(5, 1, 'ede', 'purple', 1, '2023-07-18 06:29:38', '2023-07-18 06:29:38');
=======
(2, 1, 'Newcategory', 'purple', 1, '2023-06-15 06:29:51', '2023-06-15 06:29:51');
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

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
<<<<<<< HEAD
(7, 1, 'Shyam', 'Sharma', '9696958585', 1, '2023-06-15 06:28:29', '2023-06-15 06:28:29'),
(8, 1, 'test', 'de', '56565665', 1, '2023-07-18 06:35:17', '2023-07-18 06:35:17');
=======
(7, 1, 'Shyam', 'Sharma', '9696958585', 1, '2023-06-15 06:28:29', '2023-06-15 06:28:29');
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

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
<<<<<<< HEAD
(2, 1, 'New Package', 4000.00, '/uploads/1686830557.jpg', 1, '2023-06-15 06:32:37', '2023-06-15 06:32:37'),
(3, 1, 'adss', 100.00, '/uploads/1689682430.jpg', 1, '2023-07-18 06:43:51', '2023-07-18 06:43:51');
=======
(2, 1, 'New Package', 4000.00, '/uploads/1686830557.jpg', 1, '2023-06-15 06:32:37', '2023-06-15 06:32:37');
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

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
<<<<<<< HEAD
(2, 1, 2, 'Package 2', '/uploads/1688473395.webp', 30, 20.00, 'xzxxz', 1, '2023-07-04 06:53:15', '2023-07-08 06:24:13'),
(3, 1, 1, 'Package', '/uploads/1689682687.jpg', 56, 30000.00, 'xccxcc', 1, '2023-07-18 06:48:07', '2023-07-18 06:48:07'),
(4, 1, 1, 'Package2', '/uploads/1689682922.jpg', 30, 10.00, 'zxdsdsd', 1, '2023-07-18 06:52:02', '2023-07-18 06:52:02');
=======
(2, 1, 2, 'Package 2', '/uploads/1688473395.webp', 30, 20.00, 'xzxxz', 1, '2023-07-04 06:53:15', '2023-07-08 06:24:13');
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

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
<<<<<<< HEAD
(3, 1, 'test new', 'dsds', '/uploads/1688029091.webp', '4,3', NULL, 'mon|11:00:00,mon|5:00:00,mon|6:00:00,mon|14:00:00', 1, '2023-06-29 03:28:11', '2023-06-29 03:28:11'),
(4, 1, 'test new', 'Doe2', '/uploads/1689683430.jpg', NULL, NULL, NULL, 1, '2023-07-18 07:00:30', '2023-07-18 07:00:30');
=======
(3, 1, 'test new', 'dsds', '/uploads/1688029091.webp', '4,3', NULL, 'mon|11:00:00,mon|5:00:00,mon|6:00:00,mon|14:00:00', 1, '2023-06-29 03:28:11', '2023-06-29 03:28:11');
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

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
<<<<<<< HEAD
(30, '1', '1', '2023-07-18 07:12:25', '2023-07-18 07:12:25');
=======
(13, '1', '1', '2023-07-15 02:23:06', '2023-07-15 02:23:06'),
(14, '1', '2', '2023-07-15 02:34:21', '2023-07-15 02:34:21');
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

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
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
<<<<<<< HEAD
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
=======
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
<<<<<<< HEAD
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
=======
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
<<<<<<< HEAD
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
=======
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

--
-- AUTO_INCREMENT for table `temp_services`
--
ALTER TABLE `temp_services`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
>>>>>>> 1c45237dd3da861d77465ac1a5a3de89ca788d7b

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
