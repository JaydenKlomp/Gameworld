-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 12:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rocgames`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `device` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `Genres` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `discount` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `cover` text NOT NULL,
  `thumbnail` text NOT NULL,
  `media` text NOT NULL,
  `review` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `categoryId` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `device`, `description`, `Genres`, `price`, `discount`, `quantity`, `cover`, `thumbnail`, `media`, `review`, `date_added`, `categoryId`) VALUES
(1, 'Minecraft', 'Pc, Ps5, Switch and Xbox', 'Minecraft is a sandbox game developed by Mojang Studios. The game was created by Markus \"Notch\" Persson in the Java programming language.', 'Sandbox', '29.99', '0.00', 10, 'minecraftcover.jpeg', 'minecraftthumb.jpg', '1.mp4', '143', '2023-03-13 14:55:22', '1'),
(2, 'Company of Heroes 3', 'Pc', 'Company of Heroes 3 is a real-time strategy game developed by Relic Entertainment and published by Sega for Windows. A sequel to Company of Heroes 2, the game features new mechanics and modes and is set in the Italian and North African theaters of World War II.', 'Action', '14.99', '19.99', 34, 'cohcover.jpg', 'cohthumb.jpg', '2.mp4', '', '2023-03-13 14:56:12', '2'),
(3, 'Rocket League', 'Pc, Ps5, Switch, Xbox', 'Rocket League is a vehicular soccer video game developed and published by Psyonix. The game was first released for PlayStation 4 and Windows in July 2015, with ports for Xbox One and Nintendo Switch being released later on.', 'Sports', '19.99', '0.00', 23, 'rlcover.jpg', 'rlthumb.jpg', '3.mp4', '', '2023-03-13 14:57:26', '3'),
(4, 'Call of Duty MW 2', 'Pc, Ps5, Switch, Xbox', 'Call of Duty: Modern Warfare II is a 2022 first-person shooter game developed by Infinity Ward and published by Activision. It is a sequel to the 2019 reboot, and serves as the nineteenth installment in the overall Call of Duty series.', 'Action', '69.99', '0.00', 7, 'codcover.jpg', 'codthumb.jpg', '4.mp4', '', '2023-03-13 14:59:45', '2'),
(5, 'Overwatch 2', 'Pc, Ps5, Switch, Xbox', 'Overwatch 2 is a 2022 first-person shooter game by Blizzard Entertainment. As a sequel and replacement to the 2016 hero shooter Overwatch, the game intends a shared environment for player-versus-player modes while introducing persistent cooperative modes.', 'Action', '0.00', '25.00', 5, 'overwatchcover.jpg', 'owthumb.jpg', '5.mp4', '', '2023-03-17 19:24:02', '2'),
(6, 'Super Smash Bros', 'Switch', 'Super Smash Bros. is a crossover fighting game series published by Nintendo. The series was created by Masahiro Sakurai, who has directed every game in the series.', 'Action', '30.00', '40.00', 5, 'smashcover.jpg', 'smashthumb.jpg', '6.mp4', '', '2023-03-17 19:28:07', '2'),
(7, 'Sons of the Forest', 'Pc, Ps5, Xbox', 'Sons of the Forest is an upcoming survival video game developed by Endnight Games and published by Newnight. It is the sequel to the 2018 video game The Forest, and was released via early access on February 23, 2023 for Microsoft Windows on Steam.', 'Horror', '30.00', '0.00', 5, 'sonscover.jpg', 'sonsthumb.jpg', '7.mp4', '', '2023-03-17 19:39:41', '4'),
(8, 'The Finals', 'Pc', 'THE FINALS is accepting new contestants! That\'s right, soon the world could be plugging in to watch YOU battle it out in our newest dynamic arena. Sure, you can aim and shoot, but can you wield the very arena as your ultimate weapon? Burn arenas to the ground! Send wrecking balls crashing into your opponents! Don\'t just pull triggers - pull down buildings!', 'Action', '50.00', '0.00', 10, 'finalscover.jpg', 'finalsthumb.jpg', '8.mp4', '', '2023-03-17 19:39:41', '2'),
(9, 'Five Nights At Freddy\'s 1', 'Pc', 'Five Nights at Freddy\'s or also known as FNAF is a game of Horror in which you control Mike Schmidt, a newly hired security guard for the night shift at a fast food restaurant. A boring job, isn\'t it? Only every night, the animatronic dolls come to life and roam the restaurant\'s halls, turned into deranged killers, eager to avenge their pitiful existence.', 'Horror', '15.00', '0.00', 20, 'fnafcover.jpg', 'fnafthumb.jpg', '9.mp4', '239', '2023-03-21 12:38:07', '4'),
(10, 'Five Nights at Freddy\'s 2', 'Pc, Mobile', 'Five Nights at Freddy&#39;s 2 is a survival horror video game developed and published by Scott Cawthon. It is the second installment in the Five Nights at Freddy&#39;s series, and a prequel to the first game.', 'Horror', '2.00', '0.00', 25, 'fnaf2cover.jpg', 'fnaf2thumb.png', 'fnaf2.mp4', '', '2023-03-22 13:34:33', '4'),
(13, 'Hogwards Legacy', 'Pc, Ps5', 'Hogwarts Legacy is a 2023 action role-playing game developed by Avalanche Software and published by Warner Bros. Games under its Portkey Games label. The game is set in the Wizarding World universe, taking place in the late 1800s, a century prior to the events chronicled in the Harry Potter novels.', 'Fantasy', '69.99', '0.00', 100, 'hogcover.jpg', 'hogthumb.jpg', '10.mp4', '3', '2023-03-21 13:51:21', '5'),
(14, 'Forza Horizon 5', 'Pc, Xbox', 'Forza Horizon 5 is a 2021 racing video game developed by Playground Games and published by Xbox Game Studios. It is the fifth Forza Horizon title and twelfth main instalment in the Forza series. The game is set in a fictionalised representation of Mexico.', 'Racing', '50.00', '60.00', 10, 'forzacover.jpg', 'forzathumb.jpg', '11.mp4', '69', '2023-03-22 10:58:15', '6'),
(15, 'Five Nights at Freddy\'s 3', 'Pc, Mobile', 'Five nights at Freddy&#39;s 3 takes place 30 years after Freddy Fazbear&#39;s Pizza was closed. You&#39;ve been hired as the security guard in Fazbear&#39;s Fright: The Horror Attraction, which is based on what happened in the renowned pizza place. You will start working a week before the attraction opens to the public, so try to stay alive for at least 6 nights.', 'Horror', '2.00', '0.00', 25, 'fnaf3cover.jpg', 'fnaf3thumb.jpg', 'fnaf3.mp4', '', '2023-03-22 13:38:24', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
