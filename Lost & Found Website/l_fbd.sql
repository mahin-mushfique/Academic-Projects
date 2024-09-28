-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 08:30 PM
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
-- Database: `l&fbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `founditem`
--

CREATE TABLE `founditem` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `founditem`
--

INSERT INTO `founditem` (`id`, `name`, `address`, `address2`, `city`, `state`, `date`, `picture`) VALUES
(1, 'mobile', 'Airport', 'entry', 'dhaka', 'Dhaka', '0000-00-00', '.png'),
(2, 'mobile', 'Bus-stand', 'entry', 'dhaka', 'Dhaka', '0000-00-00', '.png'),
(3, 'mobile', 'Bus-stand', 'entry', 'dhaka', 'Chattogram', '0000-00-00', '.png'),
(4, 'mobile', 'Bus-stand', 'entry', 'dhaka', 'Chattogram', '0000-00-00', '.png'),
(5, 'mobile', 'Bus-stand', 'entry', 'dhaka', 'Chattogram', '2023-10-08', '.png'),
(6, 'laptop', 'Airport', 'exit', 'dhaka', 'Dhaka', '0000-00-00', '.png'),
(7, 'laptop', 'Bus-stand', 'exit', 'dhaka', 'Dhaka', '2023-10-31', '.png'),
(8, 'mouse', 'Hotel', 'exit', 'dhaka', 'Dhaka', '2023-10-31', '.png');

-- --------------------------------------------------------

--
-- Table structure for table `missingperson`
--

CREATE TABLE `missingperson` (
  `Fname` varchar(255) NOT NULL,
  `NID` int(255) NOT NULL,
  `Phone` int(255) NOT NULL,
  `MissingDate` date NOT NULL,
  `Age` int(255) NOT NULL,
  `Haircolor` varchar(255) NOT NULL,
  `Eyecolor` varchar(255) NOT NULL,
  `Cloths` varchar(255) NOT NULL,
  `Sid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mobile` int(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Time` date NOT NULL DEFAULT current_timestamp(),
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`Fname`, `Lname`, `Mobile`, `Email`, `Password`, `Time`, `sid`) VALUES
('Ratul', 'rinku', 1915286868, 'ratul.bhattarcharjee@northsouth.edu', '123456789', '2023-10-01', 1),
('Ratul', 'Bhatt', 1715157500, 'ratulbhattacharjee00@gmail.com', '123456789', '2023-10-04', 2),
('', '', 0, 'ratul.bhattarcharjee@northsouth.edu', '123456789', '2023-10-30', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `founditem`
--
ALTER TABLE `founditem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missingperson`
--
ALTER TABLE `missingperson`
  ADD PRIMARY KEY (`Sid`,`NID`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`sid`,`Email`,`Mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `founditem`
--
ALTER TABLE `founditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `missingperson`
--
ALTER TABLE `missingperson`
  MODIFY `Sid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
