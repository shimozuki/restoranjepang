-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 13, 2020 at 05:54 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_restaurant_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `aid` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `username` varchar(155) NOT NULL,
  `password` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`aid`, `name`, `username`, `password`) VALUES
(1, 'Rohana', 'nana@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `area_table`
--

CREATE TABLE `area_table` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_table`
--

INSERT INTO `area_table` (`area_id`, `area_name`) VALUES
(123484, 'Mataram'),
(123485, 'Praya'),
(123486, 'selong'),
(123487, 'labu liye'),
(123488, 'bima');

-- --------------------------------------------------------

--
-- Table structure for table `cart_table`
--

CREATE TABLE `cart_table` (
  `cart_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `cart_date` varchar(10) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_table`
--

INSERT INTO `cart_table` (`cart_id`, `id`, `items_id`, `qty`, `cart_date`, `status`) VALUES
(14, 19, 5, '2', '29-10-2018', '1'),
(18, 19, 1, '2', '30-10-2018', '1'),
(19, 19, 10, '2', '03-11-2018', '1'),
(20, 19, 13, '2', '03-11-2018', '1'),
(21, 19, 8, '1', '03-11-2018', '1'),
(22, 19, 1, '1', '03-11-2018', '1'),
(23, 19, 37, '1', '04-11-2018', '1'),
(24, 19, 13, '1', '04-11-2018', '0'),
(25, 19, 4, '1', '04-11-2018', '0'),
(26, 21, 4, '2', '12-01-2020', '1'),
(27, 21, 5, '1', '12-01-2020', '1'),
(29, 21, 200, '1', '12-01-2020', '1'),
(30, 21, 92, '1', '12-01-2020', '1'),
(31, 22, 200, '1', '12-01-2020', '1'),
(32, 22, 10, '1', '12-01-2020', '1'),
(33, 22, 37, '1', '12-01-2020', '0');

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

CREATE TABLE `customer_table` (
  `id` int(11) NOT NULL,
  `c_name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(155) NOT NULL,
  `Contact_no` varchar(10) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`id`, `c_name`, `email`, `password`, `Contact_no`, `Address`) VALUES
(19, 'Mayuraksha Sikdar', 'mayurakshasikdar@gmail.com', '12345', '8100132483', '41/1, Bagha Jatin Road, New Barrackpur'),
(20, 'Mayuraksha Sikdar', 'asf@gmail', '12345', '123456', 'Sodepur'),
(21, 'ahmad', 'robbishimozuki@gmail.com', 'Robbi13@', '0817153513', 'sumbawa'),
(22, 'rohana', 'nanag@gmail.com', 'Robbi13', '0813456789', 'mataram');

-- --------------------------------------------------------

--
-- Table structure for table `items_table`
--

CREATE TABLE `items_table` (
  `items_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `spicy` varchar(155) NOT NULL,
  `price` varchar(10) NOT NULL,
  `fpath` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_table`
--

INSERT INTO `items_table` (`items_id`, `name`, `spicy`, `price`, `fpath`, `type_id`) VALUES
(1, 'Ebi Shusi', 'Low', '110', 'item_image/ebi.jpg', 9),
(4, 'chuka idako shusi', 'Low', '150', 'item_image/idako.jpg', 9),
(5, 'Chuka Wakame', 'Low', '120', 'item_image/chukawakame.jpg', 9),
(8, 'salmon kani mayo', 'Low', '150', 'item_image/aku.jpg', 9),
(10, 'Beef Cury Udon', 'Low', '40', 'item_image/beef.jpg', 7),
(13, 'Chicken Dry Ramen', 'Low', '100', 'item_image/dry.jpg', 7),
(37, 'Beef Teriyaki ramen', 'Low', '50', 'item_image/teri.jpg', 7),
(70, 'Chicken katsu curry don buri', 'low', '40', 'item_image/ayam.jpg', 8),
(77, 'Salmon Salad', 'low', '30', 'item_image/sal.jpg', 10),
(80, 'Beef Teriyaki don buri', 'low', '50', 'item_image/nasi.jpg', 8),
(88, 'Salmon teriyaki don buri', 'low', '999', 'item_image/donbur.jpg', 8),
(92, 'Beef yaki udon', 'low', '110', 'item_image/yaki.jpg', 7),
(99, 'Salmon don buri', 'low', '150', 'item_image/salmon.jpg', 8),
(100, 'Hot ocha', 'low', '10', 'item_image/oc.jpg', 12),
(101, 'Iced ocha', 'low', '10', 'item_image/ic.jpg', 12),
(135, 'Kani sashimi', 'low', '700', 'item_image/tu.jpg', 11),
(136, 'Chuka wakame sashimi', 'low', '150', 'item_image/rum.jpg', 11),
(200, 'Lemon tea', 'low', '10', 'item_image/te.jpg', 12),
(201, 'Lemonade', 'low', '10', 'item_image/lee.jpg', 12),
(566, 'Agedashi tofu', 'low', '70', 'item_image/tahu.jpg', 10),
(656, 'Agedashi tofu', 'low', '70', 'item_image/kentang.jpg', 10),
(666, 'Gyoza', 'low', '60', 'item_image/gyo.jpg', 10),
(743, 'Salmon sashimi', 'low', '800', 'item_image/sa.jpg', 11),
(744, 'Maguro sashimi', 'low', '900', 'item_image/magu.jpg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `order_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL,
  `items_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`order_id`, `quantity`, `items_id`, `id`, `sub_id`, `contact_no`, `delivery_address`, `order_date`) VALUES
(1248, 2, 4, 21, 24, '0817153513', 'sumbawa', '2020-01-12'),
(1249, 1, 5, 21, 24, '0817153513', 'sumbawa', '2020-01-12'),
(1250, 1, 200, 21, 24, '0817153513', 'sumbawa', '2020-01-12'),
(1251, 1, 92, 21, 24, '0817153513', 'sumbawa', '2020-01-12'),
(1252, 1, 200, 22, 24, '0813456789', 'mataram', '2020-01-12'),
(1253, 1, 10, 22, 24, '0813456789', 'mataram', '2020-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `sub_area_table`
--

CREATE TABLE `sub_area_table` (
  `sub_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `sub_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_area_table`
--

INSERT INTO `sub_area_table` (`sub_id`, `area_id`, `sub_name`) VALUES
(24, 123484, 'Universitas Bumigora'),
(25, 123484, 'Universitas Mataram');

-- --------------------------------------------------------

--
-- Table structure for table `type_table`
--

CREATE TABLE `type_table` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(155) NOT NULL,
  `category` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_table`
--

INSERT INTO `type_table` (`type_id`, `type_name`, `category`) VALUES
(7, 'Masak', 'Ramen'),
(8, 'Mentah', 'Rice'),
(9, 'Mentah', 'Sushi'),
(10, 'Masak', 'appetizer'),
(11, 'Mentah', 'Sashimi'),
(12, '--Select Type--', 'Beverage');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `area_table`
--
ALTER TABLE `area_table`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `cart_table`
--
ALTER TABLE `cart_table`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `id` (`id`),
  ADD KEY `items_id` (`items_id`);

--
-- Indexes for table `customer_table`
--
ALTER TABLE `customer_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_table`
--
ALTER TABLE `items_table`
  ADD PRIMARY KEY (`items_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `items_id` (`items_id`,`id`,`sub_id`),
  ADD KEY `id` (`id`),
  ADD KEY `sub_id` (`sub_id`);

--
-- Indexes for table `sub_area_table`
--
ALTER TABLE `sub_area_table`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `area_id` (`area_id`);

--
-- Indexes for table `type_table`
--
ALTER TABLE `type_table`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `area_table`
--
ALTER TABLE `area_table`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123489;

--
-- AUTO_INCREMENT for table `cart_table`
--
ALTER TABLE `cart_table`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `customer_table`
--
ALTER TABLE `customer_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `items_table`
--
ALTER TABLE `items_table`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=745;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1254;

--
-- AUTO_INCREMENT for table `sub_area_table`
--
ALTER TABLE `sub_area_table`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `type_table`
--
ALTER TABLE `type_table`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_table`
--
ALTER TABLE `cart_table`
  ADD CONSTRAINT `cart_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `customer_table` (`id`),
  ADD CONSTRAINT `cart_table_ibfk_2` FOREIGN KEY (`items_id`) REFERENCES `items_table` (`items_id`);

--
-- Constraints for table `items_table`
--
ALTER TABLE `items_table`
  ADD CONSTRAINT `items_table_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type_table` (`type_id`);

--
-- Constraints for table `sub_area_table`
--
ALTER TABLE `sub_area_table`
  ADD CONSTRAINT `sub_area_table_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area_table` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
