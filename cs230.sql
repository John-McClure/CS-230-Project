-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 05:52 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `picpath` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'uploads/anon.png',
  `bio` mediumtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('test3', 'uploads/anon.png', NULL),
('test', 'uploads/anon.png', NULL),
('john', '../uploads/5f8108385a2188.91241078.jpg', 'hey im john'),
('calebwalsh', '../uploads/5f810d6f182dc5.85631502.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `uname` varchar(80) NOT NULL,
  `title` varchar(60) NOT NULL,
  `review_text` text NOT NULL,
  `rev_date` datetime NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `item_id`, `uname`, `title`, `review_text`, `rev_date`, `rating_num`, `status`) VALUES
(1, 1, 'john', 'dfdrfvsrd', 'arferferfaf', '2020-10-24 03:06:16', 5, 1),
(2, 1, 'john', 'lab 7 test', 'review', '2020-10-24 03:07:03', 4, 1),
(3, 1, 'john', 'terrible', 'awful game', '2020-10-24 03:49:16', 1, 1),
(4, 1, 'john', 'good', 'alright', '2020-10-24 03:50:03', 3, 1),
(5, 1, 'john', 'great', 'great game', '2020-10-24 03:50:13', 5, 1),
(6, 3, 'john', 'Awesome!', 'This was a great game, but could have been better.', '2020-10-26 20:58:36', 4, 1),
(7, 1, '', 'rgss', 'aergarg', '2020-10-26 20:59:54', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `lname`, `fname`, `email`, `uname`, `password`) VALUES
(8, 'test2', 'test1', 'test@test.com', 'test', '$2y$10$tzagmI0nWhu2tJKMmkbQwezvnwIVvKD6rBNM0VHFHfrzyu6c0i94W'),
(9, 'mcclure', 'john', 'john@mail.com', 'john', '$2y$10$qb8NK3F2vgkMpk4Yj/3CcO1wfWkX3pdYxWA/9xzfZ4xItZCj/HMeu'),
(10, 'Walsh', 'Caleb', 'calebwalsh74@yahoo.com', 'calebwalsh', '$2y$10$JrAbisdi0UZhvKvLEeXD.OjwBcW.DLVycTFX8f989vs571gl5ikSe');

-- --------------------------------------------------------

--
-- Table structure for table `videogames`
--

CREATE TABLE `videogames` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videogames`
--

INSERT INTO `videogames` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, 'Ghost of Tsushima', 'PS4 game', '5f8118f1dd50d9.62303974.jpg', '2020-10-09', NULL),
(2, 'God of War', 'PS4 Game', '5f811d269690a7.09165983.jpg', '2020-10-09', NULL),
(3, 'Horizon Zero Dawn', 'PS4 Game', '5f811de8dc79e8.19550496.jpg', '2020-10-09', NULL),
(4, 'The Last of Us. Part II', 'PS4 Game', '5f81200bc3e526.21312093.jpg', '2020-10-09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `videogames`
--
ALTER TABLE `videogames`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `videogames`
--
ALTER TABLE `videogames`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
