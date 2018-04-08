-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2018 at 01:48 PM
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
-- Table structure for table `wp_volunteer_form`
--

CREATE TABLE `wp_volunteer_form` (
  `Volunteer ID` int(11) NOT NULL,
  `Nomination` int(11) NOT NULL,
  `Provider Name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Provider Type` int(11) NOT NULL,
  `Provider Subtype` int(11) NOT NULL,
  `Office / Clinic` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Address` longtext COLLATE utf8mb4_unicode_520_ci,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Web Address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Experience` text COLLATE utf8mb4_unicode_520_ci,
  `OHP` text COLLATE utf8mb4_unicode_520_ci,
  `Private Ins` text COLLATE utf8mb4_unicode_520_ci,
  `Medicare` text COLLATE utf8mb4_unicode_520_ci,
  `Sliding Payments` text COLLATE utf8mb4_unicode_520_ci,
  `Awareness Training` text COLLATE utf8mb4_unicode_520_ci,
  `Gender Options` text COLLATE utf8mb4_unicode_520_ci,
  `Pronouns` text COLLATE utf8mb4_unicode_520_ci,
  `Preferred Name` text COLLATE utf8mb4_unicode_520_ci,
  `Hormone Monitoring` text COLLATE utf8mb4_unicode_520_ci,
  `Comments` longtext COLLATE utf8mb4_unicode_520_ci,
  `Date` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Status` int(11) NOT NULL,
  `Admin` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Publish` int(11) NOT NULL,
  `admin_notes` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_volunteer_form`
--

INSERT INTO `wp_volunteer_form` (`Volunteer ID`, `Nomination`, `Provider Name`, `Provider Type`, `Provider Subtype`, `Office / Clinic`, `Address`, `Phone`, `Email`, `Web Address`, `Experience`, `OHP`, `Private Ins`, `Medicare`, `Sliding Payments`, `Awareness Training`, `Gender Options`, `Pronouns`, `Preferred Name`, `Hormone Monitoring`, `Comments`, `Date`, `Status`, `Admin`, `Publish`, `admin_notes`) VALUES
(1, 1, 'Doctore Doctore', 1, 1, 'Doctores Medical', '2222 Alder St, Eugene, OR, 97401', '6549874586', 'doctores@doctore.com', 'doctore.org', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Doctores is doctore!', '2009-01-15', 0, 'Admin', 1, ''),
(2, 1, 'Dkhbdkhb', 1, 2, 'dnkjsdbfhksbdf', '999 Gateway St, Springfield, OR, 97477', '5642314569', 'sdfsdfsd@sdfsdf.com', 'sdfdfsdfsd.net', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'LJBhjbsdhjfvsd', '89-5-5', 0, 'jHGgviuh', 1, ''),
(3, 1, 'Mobius', 1, 3, 'Mobius\' Strip', '654 Klein Dr, Springfield, OR, 97478', '8880008800', 'ouroborous@klein.com', 'recursion@wot.net', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', 'I want to get off of Mr. Bones\' wild ride. ', '1/1/1901', 0, 'Snek', 1, ''),
(4, 0, 'Mango Menace', 1, 4, 'Mango Real Estate', '1600 Pennsylvania Ave NW, Washington, DC 20500', '9876541587', 'mangomenace@ehitehouse.gov', 'mangorealestate.com', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'All hail the mango menace, he of the atomic parsimmon glow, behold his non-euclidian comb-over!', '6/14/1946', 0, 'None', 1, ''),
(5, 0, 'Baron Harkonnen', 2, 5, 'Giedi Prime Medical', '11000 Giedi Prime, Milky Way Galaxy ', '11000-456-7985', 'baron@harkonnen.dun', 'harkonnen.giedi', '1', '0', '1', '0', '1', '1', '0', '1', '1', '1', 'Tensor lift.', '4/1/20125', 0, 'Atreides', 1, ''),
(6, 1, 'Doctor Bot', 2, 6, 'Doctors Automata', '352 Industrial Way, Springfield, OR, 97477', '5415556789', 'medicaebot@gear.com', 'medicalbot.org', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Hard-coded to help!', '1/1/2018', 0, 'Turing', 1, ''),
(7, 1, 'ORK BOY', 2, 7, 'FLASH BOYZ', '1000 CRUMPIN GITZ WAY, EUGENE, OR, 97402', '9996665874', 'CRUMPIN@GITZ.COM', 'GORKANDMORK.GITZ', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', 'I\'M DA BOSS CAUSE I\'M DA BIGGEST! ALSO GOTS DA MOST TEEF', '251.326.40001', 0, 'CLAN SKULLCRUSHA', 1, ''),
(8, 0, 'Name', 2, 8, 'Office', 'Address, Eugene, OR, 97401', '5415555555', 'email@email.com', 'domain.com', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', 'Comment', '1/1/2018', 0, 'Admin', 1, ''),
(9, 0, 'Name2', 3, 9, 'Office', 'Address, Eugene, OR, 97401', '5415555555', 'email@email.com', 'domain.com', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', 'Comment', '1/1/2018', 0, 'Admin', 1, ''),
(10, 0, 'Name3', 3, 10, 'Office', 'Address, Eugene, OR, 97401', '5415555555', 'email@email.com', 'domain.com', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', 'Comment', '1/1/2018', 0, 'Admin', 1, ''),
(11, 0, 'Name4', 3, 11, 'Office', 'Address, Eugene, OR, 97401', '5415555555', 'email@email.com', 'domain.com', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', 'Comment', '1/1/2018', 0, 'Admin', 1, ''),
(12, 0, 'Name5', 4, 12, 'Office', 'Address, Eugene, OR, 97401', '5415555555', 'email@email.com', 'domain.com', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', 'Comment', '1/1/2018', 0, 'Admin', 1, ''),
(13, 0, 'Name6', 4, 13, 'Office', 'Address, Eugene, OR, 97401', '5415555555', 'email@email.com', 'domain.com', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', 'Comment', '1/1/2018', 0, 'Admin', 1, ''),
(14, 0, 'Name7', 4, 14, 'Office', 'Address, Eugene, OR, 97401', '5415555555', 'email@email.com', 'domain.com', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', 'Comment', '1/1/2018', 0, 'Admin', 1, ''),
(15, 0, 'Name8', 4, 15, 'Office', 'Address, Eugene, OR, 97401', '5415555555', 'email@email.com', 'domain.com', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', 'Comment', '1/1/2018', 0, 'Admin', 1, ''),
(16, 0, 'Kat IS Testing at 1020', 1, 1, 'Kat\\\\\\\\\\\\\\\'s Clinic', '1234 Kats House', '555-555-5555', 'itskat@kat.kat', 'kat.kat', '1', '0', '0', '1', '0', '||', '0', '1', '0', NULL, '', '2018-04-08', 2, '', 1, ''),
(17, 0, 'Richard Butts', 1, 2, 'Medical Inc', ' 123 High St, Eugene, OR, 97401', '5555555555', 'rickbutts@medical.com', 'www.rickmedbutts.com', '0', NULL, '1', '0', '0', '||', '0', '0', '0', NULL, 'redo Butts', '2018-04-08', 2, '', 1, ''),
(18, 0, 'Provider Name Test 1023', 1, 3, 'Clinic Name', 'Address', 'Phone', 'Email', 'URL', '0', NULL, '0', '0', '0', '||', '0', '0', '0', NULL, '', '2018-04-08', 2, '', 1, ''),
(19, 0, '1', 3, 10, 'Provider Name', 'Clinic Name', 'Address', 'Phone', 'Email', '0', NULL, '0', '0', NULL, '0', NULL, '0', '0', NULL, '', '2018-04-08', 2, '', 0, ''),
(20, 0, '1', 3, 10, 'Provider Name', 'Clinic Name', 'Address', 'Phone', 'Email', '0', NULL, '0', '0', NULL, '0', NULL, '0', '0', NULL, '', '2018-04-08', 2, '', 0, ''),
(21, 0, '1', 3, 10, 'Provider Name', 'Clinic Name', 'Address', 'Phone', 'Email', '0', NULL, '0', '0', '0', '0', NULL, '0', '0', NULL, '', '2018-04-08', 2, '', 0, ''),
(22, 0, '1', 3, 10, 'Provider Name', 'Clinic Name', 'Address', 'Phone', 'Email', '0', NULL, '0', '0', '0', '0', NULL, '0', '0', NULL, '', '2018-04-08', 2, '', 0, ''),
(23, 0, 'Provider Namez', 1, 1, 'Clinic Name', 'Address', 'Phone', 'Email', 'URL', '0', NULL, '0', '0', '0', '||', '0', '0', '0', NULL, '0000', '2018-04-08', 1, '', 0, ''),
(24, 0, 'Test Pro', 1, 1, '', '', '', '', '', '0', NULL, '0', '0', '0', '0', '0', '0', '0', '0', '', '2018-04-08', 2, '', 0, ''),
(25, 0, 'Test Pro', 1, 1, '', '', '', '', '', '1', NULL, '0', '1', '0', '1', '0', '1', '1', '1', '', '2018-04-08', 2, '', 0, ''),
(26, 0, 'Test Pro', 1, 1, '', '', '', '', '', '1', NULL, 'All of them', '1', 'Sliding scale', '1|2|3', 'options', '1', '1', '1', '', '2018-04-08', 2, '', 0, ''),
(27, 0, 'Test Proz', 1, 1, '', '', '', '', '', '1', NULL, 'All of them', '1', 'Sliding scale', '1|2|3', 'options', '1', '1', '1', '', '2018-04-08', 2, '', 0, ''),
(28, 0, 'Test Proz', 1, 1, '', '', '', '', '', '1', NULL, 'All of them', '1', 'Sliding scale', '1|2|3', 'options', '1', '1', '1', '', '2018-04-08', 2, '', 0, ''),
(29, 0, 'Test Proz', 1, 1, '', '', '', '', '', '1', NULL, 'All of them', '1', 'Sliding scale', '1|2|3', 'options', '1', '1', '1', '', '2018-04-08', 2, '', 0, ''),
(30, 0, 'Test Proz', 1, 1, '', '', '', '', '', '1', NULL, 'All of them', '1', 'Sliding scale', '1|2|3', 'options', '1', '1', '1', '', '2018-04-08', 2, '', 0, ''),
(31, 0, 'Doop Dee', 1, 12, 'Poop Dee', '321 32nd Ave', '321-321-3232', 'doopdee@poopdee.doop', 'www.poopdee.doop', '1', NULL, '0', '0', '0', '||', '0', '1', '0', NULL, '', '2018-04-08', 2, '', 1, ''),
(32, 0, 'Kat', 1, 1, 'Kat\\\\\\\'s Clinic', '1234 Kats House', '555-555-5555', 'itskat@kat.kat', 'kat.kat', '0', NULL, '0', '0', '0', '||', '0', '0', '0', '0', '', '2018-04-08', 2, '', 0, ''),
(33, 0, 'GYNECOLOGY Test at 1022', 1, 3, 'Gynecology', '123 gynecology', '654-987-3214', 'gyne@colog.ist', 'gyne.colog/ist', '0', NULL, '0', '1', '0', '||', '0', '0', '0', NULL, '', '2018-04-08', 2, '', 1, ''),
(34, 0, '1', 1, 10, 'Provider Name', 'Clinic Name', 'Address', 'Phone', 'Email', '0', NULL, '0', '0', '0', '||', '0', '0', '0', NULL, '', '2018-04-08', 2, '', 1, ''),
(35, 0, 'Start to Finish My Man', 1, 9, '', '93847', '987-987-9879', '', '', '0', NULL, '0', '0', '0', '||', '0', '0', '0', NULL, '', '2018-04-08', 2, '', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_volunteer_form`
--
ALTER TABLE `wp_volunteer_form`
  ADD PRIMARY KEY (`Volunteer ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_volunteer_form`
--
ALTER TABLE `wp_volunteer_form`
  MODIFY `Volunteer ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
