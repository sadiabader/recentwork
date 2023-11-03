-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 09:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jenny`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcat`
--

CREATE TABLE `addcat` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addcat`
--

INSERT INTO `addcat` (`id`, `name`, `type`, `description`, `status`) VALUES
(1, 'Braneded cosmetics', 'Branded and most attractive products', 'For Womens ', 1),
(2, 'Branded Jewellery', 'Most attractive products', 'For Womens ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addproduct`
--

CREATE TABLE `addproduct` (
  `pid` int(11) NOT NULL,
  `ptitle` varchar(255) NOT NULL,
  `pdescription` text NOT NULL,
  `pcategory` int(255) NOT NULL,
  `pprice` varchar(255) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addproduct`
--

INSERT INTO `addproduct` (`pid`, `ptitle`, `pdescription`, `pcategory`, `pprice`, `pimage`, `status`) VALUES
(1, 'New Necklace', 'Most attractive product ', 2, '66K', 'card6.jpg', 1),
(2, 'Jhumka', 'Most attractive product', 2, '888K', 'j1.jpg', 1),
(3, 'Gold Rings', 'very attractive ', 2, '888K', 'j3.webp', 1),
(4, 'Jewellery  set', 'Most attractive product', 2, '888K', 'j8.webp', 1),
(5, 'Party wear Set', 'Mostly in silver , gold and copper etc', 2, '120K', 'c23.jpg', 1),
(6, ' Nikkah Set', 'In all varieties and all colors', 2, '700K', 'j17.jpg', 1),
(7, 'Bangles', 'Mostly in silver , gold   ', 2, '11K', 'j4.webp', 1),
(8, 'Bracelets', 'Mostly in silver , gold and copper etc (Multiple shades)', 2, '88K', 'imagesj5.webp', 1),
(9, 'Sapphire Queen Crown', 'For Women', 2, '700K', '81wvANmt6YL.jpg', 1),
(10, 'Pazaib Jewellery', 'Mostly in silver , gold and copper etc', 2, '11K', 'download.jpeg', 1),
(11, ' Golden Jhumka', 'Mostly in silver , gold and copper etc', 2, '20K', 'imagesj7.jpg', 1),
(14, 'Bracelet with ring', 'Mostly in silver , gold and copper etc (Multiple shades)', 2, '100K', 'imagesj18.webp', 1),
(15, 'Blushes', 'Most attractive product', 1, '11K', 'blush1.jpg', 1),
(16, 'Cosmetics kit', 'Kit is awesome', 1, '22$', 'beauty2.jpg', 1),
(17, 'Beauti kit', 'Attractive product', 1, '22$', 'beauty5.jpg', 1),
(18, 'Set of lipsticks', 'Mostly in  (Multiple shades)', 1, '11K', 'c5.jpg', 1),
(19, 'Charmacy Lipstick', 'Multiple shades', 1, '88$', 'cos5.webp', 1),
(20, 'Bunch of blushes', 'Kit is awesome', 1, '11K', 'cos2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'talha', 'talha@gmail.com', '$2y$10$2122xI6lqR1wXS1sU/Osgek9DilhJ5KCyokRKB1WdOnLAt/RWslTO', 789456),
(2, 'amir', 'amir@gmail.com', '$2y$10$Cr9Q38AoIdtcY803CWyF3OrdnhcjzyfDoPg41q8qUgXyBLHpq6E4S', 325689);

-- --------------------------------------------------------

--
-- Table structure for table `user-register`
--

CREATE TABLE `user-register` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user-register`
--

INSERT INTO `user-register` (`id`, `username`, `email`, `password`) VALUES
(10, 'sawera ansari', 'saw@gmail.com', '$2y$10$1PzUTp2SFpp8vGWGbdsO6uJqR2H2Hb7HniEL.02u4ftCvLXJK9jf.'),
(11, 'midhat@gmail.com', 'mid@gmail.com', '$2y$10$Ivo55pM0PdZLFT5.w5IrVOiRA.YEKy55CblzOk4.WE8NeGyKYe2Em');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcat`
--
ALTER TABLE `addcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `pcategory` (`pcategory`);

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user-register`
--
ALTER TABLE `user-register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcat`
--
ALTER TABLE `addcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `addproduct`
--
ALTER TABLE `addproduct`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user-register`
--
ALTER TABLE `user-register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD CONSTRAINT `addproduct_ibfk_1` FOREIGN KEY (`pcategory`) REFERENCES `addcat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
