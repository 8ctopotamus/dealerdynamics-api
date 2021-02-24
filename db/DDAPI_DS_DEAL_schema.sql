-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 04:23 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ddapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `DDAPI_DS_DEAL`
--

CREATE TABLE `DDAPI_DS_DEAL` (
  `id` int(11) NOT NULL,
  `Buyer_Address1` varchar(100) DEFAULT NULL,
  `Buyer_Address2` varchar(100) DEFAULT NULL,
  `Buyer_Birthday` varchar(100) DEFAULT NULL,
  `Buyer_CellPhone` varchar(100) DEFAULT NULL,
  `Buyer_City` varchar(100) DEFAULT NULL,
  `Buyer_ContactType` varchar(100) DEFAULT NULL,
  `Buyer_ContactSubType` varchar(100) DEFAULT NULL,
  `Buyer_CompanyName` varchar(100) DEFAULT NULL,
  `Buyer_CountryCode` varchar(100) DEFAULT NULL,
  `Buyer_DmsID` varchar(100) DEFAULT NULL,
  `Buyer_DriversLicense` varchar(100) DEFAULT NULL,
  `Buyer_Email1` varchar(100) DEFAULT NULL,
  `Buyer_EntityType` varchar(100) DEFAULT NULL,
  `Buyer_FirstName` varchar(100) DEFAULT NULL,
  `Buyer_HomePhone` varchar(100) DEFAULT NULL,
  `Buyer_LastName` varchar(100) DEFAULT NULL,
  `Buyer_MiddleName` varchar(100) DEFAULT NULL,
  `Buyer_OptInEmail` varchar(100) DEFAULT NULL,
  `Buyer_OptInPhone` varchar(100) DEFAULT NULL,
  `Buyer_OptInPrint` varchar(100) DEFAULT NULL,
  `Buyer_OptInText` varchar(100) DEFAULT NULL,
  `Buyer_State` varchar(100) DEFAULT NULL,
  `Buyer_StatusType` varchar(100) DEFAULT NULL,
  `Buyer_WorkPhone` varchar(100) DEFAULT NULL,
  `Buyer_Zip` varchar(100) DEFAULT NULL,
  `Buyer_SSN` varchar(100) DEFAULT NULL,
  `CoBuyer_Address1` varchar(100) DEFAULT NULL,
  `CoBuyer_Address2` varchar(100) DEFAULT NULL,
  `CoBuyer_Birthday` varchar(100) DEFAULT NULL,
  `CoBuyer_CellPhone` varchar(100) DEFAULT NULL,
  `CoBuyer_City` varchar(100) DEFAULT NULL,
  `CoBuyer_ContactType` varchar(100) DEFAULT NULL,
  `CoBuyer_ContactSubType` varchar(100) DEFAULT NULL,
  `CoBuyer_CompanyName` varchar(100) DEFAULT NULL,
  `CoBuyer_CountryCode` varchar(100) DEFAULT NULL,
  `CoBuyer_DriversLicense` varchar(100) DEFAULT NULL,
  `CoBuyer_Email1` varchar(100) DEFAULT NULL,
  `CoBuyer_EntityType` varchar(100) DEFAULT NULL,
  `CoBuyer_FirstName` varchar(100) DEFAULT NULL,
  `CoBuyer_HomePhone` varchar(100) DEFAULT NULL,
  `CoBuyer_LastName` varchar(100) DEFAULT NULL,
  `CoBuyer_MiddleName` varchar(100) DEFAULT NULL,
  `CoBuyer_OptInEmail` varchar(100) DEFAULT NULL,
  `CoBuyer_OptInPhone` varchar(100) DEFAULT NULL,
  `CoBuyer_OptInPrint` varchar(100) DEFAULT NULL,
  `CoBuyer_OptInText` varchar(100) DEFAULT NULL,
  `CoBuyer_State` varchar(100) DEFAULT NULL,
  `CoBuyer_StatusType` varchar(100) DEFAULT NULL,
  `CoBuyer_WorkPhone` varchar(100) DEFAULT NULL,
  `CoBuyer_Zip` varchar(100) DEFAULT NULL,
  `CoBuyer_SSN` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DMSDealer` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DMSStore` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DMSBranch` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DSiSiteId` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DSiAddressId` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DSiEntityId` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DSiEventId` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DSiActivityId` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DSiVehicleId` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DSiQuoteId` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DSiInventory` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DMSIPAddress` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DMSName` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DMSVersion` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DMSUsername` varchar(100) DEFAULT NULL,
  `IntegrationMapping_DMSPassword` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_Make` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_Model` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_Year` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_VIN` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_Odometer` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_ExteriorColor` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_MSRP` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_VehicleType` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_ACV` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_Allowance` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_LenderType` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_1_Payoff` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_Make` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_Model` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_Year` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_VIN` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_Odometer` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_ExteriorColor` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_MSRP` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_VehicleType` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_ACV` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_Allowance` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_LenderType` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_2_Payoff` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_Make` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_Model` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_Year` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_VIN` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_Odometer` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_ExteriorColor` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_MSRP` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_VehicleType` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_ACV` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_Allowance` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_LenderType` varchar(100) DEFAULT NULL,
  `TradeVehicleVo_3_Payoff` varchar(100) DEFAULT NULL,
  `Vehicle_Make` varchar(100) DEFAULT NULL,
  `Vehicle_Model` varchar(100) DEFAULT NULL,
  `Vehicle_Year` varchar(100) DEFAULT NULL,
  `Vehicle_VIN` varchar(100) DEFAULT NULL,
  `Vehicle_Odometer` varchar(100) DEFAULT NULL,
  `Vehicle_StockNumber` varchar(100) DEFAULT NULL,
  `Vehicle_MSRP` varchar(100) DEFAULT NULL,
  `Vehicle_VehicleType` varchar(100) DEFAULT NULL,
  `Vehicle_CertifiedNumber` varchar(100) DEFAULT NULL,
  `Vehicle_Price` varchar(100) DEFAULT NULL,
  `CashDown` varchar(100) DEFAULT NULL,
  `DealNumber` varchar(100) DEFAULT NULL,
  `DealType` varchar(100) DEFAULT NULL,
  `LenderDmsID` varchar(100) DEFAULT NULL,
  `SalesPerson1DmsID` varchar(100) DEFAULT NULL,
  `SalesPerson2DmsID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DDAPI_DS_DEAL`
--
ALTER TABLE `DDAPI_DS_DEAL`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DDAPI_DS_DEAL`
--
ALTER TABLE `DDAPI_DS_DEAL`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
