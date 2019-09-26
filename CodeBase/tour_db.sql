-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2016 at 08:10 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tour_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `Cref` varchar(5) NOT NULL,
  `Title` text NOT NULL,
  `Fname` text NOT NULL,
  `Lname` text NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phno` varchar(15) NOT NULL,
  `Dob` varchar(10) NOT NULL,
  PRIMARY KEY (`Cref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cref`, `Title`, `Fname`, `Lname`, `Email`, `Address`, `Phno`, `Dob`) VALUES
('C1', 'Mr', 'Narendra', 'Pai', 'npai@gmail.com', 'Koparkhairne	', '9920550595', '02/12/93'),
('C2', 'Mr', 'Ranjith', 'Kumar', 'rkumar@gmail.com', 'Vashi', '9324963428', '31/10/1965'),
('C3', 'Ms', 'swetha', 'ramasw', 'sr@gmail.com', 'mulund', '222222222', '06/05/1996'),
('C4', 'Mr', 'AKSHAY', 'JAIN', 'AK@GMAIL.COM', 'KK', '9866666999', '21/12/95'),
('C5', 'Mr', 'dhanesh', 'oswal', 'a@gmail.com', 'panvel', '123456789', '05-09-1995'),
('C6', 'Mr', 'NAYAN', 'BHAT', 'nb@gmail.com', 'koparkhairane', '9820662525', '16/1/96'),
('C7', 'Ms', 'Annie', 'Roy', 'ar@yahoo.in', 'Nerul', '27548899', '11/11/95'),
('C8', 'Ms', 'aa', 'aaaa', 'abc@abc.in', 'kk', '9999999', '12/12/95'),
('C9', 'Mr', 'Vaibhav ', 'Rane', 'vaibhav@gmail.com', 'Sector-16,New panvel-410206', '9876543210', '5-10-1995');

-- --------------------------------------------------------

--
-- Table structure for table `pack`
--

CREATE TABLE IF NOT EXISTS `pack` (
  `p_id` int(50) NOT NULL,
  `g_id` int(2) NOT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `p_desc` varchar(100) DEFAULT NULL,
  `p_amt` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pack`
--

INSERT INTO `pack` (`p_id`, `g_id`, `p_name`, `p_desc`, `p_amt`) VALUES
(0, 0, 'Glorious Kashmir', 'Visit Srinagar, Pahalgam and Gulmarg.', '17999.00'),
(1, 0, 'Magical Kashmir', 'Visit Srinagar, Sonmarg & Gulmarg.', '12562.00'),
(2, 1, 'Goa-Land of Fun', 'Walk leisurely on the beautiful beaches of Goa.', '12249.00'),
(3, 1, 'Goa Dhamaka', 'Enjoy local sightseeing in Goa.', '6999.00'),
(4, 2, 'Enchanting Himachal', 'Visit Shimla, Manali & Chandigarh / Zirakpur', '21779.00'),
(5, 2, 'Himachal Splendour', 'Visit Shimla, Manali, Kullu & Chandigarh / Zirakpur', '22925.00'),
(6, 3, 'Enchanting Kerala', 'Visit Kochi, Munnar, Thekkady and Alleppy', '17779.00'),
(7, 3, 'Vibrant Kerala - Premium', 'Visit Kochi, Munnar, Thekkady & Kumarakom', '36249.00'),
(8, 4, 'Sikkim Delight', 'Visit Pelling, Gangtok & Lachung', '34568.00'),
(9, 4, 'Hills of East', 'Visit Gangtok, Pelling & Darjeeling', '39445.00');

-- --------------------------------------------------------

--
-- Table structure for table `ta`
--

CREATE TABLE IF NOT EXISTS `ta` (
  `ta_id` varchar(10) NOT NULL,
  `ta_name` varchar(20) DEFAULT NULL,
  `ta_address` varchar(20) DEFAULT NULL,
  `ta_ph` int(11) DEFAULT NULL,
  `ta_password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ta`
--

INSERT INTO `ta` (`ta_id`, `ta_name`, `ta_address`, `ta_ph`, `ta_password`) VALUES
('IN001', 'Neha Pai', 'Koparkhairane', 969696969, '0000'),
('IN002', 'Vaibhav Rane', 'Thane', 969600000, '1111'),
('IN003', 'Aniket Porji', 'Panvel', 959433121, '2222'),
('IN004', 'Dhanesh Oswal', 'Khopoli', 959433130, '3333'),
('IN005', 'Poonam Nakhava', 'Nerul', 959431000, '4444');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE IF NOT EXISTS `tour` (
  `tour_no` varchar(20) NOT NULL,
  `p_id` int(50) DEFAULT NULL,
  `Cref` varchar(5) DEFAULT NULL,
  `ta_id` varchar(10) DEFAULT NULL,
  `adults` int(2) DEFAULT NULL,
  `children` int(2) DEFAULT NULL,
  `dod` varchar(15) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `mot` varchar(10) DEFAULT NULL,
  `mop` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tour_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`tour_no`, `p_id`, `Cref`, `ta_id`, `adults`, `children`, `dod`, `duration`, `mot`, `mop`) VALUES
('1', 4, 'C2', 'IN001', 2, 1, '12/1/98', '5 Days', 'Train', 'Debit Card'),
('10', 3, 'C1', 'IN001', 2, 1, '28/10/2015', '3 Days', 'Flight', 'Debit Card'),
('2', 5, 'C3', 'IN001', 4, 2, '12/12/15', '5 Days', 'Bus', 'Cash'),
('3', 0, 'C3', 'IN001', 1, 0, '8/03/2016', '3 Days', 'Flight', 'Credit Card'),
('4', 2, 'C4', 'IN001', 3, 1, '21/3/16', '11 Days', 'Train', 'Debit Card'),
('5', 3, 'C5', 'IN001', 5, 0, 'DD/MM/YY', '3 Days', 'Train', 'Cash'),
('6', 7, 'C6', 'IN001', 2, 0, '5/10/15', '9 Days', 'Flight', 'Cash'),
('7', 3, 'C7', 'IN001', 3, 0, '12/12/16', '3 Days', 'Train', 'Debit Card'),
('8', 6, 'C7', 'IN002', 2, 1, '31/12/16', '11 Days', 'Train', 'Credit Card'),
('9', 4, 'C8', 'IN001', 5, 1, '12/12/16', '5 Days', 'Train', 'Debit Card');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
