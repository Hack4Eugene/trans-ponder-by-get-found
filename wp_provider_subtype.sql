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
-- Table structure for table `wp_provider_subtype`
--

CREATE TABLE `wp_provider_subtype` (
  `Subtype_ID` int(11) NOT NULL,
  `Provider_ID` int(11) NOT NULL,
  `Subtype Name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_provider_subtype`
--

INSERT INTO `wp_provider_subtype` (`Subtype_ID`, `Provider_ID`, `Subtype Name`) VALUES
(1, 1, 'Doctor / PCP'),
(2, 1, 'Endocrinologist'),
(3, 1, 'Gynecologist\r\n'),
(4, 1, 'Other / Misc'),
(5, 2, 'Therapist'),
(6, 2, 'Counselor\r\n'),
(7, 2, 'Psychologist'),
(8, 2, 'Addictions'),
(9, 3, 'Chest Surgery'),
(10, 3, 'Bottom Surgery'),
(11, 3, 'Other / Misc'),
(12, 4, 'Hair Stylists / Barbers'),
(13, 4, 'Physical Fitness'),
(14, 4, 'Hair Removal\r\n'),
(15, 4, 'Other / Misc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_provider_subtype`
--
ALTER TABLE `wp_provider_subtype`
  ADD PRIMARY KEY (`Subtype_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_provider_subtype`
--
ALTER TABLE `wp_provider_subtype`
  MODIFY `Subtype_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
