-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2018 at 01:49 PM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transpon_staging_transponder_comm`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_provider_type`
--

CREATE TABLE `wp_provider_type` (
  `Provider ID` int(11) NOT NULL,
  `Type` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_provider_type`
--

INSERT INTO `wp_provider_type` (`Provider ID`, `Type`) VALUES
(1, 'Medical'),
(2, 'Mental Health'),
(3, 'Surgical'),
(4, 'Health / Beauty / Bodywork');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_provider_type`
--
ALTER TABLE `wp_provider_type`
  ADD PRIMARY KEY (`Provider ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_provider_type`
--
ALTER TABLE `wp_provider_type`
  MODIFY `Provider ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
