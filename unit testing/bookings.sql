-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2020 at 09:50 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookingcalender`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  primary `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `timeslot` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

--
-- Dumping data for table `users`
--


INSERT INTO `bookings` (`id`, `name`, `email`, `date`, `timeslot`) VALUES
(0, 'Ashu Vijay', 'ashutoshvijayvergiya24@gmail.com', '2020-05-26', '11:00AM-12:00PM');
COMMIT;
INSERT INTO `bookings` (`id`, `name`, `email`, `date`, `timeslot`) VALUES
(1, 'John', 'johndoe@gmail.com', '2020-07-29', '10:00AM-10:30A');
COMMIT;
INSERT INTO `bookings` (`id`, `name`, `email`, `date`, `timeslot`) VALUES
(2, 'Mark', 'mark@gmail.com', '2020-09-01', '14:30PM-15:00PM');
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
