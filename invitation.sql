-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2020 at 10:13 AM
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
(4, 'fasdfads', 1, '2020-01-23 21:13:01', 1, NULL);

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
-- Indexes for table `category`
--
ALTER TABLE `category`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
