-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2020 at 08:52 PM
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
(14, 'banner/f261131ca613ae6336532f8f0e52f0a4.jpg', 'http://localhost/invitation/', 'cgkPmQ3A0Y', 1, '2020-02-24 19:08:31'),
(17, 'banner/5d15718ba3dc619b2b74013802c08de8.png', 'http://localhost/invitation/', '16', 1, '2020-02-24 19:10:56'),
(18, 'banner/119fd0442187c4a1a6c814242599c67a.png', 'http://localhost/invitation/', 'rdpeRCI6Qi', 1, '2020-02-24 19:13:57');

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
(6, 'Ceremony', 1, '2020-02-24 19:14:44', 1, 'nwXlQG96ud'),
(7, 'By Religion', 1, '2020-02-24 19:15:21', 1, 'Gm6hHfeuB1'),
(8, 'By Type', 1, '2020-02-24 19:15:31', 1, '9yXvgSzcZD'),
(9, 'Orientation', 1, '2020-02-24 19:15:49', 1, 'T1jpVJcMwR'),
(10, 'price', 1, '2020-02-24 19:16:07', 1, 'FWNlqJr56n');

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
  `pr_type` int(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `pr_id`, `sku`, `category`, `sub_category`, `is_stock`, `mrp`, `selling_price`, `discount`, `featured_image`, `description`, `uniq`, `status`, `date`, `update_date`, `weight`, `dimensions`, `no_of_insert`, `material`, `type`, `ceremony`, `orientation`, `print_option`, `size`, `gsm`, `color`, `theme`, `pr_type`, `thumb`) VALUES
(8, 'The Classic Painting Design Wedding Invitation Card.', 'TH20200225010258', 'KPX02106 ', 7, 6, 1, 80, 50, 20, 'featured-img/47958e2828753b505b3667c2e6cfd919.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', 'AGeDFIv5tU', 0, '2020-02-24 19:32:58', '2020-02-25 00:00:00', '10g', '100*200', '2', 'material', 'sdfsad', 'sdfsd', 'sfsdf', 'sdfsdf', 'sdsdf', 'sfdsf', 'sdfsdf', 'sdfsdf', 1, '47958e2828753b505b3667c2e6cfd919_thumb.jpg'),
(9, 'product2', 'PR20200225011044', 'product', 7, 7, 1, 50, 40, 10, 'featured-img/92dbc53610b044c05f6dab8618e0467a.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', 'KCgk4dsr7u', 0, '2020-02-24 19:40:44', '2020-02-25 00:00:00', 'test', 'test', '13', '123456', 'sdfsad', 'sdfsd', 'sfsdf', 'sdfsdf', 'sdsdf', 'sfdsf', '', '', 1, '92dbc53610b044c05f6dab8618e0467a_thumb.jpg'),
(10, 'invitation 2', 'IN20200225011144', 'productSDASD', 7, 8, 1, 100, 60, 20, 'featured-img/2d4197d935fadc05130dbd21fdae019e.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', 'IdhLbS4cOt', 0, '2020-02-24 19:41:44', '2020-02-25 00:00:00', '10g', 'test', '', '', '', '', '', '', '', '', '', '', 1, '2d4197d935fadc05130dbd21fdae019e_thumb.jpg'),
(11, 'product 4', 'PR20200225011313', 'KPX02106213123', 7, 8, 1, 90, 80, 20, 'featured-img/2dc8c3646814f806d9cee74b62a70d05.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', '1r5IRObEcx', 0, '2020-02-24 19:43:13', '2020-02-25 00:00:00', '10g', 'test', '', '', '', '', '', '', '', '', '', '', 1, '2dc8c3646814f806d9cee74b62a70d05_thumb.jpg'),
(12, 'product 5', 'PR20200225011405', 'KPX0210622222', 9, 12, 1, 50, 50, 10, 'featured-img/cbe97b20dda225404fb65d93721513e0.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', 'OGvX8F6j9a', 0, '2020-02-24 19:44:05', '2020-02-25 00:00:00', '10g', 'test', '', '', '', '', '', '', '', '', '', '', 1, 'cbe97b20dda225404fb65d93721513e0_thumb.jpg'),
(13, 'product 7', 'PR20200225011457', 'KPX02106234567', 6, 3, 1, 50, 40, 20, 'featured-img/ae9b42893a37e3f17c23397151728380.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', '5rVDzZfb0d', 0, '2020-02-24 19:44:57', '2020-02-25 00:00:00', '10g', '100*200', '', '', '', '', '', '', '', '', '', '', 2, 'ae9b42893a37e3f17c23397151728380_thumb.jpg'),
(14, 'product 6', 'PR20200225011548', 'KPX0210623456723', 6, 4, 1, 500, 100, 10, 'featured-img/4a3a6135d0c116000e25140f8e57aa17.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', 'WM2zN451JQ', 0, '2020-02-24 19:45:48', '2020-02-25 00:00:00', '10g', '100*200', '', '', '', '', '', '', '', '', '', '', 2, '4a3a6135d0c116000e25140f8e57aa17_thumb.jpg'),
(15, 'invitation 3', 'IN20200225011644', 'KPX0210623456756756756756756', 8, 4, 1, 1000, 900, 10, 'featured-img/c4b7d7b907531d1e71a9c62d1efa93f8.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', 'mUkvA0zy7E', 0, '2020-02-24 19:46:45', '2020-02-25 00:00:00', '10g', '100*200', '', '', '', '', '', '', '', '', '', '', 2, 'c4b7d7b907531d1e71a9c62d1efa93f8_thumb.jpg'),
(16, 'product 8', 'PR20200225011719', 'zczxczCXzxczcx', 8, 9, 1, 80, 40, 10, 'featured-img/2b0854da957a9927dfdd7c400b50cf4c.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', 'tjAJnDcRGs', 0, '2020-02-24 19:47:19', '2020-02-25 00:00:00', '10g', '100*200', '', '', '', '', '', '', '', '', '', '', 2, '2b0854da957a9927dfdd7c400b50cf4c_thumb.jpg'),
(17, 'product 10', 'PR20200225011936', 'pro10', 10, 14, 1, 60, 50, 0, 'featured-img/98c3dd54479504adac2209769e454e28.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', 'F1AuWbCrhl', 0, '2020-02-24 19:49:36', '2020-02-25 00:00:00', '10g', '100*200', '', '', '', '', '', '', '', '', '', '', 3, '98c3dd54479504adac2209769e454e28_thumb.jpg'),
(18, 'product 11', 'PR20200225012017', 'product 11', 10, 15, 1, 80, 70, 0, 'featured-img/e7fae79bd723eddc53b5fc880b89ed53.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', 'ojJU9Icxgs', 0, '2020-02-24 19:50:17', '2020-02-25 00:00:00', '10g', '100*200', '', '', '', '', '', '', '', '', '', '', 3, 'e7fae79bd723eddc53b5fc880b89ed53_thumb.jpg'),
(19, 'product 12', 'PR20200225012100', 'product 12', 9, 12, 1, 100, 80, 0, 'featured-img/b701112ab2a8bfa670e0a643ed2ef318.jpg', '<p><em>Lorem ipsum</em>, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s De Finibus Bonorum et Malorum for use in a type specimen book.</p>', 'XOuVij5QaW', 0, '2020-02-24 19:51:00', '2020-02-25 00:00:00', '10g', '100*200', '', '', '', '', '', '', '', '', '', '', 3, 'b701112ab2a8bfa670e0a643ed2ef318_thumb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_imgs`
--

CREATE TABLE `product_imgs` (
  `id` int(250) NOT NULL,
  `prod_id` int(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `uniq` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_imgs`
--

INSERT INTO `product_imgs` (`id`, `prod_id`, `image`, `thumb`, `uniq`) VALUES
(1, 8, 'product-images/446eb1b9f36cd9e9e03f0188a1cfb645.jpg', NULL, '0'),
(2, 8, 'product-images/8ea1aac63bfc0d1d1db6fbd02bf00dcc.jpg', NULL, 'QJ1ZGjSTsxCnXLftc2AM'),
(3, 8, 'product-images/fdf239165bf2a7405246610bb2148dc8.jpg', NULL, '61sKHJZGAmoxFfTXSRrP'),
(4, 8, 'product-images/b4d101dab7536e2bbdbc4953b243f50b.jpg', NULL, '12e4bhGNmujKwQPLHDUi'),
(5, 9, 'product-images/12adf37d2b6ddf36e12785d045eca653.jpg', NULL, 'kBrZ7VtwKzG3EaOXYFPA'),
(6, 9, 'product-images/e0343be0c956e69e01152f82b32d33f4.jpg', NULL, 'JuWpLSdK6AMVFb0wa3k8'),
(7, 9, 'product-images/4a657edb49328e31f7cddfcdd0a481dc.jpg', NULL, 'uWahC2fLU4nx9GMYERz1'),
(8, 10, 'product-images/1f02e6044b47feb91c242b19495becf2.jpg', NULL, 'SA9ztLOJUb8FpHRKnM2u'),
(9, 10, 'product-images/6ef226f33f63a0434c508de4d636fd6b.jpg', NULL, 'jY5CGUDPWvSyshLd8bFJ'),
(10, 10, 'product-images/48f71ef78bad99bc023e01a8fb5d390b.jpg', NULL, 'hreZnG91fsjaBXQYWCF7'),
(11, 11, 'product-images/d0e034f9f4d5fbc54747d97d2ef8f85f.jpg', NULL, '7GI2NEjTz8aQZVnm4eDU'),
(12, 11, 'product-images/062998b838d9814abf76290e43083553.jpg', NULL, 'pkn6Df2SwvReX8zBLuG0'),
(13, 11, 'product-images/5f5e9e5b8d316c4711cdbd26251c5fba.jpg', NULL, '38zqcu9rbXMyRfTFYQLB'),
(14, 12, 'product-images/d855ca8315b19ec0a46d0a10bfc6463f.jpg', NULL, 'A4cOR1eG5KjYlCThHF3d'),
(15, 13, 'product-images/77d1e270453bd9f32d9999b98ef5cd8f.jpg', NULL, 'mONMApVekWCFKt4DRsoS'),
(16, 13, 'product-images/9534c7943ef7bf06d1551ed411105587.jpg', NULL, 'vWmBlCAoYF4p308Kxyqf'),
(17, 13, 'product-images/7790caa973ec3eb463dcc2f39530f7c4.jpg', NULL, 'OwE4H0PI9Zdzy8btuBir'),
(18, 13, 'product-images/a1decb52d4ce2e353fbc9f95d91330e2.jpg', NULL, 'dV5PUCwN0SIFniZYrBDG'),
(19, 14, 'product-images/5a016e7b9aff8c67ce1bb163ce061446.jpg', NULL, 'yWHgE2nrm1q6LZPlIXhS'),
(20, 14, 'product-images/d39c5f87acca0a002e64157f1e0112be.jpg', NULL, 'l1zxRmdsN4btBuriOQeq'),
(21, 14, 'product-images/e4d53384dfba9191279a50ad5a87371a.jpg', NULL, '1gbIypVFfltUQAW0vxc7'),
(22, 16, 'product-images/18d523cb9dd23a4c2773fb8f6ee52575.jpg', NULL, 'wVTXf2hlyU8AzsbILC4q'),
(23, 16, 'product-images/a093fe5609bbc82ec66fa72858a78ffa.jpg', NULL, 'ryUvTlqAX0g7VGmjf6Lu'),
(24, 16, 'product-images/0c9bb297ce0e1a7ea1fecbd12fa0340a.jpg', NULL, 'Foc1TG28yn0Nxlp3VCYq'),
(25, 17, 'product-images/4aea8249c56ab02fde61d35d2cf423b2.jpg', NULL, '2JwqNPVsvKgkQpaYeRzm'),
(26, 17, 'product-images/28a184c2dd4b6ae76151bef2cfeddaae.jpg', NULL, '0UFTdB5SPWHyVa7EkOJR'),
(27, 17, 'product-images/98ad36c6231a301bdee9538ee19d8738.jpg', NULL, 'QB2oc47FYlIOvteS19wW'),
(28, 18, 'product-images/0971dd46c8d7c2580aa9b164e7958687.jpg', NULL, 't8LUlrqimozhNAf9IG7F'),
(29, 18, 'product-images/811a66d9e057ce30ec4aa60ea9e49edf.jpg', NULL, 'b3hSNnJ8Cp6oWl5GR9I0'),
(30, 18, 'product-images/c4b590d58bdba058dcbeb355812b1b83.jpg', NULL, 'lV0U6KhSQpvIdwN4M8qr'),
(31, 19, 'product-images/637b03d0e412a80aba030b2d01ea604b.jpg', NULL, 'rm7T9b54WEKPFxkYJO2a'),
(32, 19, 'product-images/145a93459fda12d8b53a59a3a9e34039.jpg', NULL, 'GNOnodb5QMIkYKzw4ytq'),
(33, 19, 'product-images/46b9c4ec6ad608c3f10a5eade54dc8a3.jpg', NULL, 'dZfXFwCMl79I40gkHSY6');

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
(2, 1, '1234656zxxczcxv', '2020-01-23 22:01:34', 1, NULL),
(3, 6, 'Wedding cards', '2020-02-24 19:16:22', 1, NULL),
(4, 6, 'Engagement', '2020-02-24 19:16:34', 1, NULL),
(5, 6, 'Birthday', '2020-02-24 19:16:42', 1, NULL),
(6, 7, 'Hindu Cards', '2020-02-24 19:17:09', 1, NULL),
(7, 7, 'Muslim', '2020-02-24 19:17:22', 1, NULL),
(8, 7, 'Christian', '2020-02-24 19:17:32', 1, NULL),
(9, 8, 'Single card', '2020-02-24 19:17:56', 1, NULL),
(10, 8, 'Padding Cards', '2020-02-24 19:18:17', 1, NULL),
(11, 8, 'Personal Cards', '2020-02-24 19:18:37', 1, NULL),
(12, 9, 'Vertical', '2020-02-24 19:18:53', 1, NULL),
(13, 9, 'Horizontal', '2020-02-24 19:19:06', 1, NULL),
(14, 10, '10', '2020-02-24 19:19:28', 1, NULL),
(15, 10, '20', '2020-02-24 19:19:38', 1, NULL),
(16, 10, '30', '2020-02-24 19:19:45', 1, NULL);

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
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_imgs`
--
ALTER TABLE `product_imgs`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
