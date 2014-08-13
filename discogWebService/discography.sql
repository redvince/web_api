-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2014 at 07:51 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `discography`
--
CREATE DATABASE IF NOT EXISTS `discography` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `discography`;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `albumName` varchar(40) NOT NULL,
  `albumArtist` varchar(40) NOT NULL,
  `albumThumbnail` varchar(40) NOT NULL,
  `year` year(4) NOT NULL,
  `albumLength` varchar(9) NOT NULL,
  `trackCount` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`albumName`, `albumArtist`, `albumThumbnail`, `year`, `albumLength`, `trackCount`) VALUES
('Everything All the Time', 'Band of Horses', 'images/everythingallthetime.jpg', 2006, '36:06', 10),
('Cease to Begin', 'Band of Horses', 'images/ceasetobegin.jpg', 2007, '34:45', 10),
('Infinite Arms', 'Band of Horses', 'images/infinitearms.jpg', 2010, '45:17', 12),
('Mirage Rock', 'Band of Horses', 'images/miragerock.jpg', 2012, '39:32', 11),
('Antidotes', 'Foals', 'images/antidotes.jpg', 2008, '44:04', 11),
('Total Life Forever', 'Foals', 'images/totallifeforever.jpg', 2010, '50:21', 11),
('Holy Fire', 'Foals', 'images/holyfire.jpg', 2013, '49:50', 11),
('Bleach', 'Nirvana', 'images/bleach.jpg', 1989, '42:37', 13),
('Nevermind', 'Nirvana', 'images/nevermind.jpg', 1991, '54:17', 12),
('In Utero', 'Nirvana', 'images/inutero.jpg', 1993, '48:49', 12),
('Give Up', 'The Postal Service', 'images/giveup.jpg', 2003, '44:59', 10),
('Oh, Iverted World', 'The Shins', 'images/ohinvertedworld.jpg', 2001, '33:31', 11),
('Chutes Too Narrow', 'The Shins', 'images/chutestoonarrow.jpg', 2003, '33:50', 10),
('Wincing The Night Away', 'The Shins', 'images/wincingthenightaway.jpg', 2007, '41:47', 11),
('Port of Morrow', 'The Shins', 'images/portofmorrow.jpg', 2012, '40:13', 10);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
  `artistName` varchar(40) NOT NULL,
  `artistThumbnail` varchar(40) NOT NULL,
  `bio` varchar(140) NOT NULL,
  `genres` varchar(140) NOT NULL,
  `albumCount` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artistName`, `artistThumbnail`, `bio`, `genres`, `albumCount`) VALUES
('Band of Horses', 'images/bandofhorses.jpg', 'American rock band formed in 2004', 'a:3:{i:0;s:10:"Indie rock";i:1;s:13:"Southern rock";i:2;s:19:"Alternative country";}', 4),
('Foals', 'images/foals.jpg', 'English Indie rock band from Oxford, England', 'a:3:{i:0;s:10:"Indie rock";i:1;s:16:"Alternative rock";i:2;s:10:"Dance-punk";}', 3),
('Nirvana', 'images/nirvana.jpg', '''90''s Grunge band from Seattle. They were deadly so they were.', 'a:3:{i:0;s:6:"Grunge";i:1;s:4:"Rock";i:2;s:3:"Alt";}', 3),
('The Postal Service', 'images/thepostalservice.jpg', 'American rock musical supergroup.', 'a:3:{i:0;s:12:"Indietronica";i:1;s:9:"Indie pop";i:2;s:10:"Electropop";}', 1),
('The Shins', 'images/theshins.jpg', 'American Indie rock band from Albuquerque, New Mexico.', 'a:4:{i:0;s:10:"Indie rock";i:1;s:16:"Alternative rock";i:2;s:9:"Folk rock";i:3;s:9:"Indie pop";}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE IF NOT EXISTS `tracks` (
  `trackNumber` int(2) NOT NULL,
  `trackName` varchar(60) NOT NULL,
  `trackLength` varchar(9) NOT NULL,
  `trackUrl` varchar(12) NOT NULL,
  `trackAlbumName` varchar(40) NOT NULL,
  `artistName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`trackNumber`, `trackName`, `trackLength`, `trackUrl`, `trackAlbumName`, `artistName`) VALUES
(1, 'The First Song', '3:43', 'dl1tIH5ByDg', 'Everything All the Time', 'Band of Horses'),
(2, 'Wicked Gil', '2:57', 'dl1tIH5ByDg', 'Everything All the Time', 'Band of Horses'),
(3, 'Our Swords', '2:26', 'dl1tIH5ByDg', 'Everything All the Time', 'Band of Horses'),
(4, 'The Funeral', '5:32', 'dl1tIH5ByDg', 'Everything All the Time', 'Band of Horses'),
(5, 'Part One', '2:36', 'dl1tIH5ByDg', 'Everything All the Time', 'Band of Horses'),
(6, 'The Great Salt Lake', '4:45', 'dl1tIH5ByDg', 'Everything All the Time', 'Band of Horses'),
(7, 'Weed Party', '3:09', 'dl1tIH5ByDg', 'Everything All the Time', 'Band of Horses'),
(8, 'I Go to the Barn Because I Like The', '3:06', 'dl1tIH5ByDg', 'Everything All the Time', 'Band of Horses'),
(9, 'Monsters', '5:21', 'dl1tIH5ByDg', 'Everything All the Time', 'Band of Horses'),
(10, 'St. Augustine', '2:41', 'dl1tIH5ByDg', 'Everything All the Time', 'Band of Horses'),
(1, 'Is There a Ghost', '2:59', 'JK716RqoUms', 'Cease to Begin', 'Band of Horses'),
(2, 'Ode to LRC', '4:16', 'JK716RqoUms', 'Cease to Begin', 'Band of Horses'),
(3, 'No One''s Gonna Love You', '3:37', 'JK716RqoUms', 'Cease to Begin', 'Band of Horses'),
(4, 'Detlef Schrempf', '4:28', 'JK716RqoUms', 'Cease to Begin', 'Band of Horses'),
(5, 'The General Specific', '3:07', 'JK716RqoUms', 'Cease to Begin', 'Band of Horses'),
(6, 'Lamb on the Lam', '0:50', 'JK716RqoUms', 'Cease to Begin', 'Band of Horses'),
(7, 'Islands on the Coast', '3:34', 'JK716RqoUms', 'Cease to Begin', 'Band of Horses'),
(8, 'Marry Song', '3:23', 'JK716RqoUms', 'Cease to Begin', 'Band of Horses'),
(9, 'Cigarettes, Wedding Bands', '4:35', 'JK716RqoUms', 'Cease to Begin', 'Band of Horses'),
(10, 'Window Blues', '4:01', 'JK716RqoUms', 'Cease to Begin', 'Band of Horses'),
(1, 'Factory', '4:35', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(2, 'Compliments', '3:28', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(3, 'Laredo', '3:12', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(4, 'Blue Beard', '3:22', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(5, 'On My Way Back Home', '3:31', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(6, 'Infinite Arms', '4:08', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(7, 'Dilly', '3:31', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(8, 'Evening Kitchen', '3:57', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(9, 'Older', '3:28', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(10, 'For Annabelle', '3:06', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(11, 'NW Apt.', '3:01', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(12, 'Neighbor', '5:58', 'LX5AC07SyGI', 'Infinite Arms', 'Band of Horses'),
(1, 'Knock Knock', '3:58', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(2, 'How to Live', '3:27', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(3, 'Slow Cruel Hands of Time', '3:50', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(4, 'A Little Biblical', '2:54', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(5, 'Shut-In Tourist', '4:09', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(6, 'Dumpster World', '3:43', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(7, 'Electric Music', '3:32', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(8, 'Everything''s Gonna Be Undone', '3:19', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(9, 'Feud', '2:56', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(10, 'Long Vows', '3:43', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(11, 'Heartbreak on the 101', '4:01', '7f6tLtaLZ6w', 'Mirage Rock', 'Band of Horses'),
(1, 'The French Open', '3:46', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(2, 'Cassius', '3:50', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(3, 'Red Socks Pugie', '5:09', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(4, 'Olympic Airways', '4:19', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(5, 'Electric Bloom', '4:55', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(6, 'Balloons', '3:01', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(7, 'Heavy Water', '4:32', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(8, 'Two Steps, Twice', '4:39', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(9, 'Big Big Love', '5:47', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(10, 'Like Swimming', '1:58', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(11, 'Tron', '4:48', 'bH7gbmvxxn4', 'Antidotes', 'Foals'),
(1, 'Blue Blood', '5:17', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(2, 'Miami', '3:42', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(3, 'Total Life Forever', '3:18', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(4, 'Black Gold', '6:26', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(5, 'Spanish Sahara', '6:46', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(6, 'This Orient', '4:06', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(7, 'Fugue', '0:49', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(8, 'After Glow', '6:09', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(9, 'Alabaster', '4:00', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(10, '2 Trees', '5:11', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(11, 'What Remains', '4:37', 'rw6oWkCojpw', 'Total Life Forever', 'Foals'),
(1, 'Prelude', '4:07', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(2, 'Inhaler', '4:54', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(3, 'My Number', '4:03', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(4, 'Bad Habit', '4:40', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(5, 'Everytime', '4:04', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(6, 'Late Night', '5:27', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(7, 'Out of the Woods', '3:25', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(8, 'Milk & Black Spiders', '5:17', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(9, 'Providence', '4:08', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(10, 'Stepson', '4:49', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(11, 'Moon', '4:53', 'LDUX4lQTses', 'Holy Fire', 'Foals'),
(1, 'Blew', '2:55', '97KwmvleRok', 'Bleach', 'Nirvana'),
(2, 'Floyd the Barber', '2:18', '97KwmvleRok', 'Bleach', 'Nirvana'),
(3, 'About a Girl', '2:48', '97KwmvleRok', 'Bleach', 'Nirvana'),
(4, 'School', '2:42', '97KwmvleRok', 'Bleach', 'Nirvana'),
(5, 'Love Buzz', '3:35', '97KwmvleRok', 'Bleach', 'Nirvana'),
(6, 'Paper Cuts', '4:06', '97KwmvleRok', 'Bleach', 'Nirvana'),
(7, 'Negative Creep', '2:56', '97KwmvleRok', 'Bleach', 'Nirvana'),
(8, 'Scoff', '4:10', '97KwmvleRok', 'Bleach', 'Nirvana'),
(9, 'Swap Meet', '3:03', '97KwmvleRok', 'Bleach', 'Nirvana'),
(10, 'Mr. Moustache', '3:24', '97KwmvleRok', 'Bleach', 'Nirvana'),
(11, 'Sifting', '5:22', '97KwmvleRok', 'Bleach', 'Nirvana'),
(12, 'Big Cheese', '3:42', '97KwmvleRok', 'Bleach', 'Nirvana'),
(13, 'Downer', '1:43', '97KwmvleRok', 'Bleach', 'Nirvana'),
(1, 'Smells Like Teen Spirit', '5:01', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(2, 'In Bloom', '4:14', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(3, 'Come as You Are', '3:39', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(4, 'Breed', '3:03', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(5, 'Lithium', '4:17', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(6, 'Polly', '2:57', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(7, 'Territorial Pissings', '2:22', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(8, 'Drain You', '3:43', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(9, 'Lounge Act', '2:36', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(10, 'Stay Away', '3:32', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(11, 'On a Plain', '3:16', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(12, 'Something in the Way', '3:51', 'hTWKbfoikeg', 'Nevermind', 'Nirvana'),
(1, 'Serve the Servants', '3:36', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(2, 'Scentless Apprentice', '3:48', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(3, 'Heart-Shaped Box', '4:41', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(4, 'Rape Me', '2:50', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(5, 'Frances Farmer Will Have Her Revenge on Seattle', '4:09', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(6, 'Dumb', '2:32', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(7, 'Very Ape', '1:56', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(8, 'Milk It', '3:55', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(9, 'Pennyroyal Tea', '3:37', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(10, 'Radio Friendly Unit Shifter', '4:51', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(11, 'tourette''s', '1:35', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(12, 'All Apologies', '3:51', 'ogsEw7wuimk', 'In Utero', 'Nirvana'),
(1, 'The District Sleeps Alone Tonight', '4:44', 'xUIBnmdJJ50', 'Give Up', 'The Postal Service'),
(2, 'Such Great Heights', '4:26', 'xUIBnmdJJ50', 'Give Up', 'The Postal Service'),
(3, 'Sleeping In', '4:21', 'xUIBnmdJJ50', 'Give Up', 'The Postal Service'),
(4, 'Nothing Better', '3:46', 'xUIBnmdJJ50', 'Give Up', 'The Postal Service'),
(5, 'Recycled Air', '4:29', 'xUIBnmdJJ50', 'Give Up', 'The Postal Service'),
(6, 'Clark Gable', '4:54', 'xUIBnmdJJ50', 'Give Up', 'The Postal Service'),
(7, 'We Will Become Silhouettes', '5:00', 'xUIBnmdJJ50', 'Give Up', 'The Postal Service'),
(8, 'This Place Is a Prison', '3:54', 'xUIBnmdJJ50', 'Give Up', 'The Postal Service'),
(9, 'Brand New Colony', '4:12', 'xUIBnmdJJ50', 'Give Up', 'The Postal Service'),
(10, 'Natural Anthem', '5:07', 'xUIBnmdJJ50', 'Give Up', 'The Postal Service'),
(1, 'Caring Is Creepy', '3:19', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(2, 'One by One All Day', '4:08', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(3, 'Weird Divide', '1:57', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(4, 'Know Your Onion', '2:28', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(5, 'Girl Inform Me', '2:19', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(6, 'New Slang', '3:49', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(7, 'The Celibate Life', '1:49', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(8, 'Girl on the Wing', '2:48', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(9, 'Your Algebra', '2:22', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(10, 'Pressed in a Book', '2:54', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(11, 'The Past and Pending', '5:21', 'PUMkxH03V5c', 'Oh, Iverted World', 'The Shins'),
(1, 'Kissing the Lipless', '3:19', 'FMzKgB1cf24', 'Chutes Too Narrow', 'The Shins'),
(2, 'Mine''s Not a High Horse', '3:20', 'FMzKgB1cf24', 'Chutes Too Narrow', 'The Shins'),
(3, 'So Says I', '2:48', 'FMzKgB1cf24', 'Chutes Too Narrow', 'The Shins'),
(4, 'Young Pilgrims', '2:47', 'FMzKgB1cf24', 'Chutes Too Narrow', 'The Shins'),
(5, 'Saint Simon', '4:25', 'FMzKgB1cf24', 'Chutes Too Narrow', 'The Shins'),
(6, 'Fighting in a Sack', '2:26', 'FMzKgB1cf24', 'Chutes Too Narrow', 'The Shins'),
(7, 'Pink Bullets', '3:53', 'FMzKgB1cf24', 'Chutes Too Narrow', 'The Shins'),
(8, 'Turn a Square', '3:11', 'FMzKgB1cf24', 'Chutes Too Narrow', 'The Shins'),
(9, 'Gone for Good', '3:13', 'FMzKgB1cf24', 'Chutes Too Narrow', 'The Shins'),
(10, 'Those to Come', '4:24', 'FMzKgB1cf24', 'Chutes Too Narrow', 'The Shins'),
(1, 'Sleeping Lessons', '3:58', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(2, 'Australia', '3:56', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(3, 'Pam Berry', '0:56', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(4, 'Phantom Limb', '4:47', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(5, 'Sea Legs', '5:22', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(6, 'Red Rabbits', '4:29', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(7, 'Turn on Me', '3:41', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(8, 'Black Wave', '3:19', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(9, 'Spilt Needles', '3:45', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(10, 'Girl Sailor', '3:44', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(11, 'A Comet Appears', '3:49', '42HqbyTc6uA', 'Wincing The Night Away', 'The Shins'),
(1, 'The Rifle''s Spiral', '3:30', 'jyqWjl7GkCE', 'Port of Morrow', 'The Shins'),
(2, 'Simple Song', '4:15', 'jyqWjl7GkCE', 'Port of Morrow', 'The Shins'),
(3, 'It''s Only Life', '4:02', 'jyqWjl7GkCE', 'Port of Morrow', 'The Shins'),
(4, 'Bait and Switch', '3:23', 'jyqWjl7GkCE', 'Port of Morrow', 'The Shins'),
(5, 'September', '3:33', 'jyqWjl7GkCE', 'Port of Morrow', 'The Shins'),
(6, 'No Way Down', '3:16', 'jyqWjl7GkCE', 'Port of Morrow', 'The Shins'),
(7, 'For a Fool', '3:57', 'jyqWjl7GkCE', 'Port of Morrow', 'The Shins'),
(8, 'Fall of ''82', '3:48', 'jyqWjl7GkCE', 'Port of Morrow', 'The Shins'),
(9, '40 Mark Strasse', '4:39', 'jyqWjl7GkCE', 'Port of Morrow', 'The Shins'),
(10, 'Port of Morrow', '5:50', 'jyqWjl7GkCE', 'Port of Morrow', 'The Shins');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
