-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2020 at 12:38 PM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rajahzkr_rajahouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `alt` varchar(250) NOT NULL,
  `uniq` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subtitle` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `link`, `alt`, `uniq`, `status`, `date`, `subtitle`) VALUES
(5, 'banner/2b63a17781b62e0a03fa4c318bdc1f5d.jpg', '', '  ', 'wjzIYHNq1d', 1, '2019-10-15 14:53:29', '  '),
(6, 'banner/a64b4c34f971fe56c719ac9d7cd2c378.jpg', '', ' ', 'mlST5Xpqti', 1, '2019-10-15 14:58:43', ' '),
(7, 'banner/0e032a5eb85315e989b9413a763ab3e5.jpg', '', ' ', 'P296bVugUL', 1, '2019-10-15 14:59:21', ' '),
(8, 'banner/b92e0a46871c9306b3a81ceced6f728a.jpg', '', ' ', 'Fpob6Svds2', 1, '2019-10-23 07:52:32', ' '),
(9, 'banner/a1a51cc3dfae12facf8ccded20c6efe8.jpg', '  ', ' ', 'xfdOY3qDVb', 1, '2019-10-23 07:52:58', ' ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
