-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 01:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pname` text NOT NULL,
  `brand` text NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `brand`, `price`) VALUES
(1, 'Product 1', 'Sony', 103),
(2, 'Product 2', 'Samsung', 140),
(3, 'Product 3', 'Sony', 100),
(4, 'Product 4', 'Samsung', 170),
(5, 'Product 5', 'Apple', 153),
(6, 'Product 6', 'Mitsubishi', 190),
(7, 'Product 7', 'Vivo', 106),
(8, 'Product 8', 'Oppo', 170),
(9, 'Product 9', 'Huawei', 131),
(10, 'Product 10', 'Dnata', 141),
(11, 'Product 11', 'Lava', 167),
(12, 'Product 12', 'Micromax', 184),
(13, 'Product 13', 'Microsoft', 123),
(14, 'Product 14', 'Samsung', 142),
(15, 'Product 15', 'Sony', 136),
(16, 'Product 16', 'Samsung', 142),
(17, 'Product 17', 'Sony', 93),
(18, 'Product 18', 'Samsung', 700),
(19, 'Product 19', 'Sony', 75),
(20, 'Product 20', 'Microsoft', 1040),
(21, 'Product 21', 'Vivo', 199),
(22, 'Product 22', 'Samsung', 140),
(23, 'Product 23', 'Sony', 992),
(24, 'Product 24', 'Samsung', 130),
(25, 'Product 25', 'Sony', 143),
(26, 'Product 26', 'Samsung', 1900),
(27, 'Product 27', 'Sony', 322),
(28, 'Product 28', 'Samsung', 421),
(29, 'Product 29', 'Sony', 156),
(30, 'Product 30', 'Samsung', 175),
(31, 'Product 31', 'Micromax', 183),
(32, 'Product 32', 'Lava', 120),
(33, 'Product 33', 'Sony', 167),
(34, 'Product 34', 'Samsung', 240),
(35, 'Product 35', 'Sony', 203),
(36, 'Product 36', 'Samsung', 230),
(37, 'Product 37', 'Sony', 283),
(38, 'Product 38', 'Samsung', 270),
(39, 'Product 39', 'Sony', 290),
(40, 'Product 40', 'Oppo', 40),
(41, 'Product 41', 'Huawei', 163),
(42, 'Product 42', 'Micromax', 120);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
