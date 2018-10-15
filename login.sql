-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2018 at 11:45 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(181) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_13_114419_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(181) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(181) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(181) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'My First Blog', 'Welcome to my first blog. here we used laravel 5', '2018-10-14 06:53:05', '2018-10-14 06:53:05'),
(2, 'Title of a longer featured blog post', 'Multiple lines of text that form the lede, informing new readers quickly and efficiently about what\'s most interesting in this post\'s contents.', '2018-10-14 08:27:42', '2018-10-14 08:27:42'),
(3, 'Title of a longer featured blog post', 'Multiple lines of text that form the lede, informing new readers quickly and efficiently about what\'s most interesting in this post\'s contents.', '2018-10-14 08:31:02', '2018-10-14 08:31:02'),
(4, 'From the Firehose', 'This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.', '2018-10-14 08:47:19', '2018-10-14 08:47:19'),
(5, 'Nullam quis risus eget urna mollis', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.\r\n\r\nPraesent commodo cursus magna, vel scelerisque nisl consectetur et.\r\nDonec id elit non mi porta gravida at eget metus.\r\nNulla vitae elit libero, a pharetra augue.\r\nDonec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.\r\n\r\nVestibulum id ligula porta felis euismod semper.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\nMaecenas sed diam eget risus varius blandit sit amet non magna.\r\nCras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.', '2018-10-15 02:08:38', '2018-10-15 02:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(181) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(181) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(181) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Megha', 'meghamaggie@yahoo.com', NULL, '$2y$10$L7SqUhbN0Jkr2', 'uKb9Swh8j58MA9F1IJU5sjMSpbib6FRzctvNmpUPMyTVzVr8CLXQ31Ajsoxa', '2018-10-12 11:01:26', '2018-10-12 11:01:26'),
(2, 'Angelina', 'anglesweet@gmail.com', NULL, '$2y$10$J2.cq9KGhyffd', 's3m9Uzk3mcdiWDkvMn2NXHsbdX2sJoxdO0NBBSS7TIyhsmuYitlwmjXST4Io', '2018-10-12 11:02:57', '2018-10-12 11:02:57'),
(3, 'Sonia', 'soniashah@yahoo.com', NULL, '$2y$10$N57icqM45zNViu/hE/0jF.kZRLuxuQ134xOtD7ID793aO5UVQD35m', 'PhslPby133t3JZ3IaRvCD27g7GTjbBhjScaWZbmYmgU46cK4k5RVWh8jyR3B', '2018-10-14 12:36:42', '2018-10-14 12:36:42'),
(4, 'Rahul', 'rahulroy@gmail.com', NULL, '$2y$10$gqh0ZUri9fZy7Iiod4vDlOKeQHkSUSsA43/fV57Z1RiLp7GN.NSKG', 'al4v0dZsgrR6Roz1sDQ8Wi7pk0oe4Avq2gOF6JwwriIOKYzzicN6MUNANZVL', '2018-10-14 14:43:18', '2018-10-14 14:43:18'),
(5, 'Divya', 'divya@gmail.com', NULL, '$2y$10$h69.d2kzGTOurP8BOkTMpuvtGOULX5eqiNQ2DNBTuY7Q9lIBy3Dna', 'EFhuAgDmZaKYgydEejc6UT7YXQHaUHvuJfl6qmF46GBzADUgpl4ilJXKaYPw', '2018-10-14 14:48:06', '2018-10-14 14:48:06'),
(7, 'darshan', 'darshan@yahoo.com', NULL, '$2y$10$4P56l0VlZx7wBta2XD.lKO2u.GeDv.hK0dgA.8jYe/6nh1ytZpfjW', 'mWACRrFGZTymafY4PHLTUEWx4MNtlvSH6Ns7duYtoe7nXajARyRVdKNqaZtG', '2018-10-14 14:56:00', '2018-10-14 14:56:00'),
(9, 'zoya', 'zoya@gmail.com', NULL, '$2y$10$EimUhNWpUMR2Q2PPj5Gk1O2LathqGw/EPKM/QQ3fMT9JS5pTqZOYa', 'IGxXjwF4PiVLzgyGiXQkmbtwlkMF1kZQlzrwuOFiELFc21UJsWwCUmGIthN9', '2018-10-14 15:00:02', '2018-10-14 15:00:02'),
(10, 'Zen', 'zenson@gmail.com', NULL, '$2y$10$b1QX7BirjeDxyOJLpUiJHe6Y.o0i4qfVfHVKGPM2qsagchZzvZ1Jm', 'mNw9fMHQ2VMKqHCSlGs9mhvUCZ22iKtKhJChC6qEfEFB0waJdTtsuW7TdDiv', '2018-10-14 15:17:35', '2018-10-14 15:17:35'),
(11, 'Alex', 'alex@yahoo.com', NULL, '$2y$10$0cl8MlIg8fd8p3YRHQsAdeTrAfNpzpLw8RIpNnUduSsU2KuDwFv62', NULL, '2018-10-14 15:19:08', '2018-10-14 15:19:08'),
(17, 'Sweta', 'sweta45@yahoo.com', NULL, '$2y$10$SVDCDcs4vV2lNp1SMQ7yaumAgl9qXtQgrY1gf/R4Xrmu20ZHqiyG2', 'M9m25Q6C7SlYT2T96vv9cBA4vBBHOKjItIBEQCzBNOJRpHLwc0WQtUg9vws1', '2018-10-14 23:51:12', '2018-10-14 23:51:12'),
(19, 'Ayat', 'ayat12@gmail.com', NULL, '$2y$10$goWQGDJdjvmZYzpSgTfDoescgqS1P3F.uBmgcsUwCM0fd9FFPMJ9G', 'mSH1c6Zh5gPASeAPsDrYKNqttyBuToFhk8b1FlauWKpfNo0yUvLJJB3KGltE', '2018-10-15 00:01:24', '2018-10-15 00:01:24'),
(20, 'sneha', 'sneha456@gmail.com', NULL, '$2y$10$1kNjTGcsFFx5rVobZYWKtuBO26cspxftDvAlsqYnJCczWPwLpiK42', 'ZNc8hOPQV8FqQNVRH4iJLUqW7ePzYueMfFSb9dFmjqQnn0zNvn6xwLOz46xv', '2018-10-15 01:05:48', '2018-10-15 01:05:48');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
