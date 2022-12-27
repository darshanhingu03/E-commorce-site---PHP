-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 04:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `justiget`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`) VALUES
(4, 'Darshan', 'Hingu', 'admin@justiget.com', '9638343673', 'bagasara', '21232f297a57a5a743894a0e4a801fc3', 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` date NOT NULL,
  `ddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(35, 12, 56, 1, 'bagasara', '9638343673', 'no', '2022-09-24', '2022-10-01'),
(36, 14, 66, 1, 'Hadmadiya', '1234567890', 'no', '2022-09-26', '2022-10-03'),
(37, 15, 67, 2, 'bagsara', '9426842017', 'no', '2022-09-26', '2022-10-03'),
(39, 12, 60, 1, 'bagasara', '9638343673', 'no', '2022-09-28', '2022-10-05'),
(40, 12, 60, 1, 'bagasara', '9638343673', 'no', '2022-09-28', '2022-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `type`, `item`, `pCode`, `picture`) VALUES
(56, 'KALINI', 566, 'kalini', 10, 'women', 'clothing', 'saree', 'S001', '1663990255.jpg'),
(57, 'zari Pure Silk Kanjeevaram Saree', 1049, 'Design Details Mustard Yellow and gold-toned kanjeevaram saree Checked saree with woven design border Has zari detail  The saree comes with an unstitched blouse piece The blouse worn by the model might be for modelling purpose only. Check the image of the blouse piece to understand how the actual blouse piece looks like.', 20, 'women', 'clothing', 'saree', 'S002', '1664002791.jpg'),
(58, 'Kanjeevaram Saree', 599, 'Design Details Pink and mustard yellow kanjeevaram saree Ethnic motifs woven design saree with woven design border Has zari detail  The saree comes with an unstitched blouse piece The blouse worn by the model might be for modelling purpose only.', 5, 'women', 'clothing', 'saree', 'S003', '1664002969.jpg'),
(59, 'Kanchipuram Silk Half Saree', 309, 'Saree Length - 5.50 mtr || Blouse Length : 0.80 mtr || Saree With Unstitched Blouse Material : Pure Cotton Silk Blend || Type: Plain Weave Pure Cotton saree', 13, 'women', 'clothing', 'saree', 'S004', '1664003648.jpg'),
(60, 'Plain Poly Georgette Saree', 549, '100%Synthetic Comes with un-stitched blouse Please check separate CAD image for actual blouse piece.', 10, 'women', 'clothing', 'saree', 'S005', '1664003750.jpg'),
(61, 'Banarasi Art Silk Saree', 289, 'Occasion: Traditional Sarees Saree Fabric: Art Silk, Blouse Fabric: Art Silk Saree Length: 5.5 M, Blouse Size: 0.80 M Saree Color: Dark Blue, Blouse Color: Dark Blue Wash Care: Hand Wash Only.', 25, 'women', 'clothing', 'saree', 'S006', '1664003859.jpg'),
(63, 'Analogue Black Dial Magnet Watch', 299, 'Styledose is inspired by Indian creativity and ingenuity. Bringing new life into the watch and leathers industry by making quality, fashionable accessories that are both fun and accessible. ', 3, 'women', 'clothing', 'watch', 'w001', '1664007005.jpg'),
(64, 'Bluetooth Fitness Smart Band D18', 549, 'Advanced Sensors that Measure Your Heart Rate Throughout the Day and Analyze Your Sleep. The D18 PLus watch 3S also has a Exciting New Feature: The SpO2 Monitor. With Just a Simple Touch, You Can Measure SpO2 Oxygen Saturation. You Can Keep an Eye on Your Health at all Times on the Display. In This Way, the Smartwatch Helps to Develop an Active and Fit Lifestyle.', 10, 'women', 'clothing', 'watch', 'W002', '1664007503.jpg'),
(65, 'Analogue Black  Magnet Watch', 299, 'RUSTET is inspired by Indian creativity and ingenuity. Bringing new life into the watch and metals industry by making quality, fashionable accessories that are both fun and accessible. From jet-setting adventures to the 9 to 5 grind, the iconic Slim Runway watch collection by RUSTET provides luxurious style with a modern splash of trend-right touches.', 15, 'women', 'clothing', 'watch', 'W003', '1664007737.jpg'),
(66, 'Fogg Women’s Perfume, 100ml', 495, 'An Enchanting Fragrance: Fogg I am Queen is a unique and refreshing fragrance crafted for the modern-day queens', 50, 'women', 'clothing', 'perfume', 'P001', '1664008428.jpg'),
(67, 'Romance Eau De Parfum for Women', 239, 'Type of Perfume: Eau de parfum; Item weight: 100 ml Scent Type: Strong floral green fragrance with a burst of long lasting freshness Best in class long lasting fragrance; Best suited for: Every day wear', 30, 'women', 'clothing', 'perfume', 'P001', '1664008572.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`) VALUES
(12, 'Darshan', 'Hingu', 'darshanhingu@gmail.com', '9638343673', 'bagasara', '406f84c0877f9574a5295bb8f4d0ee6f'),
(13, 'Jenish', 'Trivedi', 'jenish@gmail.com', '9624283583', 'bagsara', '17c1eb805f782ec09e6ba5af68e29312'),
(14, 'Dinesh', 'Chavda', 'dinesh@gmail.com', '1234567890', 'Hadmadiya', '9c9f1c65b1dc1f79498c9f09eb610e1a'),
(15, 'Mitesh', 'Hadiyal', 'mituhadiyal@gmail.com', '9426842017', 'bagsara', 'cdbe75eb932913e135ed90941f1b3789'),
(21, 'Avadh', 'Hadiyal', 'avadh@gmail.com', '0987654321', 'amreli', '2e837006f090414d534d02e3ccc7fb32'),
(22, 'Avadh', 'Hadiyal', 'avadhhadiyal@gmail.com', '0987654321', 'amreli', '2e837006f090414d534d02e3ccc7fb32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
