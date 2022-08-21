-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 10:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `adesess`
--

CREATE TABLE `adesess` (
  `id` bigint(20) NOT NULL,
  `street` varchar(255) NOT NULL,
  `flowr` varchar(255) NOT NULL,
  `building` varchar(255) NOT NULL,
  `flatt` varchar(255) NOT NULL,
  `nots` text NOT NULL,
  `creted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updted_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL,
  `name` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` mediumint(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `gender` varchar(12) NOT NULL,
  `verification_code` mediumint(5) NOT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `name_ar` varchar(512) NOT NULL,
  `name_en` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `prodact_id` bigint(20) UNSIGNED NOT NULL,
  `quintty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catgories`
--

CREATE TABLE `catgories` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `name_en` varchar(512) NOT NULL,
  `name_ar` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cites`
--

CREATE TABLE `cites` (
  `id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `name_en` varchar(512) NOT NULL,
  `name_ar` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `code` mediumint(9) NOT NULL,
  `discount` int(11) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `max_discount_value` int(11) NOT NULL,
  `max_usage,max_usage_per_user` int(11) NOT NULL,
  `mini_order` int(11) NOT NULL,
  `start_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `discount` int(11) NOT NULL,
  `discount_type,` int(11) NOT NULL,
  `start_at` varchar(255) NOT NULL,
  `end_at` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offers_prodacts`
--

CREATE TABLE `offers_prodacts` (
  `offer_id` bigint(20) NOT NULL,
  `prodact_id` bigint(20) UNSIGNED NOT NULL,
  `orice_after_descount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `delivered_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `offer_id` bigint(20) NOT NULL,
  `prodact_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prodacts`
--

CREATE TABLE `prodacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `price` decimal(7,0) NOT NULL,
  `quintty` smallint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL,
  `details_en` text NOT NULL,
  `details_ar` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` mediumint(9) NOT NULL,
  `subcat_id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prodacts_specs`
--

CREATE TABLE `prodacts_specs` (
  `prodact_id` bigint(20) UNSIGNED NOT NULL,
  `spec_id` bigint(20) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regons`
--

CREATE TABLE `regons` (
  `id` bigint(20) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `adress_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `specs`
--

CREATE TABLE `specs` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcatogres`
--

CREATE TABLE `subcatogres` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `name_en` varchar(512) NOT NULL,
  `name_ar` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `catogery_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(12) NOT NULL,
  `last_name` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `verfaction_code` mediumint(5) DEFAULT NULL,
  `code_expired_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `email_verfied_at` timestamp NULL DEFAULT NULL,
  `creted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adesess`
--
ALTER TABLE `adesess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `prodact_id` (`prodact_id`);

--
-- Indexes for table `catgories`
--
ALTER TABLE `catgories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cites`
--
ALTER TABLE `cites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers_prodacts`
--
ALTER TABLE `offers_prodacts`
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `prodact_id` (`prodact_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `prodact_id` (`prodact_id`);

--
-- Indexes for table `prodacts`
--
ALTER TABLE `prodacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`code`),
  ADD KEY `subcat_id` (`subcat_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `prodacts_specs`
--
ALTER TABLE `prodacts_specs`
  ADD KEY `prodact_id` (`prodact_id`),
  ADD KEY `spec_id` (`spec_id`);

--
-- Indexes for table `regons`
--
ALTER TABLE `regons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adress_id` (`adress_id`);

--
-- Indexes for table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcatogres`
--
ALTER TABLE `subcatogres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catogery_id` (`catogery_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adesess`
--
ALTER TABLE `adesess`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catgories`
--
ALTER TABLE `catgories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cites`
--
ALTER TABLE `cites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prodacts`
--
ALTER TABLE `prodacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regons`
--
ALTER TABLE `regons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcatogres`
--
ALTER TABLE `subcatogres`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adesess`
--
ALTER TABLE `adesess`
  ADD CONSTRAINT `adesess_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`prodact_id`) REFERENCES `prodacts` (`id`);

--
-- Constraints for table `offers_prodacts`
--
ALTER TABLE `offers_prodacts`
  ADD CONSTRAINT `offers_prodacts_ibfk_1` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`),
  ADD CONSTRAINT `offers_prodacts_ibfk_2` FOREIGN KEY (`prodact_id`) REFERENCES `prodacts` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`prodact_id`) REFERENCES `prodacts` (`id`);

--
-- Constraints for table `prodacts`
--
ALTER TABLE `prodacts`
  ADD CONSTRAINT `prodacts_ibfk_1` FOREIGN KEY (`subcat_id`) REFERENCES `subcatogres` (`id`),
  ADD CONSTRAINT `prodacts_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `prodacts_specs`
--
ALTER TABLE `prodacts_specs`
  ADD CONSTRAINT `prodacts_specs_ibfk_1` FOREIGN KEY (`prodact_id`) REFERENCES `prodacts` (`id`),
  ADD CONSTRAINT `prodacts_specs_ibfk_2` FOREIGN KEY (`spec_id`) REFERENCES `specs` (`id`);

--
-- Constraints for table `regons`
--
ALTER TABLE `regons`
  ADD CONSTRAINT `regons_ibfk_1` FOREIGN KEY (`adress_id`) REFERENCES `adesess` (`id`);

--
-- Constraints for table `subcatogres`
--
ALTER TABLE `subcatogres`
  ADD CONSTRAINT `subcatogres_ibfk_1` FOREIGN KEY (`catogery_id`) REFERENCES `catgories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
