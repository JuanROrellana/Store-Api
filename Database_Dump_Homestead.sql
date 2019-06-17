-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 10:23 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `logging_infos`
--

CREATE TABLE `logging_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logging_infos`
--

INSERT INTO `logging_infos` (`id`, `user_id`, `title`, `description`, `data`, `created_at`, `updated_at`) VALUES
(1, 2, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 13, ProductId: 11, User: 2, Quantity: 1', '2019-06-17 04:17:28', '2019-06-17 04:17:28'),
(2, 2, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 13, ProductId: 5, User: 2, Quantity: 1', '2019-06-17 04:17:28', '2019-06-17 04:17:28'),
(3, 2, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 14, ProductId: 11, User: 2, Quantity: 1', '2019-06-17 04:23:15', '2019-06-17 04:23:15'),
(4, 2, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 14, ProductId: 5, User: 2, Quantity: 1', '2019-06-17 04:23:15', '2019-06-17 04:23:15'),
(5, 1, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 15, ProductId: 11, User: 1, Quantity: 1', '2019-06-17 05:42:40', '2019-06-17 05:42:40'),
(6, 1, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 15, ProductId: 5, User: 1, Quantity: 1', '2019-06-17 05:42:40', '2019-06-17 05:42:40'),
(7, 3, 'Product Update', '', 'Controller ProductController. Action update.', '2019-06-17 13:55:42', '2019-06-17 13:55:42'),
(8, 3, 'Product Update', '', 'Controller ProductController. Action update. Product id: 12, Quantity 11110000, Quantity 11.9', '2019-06-17 13:57:35', '2019-06-17 13:57:35'),
(9, 3, 'Product Update', '', 'Controller ProductController. Action update. Product id: 12, Quantity 125, Quantity 11.9', '2019-06-17 13:57:56', '2019-06-17 13:57:56'),
(10, 3, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 16, ProductId: 11, User: 3, Quantity: 1', '2019-06-17 14:05:12', '2019-06-17 14:05:12'),
(11, 3, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 16, ProductId: 5, User: 3, Quantity: 1', '2019-06-17 14:05:12', '2019-06-17 14:05:12'),
(12, 3, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 17, ProductId: 11, User: 3, Quantity: 1', '2019-06-17 14:05:33', '2019-06-17 14:05:33'),
(13, 3, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 17, ProductId: 5, User: 3, Quantity: 1', '2019-06-17 14:05:33', '2019-06-17 14:05:33'),
(14, 3, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 18, ProductId: 11, User: 3, Quantity: 1', '2019-06-17 14:06:31', '2019-06-17 14:06:31'),
(15, 3, 'Inserted new Order', '', 'Controller OrderController. Action buy. BuyId: 18, ProductId: 5, User: 3, Quantity: 1', '2019-06-17 14:06:31', '2019-06-17 14:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_13_054343_create_products_table', 1),
(4, '2019_06_13_054816_create_orders_table', 1),
(5, '2019_06_13_055113_create_order_items_table', 1),
(7, '2019_06_15_163716_adds_api_token_to_users_table', 2),
(8, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(9, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(11, '2016_06_01_000004_create_oauth_clients_table', 3),
(12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(13, '2019_06_16_161707_create_logging_infos_table', 4),
(14, '2014_10_12_000000_create_users_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('5d324a87f5e32afe6066cd124ff864585bf0b864af2460df1e8c724a0c42598184bdbf6a0aa80f77', 2, 1, 'Personal Access Token', '[]', 1, '2019-06-16 00:46:00', '2019-06-16 00:46:00', '2019-06-22 18:46:00'),
('669c226bb53c44eeff25df191f3466543f4169442d22cb47e6f2381a377e9783e93bfe3d4bea6c81', 2, 1, 'Personal Access Token', '[]', 0, '2019-06-16 09:43:57', '2019-06-16 09:43:57', '2019-06-23 03:43:57'),
('a2f9cef3f5c91cef3ea1d3552eb02fba2e88af71963fe4a6e529375e896c642e54246199ac57adc8', 2, 1, 'Personal Access Token', '[]', 0, '2019-06-16 21:51:22', '2019-06-16 21:51:22', '2019-06-23 15:51:22'),
('ded90a218b35128c97dbcfd34858484ef38e736af8c9509ccf7ed680ad2ae4a68af1b0d873561939', 3, 1, 'Personal Access Token', '[]', 0, '2019-06-17 12:29:42', '2019-06-17 12:29:42', '2019-06-24 06:29:42'),
('ea2747ae7a5eccd69d548d2569afa7efa28381fe4970e2444e1800f8d2d04b361fdf934161b1d514', 2, 1, 'Personal Access Token', '[]', 0, '2019-06-16 09:44:13', '2019-06-16 09:44:13', '2020-06-16 03:44:13'),
('eb1d946ecd0e44af76fe5afef886546c60ee83f15514be3a5822add826e4e9339cf2a8a844dd7814', 2, 1, 'Personal Access Token', '[]', 0, '2019-06-16 09:44:19', '2019-06-16 09:44:19', '2019-06-23 03:44:19'),
('f25de45dc8010ab6cb8dc6dfb197656ec9364b66df2789fb589a6d5ec06f9bbe9fac0ddd3292ceb0', 1, 1, 'Personal Access Token', '[]', 0, '2019-06-17 05:41:44', '2019-06-17 05:41:44', '2019-06-23 23:41:44'),
('f84d8fc7d1917d845a9528955ddd2e99eb11a96da1725ac30f0138da4b73e8bf0e1b32f103877c60', 2, 1, 'Personal Access Token', '[]', 0, '2019-06-16 09:49:46', '2019-06-16 09:49:46', '2019-06-23 03:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'keonN4qoaUDIwB75o6wW9bpDcRA9ULNu1PT5tlRL', 'http://localhost', 1, 0, 0, '2019-06-16 00:29:12', '2019-06-16 00:29:12'),
(2, NULL, 'Laravel Password Grant Client', 'DE16IcMHHd25CicAXhPH6tK7pWicRO9QTPSEjtNN', 'http://localhost', 0, 1, 0, '2019-06-16 00:29:12', '2019-06-16 00:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-06-16 00:29:12', '2019-06-16 00:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `comments`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'First Order', 2, '2019-06-17 03:56:13', '2019-06-17 03:56:13'),
(12, 'First Order', 2, '2019-06-17 04:17:21', '2019-06-17 04:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `quantity`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 11, '2019-06-17 03:56:13', '2019-06-17 03:56:13'),
(2, 1, 11, 5, '2019-06-17 03:56:13', '2019-06-17 03:56:13'),
(3, 1, 12, 11, '2019-06-17 04:17:21', '2019-06-17 04:17:21'),
(4, 1, 12, 5, '2019-06-17 04:17:21', '2019-06-17 04:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `likes` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `code`, `quantity`, `price`, `likes`, `created_at`, `updated_at`) VALUES
(1, 'First', 'This is the First Product', '123-TER', 13, 16.00, 7, '2019-06-15 22:22:39', '2019-06-16 13:51:49'),
(2, 'Second', 'This is the Second Product', '231-TER', 32, 12.00, 5, '2019-06-15 22:22:47', '2019-06-15 22:22:47'),
(3, 'Third', 'This is the Third Product', '123s1-TER', 43, 21.00, 5, '2019-06-15 22:22:54', '2019-06-15 22:22:54'),
(4, 'Fourth', 'This is the Fourth Product', '123d1-TER', 100, 12.00, 5, '2019-06-15 22:23:00', '2019-06-15 22:23:00'),
(5, 'Fifth', 'This is the Fifth Product', '123s1-TE', 45, 12.00, 5, '2019-06-15 22:23:06', '2019-06-17 14:06:31'),
(6, 'Six', 'This is the Six Product', '1231-TEa', 10, 12.00, 5, '2019-06-15 22:23:11', '2019-06-15 22:23:11'),
(7, 'Seven', 'This is the Seven Product', '1231-T4343', 106, 9.00, 5, '2019-06-15 22:23:18', '2019-06-15 22:23:18'),
(8, 'Eight', 'This is the Eight Product', '1231-T43', 0, 4.00, 5, '2019-06-15 22:23:27', '2019-06-16 22:36:15'),
(9, 'Nine', 'This is the Nine Product', '900', 10, 3.00, 5, '2019-06-15 22:23:33', '2019-06-15 22:23:33'),
(10, 'Ten', 'This is the Ten Product', '1231443', 10, 23.00, 5, '2019-06-15 22:23:39', '2019-06-15 22:23:39'),
(11, 'Eleven', 'This is the Eleven Product', '4312', 34, 12.00, 5, '2019-06-15 22:23:46', '2019-06-17 14:06:31'),
(12, 'Carrots', 'Natural Fresh Carrot', 'CRRT-11', 125, 11.90, 9, '2019-06-17 12:32:52', '2019-06-17 13:57:56'),
(14, 'Carrots', 'Natural Fresh Carrot', 'CRRT-10', 100, 1.50, 5, '2019-06-17 13:51:01', '2019-06-17 13:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `isAdmin`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Juan Ramirez', 1, 'ramirez.orellana.juanjose@gmail.com', NULL, '$2y$10$Eo96VtEbaqHD0EB6FtrxU.hdTR8aMwXornV9DZMmWZKi3uMO7wtQ6', NULL, '2019-06-17 11:48:52', '2019-06-17 11:48:52'),
(4, 'Jose Ramirez', 0, 'juan.ramirez@codejj.co', NULL, '$2y$10$o2poSUNgcIi21Kh4Xy4cOuYLnelZOnG5R/qs2hNdzEshgjXQ8ddea', NULL, '2019-06-17 14:20:18', '2019-06-17 14:20:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logging_infos`
--
ALTER TABLE `logging_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `logging_infos`
--
ALTER TABLE `logging_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
