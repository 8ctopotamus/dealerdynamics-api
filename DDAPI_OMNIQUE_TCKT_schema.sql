-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2021 at 09:00 AM
-- Server version: 10.3.21-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DDAPI`
--

-- --------------------------------------------------------

--
-- Table structure for table `DDAPI_OMNIQUE_TCKT`
--

CREATE TABLE `DDAPI_OMNIQUE_TCKT` (
  `OM_TCKTID` int(100) NOT NULL,
  `OM_TCKT_NO` int(11) DEFAULT NULL,
  `OM_TCKT_STS` varchar(50) DEFAULT NULL,
  `OM_TCKT_TYPE` varchar(50) DEFAULT NULL,
  `OM_TCKT_VC` varchar(50) DEFAULT NULL,
  `OM_TCKT_VP` varchar(50) DEFAULT NULL,
  `OM_TCKT_COID` int(11) DEFAULT NULL,
  `OM_TCKT_SHNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DDAPI_OMNIQUE_TCKT`
--
ALTER TABLE `DDAPI_OMNIQUE_TCKT`
  ADD PRIMARY KEY (`OM_TCKTID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DDAPI_OMNIQUE_TCKT`
--
ALTER TABLE `DDAPI_OMNIQUE_TCKT`
  MODIFY `OM_TCKTID` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
