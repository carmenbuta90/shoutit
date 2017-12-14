-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2016 at 10:38 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoutit`
--

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE `shouts` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shouts`
--

INSERT INTO `shouts` (`id`, `user`, `message`, `time`) VALUES
(1, 'Brad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla massa ut pretium placerat. Nunc consectetur nulla lorem, sit amet euismod eros viverra condimentum. ', '11:23:00'),
(2, 'John', 'Donec ipsum diam, elementum eu sodales ac, ornare in nibh.', '11:24:00'),
(3, 'Carmen', 'This is a test', '00:00:00'),
(4, 'Ioan', 'This is another test', '00:00:00'),
(5, 'Test', 'This is a test', '02:37:25'),
(6, 'xx', 'xx', '02:38:35'),
(7, 'd', 'd', '02:44:29'),
(8, 's', '', '03:02:33'),
(9, 's', '', '03:02:39'),
(10, 'ssss', '', '03:02:43'),
(11, 'ssss', '', '03:13:12'),
(12, 'dddddddddddddd', '', '03:13:17'),
(13, 'sss', 'sss', '03:23:07'),
(14, 'sss', 'ss', '03:26:11'),
(15, 'Carmen', 'Lorem ipsum Lorem ipsum lorem ipsm', '03:27:50'),
(16, 'Carmen', 'mesaj', '11:51:11'),
(17, 'Dan', 'Sunt atasat de infinica!', '12:19:09'),
(18, 'Carmen', 'Ce frumos!', '12:19:25'),
(19, 'sss', 'sss', '11:59:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
