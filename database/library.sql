-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2019 at 02:37 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `categorie_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `image`, `user_id`, `categorie_id`, `created_at`, `updated_at`, `info`, `bookfile`) VALUES
(1, 'روايه الرجل العنكبوتي', 'عباس ابن فرناس', '1550587176thumnnail.jpg', 2, 1, '2019-02-19 12:39:36', '2019-02-19 12:39:36', 'قصه خياليه قديمه جدا للاطفال', '1550587176book.pdf'),
(2, 'لغه سي شارب', 'عبدالله عيد', '1550642945thumnnail.jpg', 2, 2, '2019-02-20 04:09:06', '2019-02-20 04:09:06', 'لغه برمجه قامت بكتابتها شركه مايكروسفت', '1550642946book.pdf'),
(3, 'عظماء القرن الواحد والعشرين', 'خالد الجوهري', '1550643281thumnnail.jpg', 2, 5, '2019-02-20 04:14:42', '2019-02-20 04:14:42', 'مجموعه من الشخصيات العامه في العالم', '1550643282book.pdf'),
(4, 'عظماء القرن الواحد والعشرين', 'خالد الجوهري', '1550643283thumnnail.jpg', 2, 5, '2019-02-20 04:14:43', '2019-02-20 04:14:43', 'مجموعه من الشخصيات العامه في العالم', '1550643283book.pdf'),
(5, 'Html تعليم وسوم', 'اسامه الزيرو', '1550643696thumnnail.jpg', 2, 2, '2019-02-20 04:21:36', '2019-02-20 04:21:36', 'هي عباره عن وسم تصف الصفحات التي يتم رفعها علي الشبكه العنكبوتيه  وايضا لغات اخري', '1550643696book.pdf'),
(6, 'The Mony', 'Mark Twain', '1560074526thumnnail.jpg', 1, 1, '2019-06-09 08:02:06', '2019-06-09 08:02:06', 'Samuel Langhorne Clemens, known by his pen name Mark Twain, was an American writer, humorist, entrepreneur, publisher, and lecturer. His novels include The Adventures of Tom Sawyer and its sequel, the Adventures of Huckleberry Finn, the latter often called \"The Great American Novel', '1560074526book.pdf'),
(7, 'Desing', 'J.K. Rowling', '1560075731thumnnail.jpg', 1, 1, '2019-06-09 08:22:11', '2019-06-09 08:22:11', 'Joanne Rowling CH, OBE, FRSL, FRCPE, FRSE, writing under the pen names J. K. Rowling and Robert Galbraith, is a British novelist, philanthropist, film producer, television producer and screenwriter, best', '1560075731book.pdf'),
(8, 'The Best', 'Dr. Seuss', '1560075835thumnnail.jpg', 1, 1, '2019-06-09 08:23:56', '2019-06-09 08:23:56', 'Theodor Seuss Geisel was an American children\'s author, political cartoonist, and animator. He is known for his work writing and illustrating more than 60 books under the pen name Doctor Seuss', '1560075836book.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'قسم الرويات', '2019-02-19 12:21:53', '2019-02-19 12:21:53'),
(2, 'قسم البرمجه', '2019-02-19 12:22:01', '2019-02-19 12:22:01'),
(3, 'شخصيات عمه', '2019-02-19 12:22:23', '2019-02-19 12:22:23'),
(4, 'قسم الاقتصاد', '2019-02-19 12:23:21', '2019-02-19 12:23:21'),
(5, 'شخصيات عامه', '2019-02-19 12:23:38', '2019-02-19 12:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `book_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'good story', 1, 1, '2019-02-20 04:06:36', '2019-02-20 04:06:36'),
(2, 'more story', 3, 2, '2019-02-20 04:24:12', '2019-02-20 04:24:12'),
(3, 'ilov it', 1, 2, '2019-02-20 05:54:31', '2019-02-20 05:54:31'),
(4, 'hhhhh no iLove  it:)', 1, 2, '2019-02-20 06:01:19', '2019-02-20 06:01:19'),
(5, 'good language', 5, 1, '2019-02-20 09:56:42', '2019-02-20 09:56:42'),
(6, 'I lov it', 5, 1, '2019-03-06 08:59:48', '2019-03-06 08:59:48'),
(7, 'This Book very good advice The beginner reading it', 5, 4, '2019-06-09 05:04:07', '2019-06-09 05:04:07'),
(8, 'Good book advice al reading good lick!', 4, 4, '2019-06-09 05:40:51', '2019-06-09 05:40:51'),
(9, 'This Book very good advice The beginner bussines reading it', 6, 1, '2019-06-09 08:09:00', '2019-06-09 08:09:00'),
(10, 'I think that Author : Mark Twain  the best author ver good !', 6, 1, '2019-06-09 10:04:59', '2019-06-09 10:04:59');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_16_084353_create_rolle', 1),
(4, '2019_02_16_084922_create_categorie', 1),
(5, '2019_02_16_085014_create_books', 1),
(6, '2019_02_16_085049_create_comment', 1),
(7, '2019_02_16_095737_create_rolle_user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ah1123@gamil.com', '$2y$10$MXXFkN5tvHNiyVWOhmwcCeYFVmfviBP8fxwmwvuvDZ1.mCBZw99zC', '2019-02-19 12:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `rolles`
--

CREATE TABLE `rolles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rolle_users`
--

CREATE TABLE `rolle_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `rolle_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ali Mohammed', 'ali@yahoo.com', NULL, '$2y$10$msSnKptXMi1JhS7jxQuHFOz.6ZAcQrB3xWjEtGYdgywr1Y9fkEXFm', '7vhcFQ3vou3tv53fAMrvSj97seJEXe9SEGhK4AoXNppxKUetfkBOo3BFKbCS', '2019-02-19 12:05:08', '2019-02-19 12:05:08'),
(2, 'Ahmed', 'ah1123@gamil.com', NULL, '$2y$10$AD4uTFLTo9Rc0MMtDk.lmu6iyj8OQMCmjZoj57Pe/0Ub3negtgQk.', '5jM0tnuoEZLMiMef23yG6ry6Q93nmk6N9xY5nmhG6vvLHqywDuFwtwydiepr', '2019-02-19 12:06:47', '2019-02-19 12:06:47'),
(3, 'Hassan', 'ha1123@gamil.com', NULL, '$2y$10$YlcTneQyBIGMh31pFmk2D.gN3tnXK3kDkY5m.bG7efUsWJCovvRLK', 'xVxGdGlF6Hx47VILNpGoWguSIE6kYCre7GWil3Zp4LzXsiwHovNZwP80nX6p', '2019-02-19 12:10:31', '2019-02-19 12:10:31'),
(4, 'Hassan Ibraheam', 'admin@yaho.com', NULL, '$2y$10$W4/0pcCIz4HuYq9v4dqsKej6ShW0tJ2.rmJH1x.7xD9PqCJDvWbie', '1I7GwDYNmjfHed8eeVMTYSAY4nJo3TD46ffjL7ChAOVSFmQTSUpX1FK1TmGc', '2019-06-09 05:03:28', '2019-06-09 05:03:28'),
(5, 'admin', 'jwest@example.net', NULL, '$2y$10$DM4k1xk3BKxr1xXxmVfQ4.NaS81ULKleRpBs2TZfemZDjsrrgzbpW', 'kD3Rjqwuc1pI4i7O9eDJIEtfrnlf8WqAb4v5l4iuRm9p7DoR5XKGeFP3WoJb', '2019-06-09 06:11:19', '2019-06-09 06:11:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_user_id_foreign` (`user_id`),
  ADD KEY `books_categorie_id_foreign` (`categorie_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_book_id_foreign` (`book_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
-- Indexes for table `rolles`
--
ALTER TABLE `rolles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rolle_users`
--
ALTER TABLE `rolle_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rolle_users_user_id_foreign` (`user_id`),
  ADD KEY `rolle_users_rolle_id_foreign` (`rolle_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rolles`
--
ALTER TABLE `rolles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rolle_users`
--
ALTER TABLE `rolle_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rolle_users`
--
ALTER TABLE `rolle_users`
  ADD CONSTRAINT `rolle_users_rolle_id_foreign` FOREIGN KEY (`rolle_id`) REFERENCES `rolles` (`id`),
  ADD CONSTRAINT `rolle_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
