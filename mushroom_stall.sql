-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2025 at 08:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mushroom_stall`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street_address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `phone`, `street_address`, `city`, `state`, `postcode`, `country`, `is_default`) VALUES
(1, 1, '013-8123456', 'No 12, Jalan Putra', 'Shah Alam', 'Selangor', '40000', 'Malaysia', 1),
(2, 2, '014-7234567', 'No 34, Jalan Bukit', 'George Town', 'Pulau Pinang', '10000', 'Malaysia', 1),
(3, 3, '011-6345678', 'No 56, Jalan Kenari', 'Kota Bharu', 'Kelantan', '15000', 'Malaysia', 1),
(4, 4, '017-5456789', 'No 78, Jalan Melati', 'Kuala Lumpur', 'Wilayah Persekutuan', '50000', 'Malaysia', 1),
(5, 5, '019-4567890', 'No 90, Jalan Impian', 'Ipoh', 'Perak', '30000', 'Malaysia', 1),
(6, 6, '012-3678901', 'No 102, Jalan Putra', 'Johor Bahru', 'Johor', '80000', 'Malaysia', 1),
(7, 7, '015-2789012', 'No 24, Jalan Melati', 'Melaka', 'Melaka', '75000', 'Malaysia', 1),
(8, 8, '013-1890123', 'No 36, Jalan Kenari', 'Seremban', 'Negeri Sembilan', '70000', 'Malaysia', 1),
(9, 9, '016-0901234', 'No 48, Jalan Impian', 'Kuantan', 'Pahang', '25000', 'Malaysia', 1),
(10, 10, '014-1012345', 'No 60, Jalan Bukit', 'Alor Setar', 'Kedah', '05000', 'Malaysia', 1),
(11, 11, '019-2123456', 'No 72, Jalan Putra', 'Shah Alam', 'Selangor', '40000', 'Malaysia', 1),
(12, 12, '012-3234567', 'No 84, Jalan Kenari', 'George Town', 'Pulau Pinang', '10000', 'Malaysia', 1),
(13, 13, '011-4345678', 'No 96, Jalan Melati', 'Kota Bharu', 'Kelantan', '15000', 'Malaysia', 1),
(14, 14, '018-5456789', 'No 108, Jalan Impian', 'Kuala Lumpur', 'Wilayah Persekutuan', '50000', 'Malaysia', 1),
(15, 15, '017-6567890', 'No 120, Jalan Bukit', 'Ipoh', 'Perak', '30000', 'Malaysia', 1),
(16, 16, '016-7678901', 'No 132, Jalan Kenari', 'Johor Bahru', 'Johor', '80000', 'Malaysia', 1),
(17, 17, '015-8789012', 'No 144, Jalan Putra', 'Melaka', 'Melaka', '75000', 'Malaysia', 1),
(18, 18, '014-9890123', 'No 156, Jalan Melati', 'Seremban', 'Negeri Sembilan', '70000', 'Malaysia', 1),
(19, 19, '013-0901234', 'No 168, Jalan Bukit', 'Kuantan', 'Pahang', '25000', 'Malaysia', 1),
(20, 20, '012-1012345', 'No 180, Jalan Impian', 'Alor Setar', 'Kedah', '05000', 'Malaysia', 1),
(21, 21, '011-2123456', 'No 192, Jalan Putra', 'Shah Alam', 'Selangor', '40000', 'Malaysia', 1),
(22, 22, '019-3234567', 'No 204, Jalan Melati', 'George Town', 'Pulau Pinang', '10000', 'Malaysia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Admin Aiman', 'aiman@gmail.com', '$2y$10$V56/1KB/AKHqkGSAfZyaTODrBg/McmbKjko4Z56JI9L58eJ8UtSjC', '2025-07-14 16:42:43'),
(2, 'Admin Farah', 'farah@gmail.com', '$2y$10$V56/1KB/AKHqkGSAfZyaTODrBg/McmbKjko4Z56JI9L58eJ8UtSjC', '2025-07-14 16:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Oyster Mushroom', 'Popular edible mushroom with delicate texture.'),
(2, 'Shiitake', 'Flavorful mushroom often used in Asian cuisine.'),
(3, 'Button Mushroom', 'Common white mushroom found in most grocery stores.'),
(4, 'Enoki', 'Long, thin white mushrooms used in soups and salads.');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_method` varchar(100) DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `delivery_status` varchar(50) DEFAULT 'pending',
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` enum('pending','success') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `quantity`, `total_price`, `status`, `created_at`) VALUES
(4, 12, 5, 33.00, 'pending', '2025-07-04 11:00:00'),
(5, 7, 5, 53.00, 'pending', '2025-07-01 18:00:00'),
(6, 3, 5, 40.00, 'pending', '2025-07-02 14:00:00'),
(7, 4, 3, 53.00, 'success', '2025-07-03 16:00:00'),
(8, 11, 3, 36.00, 'success', '2025-07-02 07:00:00'),
(9, 10, 2, 29.00, 'success', '2025-07-04 15:00:00'),
(10, 6, 3, 29.00, 'pending', '2025-07-03 12:00:00'),
(11, 21, 2, 39.00, 'success', '2025-07-02 23:00:00'),
(12, 23, 2, 28.00, 'pending', '2025-07-02 02:00:00'),
(13, 17, 2, 25.00, 'pending', '2025-07-04 17:00:00'),
(14, 9, 4, 57.00, 'pending', '2025-07-02 19:00:00'),
(15, 14, 4, 40.00, 'pending', '2025-07-03 10:00:00'),
(16, 20, 3, 36.00, 'success', '2025-07-02 21:00:00'),
(17, 15, 4, 63.00, 'success', '2025-07-02 11:00:00'),
(18, 18, 1, 5.00, 'success', '2025-07-04 07:00:00'),
(19, 22, 2, 41.00, 'pending', '2025-07-01 11:00:00'),
(20, 13, 5, 65.00, 'success', '2025-07-05 01:00:00'),
(21, 18, 3, 36.00, 'pending', '2025-07-03 18:00:00'),
(22, 16, 3, 28.00, 'success', '2025-07-02 01:00:00'),
(23, 1, 1, 8.00, 'success', '2025-07-02 03:00:00'),
(24, 23, 1, 15.00, 'pending', '2025-07-15 02:14:26'),
(25, 16, 2, 10.00, 'pending', '2025-07-15 04:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(2, 4, 5, 1, 20.00),
(3, 4, 4, 1, 8.00),
(4, 4, 7, 1, 5.00),
(5, 5, 5, 1, 24.00),
(6, 5, 6, 1, 24.00),
(7, 5, 3, 1, 5.00),
(8, 6, 2, 1, 20.00),
(9, 6, 1, 1, 15.00),
(10, 6, 3, 1, 5.00),
(11, 7, 2, 1, 20.00),
(12, 7, 4, 1, 24.00),
(13, 7, 3, 1, 9.00),
(14, 8, 1, 1, 15.00),
(15, 8, 6, 1, 8.00),
(16, 8, 5, 1, 13.00),
(17, 9, 4, 1, 24.00),
(18, 9, 3, 1, 5.00),
(19, 10, 1, 1, 15.00),
(20, 10, 7, 1, 5.00),
(21, 10, 3, 1, 9.00),
(22, 11, 4, 1, 24.00),
(23, 11, 5, 1, 15.00),
(24, 12, 6, 1, 8.00),
(25, 12, 5, 1, 20.00),
(26, 13, 3, 1, 5.00),
(27, 13, 1, 1, 20.00),
(28, 14, 2, 1, 20.00),
(29, 14, 5, 1, 15.00),
(30, 14, 6, 1, 22.00),
(31, 15, 3, 1, 5.00),
(32, 15, 4, 1, 20.00),
(33, 15, 7, 1, 15.00),
(34, 16, 1, 1, 15.00),
(35, 16, 3, 1, 10.00),
(36, 16, 5, 1, 11.00),
(37, 17, 2, 1, 20.00),
(38, 17, 4, 1, 24.00),
(39, 17, 6, 1, 19.00),
(40, 18, 3, 1, 5.00),
(41, 19, 1, 1, 20.00),
(42, 19, 6, 1, 21.00),
(43, 20, 2, 1, 20.00),
(44, 20, 5, 1, 20.00),
(45, 20, 4, 1, 25.00),
(46, 21, 1, 1, 15.00),
(47, 21, 5, 1, 16.00),
(48, 21, 7, 1, 5.00),
(49, 22, 4, 1, 20.00),
(50, 22, 6, 1, 8.00),
(51, 23, 6, 1, 8.00),
(52, 24, 1, 1, 15.00),
(53, 25, 3, 2, 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('paid','unpaid') DEFAULT 'unpaid',
  `paid_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `method`, `amount`, `status`, `paid_at`) VALUES
(1, 4, 'eWallet', 33.00, 'unpaid', '2025-07-04 11:00:00'),
(2, 5, 'eWallet', 53.00, 'unpaid', '2025-07-01 18:00:00'),
(3, 6, 'Cash', 40.00, 'unpaid', '2025-07-02 14:00:00'),
(4, 7, 'Online Banking', 53.00, 'paid', '2025-07-03 16:00:00'),
(5, 8, 'Cash', 36.00, 'paid', '2025-07-02 07:00:00'),
(6, 9, 'eWallet', 29.00, 'paid', '2025-07-04 15:00:00'),
(7, 10, 'Cash', 29.00, 'unpaid', '2025-07-03 12:00:00'),
(8, 11, 'Cash', 39.00, 'paid', '2025-07-02 23:00:00'),
(9, 12, 'Cash', 28.00, 'unpaid', '2025-07-02 02:00:00'),
(10, 13, 'eWallet', 25.00, 'unpaid', '2025-07-04 17:00:00'),
(11, 14, 'Online Banking', 57.00, 'unpaid', '2025-07-02 19:00:00'),
(12, 15, 'eWallet', 40.00, 'unpaid', '2025-07-03 10:00:00'),
(13, 16, 'Cash', 36.00, 'paid', '2025-07-02 21:00:00'),
(14, 17, 'eWallet', 63.00, 'paid', '2025-07-02 11:00:00'),
(15, 18, 'Online Banking', 5.00, 'paid', '2025-07-04 07:00:00'),
(16, 19, 'Cash', 41.00, 'unpaid', '2025-07-01 11:00:00'),
(17, 20, 'Cash', 65.00, 'paid', '2025-07-05 01:00:00'),
(18, 21, 'Online Banking', 36.00, 'unpaid', '2025-07-03 18:00:00'),
(19, 22, 'eWallet', 28.00, 'paid', '2025-07-02 01:00:00'),
(20, 23, 'eWallet', 8.00, 'paid', '2025-07-02 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `category_id`, `admin_id`) VALUES
(1, 'sliced raw mushroom', '\"Earthy, nutty-flavored slices with a meaty texture - perfect for quick sautéing, soups, and pasta dishes. Their rich umami flavor enhances any recipe.\"', 15.00, 'slicedmushroom.jpg', 1, 1),
(2, 'Raw Maitake', '\"A rare seasonal delicacy with an intense pine-like aroma and crisp texture. Prized in Japanese cuisine for their distinctive spicy fragrance.\"', 20.00, 'maitake.jpg', 3, 1),
(3, 'Enoki Raw Mushroom', '\"Delicate, thread-like mushrooms with a mild, slightly fruity flavor and crisp texture. Perfect for hot pots, stir-fries, and salads.\"', 5.00, 'enokimushroom.jpg', 4, 1),
(4, 'Enoki Beef Rolls', '\"Tender beef slices wrapped around crunchy enoki mushrooms, creating a perfect balance of textures. Grill or pan-fry for a delicious umami-packed appetizer.\"', 24.00, 'enokibeefroll.jpg', 4, 1),
(5, 'Fried Enoki', '\"Crispy golden enoki mushrooms with a delicate crunch outside and tender bite inside. Perfect snack with dipping sauces.\"', 5.00, 'friedenoki.jpg', 1, 1),
(6, 'Mushroom Soup with Garlic Bun', '\"Creamy blended wild mushroom soup topped with earthy truffle oil, served with warm garlic butter buns.\"', 8.00, 'mushroomsoup.jpg', 3, 1),
(7, 'Mushroom Soup', '\"Rich umami broth with chunks of assorted mushrooms, seasoned with herbs and a touch of cream.\"', 5.00, 'mushroomsoup2.jpg', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `comment`, `created_at`) VALUES
(1, 1, 3, 'fresh', '2025-07-14 09:39:00'),
(3, 16, 7, 'love the soup, very creamy.', '2025-07-14 16:24:10'),
(4, 3, 5, 'very crunchy', '2025-07-14 16:46:32'),
(5, 4, 3, 'Fresh and tasty!', '2025-07-14 16:47:31'),
(6, 5, 1, 'Well packed.', '2025-07-14 16:48:12'),
(7, 6, 2, 'Highly recommended!', '2025-07-14 16:49:02'),
(8, 7, 4, 'Crispy and flavourful', '2025-07-14 16:50:15'),
(9, 8, 6, 'Perfect for my hotpot', '2025-07-14 16:50:55'),
(10, 9, 4, 'Bit too salty but still okay.', '2025-07-14 16:51:32'),
(11, 10, 7, 'Will buy again!', '2025-07-14 16:52:23'),
(12, 11, 1, 'Unique taste, never tried before.', '2025-07-14 16:53:14'),
(13, 13, 5, 'My kids love it', '2025-07-14 16:53:52'),
(14, 14, 6, 'Nice presentation.', '2025-07-14 16:54:27'),
(15, 15, 2, 'Satisfying!', '2025-07-14 16:55:03'),
(16, 16, 5, 'Mushroom was a bit dry', '2025-07-14 16:55:45'),
(17, 17, 4, 'Good texture', '2025-07-14 16:56:41'),
(18, 18, 2, 'Crispy!', '2025-07-14 16:57:53'),
(19, 19, 7, 'I love it!', '2025-07-14 16:58:30'),
(20, 20, 1, 'Recommended!', '2025-07-14 17:00:14'),
(21, 21, 3, 'I like it!', '2025-07-14 17:01:22'),
(22, 22, 6, 'I will repeat!', '2025-07-14 17:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `admin_id`) VALUES
(1, 'aiman', 'aiman@gmail.com', '$2y$10$WL1xhePp9jmLXucvzSORZew/ixzILpQZhQYqXMFSvSVAKves.bLt2', 'user', 1),
(2, 'admin', 'admin@gmail.com', '$2y$10$V56/1KB/AKHqkGSAfZyaTODrBg/McmbKjko4Z56JI9L58eJ8UtSjC', 'admin', 1),
(3, 'Ahmad Zulkifli', 'zulkifli@gmail.com', '$2y$10$MTVDWQH4wlEOphrEju4l4OowYCRTSRy7UfHD1r6O.c.NlIsATFROq', 'user', 1),
(4, 'Nur Aisyah', 'Aisyah@gmail.com', '$2y$10$J8pzRwHQ2g8sH92GpTv0Ou6K0oiS0QnreybZ1eWC23tv5VhRH7jmm', 'user', 1),
(5, 'Muhd Hakim', 'hakim@gmail.com', '$2y$10$CmyhpaB4Tnq12lVs6MdIt.r6Sio0vEOK5asLiazbe8mL41DUC.ROS', 'user', 1),
(6, 'Siti Sarah', 'siti@gmail.com', '$2y$10$o.TMaMX2PQhNLA00sP0LuuWr6vacKTfnGbCpU75buMzof/Gg8MaYu', 'user', 1),
(7, 'Aiman Hakimi', 'Hakimi@gmail.com', '$2y$10$N0K.XdH0Kb7SbdFzxG.LeeRXPL/5/Kz6pKdGvfF2dxW2kKxjDg9Yi', 'user', 1),
(8, 'Farah Hasina', 'farah@gmail.com', '$2y$10$CSYzgbPep0b05KTEb4s1.OAEshRaHoMoq9WMR4FpJD6UcXghljzB.', 'user', 1),
(9, 'Mohd Faiz', 'faiz@gmail.com', '$2y$10$dU2p17VhGG1LawT4WPWgzuyBocH4GBjbN9nsoySixnngnjin2P7qu', 'user', 1),
(10, 'Zarina Bakar', 'zarina@gmail.com', '$2y$10$4RdqQCsy.BCTo.1BEji86uEQiJxcA7lbrSImkPHCSJmw4V7s0iRiK', 'user', 1),
(11, 'Syafiq Iskandar', 'syafiq@gmail.com', '$2y$10$jxWZ3UOPZ4wlqvvwRK0kd.FhrkBmpn9j.W1sGntjS54h3o4vyO5bO', 'user', 1),
(12, 'Alya Sofea', 'alya@gmail.com', '$2y$10$YbdtaBLbwLygEjKMuFmUl.7mwOuyWZ8C20mMEnv3KTfXkMkgop/8K', 'user', 1),
(13, 'Hafiz Rahman', 'hafiz@gmail.com', '$2y$10$ibRmdG/ZUVwvganzl2h4t.NW794VccTmiFIAByBNloC3supdj/2Xm', 'user', 2),
(14, 'Nurul Izzah', 'nurul@gmail.com', '$2y$10$y056MsNmMOINybJCQSgC0ObGj08OkVyrnu7/kecGr2wNPUok0IgSC', 'user', 2),
(15, 'Khairul Anwar', 'khairul@gmail.com', '$2y$10$AADJqo/pIv4L5QqWpyIAH.ecVAADUIqfkx9SJ58Gyu3w1dCAP2TBO', 'user', 2),
(16, 'Aisyah Humaira', 'humaira@gmail.com', '$2y$10$nyDi4N0Z1A8OnSpZ/m8IzeyNAFtEct.eJ.7hr1U4j08ek5c5EQQrq', 'user', 2),
(17, 'Danish Haikal', 'danish@gmail.com', '$2y$10$VHK7.pGibNm2frnnDuKN5eRfjGgHcqbv4meMVHdqeHxO8TNW/fmAC', 'user', 2),
(18, 'Imran Hafeez', 'imran@gmail.com', '$2y$10$Oho34nbCqI192SSIjydwr.MV7a81ZOjYaoIGBkEgm5bi1dSKKM5JW', 'user', 2),
(19, 'Balqis Amani', 'balqis@gmail.com', '$2y$10$Ai8z3Vk3naBeWzHYUYkwqeWI8ENluRQAq47INXNTHg6.C0DUP7f4i', 'user', 2),
(20, 'Nurin Aina', 'nurin@gmail.com', '$2y$10$MnIhR5FuxY4Yt23UR7AV0O.eNGEAKhwtBz9LwdPG8AP/WhElPN5Ty', 'user', 1),
(21, 'Nuha Azreen', 'nuha@gmail.com', '$2y$10$7QH5v2UbxB1L4N4ktEMidOtj2CZ5oReXwAKVvkF8d5qzS/G91E45m', 'user', 1),
(22, 'Hani Nabila', 'nabila@gmail.com', '$2y$10$8pn/j9mzL8OQwVLGj6U5Ge0WInm4.2M4PLtAfJrWzpBRWYwdopSRG', 'user', 2),
(23, 'naqib', 'naqib@gmail.com', '$2y$10$Lvs9J76wG57Nmo3gj3cAH.Tkqb6RoJgahk/M2JpIR7EId0tDXvIlO', 'user', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category` (`category_id`),
  ADD KEY `fk_product_admin` (`admin_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `fk_users_admin` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
