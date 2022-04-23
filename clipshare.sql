-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Apr 14, 2022 at 02:20 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clipshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Film & Animation'),
(2, 'Autos & Vehicles'),
(3, 'Music'),
(4, 'Pets & Animals'),
(5, 'Sports'),
(6, 'Travel & Events'),
(7, 'Gaming'),
(8, 'People & Blogs'),
(9, 'Comedy'),
(10, 'Entertainment'),
(11, 'News & Politics'),
(12, 'Howto & Style'),
(13, 'Education'),
(14, 'Science & Technology'),
(15, 'Nonprofits & Activism');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` text NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `videoId`, `responseTo`, `body`, `datePosted`) VALUES
(43, 'baba_yaga', 165, 0, 'Nice video modulation', '2022-03-12 23:09:32'),
(44, 'kaustubhsl', 166, 0, 'xyz', '2022-04-12 12:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dislikes`
--

INSERT INTO `dislikes` (`id`, `username`, `commentId`, `videoId`) VALUES
(14, 'kaustubhsl', 0, 166);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `commentId`, `videoId`) VALUES
(34, 'baba_yaga', 0, 165),
(36, 'baba_yaga', 43, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) NOT NULL,
  `userFrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `userTo`, `userFrom`) VALUES
(17, 'kadamihir', 'kaustubhsl');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `videoId`, `filePath`, `selected`) VALUES
(58, 165, 'uploads/videos/thumbnails/165-622c48437413d.jpg', 1),
(59, 165, 'uploads/videos/thumbnails/165-622c4843e9228.jpg', 0),
(60, 165, 'uploads/videos/thumbnails/165-622c484475486.jpg', 0),
(61, 166, 'uploads/videos/thumbnails/166-622c4a93981d2.jpg', 1),
(62, 166, 'uploads/videos/thumbnails/166-622c4a93e1fe4.jpg', 0),
(63, 166, 'uploads/videos/thumbnails/166-622c4a94505d7.jpg', 0),
(64, 167, 'uploads/videos/thumbnails/167-622ca23c80847.jpg', 1),
(65, 167, 'uploads/videos/thumbnails/167-622ca23d05036.jpg', 0),
(66, 167, 'uploads/videos/thumbnails/167-622ca23d9f1f1.jpg', 0),
(67, 168, 'uploads/videos/thumbnails/168-622ca27d9661a.jpg', 1),
(68, 168, 'uploads/videos/thumbnails/168-622ca27eb91d4.jpg', 0),
(69, 168, 'uploads/videos/thumbnails/168-622ca2806baa8.jpg', 0),
(70, 169, 'uploads/videos/thumbnails/169-622ca2cba209a.jpg', 1),
(71, 169, 'uploads/videos/thumbnails/169-622ca2cbf2d94.jpg', 0),
(72, 169, 'uploads/videos/thumbnails/169-622ca2cc711f8.jpg', 0),
(73, 170, 'uploads/videos/thumbnails/170-622ca2fb66566.jpg', 1),
(74, 170, 'uploads/videos/thumbnails/170-622ca2fbb6be2.jpg', 0),
(75, 170, 'uploads/videos/thumbnails/170-622ca2fc312f9.jpg', 0),
(76, 171, 'uploads/videos/thumbnails/171-622ca31915211.jpg', 1),
(77, 171, 'uploads/videos/thumbnails/171-622ca31966dba.jpg', 0),
(78, 171, 'uploads/videos/thumbnails/171-622ca319dc122.jpg', 0),
(79, 172, 'uploads/videos/thumbnails/172-622ca34b9d147.jpg', 1),
(80, 172, 'uploads/videos/thumbnails/172-622ca34c04ded.jpg', 0),
(81, 172, 'uploads/videos/thumbnails/172-622ca34ca612a.jpg', 0),
(82, 173, 'uploads/videos/thumbnails/173-622ca388be232.jpg', 1),
(83, 173, 'uploads/videos/thumbnails/173-622ca3891eb06.jpg', 0),
(84, 173, 'uploads/videos/thumbnails/173-622ca389981ca.jpg', 0),
(85, 174, 'uploads/videos/thumbnails/174-622cdb1ae0fcf.jpg', 0),
(86, 174, 'uploads/videos/thumbnails/174-622cdb1b8a29e.jpg', 1),
(87, 174, 'uploads/videos/thumbnails/174-622cdb1c6aa80.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `profilePic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(8, 'Kaustubh', 'Langade', 'kaustubhsl', 'ksl.111213@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2022-03-12 12:41:04', 'assets/images/profilePictures/default.png'),
(9, 'Mihir', 'Kadam', 'kadamihir', 'mihir@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2022-03-12 12:41:48', 'assets/images/profilePictures/default.png'),
(10, 'Sujoy', 'Banerjee', 'enjoy_sujoy', 'sujoy@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2022-03-12 12:42:46', 'assets/images/profilePictures/default.png'),
(11, 'Avdhut', 'Gaikwad', 'avdhutg', 'avdhut@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2022-03-12 12:43:26', 'assets/images/profilePictures/default.png'),
(12, 'John', 'Wick', 'baba_yaga', 'john@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2022-03-12 23:08:56', 'assets/images/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `privacy` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL,
  `duration` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
(165, 'kadamihir', 'Car', ' ', 1, 'uploads/videos/622c483933749.mp4', 2, '2022-03-12 12:44:01', 1, '00:08'),
(166, 'kadamihir', 'Puppy', ' ', 1, 'uploads/videos/622c4a8dbc6b8.mp4', 4, '2022-03-12 12:53:57', 2, '00:05'),
(167, 'kaustubhsl', 'Ping Pong', ' ', 1, 'uploads/videos/622ca2317969a.mp4', 5, '2022-03-12 19:07:53', 0, '00:09'),
(168, 'kaustubhsl', 'Cards', ' ', 1, 'uploads/videos/622ca25631dcd.mp4', 10, '2022-03-12 19:08:30', 0, '00:07'),
(169, 'kaustubhsl', 'Swimming', ' ', 1, 'uploads/videos/622ca2c54ec93.mp4', 9, '2022-03-12 19:10:21', 0, '00:09'),
(170, 'enjoy_sujoy', 'Fish', ' ', 1, 'uploads/videos/622ca2f2dfacc.mp4', 4, '2022-03-12 19:11:06', 0, '00:05'),
(171, 'enjoy_sujoy', 'Guitar', ' ', 1, 'uploads/videos/622ca3128a0b5.mp4', 10, '2022-03-12 19:11:38', 0, '00:10'),
(172, 'avdhutg', 'Duck', ' ', 1, 'uploads/videos/622ca34060449.mp4', 4, '2022-03-12 19:12:24', 1, '00:05'),
(173, 'avdhutg', 'Digital content creator', ' ', 1, 'uploads/videos/622ca382cc584.mp4', 14, '2022-03-12 19:13:30', 0, '00:06'),
(174, 'baba_yaga', 'Ice Hockey', ' ', 1, 'uploads/videos/622cdb09aab68.mp4', 5, '2022-03-12 23:10:25', 2, '00:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
