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
-- Table structure for table `wp_community_form`
--

CREATE TABLE `wp_community_form` (
  `Community ID` int(11) NOT NULL,
  `Provider Name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Provider Category` int(11) NOT NULL,
  `Provider Subtype` int(11) NOT NULL,
  `Office / Clinic Name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Address` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `Phone Number` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Web Address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Feedback` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `Comments` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `Rating` int(11) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `Date` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_community_form`
--

INSERT INTO `wp_community_form` (`Community ID`, `Provider Name`, `Provider Category`, `Provider Subtype`, `Office / Clinic Name`, `Address`, `Phone Number`, `Email`, `Web Address`, `Feedback`, `Comments`, `Rating`, `Status`, `Date`) VALUES
(1, 'wer', 1, 0, 'sdf', 'sdf', '', '', '', '', '', 1, 2, '0000-00-00'),
(3, '1', 3, 10, 'Provider Name', 'Clinic Name', 'Address', 'Phone', 'Email', 'URL', 'Feedback', 0, 2, '2018-04-07'),
(4, 'Provider Name', 1, 1, 'Clinic Name', 'Address', 'Phone', 'Email', 'URL', 'Feedback', 'Comments', 2, 1, '2018-04-07'),
(5, 'Provider Name', 1, 1, 'Clinic Name', 'Address', 'Phone', 'Email', 'URL', 'Feedback', 'Comments', 2, 2, '2018-04-07'),
(6, '', 1, 0, '', '', '', '', '', 'What would you like us to know about this provider?', '', 1, 1, '2018-04-07'),
(7, '', 1, 0, '', '', '', '', '', 'What would you like us to know about this provider?', '', 1, 1, '2018-04-07'),
(8, 'Kat', 1, 1, 'Kat\\\'s Clinic', '1234 Kats House', '555-555-5555', 'itskat@kat.kat', 'kat.kat', 'Kat is pretty good', 'Kat is actually really good', 2, 2, '2018-04-08'),
(9, 'Richard Butts', 1, 2, 'Medical Inc', ' 123 High St, Eugene, OR, 97401', '5555555555', 'rickbutts@medical.com', 'www.rickmedbutts.com', 'Rick!!!', 'Rick!!!', 54, 2, '3-15-2015'),
(10, 'Alder Nonymous', 4, 15, 'A. Nonymous\' Misc Works', '2121 Willamette St. Eugene, Or, 97401', '9876541598', 'anonymouse@anmw.org', 'www.anonymoose.org', 'A. Nonymous\' Misc Works', 'A. Nonymous\' Misc Works', 5, 2, '3-7-2017'),
(11, 'Wendy Wax', 4, 4, 'Hair Removers R Us', '321 Wax Lane', '541-898-8989', 'wendywax@hairremoversrus.org', 'www.hairremoversrus.org', 'professional af', 'Wax!', 2, 2, '2018-04-08'),
(12, 'Doop Dee', 4, 4, 'Poop Dee', '321 32nd Ave', '321-321-3232', 'doopdee@poopdee.doop', 'www.poopdee.doop', 'They did good work, real nice people', 'I didn\\\'t tip though', 2, 1, '2018-04-08'),
(13, 'Test Machine', 0, 0, '123 Test McTesters', '123-456-7890', 'test@test.best', 'test.best', 'Testidy Bestidy', 'TESTY MCMESTY', '1', 3, 2, '2018-04-08'),
(14, 'GYNECOLOGY Test at 1022', 1, 1, 'Gynecology', '123 gynecology', '654-987-3214', 'gyne@colog.ist', 'gyne.colog/ist', 'What would you like us to know about this provider?', 'I would like you to know everything I know', 2, 2, '2018-04-08'),
(15, 'Start to Finish My Man', 3, 3, '', '93847', '987-987-9879', '', '', 'What would you like us to know about this provider?', '', 1, 2, '2018-04-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_community_form`
--
ALTER TABLE `wp_community_form`
  ADD PRIMARY KEY (`Community ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_community_form`
--
ALTER TABLE `wp_community_form`
  MODIFY `Community ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
