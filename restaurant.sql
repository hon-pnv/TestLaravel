-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 12:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'pho', '2022-07-01 01:50:07', '2022-07-01 01:50:07'),
(2, 'com', '2022-07-01 01:50:07', '2022-07-01 01:50:07'),
(3, 'com', '2022-07-01 01:50:07', '2022-07-01 01:50:07'),
(4, 'com', '2022-07-01 01:50:07', '2022-07-01 01:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_01_025338_create_categories_table', 1),
(6, '2022_07_01_025721_create_restaurans_table', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurans`
--

CREATE TABLE `restaurans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurans`
--

INSERT INTO `restaurans` (`id`, `name`, `category_id`, `description`, `image`, `amount`, `created_at`, `updated_at`) VALUES
(11, 'Alfreda Kshlerin', 1, 'Holden Daugherty V', 'hinh2.jpg', '1.00', '2022-07-01 01:56:11', '2022-07-01 01:56:11'),
(12, 'Cleveland Kihn', 2, 'Darren Boehm', 'hinh1.jpg', '5.00', '2022-07-01 01:56:11', '2022-07-01 01:56:11'),
(13, 'Wilma Stracke', 3, 'Alexandra Boehm', 'hinh2.jpg', '7.00', '2022-07-01 01:56:11', '2022-07-01 01:56:11'),
(14, 'Miss Nicolette Haag II', 3, 'Meghan Douglas', 'hinh3.jpg', '3.00', '2022-07-01 01:56:11', '2022-07-01 01:56:11'),
(15, 'Claude Pfannerstill', 2, 'Dr. Willa Funk IV', 'hinh2.jpg', '8.00', '2022-07-01 01:56:11', '2022-07-01 01:56:11'),
(16, 'Prof. Judson Kirlin', 1, 'Edwardo Hamill V', 'hinh2.jpg', '2.00', '2022-07-01 01:56:11', '2022-07-01 01:56:11'),
(17, 'Amelie Gislason', 1, 'Idell Willms', 'hinh1.jpg', '6.00', '2022-07-01 01:56:11', '2022-07-01 01:56:11'),
(18, 'Theresia Larson', 3, 'Sebastian Morissette III', 'hinh4.jpg', '4.00', '2022-07-01 01:56:11', '2022-07-01 01:56:11'),
(19, 'Dr. Easter Glover', 1, 'Jameson Toy', 'hinh1.jpg', '9.00', '2022-07-01 01:56:11', '2022-07-01 01:56:11'),
(20, 'Marisa Pfeffer', 4, 'Anais Bogisich', 'hinh1.jpg', '0.00', '2022-07-01 01:56:11', '2022-07-01 01:56:11'),
(21, 'Mrs. Josephine Schinner III', 3, 'Dr. Billy Blick II', 'hinh3.jpg', '5.00', '2022-07-01 02:24:27', '2022-07-01 02:24:27'),
(22, 'Daren Schmeler', 4, 'Manuel Orn II', 'hinh3.jpg', '4.00', '2022-07-01 02:24:27', '2022-07-01 02:24:27'),
(23, 'Brooklyn Hintz', 4, 'Ms. Melba Mertz IV', 'hinh2.jpg', '6.00', '2022-07-01 02:24:27', '2022-07-01 02:24:27'),
(24, 'Mr. Stanford Dietrich PhD', 3, 'Dr. Trystan Botsford', 'hinh2.jpg', '3.00', '2022-07-01 02:24:27', '2022-07-01 02:24:27'),
(25, 'Dr. Effie Kirlin Sr.', 3, 'Mr. Buford Daniel II', 'hinh1.jpg', '7.00', '2022-07-01 02:24:27', '2022-07-01 02:24:27'),
(26, 'Prof. Elmira Treutel MD', 4, 'Mr. D\'angelo Greenfelder DVM', 'hinh2.jpg', '8.00', '2022-07-01 02:24:27', '2022-07-01 02:24:27'),
(27, 'Prof. Shawn Bode', 1, 'Claudia Muller', 'hinh2.jpg', '0.00', '2022-07-01 02:24:27', '2022-07-01 02:24:27'),
(28, 'Miss Kaylah Kris', 3, 'Eileen Cartwright', 'hinh2.jpg', '9.00', '2022-07-01 02:24:27', '2022-07-01 02:24:27'),
(29, 'Jackie Yost III', 3, 'Isaias Smith', 'hinh4.jpg', '2.00', '2022-07-01 02:24:27', '2022-07-01 02:24:27'),
(30, 'Margaretta Lang', 1, 'Miss Erica Rogahn III', 'hinh1.jpg', '1.00', '2022-07-01 02:24:27', '2022-07-01 02:24:27'),
(31, 'Beautiful restaurant', 2, 'Number 4', '1656668106_hinh1.jpg', '$3000', '2022-07-01 02:35:06', '2022-07-01 02:35:06'),
(32, 'fdsfd', 3, 'Number 1', '1656668153_hinh4.jpg', '$3000', '2022-07-01 02:35:53', '2022-07-01 02:35:53'),
(33, 'Beautiful restaurant', 3, 'Number 1', '1656668413_hinh5.png', '$3000', '2022-07-01 02:40:13', '2022-07-01 02:40:13'),
(34, 'Beautiful restaurant', 1, 'Number 2', '1656668768_hinh5.png', '$3000', '2022-07-01 02:46:08', '2022-07-01 02:46:08'),
(35, 'Beautiful restaurant', 2, 'Number 2', '1656668814_hinh5.png', '$3000', '2022-07-01 02:46:54', '2022-07-01 02:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `restaurans`
--
ALTER TABLE `restaurans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurans_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurans`
--
ALTER TABLE `restaurans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `restaurans`
--
ALTER TABLE `restaurans`
  ADD CONSTRAINT `restaurans_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
