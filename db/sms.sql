-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2021 at 06:28 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

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
(8, 'Mithila Akhter', '01452698764', 'Cashara,Narayanganj', 'Female', 'Yes'),
(9, 'aa', 'aa', 'aaa', 'male', '0'),
(10, 'zzz', 'zz', 'se', 'male', '0'),
(11, 'zzz', 'zz', 'se', 'male', '0'),
(12, 'zzz', 'zz', 'se', 'male', '0'),
(13, 'zzz', 'zz', 'se', 'male', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `id` int(11) NOT NULL,
  `model` varchar(40) NOT NULL,
  `imei` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `color` text NOT NULL,
  `source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`id`, `model`, `imei`, `price`, `color`, `source`) VALUES
(3560, 'ML03', '357784310984571', 13990, 'Aqua Blue', 'Moon Telecom'),
(3561, 'Pouvior 4', '357784310125478', 12990, 'Amajon Green', 'SMH Telecom'),
(3562, 'Camon 16 Premier', '357784310258963', 27990, 'Natio Silver', 'Gadget Narayanganj'),
(3563, 'Spark 6 Air ', '357784310254136', 10990, 'Caribean Red', 'Lavel Up Point'),
(3564, 'ML07', '357784310524964', 11990, 'Ice Jediat', 'Mobile Lif');

-- --------------------------------------------------------

--
-- Table structure for table `sales_managment_table`
--

CREATE TABLE `sales_managment_table` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(64) NOT NULL,
  `customer_phone_number` varchar(15) NOT NULL,
  `product_name` varchar(64) NOT NULL,
  `product_quantity` int(5) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sales_man_name` varchar(64) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_managment_table`
--

INSERT INTO `sales_managment_table` (`id`, `customer_name`, `customer_phone_number`, `product_name`, `product_quantity`, `product_id`, `sales_man_name`, `date`) VALUES
(9, 'Rabby Sarker', '01910701653', 'Savlon Cream', 4, 16, 'Al-Imran Turjo', '2021-09-02'),
(10, 'Rabby Sarker', '01985674120', 'Savlon Cream', 4, 3062, 'Sujon', '2021-09-30'),
(11, 'Azha', '01910701653', 'Mojo', 1, 3063, 'Al-Imran Turjo', '2021-10-19'),
(15, 'Azharul Is;am', '01985674120', 'Amul Milk', 2, 3664, 'Sujon', '2021-09-06'),
(17, 'Azha', '01985246751', 'Mojo', 2, 3565, 'Rabby Sharker', '2021-09-19'),
(19, 'Rabby Sarker', '01910701653', 'Detol handwash', 1, 16, 'Al-Imran Turjo', '2021-09-30'),
(21, 'Rabby Sarker', '01910701653', 'Savlon Cream', 4, 3561, 'Sujon', '2021-09-23'),
(22, 'Rabby Sarker', '01985674120', 'Savlon Cream', 2, 3560, 'Al-Imran Turjo', '2021-09-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_managment_table`
--
ALTER TABLE `sales_managment_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers_info`
--
ALTER TABLE `customers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3565;

--
-- AUTO_INCREMENT for table `sales_managment_table`
--
ALTER TABLE `sales_managment_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
