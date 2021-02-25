-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2021 at 11:18 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `addstore`
--

CREATE TABLE `addstore` (
  `title` varchar(255) NOT NULL,
  `catagory` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `image` tinyblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addstore`
--

INSERT INTO `addstore` (`title`, `catagory`, `location`, `image`) VALUES
('John', 'Doe', 'john@example', ''),
('faiza', 'Abdullah', 'karachi', ''),
('dd', '', 'hhh', ''),
('dd', 'Clothing', 'hhh', ''),
('fa', 'Cosmetics', 'rr', ''),
('fa', 'Cosmetics', 'rr', ''),
('faizaabdullah', 'Grocery', 'karachi', 0x4465736572742e6a7067),
('faizaabdullah', 'Grocery', 'karachi', 0x4465736572742e6a7067),
('fa11', 'Cosmetics', 'hhhw3e', 0x4a656c6c79666973682e6a7067),
('fa11', 'Cosmetics', 'hhhw3e', 0x4a656c6c79666973682e6a7067),
('fa', 'Cosmetics', 'rrsss', 0x48796472616e676561732e6a7067),
('fa', 'Cosmetics', 'rrsss', 0x48796472616e676561732e6a7067),
('javria', 'Cosmetics', 'address', 0x4c69676874686f7573652e6a7067),
('javria', 'Cosmetics', 'address', 0x4c69676874686f7573652e6a7067),
('faizaabdullah123', 'Grocery', 'lahorekarachi', 0x54756c6970732e6a7067),
('nedianfaiza', 'Cosmetics', 'gulshan', 0x4465736572742e6a7067),
('nedianfaiza123', 'Grocery', 'gulshan', 0x48796472616e676561732e6a7067),
('nedianfaiza', 'Cosmetics', 'gulshan', 0x50656e6775696e732e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `docname` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `specialization`, `docname`, `date`, `time`) VALUES
(1, 'Eyes Surgeon', 'nedianfaiza', '0000-00-00', '00:00:00'),
(2, 'faiza', 'faiza', '2021-02-04', '05:56:00'),
(3, 'faiza', 'faiza', '2021-02-09', '14:04:00'),
(4, 'Eyes Surgeon', 'nedianfaiza', '2021-02-24', '03:14:00'),
(5, 'Eyes Surgeon', 'nedianfaiza', '2021-02-25', '07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `contact`, `description`) VALUES
(2, 'anabiya1wqww', 'anafffffffffbiya@gmail.com', '033333333333', 'swswswswswswswswswswswswswswsw'),
(3, 'anabiya1wqww', 'anafffffffffbiya@gmail.com', '033333333333', 'swswswswswswswswswswswswswswsw'),
(4, 'ahsan', 'ahsan@gmail.com', '3333333333', 'eeeeeeeeeee');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `specialization`, `name`, `address`, `contact`, `email`, `password`) VALUES
(1, 'eyes', 'faiza', 'karachi', '033662222', 'faiza@gmail.com', '12345'),
(2, 'Head Surgey', 'nedianfaiza', 'gulshan', '03366024505', 'fa@gmail.com', '1234'),
(3, 'Head Surgey', 'nedianfaiza', 'gulshan', '03366024505', 'fa@gmail.com', '1234'),
(6, 'Head Surgey', 'nedianfaiza', 'gulshan', '03366024505', 'fawww@gmail.com', '1234567'),
(9, 'head11 ', 'ahsan ', 'aaaaaaaa                  ', '555555555555 ', 'doc@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loginpat`
--

CREATE TABLE `loginpat` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginpat`
--

INSERT INTO `loginpat` (`id`, `user`, `pass`) VALUES
(1, 'faiza@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL,
  `updation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `specialization`, `creation_date`, `updation_date`) VALUES
(56, 'Eyes Surgeon', '2021-02-19 00:21:00', '2021-02-26 03:24:00'),
(57, 'Eyes Surgeon', '2021-02-17 00:00:00', '0000-00-00 00:00:00'),
(58, 'head surgery11 ', '2021-02-24 06:43:00', '2021-02-24 18:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `history` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginpat`
--
ALTER TABLE `loginpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginpat`
--
ALTER TABLE `loginpat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
