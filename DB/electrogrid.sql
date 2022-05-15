-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 11:26 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electrogrid`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment_company`
--

CREATE TABLE `payment_company` (
  `paymentID` int(11) NOT NULL,
  `paymentNo` varchar(10) CHARACTER SET latin1 NOT NULL,
  `companyName` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `units` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_company`
--

INSERT INTO `payment_company` (`paymentID`, `paymentNo`, `companyName`, `amount`, `units`) VALUES
(9, '9', 'SolarBank', '250000.60', '254'),
(10, '10', 'Powercut', '750000.60', '254'),
(12, '12', 'SolarWings', '250000.60', '40'),
(35, '111', 'Solar', '25000.50', '25'),
(37, '1', 'WhirlPool', '345000.99', '3450');

-- --------------------------------------------------------

--
-- Table structure for table `payment_customer`
--

CREATE TABLE `payment_customer` (
  `billID` int(11) NOT NULL,
  `billNo` varchar(10) CHARACTER SET latin1 NOT NULL,
  `customerName` varchar(30) CHARACTER SET latin1 NOT NULL,
  `TotalPayment` decimal(10,2) NOT NULL,
  `balance` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_customer`
--

INSERT INTO `payment_customer` (`billID`, `billNo`, `customerName`, `TotalPayment`, `balance`) VALUES
(1, 'A101', 'Asc', '1000.00', '1500.00');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `TestID` int(10) NOT NULL,
  `TestName` int(20) NOT NULL,
  `TestCode` int(10) NOT NULL,
  `TestDesc` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment_company`
--
ALTER TABLE `payment_company`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `payment_customer`
--
ALTER TABLE `payment_customer`
  ADD PRIMARY KEY (`billID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`TestID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment_company`
--
ALTER TABLE `payment_company`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `payment_customer`
--
ALTER TABLE `payment_customer`
  MODIFY `billID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `TestID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
