-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 01:05 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffe_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Kopi Arabika', NULL, NULL),
(2, 'Kopi Robusta', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expeditions`
--

CREATE TABLE `expeditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `expedition_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_resi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expeditions`
--

INSERT INTO `expeditions` (`id`, `transaction_id`, `expedition_name`, `no_resi`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 63, 'JNT', 'JN008668822', NULL, '2022-06-28 10:40:16', '2022-06-28 10:40:16');

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(23, 9, 'assets/gallery/HIsrtOV2uM6bGI9mGxTtRGKhlamB5rQ3iN2f4xpo.jpg', '2022-06-22 03:27:26', '2022-06-28 10:00:09'),
(24, 10, 'assets/gallery/h4Mg4jtygMRcTK8eWCYvgDXcDMRRBfzBg9GoDcnY.jpg', '2022-06-22 03:29:55', '2022-06-28 10:05:03');

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
(18, '2022_05_23_165749_add_roles_to_users_table', 1),
(27, '2014_10_12_000000_create_users_table', 2),
(28, '2014_10_12_100000_create_password_resets_table', 2),
(29, '2019_08_19_000000_create_failed_jobs_table', 2),
(30, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(31, '2022_05_23_172031_create_transactions', 2),
(32, '2022_05_23_173400_create_products_table', 2),
(33, '2022_05_23_175726_create_transaction_details_table', 2),
(34, '2022_05_23_181509_add_some_columns_to_transactions', 2),
(35, '2022_05_23_191236_add_total_weight_to_transactions', 2),
(36, '2022_05_26_173710_add_product_id_to_transaction_table', 2),
(37, '2022_05_29_181851_add_transaction_date_to_transaction', 2),
(38, '2022_05_29_192400_create_table_expedition', 2),
(39, '2022_06_03_073434_add_image_column_to_products', 3),
(40, '2022_06_03_081806_create_table_galleries', 4),
(41, '2022_06_06_031403_create_table_review', 5),
(42, '2022_06_06_033823_add_column_review_status_to_table_transaction_details', 6),
(43, '2022_06_06_035552_add_column_user_id_to_table_reviews', 7),
(44, '2022_06_06_115431_create_table_modal_produksi', 8),
(46, '2022_06_15_084119_create_categories_table', 9),
(47, '2022_06_15_084945_add_column_category_id_to_products', 10);

-- --------------------------------------------------------

--
-- Table structure for table `modal_produksi`
--

CREATE TABLE `modal_produksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `berat` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_weight` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(10) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_weight`, `price`, `stock`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 1, 'Biji Kopi Arabika Gayo Espresso', 1000, 186000, 75, 'Kopi arabika merupakan jenis kopi cukup terkenal dan memiliki banyak varietas. Kopi arabika merupakan kopi tradisional yang rasanya dianggap paling enak oleh para penikmat kopi.', '2022-06-08 16:48:55', '2022-06-28 10:19:33', NULL),
(10, 2, 'Biji Kopi Arabika varietas Blue Mountain', 1000, 75000, 1000, 'Kopi arabika merupakan jenis kopi cukup terkenal dan memiliki banyak varietas. Kopi arabika merupakan kopi tradisional yang rasanya dianggap paling enak oleh para penikmat kopi.', '2022-06-10 06:18:59', '2022-06-28 09:58:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `product_id`, `comment`, `reply_admin`, `rate_value`, `created_at`, `updated_at`, `user_id`) VALUES
(7, 9, 'Kopi Enak Dan Harganya Sangat Terjangkau', NULL, 5, '2022-06-28 10:46:39', '2022-06-28 10:46:39', 7);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proof_of_transaction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `total_weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `users_id`, `invoice_number`, `transaction_total`, `transaction_status`, `proof_of_transaction`, `created_at`, `updated_at`, `deleted_at`, `total_weight`, `transaction_date`) VALUES
(54, 6, '20220619000054', 11113333, 'PENDING', NULL, '2022-06-19 07:52:17', '2022-06-19 07:52:57', NULL, '1454', '2022-06-19 14:52:17'),
(55, 6, '20220619000055', 55555555, 'PENDING', NULL, '2022-06-19 07:56:52', '2022-06-19 07:57:02', NULL, '6060', '2022-06-19 14:56:52'),
(59, 7, '20220622000056', 1111, 'PENDING', 'assets/gallery/2NI8MuDZ3lrCxvIxVaNyHji0GZSERdsSFjkis1YY.png', '2022-06-22 07:04:49', '2022-06-22 07:05:29', NULL, '121', '2022-06-22 14:04:49'),
(60, 7, '20220622000060', 11111111, 'DIBATALKAN', NULL, '2022-06-22 07:52:02', '2022-06-22 08:08:13', NULL, '1212', '2022-06-22 14:52:02'),
(61, 7, '20220622000061', 11111111, 'DIBATALKAN', NULL, '2022-06-22 08:26:52', '2022-06-22 08:27:38', NULL, '1212', '2022-06-22 15:26:52'),
(62, 7, '20220628000062', 930000, 'PENDING', 'assets/gallery/AvuZeLmy75sj3dxIra4QweL4zLk8F0FWNtqij9Mo.jpg', '2022-06-28 10:09:39', '2022-06-28 10:10:43', NULL, '5000', '2022-06-28 17:09:39'),
(63, 7, '20220628000063', 3720000, 'SUCCESS', 'assets/gallery/QCqouKfe1WQJTG27XG5pGWFZqk05BvgVPEdKpOZM.jpg', '2022-06-28 10:19:12', '2022-06-28 10:44:01', NULL, '20000', '2022-06-28 17:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `order_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `review_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `order_quantity`, `created_at`, `updated_at`, `deleted_at`, `review_status`) VALUES
(69, 54, 9, '2', '2022-06-19 07:52:17', '2022-06-19 07:52:17', NULL, 0),
(70, 54, 10, '1', '2022-06-19 07:52:23', '2022-06-19 07:52:23', NULL, 0),
(71, 55, 10, '5', '2022-06-19 07:56:52', '2022-06-19 07:56:52', NULL, 0),
(75, 59, 9, '1', '2022-06-22 07:04:49', '2022-06-22 07:04:49', NULL, 0),
(76, 60, 10, '1', '2022-06-22 07:52:02', '2022-06-22 07:52:02', NULL, 0),
(77, 61, 10, '1', '2022-06-22 08:26:52', '2022-06-22 08:26:52', NULL, 0),
(78, 62, 9, '5', '2022-06-28 10:09:39', '2022-06-28 10:09:39', NULL, 0),
(79, 63, 9, '20', '2022-06-28 10:19:12', '2022-06-28 10:46:39', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `tgl_lahir` date DEFAULT NULL,
  `no_telp` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_profil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `tgl_lahir`, `no_telp`, `alamat`, `foto_profil`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adminn', 'admin@coffe.com', NULL, 1, '2000-01-01', '081237188952', 'Sidoarjo, Jawa Timur', NULL, '$2y$10$OlWUoJXIXmeLRPXwQ10oTud7m3hWyEcG9MQR2d37nl/4x1HSp6iQW', NULL, '2022-06-01 20:02:45', '2022-06-08 16:33:53'),
(2, 'yudhaaa', 'yudha@gmail.com', NULL, 0, '2022-06-01', '081392827213', 'Surabaya', NULL, '$2y$10$qGduTqaFBo6Q8Q1Xy8ZH2Oi7DJK/pYobQgElSO82Xb2WBn4gQGS7O', NULL, '2022-06-01 20:04:08', '2022-06-08 13:43:47'),
(3, 'hanif', 'hanif@gmail.com', NULL, 0, '2002-04-02', '081342421234', 'Surabaya', 'assets/gallery/Y2QJXBbPxSmttwDGEOEheo4yviRSRTpSkR79myMB.jpg', '$2y$10$7uVLTgUnzQj5QL5vhadcD.t2445OAasN3iEsroYkGUcy9iKDSO.Lm', NULL, '2022-06-06 09:28:05', '2022-06-08 15:42:27'),
(4, 'reza', 'reza@gmail.com', NULL, 0, '2022-06-09', '0912319724124', 'Surabaya', NULL, '$2y$10$hOvzegJK951Ju0BIPCM1mOkUACOoc8aO0BMaIfgbG8RjHU7bj16WS', NULL, '2022-06-08 16:23:59', '2022-06-08 16:27:34'),
(5, 'vir', 'vira@coffe.com', NULL, 0, '2022-06-01', '12312124124', 'Sby', 'assets/gallery/JQnvp0LoQtIJkJ0CuiwpexPqsr7Gx4c3HSFenC1b.jpg', '$2y$10$fb0yV7P.mvlKf5vWVk5TYOH8g5/OPV2eOxxHG2Fz75Hf1PO6P5tY2', NULL, '2022-06-09 14:45:11', '2022-06-09 14:46:00'),
(6, 'reza', 'rezaaa@gmail.com', NULL, 0, NULL, NULL, NULL, NULL, '$2y$10$t44cg3.jVOP3h0eRI0EGgezGee9034Z1A5poijX6DU/4OHspJeUB2', NULL, '2022-06-19 07:37:59', '2022-06-19 07:37:59'),
(7, 'Aditya Arsyil', 'adityaarsyil31@gmail.com', NULL, 0, NULL, NULL, NULL, NULL, '$2y$10$RJp6xgMfhPtDr1.rNxUY7uevAva84xsS.MWVpAr4Dw5ZAP1SA9qlq', NULL, '2022-06-22 07:03:27', '2022-06-22 07:03:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expeditions`
--
ALTER TABLE `expeditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modal_produksi`
--
ALTER TABLE `modal_produksi`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expeditions`
--
ALTER TABLE `expeditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `modal_produksi`
--
ALTER TABLE `modal_produksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
