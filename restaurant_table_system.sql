-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 03:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_table_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_ID` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `has_paid` varchar(10) NOT NULL DEFAULT 'no',
  `order_date` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `table_ID` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_ID`, `type`, `has_paid`, `order_date`, `date_modified`, `table_ID`, `product_ID`) VALUES
(1, 'tablet', 'yes', '2020-10-22 06:15:38', '2020-08-13 06:15:38', 1, 2),
(2, 'tablet', 'yes', '2020-10-21 06:15:38', '2020-08-13 06:15:38', 1, 2),
(3, 'tablet', 'yes', '2020-10-01 06:15:38', '2020-08-13 06:15:38', 1, 2),
(4, 'tablet', 'yes', '2020-10-22 06:15:38', '2020-08-13 06:15:38', 1, 6),
(5, 'tablet', 'yes', '2020-08-13 06:15:38', '2020-08-13 06:15:38', 1, 6),
(6, 'tablet', 'yes', '2020-08-13 06:15:38', '2020-08-13 06:15:38', 1, 2),
(7, 'tablet', 'yes', '2020-08-13 06:15:38', '2020-08-13 06:15:38', 1, 6),
(8, 'tablet', 'yes', '2020-08-13 06:15:38', '2020-08-13 06:15:38', 1, 6),
(9, 'tablet', 'yes', '2020-08-13 06:15:38', '2020-08-13 06:15:38', 1, 6),
(10, 'tablet', 'yes', '2020-08-14 04:32:04', '2020-08-14 04:32:04', 1, 2),
(11, 'tablet', 'yes', '2020-08-14 04:42:37', '2020-08-14 04:42:37', 5, 2),
(12, 'tablet', 'yes', '2020-08-14 04:42:37', '2020-08-14 04:42:37', 5, 2),
(13, 'tablet', 'yes', '2020-08-14 04:42:37', '2020-08-14 04:42:37', 5, 6),
(14, 'tablet', 'yes', '2020-08-14 04:42:37', '2020-08-14 04:42:37', 5, 6),
(15, 'tablet', 'yes', '2020-08-14 04:42:37', '2020-08-14 04:42:37', 5, 6),
(16, 'tablet', 'yes', '2020-08-14 04:45:05', '2020-08-14 04:45:05', 6, 2),
(17, 'tablet', 'yes', '2020-08-14 04:45:05', '2020-08-14 04:45:05', 6, 2),
(18, 'tablet', 'yes', '2020-08-14 04:46:23', '2020-08-14 04:46:23', 6, 2),
(19, 'tablet', 'yes', '2020-08-14 04:57:48', '2020-08-14 04:57:48', 6, 2),
(20, 'tablet', 'yes', '2020-08-14 04:57:48', '2020-08-14 04:57:48', 6, 2),
(21, 'tablet', 'yes', '2020-08-14 04:59:14', '2020-08-14 04:59:14', 6, 2),
(22, 'tablet', 'yes', '2020-08-14 05:01:37', '2020-08-14 05:01:37', 1, 2),
(23, 'tablet', 'yes', '2020-08-14 05:01:37', '2020-08-14 05:01:37', 1, 2),
(24, 'tablet', 'yes', '2020-08-14 05:03:26', '2020-08-14 05:03:26', 1, 2),
(25, 'tablet', 'yes', '2020-08-14 05:03:26', '2020-08-14 05:03:26', 1, 6),
(26, 'tablet', 'yes', '2020-08-14 05:03:26', '2020-08-14 05:03:26', 1, 2),
(27, 'tablet', 'yes', '2020-08-14 05:03:26', '2020-08-14 05:03:26', 1, 6),
(28, 'tablet', 'yes', '2020-08-14 05:03:26', '2020-08-14 05:03:26', 1, 6),
(29, 'tablet', 'yes', '2020-08-14 05:04:57', '2020-08-14 05:04:57', 1, 2),
(30, 'tablet', 'yes', '2020-08-22 05:47:16', '2020-08-15 05:47:16', 1, 64),
(31, 'tablet', 'yes', '2020-08-15 07:05:10', '2020-08-15 07:05:10', 1, 1),
(32, 'tablet', 'yes', '2020-08-15 07:38:24', '2020-08-15 07:38:24', 1, 11),
(33, 'tablet', 'yes', '2020-08-15 07:38:24', '2020-08-15 07:38:24', 1, 3),
(34, 'tablet', 'yes', '2020-08-15 07:38:24', '2020-08-15 07:38:24', 1, 11),
(35, 'tablet', 'yes', '2020-08-15 07:38:24', '2020-08-15 07:38:24', 1, 11),
(36, 'tablet', 'yes', '2020-08-15 07:38:24', '2020-08-15 07:38:24', 1, 11),
(37, 'tablet', 'yes', '2020-08-15 07:38:24', '2020-08-15 07:38:24', 1, 11),
(38, 'tablet', 'yes', '2020-08-15 07:38:24', '2020-08-15 07:38:24', 1, 11),
(39, 'tablet', 'yes', '2020-08-15 07:51:54', '2020-08-15 07:51:54', 1, 9),
(40, 'tablet', 'yes', '2020-08-15 07:51:54', '2020-08-15 07:51:54', 1, 5),
(41, 'tablet', 'yes', '2020-08-15 07:51:54', '2020-08-15 07:51:54', 1, 5),
(42, 'tablet', 'yes', '2020-08-15 07:52:42', '2020-08-15 07:52:42', 1, 5),
(43, 'tablet', 'yes', '2020-08-15 07:55:55', '2020-08-15 07:55:55', 9, 6),
(44, 'tablet', 'yes', '2020-08-15 07:55:55', '2020-08-15 07:55:55', 9, 6),
(45, 'tablet', 'yes', '2020-08-15 20:29:21', '2020-08-15 20:29:21', 1, 2),
(46, 'tablet', 'yes', '2020-08-15 20:29:21', '2020-08-15 20:29:21', 1, 3),
(47, 'tablet', 'yes', '2020-08-15 20:30:31', '2020-08-15 20:30:31', 2, 6),
(48, 'tablet', 'yes', '2020-08-22 20:30:31', '2020-08-15 20:30:31', 2, 7),
(49, 'tablet', 'yes', '2020-09-07 22:22:21', '2020-09-07 22:22:21', 5, 90),
(50, 'tablet', 'yes', '2020-09-07 22:22:21', '2020-09-07 22:22:21', 5, 90),
(51, 'tablet', 'yes', '2020-08-22 20:30:31', '2020-08-15 20:30:31', 2, 7),
(52, 'tablet', 'yes', '2020-10-23 02:56:07', '2020-10-23 02:56:07', 4, 10),
(53, 'tablet', 'yes', '2020-10-23 02:56:07', '2020-10-23 02:56:07', 4, 1),
(54, 'tablet', 'yes', '2020-10-25 22:36:41', '2020-10-25 22:36:41', 9, 9),
(55, 'tablet', 'yes', '2020-10-25 22:36:41', '2020-10-25 22:36:41', 9, 1),
(56, 'tablet', 'yes', '2020-10-25 22:47:05', '2020-10-25 22:47:05', 8, 10),
(57, 'tablet', 'yes', '2020-10-25 22:47:05', '2020-10-25 22:47:05', 8, 10),
(58, 'tablet', 'yes', '2020-10-25 22:47:05', '2020-10-25 22:47:05', 8, 1),
(59, 'tablet', 'yes', '2020-10-25 22:47:38', '2020-10-25 22:47:38', 4, 84),
(60, 'tablet', 'yes', '2020-10-25 22:47:38', '2020-10-25 22:47:38', 4, 1),
(61, 'tablet', 'yes', '2020-10-25 22:47:38', '2020-10-25 22:47:38', 4, 84),
(62, 'tablet', 'yes', '2020-10-25 22:48:58', '2020-10-25 22:48:58', 10, 1),
(63, 'tablet', 'yes', '2020-10-25 22:48:58', '2020-10-25 22:48:58', 10, 2),
(64, 'tablet', 'yes', '2020-10-25 22:48:58', '2020-10-25 22:48:58', 10, 2),
(65, 'tablet', 'yes', '2020-10-25 22:48:58', '2020-10-25 22:48:58', 10, 84),
(66, 'tablet', 'yes', '2020-10-25 22:48:58', '2020-10-25 22:48:58', 10, 84);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `description` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `product_name`, `unit_price`, `description`, `category`, `type`, `date_created`, `date_modified`, `image`) VALUES
(1, 'Amerikane', '0.50', '', 'Kafe', 'Kafe', '2020-08-12', '2020-07-16', ''),
(3, 'Burger Classic', '2.30', '', 'Hamburgera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(4, 'Sanduiç Pule', '2.50', '', 'Sanduiç', 'Ushqim', '2020-07-15', '2020-10-20', ''),
(5, 'Burger Mery\'s', '2.90', '', 'Hamburgera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(6, 'Fanta', '1.00', '', 'Pije jo alkoolike', 'Pije', '2020-07-15', '2020-07-16', ''),
(7, 'Omlet me djathë', '2.30', '', 'Mengjesi', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(8, 'Omlet me Perime', '2.30', '', 'Mengjesi', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(9, 'Omlet Natyral', '2.20', '', 'Mengjesi', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(10, 'Mëngjes shtëpie', '3.00', '', 'Mengjesi', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(11, 'Llokuma', '2.00', '', 'Mengjesi', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(12, 'Sanduiç Pule', '2.50', '', 'Sanduiç', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(13, 'Sanduiç Tuna', '2.50', '', 'Sanduiç', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(14, 'Sanduiq me proshutë', '2.30', '', 'Sanduiç', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(15, 'Sanduiç Crunch', '2.50', '', 'Sanduiç', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(16, 'Sanduiç Vegjetarian', '2.50', '', 'Sanduiç', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(17, 'Supë pule', '2.00', '', 'Supat', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(18, 'Supë brokolli', '2.20', '', 'Supat', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(19, 'Supë perime', '2.20', '', 'Supat', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(20, 'Supë kërpudha', '2.20', '', 'Supat', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(21, 'Supë viçi', '2.40', '', 'Supat', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(22, 'Supë domate', '2.40', '', 'Supat', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(24, 'Meze e vogel', '6.00', '', 'Startera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(25, 'Meze e madhe', '11.00', '', 'Startera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(26, 'Nugeta të pulës', '3.50', '', 'Startera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(27, 'Gishtërinjë Pule', '3.60', '', 'Startera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(28, 'Kërpudha të mbushura', '3.00', '', 'Startera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(29, 'Kërpudha në grill', '2.80', '', 'Startera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(30, 'Djathë i fërguar', '2.90', '', 'Startera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(31, 'Brusketa', '2.00', '', 'Startera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(32, 'Pomfrit me djathë', '1.90', '', 'Startera', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(33, 'Sallatë e gjelbër', '2.00', '', 'Sallatat\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(34, 'Sallatë Cezar', '3.50', '', 'Sallatat\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(35, 'Sallatë e gjelbër', '2.00', '', 'Sallatat\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(36, 'Sallatë Cezar', '3.50', '', 'Sallatat\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(37, 'Sallatë mediteran', '2.80', '', 'Sallatat\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(38, 'Sallatë Tuna', '3.80', '', 'Sallatat\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(39, 'Sallatë Pule', '3.80', '', 'Sallatat\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(40, 'Sallatë shtëpie', '3.80', '', 'Sallatat\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(41, 'Margarita e vogel', '3.80', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(42, 'Tuna e vogel', '2.00', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(43, 'Tuna e madhe', '4.90', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(44, 'Vegjetariane e madhe', '4.90', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(45, 'Vegjetariane e vogel', '2.00', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(46, 'Proshutë e madhe', '4.90', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(47, 'Proshutë e madhe', '4.90', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(48, 'Proshutë e vogel', '2.00', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(49, 'Pepperoni e vogel', '2.00', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(50, 'Pepperoni e madhe', '4.90', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(51, 'Suxhuk e madhe', '4.90', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(52, 'Suxhuk e vogel', '2.00', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(53, 'Kërpudha e vogel', '2.00', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(54, 'Kërpudha e vogel', '4.90', '', 'Pica\r\n', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(55, 'Pene Arabiata', '3.90', '', 'Pasta', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(56, 'Pene bolonese', '4.20', '', 'Pasta', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(57, 'Pene me gorgonzola', '4.30', '', 'Pasta', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(58, 'Pene 4 lloje djathi', '4.50', '', 'Pasta', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(59, 'Llazanje bolognese', '4.90', '', 'Pasta', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(60, 'Llazanje spinaq dhe ajkë', '4.90', '', 'Pasta', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(61, 'Noodles me mish pule dhe perime', '4.90', '', 'Noodles', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(62, 'Noodles me perime', '4.50', '', 'Noodles', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(63, 'Noodles me mish viçi dhe perime', '4.50', '', 'Noodles', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(64, 'Rizoto me perime', '3.90', '', 'Rizoto', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(65, 'Rizoto me pulë dhe perime', '4.90', '', 'Rizoto', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(66, 'Rizoto me pulë dhe soja', '3.50', '', 'Rizoto', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(67, 'Rizoto me pulë dhe curry salcë', '4.50', '', 'Rizoto', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(68, 'Biftek natyral', '9.50', '', 'Mish', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(69, 'Biftek me peper salcë', '9.90', '', 'Mish', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(70, 'Copëza Bifteku', '7.80', '', 'Mish', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(71, 'Biftek me 4 lloje djathra', '10.50', '', 'Mish', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(72, 'Mish viçi në tel', '7.80', '', 'Mish', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(73, 'Biftek me salcë kërpudhave', '9.90', '', 'Mish', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(74, 'Mish kombinuar', '6.90', '', 'Mish', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(75, 'Mish pule në tel', '5.90', '', 'Mish', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(76, 'File pule me salcë kërpudhave', '3.80', '', 'Mish Pule', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(77, 'File pule me sweet chilli salcë', '4.90', '', 'Mish Pule', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(78, 'File me spinaq', '4.90', '', 'Mish Pule', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(79, 'Rolladë pule', '5.90', '', 'Mish Pule', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(80, 'Gjoks pule i mbushur', '5.50', '', 'Mish Pule', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(81, 'File pule b.b.q', '5.50', '', 'Mish Pule', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(82, 'Tavë me mish viçi', '6.00', '', 'Tavë', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(83, 'Tavë me mish pule', '5.00', '', 'Tavë', 'Ushqim', '2020-07-15', '2020-07-16', ''),
(84, 'Ice Tea', '1.00', '', 'Pije jo alkoolike', 'Pije', '2020-07-15', '2020-07-16', ''),
(85, 'Sprite', '1.00', '', 'Pije jo alkoolike', 'Pije', '2020-07-15', '2020-07-16', ''),
(86, 'Ujë Natyral', '1.00', '', 'Pije jo alkoolike', 'Pije', '2020-07-15', '2020-07-16', ''),
(87, 'Coca Cola Zero', '1.00', '', 'Pije jo alkoolike', 'Pije', '2020-07-15', '2020-07-16', ''),
(88, 'Ujë pa Gaz (0.50 lt)', '0.50', '', 'Pije jo alkoolike', 'Pije', '2020-07-15', '2020-07-16', ''),
(89, 'Ujë me Gaz (0.50 lt)', '0.50', '', 'Pije jo alkoolike', 'Pije', '2020-07-15', '2020-07-16', ''),
(90, 'Birra Peja', '1.00', '', 'Pije alkoolike', 'Pije', '2020-07-15', '2020-07-16', ''),
(94, 'Ice Tea', '1.00', 'Pije', 'Pije', 'Pije', '2020-10-25', '2020-10-25', '');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_table`
--

CREATE TABLE `restaurant_table` (
  `table_ID` int(11) NOT NULL,
  `no_of_table` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `pin_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_table`
--

INSERT INTO `restaurant_table` (`table_ID`, `no_of_table`, `status`, `pin_code`) VALUES
(1, 1, 'offline', '0000'),
(2, 2, 'online', '0000'),
(3, 3, 'offline', '0000'),
(4, 4, 'online', '0'),
(5, 5, 'offline', '0'),
(6, 6, 'offline', '1'),
(7, 7, 'offline', '0'),
(8, 8, 'online', '0'),
(9, 9, 'offline', '0'),
(10, 10, 'offline', '0'),
(11, 11, 'offline', '0'),
(12, 12, 'offline', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pin_code` varchar(4) NOT NULL,
  `password_hash` varchar(50) NOT NULL,
  `telephone_number` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `pin_code`, `password_hash`, `telephone_number`, `type`, `date_created`, `date_modified`) VALUES
(1, 'Lukas', 'Rossander', 'user', '1111', '1d028378e12ca6bdafa3b8b21bc5a9ea', '+38349123123', 'user', '2020-07-15', '2020-10-25'),
(2, 'Nicolai', 'Reedtz', 'admin', '0001', '21232f297a57a5a743894a0e4a801fc3', '+38343123123', 'admin', '2020-07-15', '2020-10-23'),
(10, 'dopi', 'dope', 'dope', '0000', 'ad1dfc86b73f84818958fcd41dfc9ce3', 'dope', 'admin', '2020-10-25', '2020-10-25'),
(13, 'user', 'user', 'user', '1234', 'ee11cbb19052e40b07aac0ca060c23ee', '+3831231123', 'user', '2020-10-25', '2020-10-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `restaurant_table`
--
ALTER TABLE `restaurant_table`
  ADD PRIMARY KEY (`table_ID`),
  ADD UNIQUE KEY `no_of_table` (`no_of_table`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `restaurant_table`
--
ALTER TABLE `restaurant_table`
  MODIFY `table_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
