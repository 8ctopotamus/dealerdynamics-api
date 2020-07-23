-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2020 at 04:43 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dealer_dynamics`
--

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(100) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `vin` varchar(100) DEFAULT NULL,
  `mileage` int(100) DEFAULT NULL,
  `year` int(10) DEFAULT NULL,
  `make` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `series` varchar(100) DEFAULT NULL,
  `style` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

-- INSERT INTO `vehicles` (`id`, `uuid`, `vin`, `mileage`, `year`, `make`, `model`, `series`, `style`) VALUES
-- (1, '232', 'lksfkjdf', 300, 2030, 'blerp', 'boink', 'eeee', 'red'),
-- (2, '1kjsdf83o3j8r3', 'lksfkjdf', 300, 2030, 'blerp', 'boink', 'eeee', 'red'),
-- (3, '1kjsdf83o3j8r3', '32874oij398r38', 200000, 2914, 'Ford', 'Mustang', 'G3', 'red'),
-- (4, '1kjsdf83o3j8r3', '32874oij398r38', 200000, 2914, 'Ford', 'Mustang', 'G3', 'red'),
-- (5, '1kjsdf83o3j8r3', '32874oij398r38', 200000, 2914, 'Ford', 'Mustang', 'G3', 'red');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
