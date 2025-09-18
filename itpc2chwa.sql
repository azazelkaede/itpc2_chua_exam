-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 18, 2025 at 03:40 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itpc2chwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customerID` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `name` (`name`,`email`),
  UNIQUE KEY `mobile` (`mobile`,`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `name`, `email`, `mobile`, `address`, `password`) VALUES
('52567', 'benjo', 'benjothegreat1@gmail.com', '09095252641', 'Valeria Ext. St.', 'arayko'),
('52592', 'blanco', 'blancoarayko2@gmail.com', '09956752641', 'Jaro Tabuc Suba', 'ikawlang');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderID` varchar(25) NOT NULL,
  `pruductID` varchar(25) NOT NULL,
  `customerID` varchar(25) NOT NULL,
  `orderDate` varchar(25) NOT NULL,
  `totalAmount` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `pruductID`, `customerID`, `orderDate`, `totalAmount`, `status`) VALUES
('11001', '10001', '52567', '09/18/25', '300.85', 'Preparing'),
('11002', '10002', '52592', '09/15/25', '225.30', 'Shipped');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `paymentID` varchar(25) NOT NULL,
  `orderID` varchar(25) NOT NULL,
  `paymentDate` varchar(25) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `paymentMethod` varchar(25) NOT NULL,
  PRIMARY KEY (`paymentID`),
  UNIQUE KEY `amount` (`amount`,`paymentMethod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `orderID`, `paymentDate`, `amount`, `paymentMethod`) VALUES
('50001', '10001', '09/17/25', '301', 'Gcash'),
('50002', '10002', '09/14/25', '226', 'Paymaya');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `productID` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `price` varchar(25) NOT NULL,
  `category` varchar(25) NOT NULL,
  `stock` varchar(25) NOT NULL,
  PRIMARY KEY (`productID`),
  UNIQUE KEY `name` (`name`,`price`,`category`,`stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `name`, `price`, `category`, `stock`) VALUES
('10001', 'axe', '285.85', 'body spray', '15'),
('10002', 'kojic', '180.67', 'soap', '25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
