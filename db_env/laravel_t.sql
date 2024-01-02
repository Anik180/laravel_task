-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 02, 2024 at 10:23 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_t`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(11, 'Monitor', '2024-01-02 02:11:59', '2024-01-02 02:11:59'),
(10, 'Mouse', '2024-01-02 02:11:23', '2024-01-02 02:11:23'),
(8, 'Laptop', '2024-01-02 02:10:12', '2024-01-02 02:10:12'),
(9, 'Mobile', '2024-01-02 02:10:19', '2024-01-02 02:10:19'),
(12, 'Camera', '2024-01-02 02:12:32', '2024-01-02 02:12:32'),
(13, 'Gadget', '2024-01-02 02:13:13', '2024-01-02 02:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2023_12_31_103554_create_products_table', 2),
(7, '2023_12_31_103627_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(34, 11, 'MSI G32CQ5P 31.5 inch VA 170Hz Curved Gaming Monitor', '5000.00', '47.00', '2024-01-02 02:23:33', '2024-01-02 04:20:01'),
(35, 8, 'Chuwi HeroBook Pro Intel Celeron N4020 14.1 inch Full HD Laptop with Windows 11', '60000.00', '58.00', '2024-01-02 02:23:33', '2024-01-02 04:20:14'),
(31, 12, 'SJCAM SJ4000 Air Full Hd Wi-Fi Waterproof Sports Action Camera', '5800.00', '59.00', '2024-01-02 02:18:48', '2024-01-02 04:04:49'),
(30, 9, 'OPPO A17k Smartphone (3/64GB)', '12990.00', '48.00', '2024-01-02 02:18:02', '2024-01-02 04:07:15'),
(32, 13, 'Joyroom JR-QP190 Mini 10000mah 20W Fast Charging Power Bank', '1775.00', '58.00', '2024-01-02 02:19:42', '2024-01-02 04:10:38'),
(29, 10, 'Micropack M101 Optical USB Mouse', '325.00', '40.00', '2024-01-02 02:17:13', '2024-01-02 02:17:13'),
(28, 11, 'MSI G244F E2 23.8 inch FHD Rapid IPS 180Hz Gaming Monitor', '25800.00', '30.00', '2024-01-02 02:16:21', '2024-01-02 02:16:21'),
(27, 8, 'Lenovo IdeaPad 3 15ALC6 AMD Ryzen 7 5700U 15.6\" FHD Laptop', '80000.00', '19.00', '2024-01-02 02:14:45', '2024-01-02 04:10:05'),
(37, 11, 'MSI G32CQ5P 31.5 inch VA 170Hz Curved Gaming Monitor', '5000.00', '5000.00', '2024-01-02 04:18:31', '2024-01-02 04:18:31'),
(38, 8, 'Chuwi HeroBook Pro Intel Celeron N4020 14.1 inch Full HD Laptop with Windows 11', '60000.00', '60000.00', '2024-01-02 04:18:31', '2024-01-02 04:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'User', 'user@gmail.com', NULL, '$2y$10$dl1d2/oG5cEbRKQzaKk65.AExfj0FMgPenwRJs1wzyckgUBFjxpD6', 'user', NULL, NULL, NULL),
(3, 'Admin', 'admin@gmail.com', NULL, '$2y$10$g2aIlvCbVABhO7jzN86Ux.MWpL0W49VYbsNZxUQwLknbRglONjGEe', 'admin', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
