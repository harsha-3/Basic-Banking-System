-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 10:00 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trust_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `id` int(11) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `transfer_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`id`, `sender`, `receiver`, `amount`, `transfer_date`) VALUES
(1, 'Ganesha', 'Sri Vathsav', 10000, '2022-06-01 08:25:23'),
(2, 'Anudeep', 'Sri Vathsav', 1000, '2022-06-01 08:42:16'),
(3, 'Sathwik', 'Anil Kumar', 5000, '2022-06-02 08:42:35'),
(4, 'Nithin', 'Nikhil', 2000, '2022-06-02 08:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Ganesha', 'ganesha@gmail.com', 100000000),
(2, 'AnilKumar', 'anil@gmail.com', 1000050),
(3, 'Sri Vathsav', 'vathsav@gmail.com', 500000),
(4, 'Anudeep', 'anudeep@gmail.com', 5025000),
(5, 'Nithin', 'nithin@gmail.com', 230500),
(6, 'Nikhil', 'nikhil@gmail.com', 5000020),
(7, 'Sathwik', 'sathwik@gmail.com', 400020),
(8, 'Manas', 'manas@gmail.com', 609000),
(9, 'Vikhyath', 'vikhyath@gmail.com', 2500000),
(10, 'Sravanth', 'sravanth@gmail.com', 78000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trans`
--
ALTER TABLE `trans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trans`
--
ALTER TABLE `trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
