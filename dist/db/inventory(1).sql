-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 08:51 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`) VALUES
(1, 'AHIRA APPLIANCE CENTER', 'Silay CIty', '090998278', 'red'),
(2, 'ASHER ALLIED MARKETING', 'Lopez Jaena, Bacolod City', '98786786', 'purple'),
(3, 'SINGER', 'Silay city', '', 'black'),
(4, 'GOLDEN ARROW', 'Bacolod City', '', 'blue'),
(5, 'LITTLE ANGELS BABY SHOP', 'WAKISO', '0773404595', 'green');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(30) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(5, 'Television'),
(6, 'Sofa'),
(7, 'Video Player'),
(8, 'Home Appliance'),
(9, 'Kitchen Appliance'),
(10, 'Gadget'),
(11, 'Rice Cooker'),
(12, 'Cosmetics'),
(13, 'kids wear');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_first` varchar(50) NOT NULL,
  `cust_last` varchar(30) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_contact` varchar(30) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `cust_pic` varchar(300) NOT NULL,
  `bday` date NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `house_status` varchar(30) NOT NULL,
  `years` varchar(20) NOT NULL,
  `rent` varchar(10) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_no` varchar(30) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_year` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `spouse` varchar(30) NOT NULL,
  `spouse_no` varchar(30) NOT NULL,
  `spouse_emp` varchar(50) NOT NULL,
  `spouse_details` varchar(100) NOT NULL,
  `spouse_income` decimal(10,2) NOT NULL,
  `comaker` varchar(30) NOT NULL,
  `comaker_details` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `credit_status` varchar(10) NOT NULL,
  `ci_remarks` varchar(1000) NOT NULL,
  `ci_name` varchar(50) NOT NULL,
  `ci_date` date NOT NULL,
  `payslip` int(11) NOT NULL,
  `valid_id` int(11) NOT NULL,
  `cert` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_first`, `cust_last`, `cust_address`, `cust_contact`, `balance`, `cust_pic`, `bday`, `nickname`, `house_status`, `years`, `rent`, `emp_name`, `emp_no`, `emp_address`, `emp_year`, `occupation`, `salary`, `spouse`, `spouse_no`, `spouse_emp`, `spouse_details`, `spouse_income`, `comaker`, `comaker_details`, `branch_id`, `credit_status`, `ci_remarks`, `ci_name`, `ci_date`, `payslip`, `valid_id`, `cert`, `cedula`, `income`) VALUES
(0, 'Kenneth', 'Aboy', 'Silay City\r\n', '09098', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(2, 'Honeylee', 'Magbanua', 'Brgy. Busay, bago CIty', '09051914070', '2719.20', 'default.gif', '1989-10-14', 'lee', 'owned', '27', 'NA', 'Stratium Software', '034-707-1630', 'Ayala Northpoint', '1', 'Systems Administrator', '12000', 'NA', 'NA', 'NA', 'NA', '0.00', 'Kaye Angela Cueva', 'Cadiz City', 1, 'Approved', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(3, 'customer', 'Esteemed ', 'none', 'none', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(4, 'Customer', 'Esteemed ', 'none', 'none', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 5, '', '', '', '0000-00-00', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE IF NOT EXISTS `history_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'added 5 of LG 43" UHD TV UH6100', '2017-02-04 01:10:41'),
(2, 1, 'added 100 of Lotion', '2017-02-04 01:10:49'),
(3, 1, 'added 10 of Rice Cooker', '2017-02-04 01:10:55'),
(4, 1, 'added 5 of Samsung', '2017-02-04 01:11:07'),
(5, 1, 'has logged in the system at ', '2017-02-04 08:22:52'),
(6, 1, 'has logged in the system at ', '2017-02-04 08:51:11'),
(7, 1, 'has logged in the system at ', '2017-02-04 13:13:53'),
(8, 1, 'has logged in the system at ', '2017-02-21 18:56:56'),
(9, 1, 'added a payment of -76.6 for , ', '2017-02-21 00:00:00'),
(10, 1, 'has logged in the system at ', '2020-05-24 20:11:48'),
(11, 1, 'has logged out the system at ', '2020-05-24 20:21:04'),
(12, 4, 'has logged in the system at ', '2020-05-24 20:29:27'),
(13, 4, 'has logged out the system at ', '2020-05-24 20:31:45'),
(14, 5, 'has logged in the system at ', '2020-05-24 20:32:40'),
(15, 5, 'added 3 of Lotion', '2020-05-24 20:35:55'),
(16, 1, 'has logged in the system at ', '2021-05-09 21:38:42'),
(17, 1, 'has logged out the system at ', '2021-05-09 21:47:14'),
(18, 4, 'has logged in the system at ', '2021-05-09 21:48:02'),
(19, 4, 'has logged out the system at ', '2021-05-09 21:50:45'),
(20, 5, 'has logged in the system at ', '2021-05-09 21:54:57'),
(21, 5, 'has logged out the system at ', '2021-05-09 22:20:16'),
(22, 1, 'has logged in the system at ', '2021-05-11 02:04:12'),
(23, 1, 'added 5 of Rice Cooker', '2021-05-11 02:05:17'),
(24, 1, 'added 6 of Rice Cooker', '2021-05-11 02:05:44'),
(25, 1, 'added 6 of Rice Cooker', '2021-05-11 02:06:03'),
(26, 1, 'added 6 of LG 43" UHD TV UH6100', '2021-05-11 02:29:35'),
(27, 1, 'added 7 of LG 43" UHD TV UH6100', '2021-05-11 02:30:01'),
(28, 1, 'has logged out the system at ', '2021-05-11 03:06:41'),
(29, 1, 'has logged in the system at ', '2021-05-12 15:40:28'),
(30, 1, 'added 6 of LG 43" UHD TV UH6100', '2021-05-12 15:46:23'),
(31, 1, 'has logged out the system at ', '2021-05-12 16:26:28'),
(32, 1, 'has logged in the system at ', '2021-05-12 17:03:18'),
(33, 1, 'has logged out the system at ', '2021-05-12 21:22:19'),
(34, 1, 'has logged in the system at ', '2021-05-12 21:22:53'),
(35, 1, 'added 34 of Lotion', '2021-05-12 21:25:11'),
(36, 1, 'added 56 of cotton', '2021-05-12 21:32:07'),
(37, 1, 'added 45 of cotton', '2021-05-12 23:40:36'),
(38, 1, 'added 3 of cotton', '2021-05-12 23:42:11'),
(39, 7, 'has logged in the system at ', '2021-05-12 23:51:57'),
(40, 7, 'has logged out the system at ', '2021-05-12 23:54:01'),
(41, 1, 'has logged in the system at ', '2021-05-12 23:54:09'),
(42, 1, 'added 3 of LG 43" UHD TV UH6100', '2021-05-12 23:55:48'),
(43, 7, 'has logged in the system at ', '2021-05-13 00:02:57'),
(44, 6, 'has logged out the system at ', '2021-05-14 01:57:55'),
(45, 1, 'has logged in the system at ', '2021-05-14 01:58:05'),
(46, 1, 'has logged in the system at ', '2021-05-14 02:05:18'),
(47, 1, 'added 34 of Rice Cooker', '2021-05-14 02:10:16'),
(48, 1, 'added 4 of cotton', '2021-05-14 02:33:57'),
(49, 1, 'added 6 of cotton', '2021-05-14 02:34:09'),
(50, 1, 'has logged out the system at ', '2021-05-14 02:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `payment_for` date NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `remaining` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `rebate` decimal(10,2) NOT NULL,
  `or_no` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3216 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `cust_id`, `sales_id`, `payment`, `payment_date`, `user_id`, `branch_id`, `payment_for`, `due`, `interest`, `remaining`, `status`, `rebate`, `or_no`) VALUES
(3156, 1, 6, '550.00', '2017-02-21 19:57:12', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1901),
(3157, 2, 7, '550.00', '2017-02-21 19:57:29', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1902),
(3163, 2, 9, '113.30', '2017-02-21 21:31:20', 1, 1, '2017-03-21', '113.30', '0.00', '0.00', 'paid', '0.00', 0),
(3164, 2, 9, '36.70', '2017-02-21 21:31:20', 1, 1, '2017-04-21', '113.30', '81.58', '611.58', 'partially paid', '0.00', 0),
(3165, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-05-21', '113.30', '81.58', '648.28', '', '0.00', 0),
(3166, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-06-21', '113.30', '81.58', '648.28', '', '0.00', 0),
(3167, 2, 9, '113.30', '2017-02-21 00:00:00', 1, 1, '2017-02-21', '113.30', '0.00', '0.00', 'paid', '0.00', 3151),
(3168, 0, 11, '30.00', '2020-05-24 20:45:06', 5, 1, '2020-05-24', '30.00', '0.00', '0.00', 'paid', '0.00', 1903),
(3169, 0, 12, '90000.00', '2020-05-24 20:46:22', 5, 1, '2020-05-24', '90000.00', '0.00', '0.00', 'paid', '0.00', 1904),
(3170, 0, 13, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-24', '74160.00', '0.00', '74160.00', '', '0.00', 0),
(3171, 0, 13, '18540.00', '2020-05-24 00:00:00', 5, 1, '2020-05-24', '18540.00', '0.00', '0.00', 'paid', '0.00', 3152),
(3172, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-05-24', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3173, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-05-25', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3174, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-05-26', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3175, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-05-27', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3176, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-05-28', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3177, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-05-29', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3178, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-05-30', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3179, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-05-31', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3180, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-01', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3181, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-02', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3182, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-03', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3183, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-04', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3184, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-05', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3185, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-06', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3186, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-07', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3187, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-08', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3188, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-09', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3189, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-10', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3190, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-11', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3191, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-12', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3192, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-13', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3193, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-14', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3194, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-15', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3195, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-16', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3196, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-17', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3197, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-18', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3198, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-19', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3199, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-20', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3200, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-21', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3201, 0, 14, '0.00', '0000-00-00 00:00:00', 5, 1, '2020-06-22', '6180.00', '0.00', '6180.00', '', '0.00', 0),
(3202, 0, 14, '46350.00', '2020-05-24 00:00:00', 5, 1, '2020-05-24', '46350.00', '0.00', '0.00', 'paid', '0.00', 3153),
(3203, 0, 15, '600.00', '2020-05-24 20:54:16', 5, 1, '2020-05-24', '600.00', '0.00', '0.00', 'paid', '0.00', 1905),
(3204, 2, 16, '120.00', '2021-05-09 21:42:14', 1, 1, '2021-05-09', '120.00', '0.00', '0.00', 'paid', '0.00', 1906),
(3205, 0, 17, '180.00', '2021-05-09 21:58:53', 5, 1, '2021-05-09', '180.00', '0.00', '0.00', 'paid', '0.00', 1907),
(3206, 2, 18, '0.00', '0000-00-00 00:00:00', 1, 1, '2021-06-11', '2719.20', '0.00', '2719.20', '', '0.00', 0),
(3207, 2, 18, '679.80', '2021-05-11 00:00:00', 1, 1, '2021-05-11', '679.80', '0.00', '0.00', 'paid', '0.00', 3154),
(3208, 0, 19, '0.00', '2021-05-11 03:00:16', 1, 1, '2021-05-11', '0.00', '0.00', '0.00', 'paid', '0.00', 1908),
(3209, 3, 20, '45720.00', '2021-05-12 15:44:25', 1, 1, '2021-05-12', '45720.00', '0.00', '0.00', 'paid', '0.00', 1909),
(3210, 3, 21, '90.00', '2021-05-12 21:24:18', 1, 1, '2021-05-12', '90.00', '0.00', '0.00', 'paid', '0.00', 1910),
(3211, 3, 22, '33.00', '2021-05-12 21:33:54', 1, 1, '2021-05-12', '33.00', '0.00', '0.00', 'paid', '0.00', 1911),
(3212, 3, 23, '77.00', '2021-05-14 01:58:30', 1, 1, '2021-05-14', '77.00', '0.00', '0.00', 'paid', '0.00', 1912),
(3213, 3, 24, '77.00', '2021-05-14 02:01:58', 1, 1, '2021-05-14', '77.00', '0.00', '0.00', 'paid', '0.00', 1913),
(3214, 0, 42, '0.00', '2021-05-14 02:07:53', 1, 1, '2021-05-14', '0.00', '0.00', '0.00', 'paid', '0.00', 1914),
(3215, 3, 43, '109.00', '2021-05-14 02:32:40', 1, 1, '2021-05-14', '109.00', '0.00', '0.00', 'paid', '0.00', 1915);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(100) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `reorder` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_desc`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `reorder`, `supplier_id`, `serial`) VALUES
(5, 'LG 43" UHD TV UH6100', '', '45000.00', 'tv.jpg', 5, 9, 1, 0, 4, '19898981'),
(13, 'Rice Cooker', '', '550.00', 'WIN_20160728_16_56_20_Pro (2).jpg', 9, 45, 1, 2, 4, '22ewew'),
(14, 'Samsung', '', '15000.00', 'WIN_20160209_16_45_20_Pro.jpg', 10, 3, 1, 4, 5, 'erere323'),
(15, 'Lotion', '', '120.00', 'default.gif', 12, 107, 1, 4, 6, '1101388911'),
(16, 'Sample', 'description', '110.00', 'default.gif', 10, -1, 1, 1, 2, '878878'),
(17, 'watch', 'none', '500.00', 'default.gif', 12, 0, 1, 8, 2, 'wc'),
(18, 'cotton', 'npne', '8000.00', 'default.gif', 13, 96, 1, 3, 7, '24124');

-- --------------------------------------------------------

--
-- Table structure for table `producttracker`
--

CREATE TABLE IF NOT EXISTS `producttracker` (
  `TransRef` int(11) NOT NULL AUTO_INCREMENT,
  `Action` varchar(100) DEFAULT NULL,
  `Saleqty` int(11) DEFAULT NULL,
  `PurchaseQty` int(11) DEFAULT NULL,
  `Balance` int(11) DEFAULT NULL,
  `prod_id` int(11) NOT NULL,
  `TrackerDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`TransRef`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `producttracker`
--

INSERT INTO `producttracker` (`TransRef`, `Action`, `Saleqty`, `PurchaseQty`, `Balance`, `prod_id`, `TrackerDate`, `branch_id`) VALUES
(1, 'SALE', 2, NULL, 96, 18, '2021-05-13 21:07:53', 1),
(2, 'SALE', 1, NULL, 11, 5, '2021-05-13 21:07:53', 1),
(3, 'PURCHASE', NULL, 34, 11, 13, '2021-05-13 21:10:16', 1),
(4, 'SALE', 8, NULL, 94, 18, '2021-05-13 21:32:40', 1),
(5, 'SALE', 1, NULL, 10, 5, '2021-05-13 21:32:40', 1),
(6, 'PURCHASE', NULL, 4, 86, 18, '2021-05-13 21:33:58', 1),
(7, 'PURCHASE', NULL, 6, 90, 18, '2021-05-13 21:34:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

CREATE TABLE IF NOT EXISTS `purchase_request` (
  `pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `purchase_status` varchar(10) NOT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `purchase_request`
--

INSERT INTO `purchase_request` (`pr_id`, `prod_id`, `qty`, `request_date`, `branch_id`, `purchase_status`) VALUES
(1, 16, 2, '2020-05-24', 1, 'pending'),
(2, 13, 6, '2020-05-24', 1, 'pending'),
(3, 5, 4, '2021-05-09', 1, 'pending'),
(4, 5, 9, '2021-05-11', 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_tendered` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `cash_change` decimal(10,2) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `modeofpayment` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `cust_id`, `user_id`, `cash_tendered`, `discount`, `amount_due`, `cash_change`, `date_added`, `modeofpayment`, `branch_id`, `total`) VALUES
(1, 1, 1, '500.00', '50.00', '500.00', '0.00', '2017-02-04 01:33:28', 'cash', 1, '450.00'),
(2, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 18:57:26', 'cash', 1, '550.00'),
(3, 1, 1, '0.00', '550.00', '0.00', '0.00', '2017-02-21 19:49:41', 'cash', 1, '-550.00'),
(4, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:55:57', 'cash', 1, '550.00'),
(5, 2, 1, '110.00', '0.00', '110.00', '0.00', '2017-02-21 19:56:17', 'cash', 1, '110.00'),
(6, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:12', 'cash', 1, '550.00'),
(7, 2, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:29', 'cash', 1, '550.00'),
(9, 2, 1, NULL, NULL, '0.00', NULL, '2017-02-21 21:16:52', 'credit', 1, '550.00'),
(10, 0, 5, NULL, NULL, '0.00', NULL, '2020-05-24 20:42:52', 'credit', 1, '0.00'),
(11, 0, 5, '0.00', '0.00', '30.00', '0.00', '2020-05-24 20:45:06', 'cash', 1, '30.00'),
(12, 0, 5, '100000.00', '0.00', '90000.00', '10000.00', '2020-05-24 20:46:22', 'cash', 1, '90000.00'),
(13, 0, 5, NULL, NULL, '0.00', NULL, '2020-05-24 20:49:08', 'credit', 1, '90.00'),
(14, 0, 5, NULL, NULL, '0.00', NULL, '2020-05-24 20:52:45', 'credit', 1, '225.00'),
(15, 0, 5, '1000.00', '0.00', '600.00', '400.00', '2020-05-24 20:54:16', 'cash', 1, '600.00'),
(16, 2, 1, '0.00', '0.00', '120.00', '0.00', '2021-05-09 21:42:14', 'cash', 1, '120.00'),
(17, 0, 5, '0.00', '0.00', '180.00', '0.00', '2021-05-09 21:58:53', 'cash', 1, '180.00'),
(18, 2, 1, NULL, NULL, '0.00', NULL, '2021-05-11 02:56:29', 'credit', 1, '3.00'),
(19, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-11 03:00:16', 'cash', 1, '0.00'),
(20, 3, 1, '45720.00', '0.00', '45720.00', '0.00', '2021-05-12 15:44:25', 'cash', 1, '45720.00'),
(21, 3, 1, '0.00', '0.00', '90.00', '0.00', '2021-05-12 21:24:18', 'cash', 1, '90.00'),
(22, 3, 1, '0.00', '0.00', '33.00', '0.00', '2021-05-12 21:33:54', 'cash', 1, '33.00'),
(23, 3, 1, '0.00', '0.00', '77.00', '0.00', '2021-05-14 01:58:30', 'cash', 1, '77.00'),
(24, 3, 1, '0.00', '0.00', '77.00', '0.00', '2021-05-14 02:01:58', 'cash', 1, '77.00'),
(25, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:30', 'cash', 1, '0.00'),
(26, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:40', 'cash', 1, '0.00'),
(27, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:41', 'cash', 1, '0.00'),
(28, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:42', 'cash', 1, '0.00'),
(29, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:43', 'cash', 1, '0.00'),
(30, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:43', 'cash', 1, '0.00'),
(31, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:51', 'cash', 1, '0.00'),
(32, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:52', 'cash', 1, '0.00'),
(33, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:52', 'cash', 1, '0.00'),
(34, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:55', 'cash', 1, '0.00'),
(35, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:56', 'cash', 1, '0.00'),
(36, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:57', 'cash', 1, '0.00'),
(37, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:58', 'cash', 1, '0.00'),
(38, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:04:58', 'cash', 1, '0.00'),
(39, 3, 1, '0.00', '0.00', '77.00', '0.00', '2021-05-14 02:05:29', 'cash', 1, '77.00'),
(40, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:06:13', 'cash', 1, '0.00'),
(41, 3, 1, '0.00', '0.00', '77.00', '0.00', '2021-05-14 02:06:25', 'cash', 1, '77.00'),
(42, 0, 1, '0.00', '0.00', '0.00', '0.00', '2021-05-14 02:07:53', 'cash', 1, '0.00'),
(43, 3, 1, '0.00', '0.00', '109.00', '0.00', '2021-05-14 02:32:40', 'cash', 1, '109.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE IF NOT EXISTS `sales_details` (
  `sales_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`sales_details_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`sales_details_id`, `sales_id`, `prod_id`, `price`, `qty`) VALUES
(1, 1, 13, '550.00', 1),
(2, 2, 13, '550.00', 1),
(3, 3, 13, '550.00', 1),
(4, 4, 13, '550.00', 1),
(5, 5, 16, '110.00', 1),
(6, 6, 13, '550.00', 1),
(7, 7, 13, '550.00', 1),
(8, 8, 13, '550.00', 1),
(9, 9, 13, '550.00', 1),
(10, 10, 0, '45000.00', 1),
(11, 11, 0, '0.00', 0),
(12, 11, 15, '120.00', 1),
(13, 11, 14, '15000.00', 2),
(14, 12, 0, '0.00', 0),
(15, 12, 5, '45000.00', 2),
(16, 13, 5, '45000.00', 2),
(17, 14, 5, '45000.00', 5),
(18, 15, 0, '0.00', 0),
(19, 15, 15, '120.00', 5),
(20, 16, 15, '120.00', 1),
(21, 17, 15, '120.00', 1),
(22, 17, 5, '90000.00', 2),
(23, 18, 13, '550.00', 6),
(24, 20, 5, '45000.00', 1),
(25, 20, 15, '120.00', 6),
(26, 21, 5, '45000.00', 2),
(27, 21, 15, '120.00', 6),
(28, 22, 18, '8000.00', 4),
(29, 22, 15, '120.00', 10),
(30, 23, 18, '16000.00', 2),
(31, 23, 5, '45000.00', 1),
(32, 24, 18, '16000.00', 2),
(33, 24, 5, '45000.00', 1),
(34, 42, 18, '16000.00', 2),
(35, 42, 5, '45000.00', 1),
(36, 43, 18, '8000.00', 8),
(37, 43, 5, '45000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stockin`
--

CREATE TABLE IF NOT EXISTS `stockin` (
  `stockin_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `qty` int(6) NOT NULL,
  `date` datetime NOT NULL,
  `branch_id` int(11) NOT NULL,
  `Balance_before` int(11) DEFAULT NULL,
  PRIMARY KEY (`stockin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `stockin`
--

INSERT INTO `stockin` (`stockin_id`, `prod_id`, `qty`, `date`, `branch_id`, `Balance_before`) VALUES
(1, 5, 5, '2017-02-04 01:10:41', 1, NULL),
(2, 15, 100, '2017-02-04 01:10:49', 1, NULL),
(3, 13, 10, '2017-02-04 01:10:55', 1, NULL),
(4, 14, 5, '2017-02-04 01:11:07', 1, NULL),
(5, 15, 3, '2020-05-24 20:35:55', 1, NULL),
(6, 13, 5, '2021-05-11 02:05:17', 1, NULL),
(7, 13, 6, '2021-05-11 02:05:44', 1, NULL),
(8, 13, 6, '2021-05-11 02:06:03', 1, NULL),
(9, 5, 6, '2021-05-11 02:29:35', 1, NULL),
(10, 5, 7, '2021-05-11 02:30:01', 1, NULL),
(11, 5, 6, '2021-05-12 15:46:23', 1, NULL),
(12, 15, 34, '2021-05-12 21:25:11', 1, NULL),
(13, 18, 56, '2021-05-12 21:32:07', 1, NULL),
(14, 18, 45, '2021-05-12 23:40:36', 1, 0),
(15, 18, 3, '2021-05-12 23:42:11', 1, 97),
(16, 5, 3, '2021-05-12 23:55:48', 1, 10),
(17, 13, 34, '2021-05-14 02:10:16', 1, 11),
(18, 18, 4, '2021-05-14 02:33:57', 1, 86),
(19, 18, 6, '2021-05-14 02:34:09', 1, 90);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(300) NOT NULL,
  `supplier_contact` varchar(50) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`) VALUES
(2, 'LG Philippines', 'Makati City, Philippines', '423-4444'),
(3, 'Union Home Appliances', 'Binondo, Manila', '98878'),
(4, 'Hanabishi', 'Bacolod City', '034-666-087611'),
(5, 'Samsung Philippines', 'Philippines', '42424'),
(6, 'Avon', 'Bacolod City', '15562'),
(7, 'iStore PH', 'Manila City,Philippines', '09134567890');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE IF NOT EXISTS `temp_trans` (
  `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`temp_trans_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE IF NOT EXISTS `term` (
  `term_id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) DEFAULT NULL,
  `payable_for` varchar(10) NOT NULL,
  `term` varchar(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `payment_start` date NOT NULL,
  `down` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`term_id`, `sales_id`, `payable_for`, `term`, `due`, `payment_start`, `down`, `due_date`, `interest`, `status`) VALUES
(1, 8, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', ''),
(2, 9, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', ''),
(3, 13, '1', 'monthly', '74160.00', '2020-05-24', '18540.00', '2020-06-24', '2700.00', ''),
(4, 14, '1', 'daily', '6180.00', '2020-05-24', '46350.00', '2020-06-24', '6750.00', ''),
(5, 18, '1', 'monthly', '2719.20', '2021-05-11', '679.80', '2021-06-11', '99.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `branch_id`) VALUES
(1, 'admin', 'cfbb12c3457ebc308c81874b5fd55a17', 'John Smith', 'active', 1),
(4, 'user', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Mona Lisa', 'active', 2),
(5, 'Mikee', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Mikee', 'active', 1),
(6, 'administrator', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Giu Matthew', 'active', 0),
(7, 'NICHOLAS', 'a1Bz20ydqelm8m1wqlcfbb12c3457ebc308c81874b5fd55a17', 'Nicholas', 'active', 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
