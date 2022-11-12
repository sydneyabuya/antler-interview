-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 12, 2022 at 12:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jina`
--

-- --------------------------------------------------------

--
-- Table structure for table `jina`
--

CREATE TABLE `jina` (
  `id` int(11) DEFAULT NULL,
  `a` int(11) DEFAULT NULL,
  `b` int(255) DEFAULT NULL,
  `result` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jina`
--

INSERT INTO `jina` (`id`, `a`, `b`, `result`) VALUES
(0, 3, 65, 0),
(0, 4, 23, 0),
(0, 4, 23, 0),
(0, 4, 23, 0),
(0, 4, 23, 0),
(0, 4, 23, 0),
(0, 54, 23, 0),
(0, 3, 6, 0),
(0, 3, 6, 9),
(0, 45, 5, 0),
(0, 45, 5, 0),
(0, 45, 3, 0),
(0, 45, 3, 0),
(0, 34, 3, 0),
(0, 2, 3, 0),
(0, 7, 5, 0),
(0, 6, 2, 0),
(0, 4, 3, 0),
(0, 4, 3, 0),
(0, 4, 5, 0),
(0, 4, 5, 9),
(0, 4, 5, 9),
(0, 3, 4, 7),
(0, 3, 4, 7),
(0, 3, 4, 7),
(0, 3, 4, 7),
(0, 3, 4, 7),
(0, 4, 3, 1),
(0, 2, 3, 5),
(0, 3, 4, 7),
(0, 5, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'animation', 'ben10'),
(2, 'admin', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
