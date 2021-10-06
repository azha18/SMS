-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2021 at 06:43 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Phone` varchar(14) NOT NULL,
  `Address` text NOT NULL,
  `Gander` text NOT NULL,
  `Membarship` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_info`
--

INSERT INTO `customers_info` (`id`, `Name`, `Phone`, `Address`, `Gander`, `Membarship`) VALUES
(1, 'Md.Shohanur Rahman Shohan', '01685487526', 'Phonchopoti,Fatullah,Narayanganj', 'Male', 'Yes'),
(2, 'Md.Deen Islam', '01847892541', 'Daovhog,Cashara,Narayanganj', 'Male', 'Yes'),
(4, 'Ariful Islam', '01622160365', 'Kotaler bag,Narayanganj', 'Male', 'No'),
(5, 'Sazzad Talukder', '01589654750', 'Stafquater,Chitagang road,Narayanganj', 'Male', 'No'),
(8, 'Mithila Akhter', '01452698764', 'Cashara,Narayanganj', 'Female', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_info`
--

CREATE TABLE `mobile_info` (
  `id` int(11) NOT NULL,
  `Model` varchar(40) NOT NULL,
  `IMEI` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL,
  `Color` text NOT NULL,
  `Source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile_info`
--

INSERT INTO `mobile_info` (`id`, `Model`, `IMEI`, `Price`, `Color`, `Source`) VALUES
(1, 'Spark 6', '357784310984571', 13990, 'Aqua Blue', 'Moon Telecom'),
(2, 'Spark 5 pro', '357784310524964', 11990, 'Ice Jediat', 'Mobile Lif'),
(3, 'Spark 6 Air ', '357784310254136', 10990, 'Caribean Red', 'Lavel Up Point'),
(4, 'Camon 16 Premier', '357784310258963', 27990, 'Natio Silver', 'Gadget Narayanganj'),
(5, 'Pouvior 4', '357784310125478', 12990, 'Amajon Green', 'SMH Telecom');

-- --------------------------------------------------------

--
-- Table structure for table `sales managment table`
--

CREATE TABLE `sales managment table` (
  `id` int(11) NOT NULL,
  `Customer_name` varchar(64) NOT NULL,
  `Customer_phone_number` int(15) NOT NULL,
  `Product_name` varchar(64) NOT NULL,
  `Product_quantity` int(5) NOT NULL,
  `Product_price` int(10) NOT NULL,
  `Sales_man_name` varchar(64) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_info`
--

CREATE TABLE `sale_info` (
  `id` int(11) NOT NULL,
  `Customers_id` int(11) NOT NULL,
  `Mobile_id` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_info`
--
ALTER TABLE `mobile_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales managment table`
--
ALTER TABLE `sales managment table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_info`
--
ALTER TABLE `sale_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers_info`
--
ALTER TABLE `customers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mobile_info`
--
ALTER TABLE `mobile_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales managment table`
--
ALTER TABLE `sales managment table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_info`
--
ALTER TABLE `sale_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
