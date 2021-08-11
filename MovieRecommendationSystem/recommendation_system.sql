-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2021 at 06:36 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recommendation_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`) VALUES
(1, 'nishatrabbi'),
(3, 'John'),
(4, 'Reth'),
(5, 'Rebecca'),
(6, 'Rahim');

-- --------------------------------------------------------

--
-- Table structure for table `user_movies`
--

CREATE TABLE `user_movies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_name` varchar(255) NOT NULL,
  `movie_rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_movies`
--

INSERT INTO `user_movies` (`id`, `user_id`, `movie_name`, `movie_rating`) VALUES
(3, 1, '12 angry men', '10'),
(4, 5, 'Titanic', '8'),
(5, 4, 'Silence of the lambs', '9'),
(7, 1, 'Spiderman', '6'),
(8, 1, 'Venom', '5'),
(9, 1, 'Black Widow', '8'),
(10, 1, 'Black Panther', '8'),
(11, 3, 'Spiderman', '7'),
(12, 3, 'Venom', '5'),
(13, 3, 'Silence of the lambs', '9'),
(14, 5, 'Black Widow', '7'),
(15, 4, 'Black Widow', '6'),
(16, 6, '12 angry men', '10'),
(17, 6, 'Titanic', '8'),
(18, 5, 'Venom', '5'),
(19, 4, 'Spiderman', '7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_movies`
--
ALTER TABLE `user_movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_movies`
--
ALTER TABLE `user_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
