-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 03:06 AM
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
-- Database: `image_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc`
--

CREATE TABLE `acc` (
  `UserID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `unique_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acc`
--

INSERT INTO `acc` (`UserID`, `username`, `password`, `unique_id`) VALUES
(19, 'jcpogi', '$2y$10$zMlPHbFS8RLuj53ZEKv70OPMHbR8oRJ1yfiqVE4YrA/i28adbZ91.', 'FQLgaZSa'),
(20, 'admin', '$2y$10$kurROQzR5KYZrESr6TqTFusJDEa3LkgfVIszZtxCSt25XbAf7WqNa', 'AJsRF4z5'),
(21, 'romar', '$2y$10$JQnfZBQ3/8qot/sjJk7cWO7X1zaOytbnyhuT8mm66dZclCDzU2lC6', 'laEWrStC');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `unique_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `alt`, `unique_id`) VALUES
(68, 'http://localhost/uploads/workout_gif_man.gif', 'workout_gif_man.gif', 'laEWrStC'),
(69, 'http://localhost/uploads/anime_gif_man.gif', 'anime_gif_man.gif', 'laEWrStC'),
(70, 'http://localhost/uploads/meme.jpg', 'meme.jpg', 'laEWrStC'),
(71, 'http://localhost/uploads/meme(1).jpg', 'meme(1).jpg', 'laEWrStC'),
(72, 'http://localhost/uploads/anime.jpg', 'anime.jpg', 'laEWrStC'),
(73, 'http://localhost/uploads/wallpaper.jpg', 'wallpaper.jpg', 'laEWrStC'),
(74, 'http://localhost/uploads/wallpaper(1).jpg', 'wallpaper(1).jpg', 'laEWrStC'),
(75, 'http://localhost/uploads/logo.jpg', 'logo.jpg', 'laEWrStC'),
(76, 'http://localhost/uploads/logo.png', 'logo.png', 'laEWrStC'),
(77, 'http://localhost/uploads/logo(1).png', 'logo(1).png', 'laEWrStC'),
(78, 'http://localhost/uploads/anime_meme.jpg', 'anime_meme.jpg', 'laEWrStC'),
(79, 'http://localhost/uploads/meme.gif', 'meme.gif', 'laEWrStC'),
(80, 'http://localhost/uploads/meme(2).jpg', 'meme(2).jpg', 'laEWrStC'),
(81, 'http://localhost/uploads/women_workout.gif', 'women_workout.gif', 'laEWrStC'),
(82, 'http://localhost/uploads/logo(1).jpg', 'logo(1).jpg', 'laEWrStC'),
(83, 'http://localhost/uploads/car.jpg', 'car.jpg', 'laEWrStC'),
(84, 'http://localhost/uploads/man-sports.jpg', 'man-sports.jpg', 'laEWrStC'),
(85, 'http://localhost/uploads/wallpaper.png', 'wallpaper.png', 'laEWrStC'),
(86, 'http://localhost/uploads/food.jpg', 'food.jpg', 'laEWrStC'),
(87, 'http://localhost/uploads/food(1).jpg', 'food(1).jpg', 'laEWrStC'),
(88, 'http://localhost/uploads/workout-men.gif', 'workout-men.gif', 'laEWrStC'),
(89, 'http://localhost/uploads/house.jpg', 'house.jpg', 'laEWrStC'),
(90, 'http://localhost/uploads/food(2).jpg', 'food(2).jpg', 'laEWrStC'),
(91, 'http://localhost/uploads/drawing-man-sketches.jpg', 'drawing-man-sketches.jpg', 'laEWrStC'),
(92, 'http://localhost/uploads/drawing-man-pose.jpg', 'drawing-man-pose.jpg', 'laEWrStC'),
(93, 'http://localhost/uploads/meme(3).jpg', 'meme(3).jpg', 'laEWrStC'),
(94, 'http://localhost/uploads/house(1).jpg', 'house(1).jpg', 'laEWrStC'),
(95, 'http://localhost/uploads/toys-pose-anime.png', 'toys-pose-anime.png', 'AJsRF4z5'),
(96, 'http://localhost/uploads/logo.jpg', 'logo.jpg', 'AJsRF4z5'),
(97, 'http://localhost/uploads/logo(1).jpg', 'logo(1).jpg', 'AJsRF4z5'),
(98, 'http://localhost/uploads/man-sketches-drawing-posing.jpg', 'man-sketches-drawing-posing.jpg', 'AJsRF4z5'),
(99, 'http://localhost/uploads/anime-meme.jpg', 'anime-meme.jpg', 'AJsRF4z5'),
(100, 'http://localhost/uploads/wallpaper-house.jpg', 'wallpaper-house.jpg', 'AJsRF4z5'),
(101, 'http://localhost/uploads/anime-wallpaper.jpg', 'anime-wallpaper.jpg', 'AJsRF4z5'),
(102, 'http://localhost/uploads/wallpaper.jpg', 'wallpaper.jpg', 'AJsRF4z5'),
(103, 'http://localhost/uploads/drawing-man-pose.jpg', 'drawing-man-pose.jpg', 'AJsRF4z5'),
(104, 'http://localhost/uploads/wallpaper(1).jpg', 'wallpaper(1).jpg', 'AJsRF4z5'),
(105, 'http://localhost/uploads/wallpaper(2).jpg', 'wallpaper(2).jpg', 'AJsRF4z5'),
(106, 'http://localhost/uploads/logo(2).jpg', 'logo(2).jpg', 'AJsRF4z5'),
(107, 'http://localhost/uploads/sport-car.jpg', 'sport-car.jpg', 'AJsRF4z5'),
(108, 'http://localhost/uploads/food.jpg', 'food.jpg', 'AJsRF4z5'),
(109, 'http://localhost/uploads/anime-gif-meme.gif', 'anime-gif-meme.gif', 'AJsRF4z5'),
(110, 'http://localhost/uploads/logo(3).jpg', 'logo(3).jpg', 'AJsRF4z5'),
(111, 'http://localhost/uploads/wallpaper(3).jpg', 'wallpaper(3).jpg', 'AJsRF4z5'),
(112, 'http://localhost/uploads/gif-meme.gif', 'gif-meme.gif', 'AJsRF4z5'),
(113, 'http://localhost/uploads/gif-meme(1).gif', 'gif-meme(1).gif', 'AJsRF4z5'),
(114, 'http://localhost/uploads/house.jpg', 'house.jpg', 'AJsRF4z5'),
(115, 'http://localhost/uploads/anime-wallpaper(1).jpg', 'anime-wallpaper(1).jpg', 'AJsRF4z5'),
(116, 'http://localhost/uploads/logo(4).jpg', 'logo(4).jpg', 'AJsRF4z5'),
(117, 'http://localhost/uploads/logo(5).jpg', 'logo(5).jpg', 'AJsRF4z5'),
(118, 'http://localhost/uploads/sport-car(1).jpg', 'sport-car(1).jpg', 'AJsRF4z5'),
(119, 'http://localhost/uploads/sports.jpg', 'sports.jpg', 'AJsRF4z5'),
(120, 'http://localhost/uploads/food(1).jpg', 'food(1).jpg', 'AJsRF4z5'),
(121, 'http://localhost/uploads/house(1).jpg', 'house(1).jpg', 'AJsRF4z5'),
(122, 'http://localhost/uploads/logo(6).jpg', 'logo(6).jpg', 'AJsRF4z5'),
(123, 'http://localhost/uploads/peper.png', 'peper.png', 'AJsRF4z5'),
(124, 'http://localhost/uploads/anime-wallpaper(2).jpg', 'anime-wallpaper(2).jpg', 'AJsRF4z5'),
(125, 'http://localhost/uploads/car.jpg', 'car.jpg', 'AJsRF4z5'),
(126, 'http://localhost/uploads/anime-wallpaper(3).jpg', 'anime-wallpaper(3).jpg', 'AJsRF4z5'),
(127, 'http://localhost/uploads/anime-meme.gif', 'anime-meme.gif', 'FQLgaZSa'),
(128, 'http://localhost/uploads/anime-meme(1).gif', 'anime-meme(1).gif', 'FQLgaZSa'),
(129, 'http://localhost/uploads/anime-meme.jpg', 'anime-meme.jpg', 'FQLgaZSa'),
(130, 'http://localhost/uploads/meme.jpg', 'meme.jpg', 'FQLgaZSa'),
(131, 'http://localhost/uploads/anime-meme(1).jpg', 'anime-meme(1).jpg', 'FQLgaZSa'),
(132, 'http://localhost/uploads/anime-meme(2).gif', 'anime-meme(2).gif', 'FQLgaZSa'),
(133, 'http://localhost/uploads/anime-meme(3).gif', 'anime-meme(3).gif', 'FQLgaZSa'),
(134, 'http://localhost/uploads/meme-anime.jpg', 'meme-anime.jpg', 'FQLgaZSa'),
(135, 'http://localhost/uploads/meme.gif', 'meme.gif', 'FQLgaZSa'),
(136, 'http://localhost/uploads/anime-meme(4).gif', 'anime-meme(4).gif', 'FQLgaZSa'),
(137, 'http://localhost/uploads/anime-meme(5).gif', 'anime-meme(5).gif', 'FQLgaZSa'),
(138, 'http://localhost/uploads/anime-meme(6).gif', 'anime-meme(6).gif', 'FQLgaZSa'),
(139, 'http://localhost/uploads/anime-meme(7).gif', 'anime-meme(7).gif', 'FQLgaZSa'),
(140, 'http://localhost/uploads/anime-meme(8).gif', 'anime-meme(8).gif', 'FQLgaZSa'),
(141, 'http://localhost/uploads/anime-meme(9).gif', 'anime-meme(9).gif', 'FQLgaZSa'),
(142, 'http://localhost/uploads/anime-meme(10).gif', 'anime-meme(10).gif', 'FQLgaZSa'),
(143, 'http://localhost/uploads/anime-walpaper.jpg', 'anime-walpaper.jpg', 'FQLgaZSa'),
(144, 'http://localhost/uploads/anime-wallpaper.jpg', 'anime-wallpaper.jpg', 'FQLgaZSa'),
(145, 'http://localhost/uploads/anime-wallpaper(1).jpg', 'anime-wallpaper(1).jpg', 'FQLgaZSa'),
(146, 'http://localhost/uploads/anime-wallpaper(2).jpg', 'anime-wallpaper(2).jpg', 'FQLgaZSa'),
(147, 'http://localhost/uploads/anime-wallpaper(3).jpg', 'anime-wallpaper(3).jpg', 'FQLgaZSa'),
(148, 'http://localhost/uploads/anime-wallpaper(4).jpg', 'anime-wallpaper(4).jpg', 'FQLgaZSa'),
(149, 'http://localhost/uploads/anime-wallpaper(5).jpg', 'anime-wallpaper(5).jpg', 'FQLgaZSa'),
(150, 'http://localhost/uploads/anime-wallpaper(6).jpg', 'anime-wallpaper(6).jpg', 'FQLgaZSa'),
(151, 'http://localhost/uploads/anime-wallpaper(7).jpg', 'anime-wallpaper(7).jpg', 'FQLgaZSa'),
(152, 'http://localhost/uploads/workout-women.gif', 'workout-women.gif', 'FQLgaZSa'),
(153, 'http://localhost/uploads/gif-meme.gif', 'gif-meme.gif', 'FQLgaZSa'),
(154, 'http://localhost/uploads/meme-gif.gif', 'meme-gif.gif', 'FQLgaZSa'),
(155, 'http://localhost/uploads/men-meme.gif', 'men-meme.gif', 'FQLgaZSa'),
(156, 'http://localhost/uploads/meme(1).gif', 'meme(1).gif', 'FQLgaZSa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc`
--
ALTER TABLE `acc`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc`
--
ALTER TABLE `acc`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
