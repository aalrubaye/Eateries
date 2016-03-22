-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2016 at 05:23 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Ascentus_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Eateries`
--

CREATE TABLE `Eateries` (
  `ID` int(2) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `City` varchar(64) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Type` int(2) NOT NULL,
  `Zip` int(8) NOT NULL,
  `Owner` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Eateries`
--

INSERT INTO `Eateries` (`ID`, `Name`, `City`, `State`, `Type`, `Zip`, `Owner`) VALUES
(1, 'Flos Bakery Shop', 'Orlando', 'FL', 1, 32801, 1),
(2, 'Jimmys Cake Salon', 'New York', 'NY', 1, 10001, 2),
(3, 'Joels Steakhouse', 'Atlanta', 'GA', 2, 30301, 3),
(4, 'James Coffeehouse', 'Tampa', 'FL', 3, 33614, 4),
(5, 'The Pit Stop', 'San Francisco', 'CA', 2, 94101, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Eatery Owners`
--

CREATE TABLE `Eatery Owners` (
  `ID` int(2) NOT NULL,
  `First Name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `Last Name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `Phone` varchar(16) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Eatery Owners`
--

INSERT INTO `Eatery Owners` (`ID`, `First Name`, `Last Name`, `Phone`) VALUES
(1, 'Flo', 'Smith', '407-985-9556'),
(2, 'Jimmy', 'Fallon', '695-595-3521'),
(3, 'Joel', 'Montry', '456-652-5223'),
(4, 'James', 'Richardson', '625-653-8594'),
(5, 'Richard', 'Robins', '745-569-9821');

-- --------------------------------------------------------

--
-- Table structure for table `Eatery Type`
--

CREATE TABLE `Eatery Type` (
  `ID` int(2) NOT NULL,
  `Type Name` varchar(64) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Eatery Type`
--

INSERT INTO `Eatery Type` (`ID`, `Type Name`) VALUES
(1, 'Bakery'),
(2, 'Restaurant'),
(3, 'Coffee Shop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Eateries`
--
ALTER TABLE `Eateries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Eatery Owners`
--
ALTER TABLE `Eatery Owners`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Eatery Type`
--
ALTER TABLE `Eatery Type`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
