-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2022 at 10:20 PM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Ikonic_coding_challenge`
--

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `id` bigint UNSIGNED NOT NULL,
  `requested_from` bigint UNSIGNED NOT NULL,
  `requested_to` bigint UNSIGNED NOT NULL,
  `status` enum('pending','approve') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`id`, `requested_from`, `requested_to`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'pending', '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(2, 1, 3, 'pending', '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(3, 1, 4, 'pending', '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(4, 1, 5, 'pending', '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(5, 1, 6, 'approve', '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(6, 1, 7, 'approve', '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(7, 1, 8, 'approve', '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(8, 1, 9, 'approve', '2022-12-09 12:20:25', '2022-12-09 12:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_12_08_081743_create_connections_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tayyab', 'tayyab@gmail.com', NULL, '$2y$10$TAKMUjxbhBDdDdXuWAJ2iOfCqlMlafJdaO7Ef0Jbq59dcAahXCzCm', NULL, NULL, NULL, NULL, '2022-12-09 12:20:24', '2022-12-09 12:20:24'),
(2, 'Asim', 'asim@gmail.com', NULL, '$2y$10$.kSwFSqrqWSOZjKMo1/ITOssjtZ//rAiMfKF/GPEbdBwtKp3XyNmq', NULL, NULL, NULL, NULL, '2022-12-09 12:20:24', '2022-12-09 12:20:24'),
(3, 'Qasim', 'qasim@gmail.com', NULL, '$2y$10$Wx6SLin9uGJLTudWDLlNFuq3H1dLeQ8Um0GY6ncQhKY79PNYJLzAq', NULL, NULL, NULL, NULL, '2022-12-09 12:20:24', '2022-12-09 12:20:24'),
(4, 'aqil', 'aqil@gmail.com', NULL, '$2y$10$zQKX6rQNUh6ZwIAOKtl5H.N7lECqOWX8cauo6UCyxd5I8lA0cr892', NULL, NULL, NULL, NULL, '2022-12-09 12:20:24', '2022-12-09 12:20:24'),
(5, 'Faisal', 'faisal@gmail.com', NULL, '$2y$10$wcMGw5DaVOoOOnOlXBMZ9.sepCDwESZ7XVgXHAqrz3syssNLo01Nm', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(6, 'Ali', 'ali@gmail.com', NULL, '$2y$10$ootq8KDCfN/565T2bO.Ee.LbzVuA7IkA8lgAzRch2HwHY4TkxJdNW', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(7, 'usman', 'usman@gmail.com', NULL, '$2y$10$op9iAotUotTIN9KgqcMWUuvVnSgFZYpBze1JNn0DdEyj6DD8rKySm', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(8, 'salam', 'salam@gmail.com', NULL, '$2y$10$oMYc5rZZwALHs9BHZK1R/uMzK1Tq/pltoR8nwWtK..E8IRkYzmiQm', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(9, 'zain', 'zain@gmail.com', NULL, '$2y$10$0UEvbRYVxQ.EhmiG2NX8A.xFqAJkchPaJNpWzHaEXg90vuqpZ1ryC', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(10, 'amir', 'amir@gmail.com', NULL, '$2y$10$xVLmKQgS4zny66WhSrMoyOuPZf28xgMFki25buZCF2HOeCciZFzX2', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(11, 'zmeer', 'zmeer@gmail.com', NULL, '$2y$10$IB5/doQwvhxXyKwUpAWGOOzp4sw0.RjuPhWchR7D2qzx2PtpbNQPS', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(12, 'sami', 'sami@gmail.com', NULL, '$2y$10$iYnjgTw4GYUko3L/Gal.POKGkQkd9qadNRuMFmCScejs7g0Qbl7ou', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(13, 'talha', 'talha@gmail.com', NULL, '$2y$10$uQdF7ow4OWtRP8lwTz7uWuVOul7yZ1u3qoYrPs3BscpDBh7Y1/Fu.', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(14, 'tariq', 'tariq@gmail.com', NULL, '$2y$10$htrvSlx7G6zguKPDGMczguTtNHtehry9IuZEynn/qzCJql9Lh.bbW', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25'),
(15, 'nabeel', 'nabeel@gmail.com', NULL, '$2y$10$PVaYbEXt/m/QOzAQzy.8eepHFUyL08TERltDnU3YDO4J/8Nr5iz6e', NULL, NULL, NULL, NULL, '2022-12-09 12:20:25', '2022-12-09 12:20:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `connections_requested_from_foreign` (`requested_from`),
  ADD KEY `connections_requested_to_foreign` (`requested_to`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `connections`
--
ALTER TABLE `connections`
  ADD CONSTRAINT `connections_requested_from_foreign` FOREIGN KEY (`requested_from`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `connections_requested_to_foreign` FOREIGN KEY (`requested_to`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
