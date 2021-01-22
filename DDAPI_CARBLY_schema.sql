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

--
-- Database: `DDAPI`
--
DROP DATABASE IF EXISTS DDAPI;
CREATE DATABASE DDAPI;
USE DDAPI;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `DDAPI_CARBLY` (
  `id` int(100) NOT NULL,
  `CARBLY_UUID` varchar(100) NOT NULL,
  `CARBLY_ROOFTOP_UUID` varchar(100) NOT NULL,
  `CARBLY_VIN` varchar(100) DEFAULT NULL,
  `CARBLY_MILEAGE` int(100) DEFAULT NULL,
  `CARBLY_YEAR` int(10) DEFAULT NULL,
  `CARBLY_MAKE` varchar(100) DEFAULT NULL,
  `CARBLY_MODEL` varchar(100) DEFAULT NULL,
  `CARBLY_SERIES` varchar(100) DEFAULT NULL,
  `CARBLY_STYLE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `vehicles`
--
ALTER TABLE `DDAPI_CARBLY`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `DDAPI_CARBLY`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

