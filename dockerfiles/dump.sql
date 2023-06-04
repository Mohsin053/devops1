-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2023 at 06:31 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin123', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cnumber` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `description`, `name`, `email`, `cnumber`) VALUES
(1, 'Very Nyce Service.', 'Ahmed', 'ahmed@gmail.com', '03215002148'),
(2, 'asdad', 'sdaasdadsda', 'abdurrehman283560@gmail.com', '03215002148'),
(43, 'Maza aya', 'ErenYeager', 'destroy@gmail.com', '03040032032'),
(44, 'Brilliant Sevice', 'HinaAltaf', 'reality@yahoo.com', '03441234567'),
(3, 'had a great time', 'MohsinAli', 'rajamohsinali12379@gmail.com', '03035332659');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `u_id` (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laundary`
--

DROP TABLE IF EXISTS `laundary`;
CREATE TABLE IF NOT EXISTS `laundary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `u_id` (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `misc`
--

DROP TABLE IF EXISTS `misc`;
CREATE TABLE IF NOT EXISTS `misc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `price` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `Type` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `description`, `Type`, `date`) VALUES
(4, 'time to checkout', 'room', '2022-06-20 13:38:00'),
(5, 'kkkkk', 'room', '2022-06-09 13:15:00'),
(6, 'room no', 'laundary', '2022-06-23 07:50:00'),
(7, 'laundary for room 2 done', 'laundary', '2022-06-23 19:32:00'),
(8, 'pay your bill', 'laundary', '2022-06-24 16:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
CREATE TABLE IF NOT EXISTS `price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `laund_bill` int(11) NOT NULL,
  `food_bill` int(11) NOT NULL,
  `room_bill` int(30) NOT NULL,
  `misc_bill` int(11) NOT NULL,
  `total` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `u_id` int(11) NOT NULL,
  `floor` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `u_id` (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `type`, `price`, `u_id`, `floor`) VALUES
(21, 'single', 5000, 0, '1'),
(20, 'double', 7000, 0, '2'),
(1, 'double', 7000, 0, '2'),
(44, 'single', 5000, 0, '2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact`, `username`, `password`) VALUES
(11, 'Ahmed', 'ahmed@gmail.com03215002148', '03215002148', 'Raja054', 'pass'),
(12, 'AbdurRehman', 'abdurrehman283560@gmail.com', '03215002148', 'Raja', '123'),
(13, 'JackBill', 'bill@gmail.com', '03215002148', 'Bill y45', 'bill123'),
(9, 'AbdulJalil', 'jalil@gmail.com', '03215002148', 'JalilKhan123', 'jalil1234'),
(14, 'ABdulMajeed', 'abdul123@gmail.com', '03215002148', 'Abdul1', '123abdul'),
(16, 'MohsinAli', 'rajamohsinali12379@gmail.com', '3035332659', 'mohsin12', 'mohsin12'),
(20, 'Aleznorton', 'aleznor123@gnail.com', '03035332659', 'alez1234', 'alez12345'),
(22, 'HinaNazeer', 'Hinae1@gmail.com', '03035332659', 'hina1223', 'hina12235'),
(23, 'MohsinAli', 'rajamohsinali12379@gmail.com', '03040032032', 'mohsin030', 'mohsin030');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
