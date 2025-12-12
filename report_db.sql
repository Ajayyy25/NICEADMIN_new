-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2025 at 12:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `report_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report`
--

CREATE TABLE `tbl_report` (
  `crime_id` int(11) NOT NULL,
  `crime_type` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `victim_name` varchar(50) NOT NULL,
  `suspect_name` varchar(100) NOT NULL,
  `narrative` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_report`
--

INSERT INTO `tbl_report` (`crime_id`, `crime_type`, `date`, `location`, `victim_name`, `suspect_name`, `narrative`) VALUES
(1, 'Theft', '2025-12-08', 'macopa street, Bulua', 'Cyra', 'Lirio', 'nanguha og manok'),
(2, 'Theft', '2025-12-08', 'manggahan street Bulua', 'Ronald', 'Jonel', 'nanguha og mangga'),
(3, 'Theft', '2025-12-09', 'kalubihan street bulua', 'Irene', 'Cardo', 'nanguha og lubi'),
(4, 'Assault', '2025-12-09', 'manggahan street Bulua', 'Bjorn', 'Lando', 'gi sumbag ang nawong'),
(5, 'Theft', '2025-12-09', 'gumamela street, Bulua', 'Jodisa', 'Insoy', 'gikuha ang cp samtang natug'),
(6, 'Homicide', '2025-12-10', 'ilang ilang street', 'Ej', 'Junjun', 'stab in the neck'),
(7, 'Theft', '2025-12-10', 'ilang ilang street', 'David', 'Junjun', 'gikuha ang cp na wlay force na nahitabo'),
(8, 'Robbery', '2025-12-11', 'sunflower street', 'Douglas', 'Thomas', 'gi tutukan og kutsilyo tas gikuha ang cp\r\n'),
(9, 'Robbery', '2025-12-11', 'sunflower street', 'Mc Arthur', 'Thomas', 'Gi tulis tas gikuha ang pitaka'),
(10, 'Robbery', '2025-12-11', 'macopa street, Bulua', 'Ronron ', 'Luffey', 'gikuha ang alahas sa balay'),
(11, 'Assault', '2025-12-12', 'gumamela street, Bulua', 'Rose', 'Lando', 'gisumbag ang nawong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_report`
--
ALTER TABLE `tbl_report`
  ADD PRIMARY KEY (`crime_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_report`
--
ALTER TABLE `tbl_report`
  MODIFY `crime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
