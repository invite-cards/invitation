-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 04:32 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invitation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password` varchar(250) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=inactive,1=active',
  `admin_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=superadmin,2=subadmin',
  `forgot_link` varchar(250) NOT NULL,
  `reference_d` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL,
  `manager` varchar(250) DEFAULT NULL,
  `menu` varchar(250) DEFAULT NULL,
  `added_by` int(250) DEFAULT NULL,
  `discount` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone`, `password`, `is_active`, `admin_type`, `forgot_link`, `reference_d`, `created_date`, `updated_date`, `manager`, `menu`, `added_by`, `discount`) VALUES
(1, 'admin', 'prathwiek123@gmail.com', 8951411732, '$2a$08$80rA2jLtMdi2/Q1e1BrE.eDiJnWSwmZUdQa.812CuV8aS4GAsFCZC', 1, 1, 'gGqAObTrFYzlxXU0', '123456789', '2019-08-06 13:28:31', '2020-01-24 01:35:12', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `uniq` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `link`, `uniq`, `status`, `date`) VALUES
(11, 'banner/9ee4115ff741546ec28c2dbedddea53e.jpg', 'https://www.google.com/search?client=firefox-b-d&q=font+awesome+5+icons', '5A1TsY2xGM', 1, '2020-02-05 17:25:21'),
(12, 'banner/d6c98d44f76d6395cb6fc0b76d29b1c9.jpg', 'http://localhost/phpmyadmin/tbl_structure.php?db=invitation&table=banner', 'HxKPyMEzgW', 1, '2020-02-05 17:30:22'),
(13, 'banner/cbd17ec8a0cb41919f74378bc4be5939.jpg', 'https://www.google.com/search?client=firefox-b-d&q=font+awesome+5+icons', '1VSAzd6rLs', 1, '2020-02-05 17:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `createdBy` int(250) DEFAULT NULL,
  `uniq` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `status`, `date`, `createdBy`, `uniq`) VALUES
(1, '112333', 1, '2020-01-23 21:09:14', 1, 'mF7Nqr0nGK'),
(3, 'cqwe', 1, '2020-01-23 21:09:48', 1, 'jfyJrRQ0El'),
(4, 'fasdfads', 1, '2020-01-23 21:13:01', 1, 'asdafasfasf');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(250) NOT NULL,
  `name` varchar(500) NOT NULL,
  `pr_id` varchar(250) DEFAULT NULL,
  `sku` varchar(250) DEFAULT NULL,
  `category` int(250) NOT NULL,
  `sub_category` int(250) DEFAULT NULL,
  `is_stock` int(250) NOT NULL DEFAULT 1 COMMENT '1=yes,2=no',
  `mrp` int(250) DEFAULT NULL,
  `selling_price` int(250) DEFAULT NULL,
  `discount` int(250) DEFAULT NULL COMMENT 'discount in percentage',
  `featured_image` varchar(250) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `uniq` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL,
  `weight` varchar(250) DEFAULT NULL,
  `dimensions` varchar(250) DEFAULT NULL,
  `no_of_insert` varchar(250) DEFAULT NULL,
  `material` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `ceremony` varchar(250) DEFAULT NULL,
  `orientation` varchar(250) DEFAULT NULL,
  `print_option` varchar(250) DEFAULT NULL,
  `size` varchar(250) DEFAULT NULL,
  `gsm` varchar(250) DEFAULT NULL,
  `color` varchar(250) DEFAULT NULL,
  `theme` varchar(250) DEFAULT NULL,
  `pr_type` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `pr_id`, `sku`, `category`, `sub_category`, `is_stock`, `mrp`, `selling_price`, `discount`, `featured_image`, `description`, `uniq`, `status`, `date`, `update_date`, `weight`, `dimensions`, `no_of_insert`, `material`, `type`, `ceremony`, `orientation`, `print_option`, `size`, `gsm`, `color`, `theme`, `pr_type`) VALUES
(3, 'product3', 'PR20200131010843', 'product3', 3, 0, 2, 10203, 100, 20, 'featured-img/5c36898427d9251ece9f3e1a486d67c0.png', '<p>sdfsdfsdfsdf</p>', '3bIBxiCkp2', 0, '2020-01-30 19:38:43', '2020-02-12 00:00:00', 'test', 'test', '', '', '', '', '', '', '', '', '', '', 1),
(6, 'product', 'PR20200205232430', 'product', 4, 0, 1, 10203, 100, 20, 'featured-img/5c36898427d9251ece9f3e1a486d67c0.png', '<p>saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf saad afasfaf</p>', 'e0X2YipAxQ', 0, '2020-02-05 17:54:30', '2020-02-12 00:00:00', 'test', 'test', '', '', '', '', '', '', '', '', '', '', 1),
(7, 'productfadsdf', 'PR20200205232952', 'product', 4, 0, 1, 10203, 100, 20, 'featured-img/5c36898427d9251ece9f3e1a486d67c0.png', '<p>csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd csdfsdsd</p>', '9OyvmFNSpe', 0, '2020-02-05 17:59:52', '2020-02-12 00:00:00', 'test', 'test', '13', '123456', 'sdfsad', 'sdfsd', 'sfsdf', 'sdfsdf', 'sdsdf', 'sfdsf', 'sdfsdf', 'sdfsdf', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_imgs`
--

CREATE TABLE `product_imgs` (
  `id` int(250) NOT NULL,
  `prod_id` int(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `uniq` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_imgs`
--

INSERT INTO `product_imgs` (`id`, `prod_id`, `image`, `thumb`, `uniq`) VALUES
(1, 3, 'product-images/09147d26590c86c7243a26b6d3189303.png', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(250) NOT NULL,
  `cat_id` int(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT 0,
  `uniq` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `cat_id`, `title`, `date`, `status`, `uniq`) VALUES
(1, 1, 'category1', '2020-01-23 22:01:27', 1, NULL),
(2, 1, '1234656zxxczcxv', '2020-01-23 22:01:34', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_imgs`
--
ALTER TABLE `product_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_imgs`
--
ALTER TABLE `product_imgs`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
