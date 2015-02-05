-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2014 at 07:12 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE IF NOT EXISTS `polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `starts` date DEFAULT NULL,
  `ends` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `question`, `starts`, `ends`) VALUES
(1, 'What do you think of the new website?', '2014-12-25', '2015-01-25'),
(2, 'Do you like polls?', '2014-12-25', '2014-12-30'),
(3, 'This is a test poll?', '2014-12-27', '2014-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `polls_answers`
--

CREATE TABLE IF NOT EXISTS `polls_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `poll` int(11) NOT NULL,
  `choice` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `polls_answers`
--

INSERT INTO `polls_answers` (`id`, `user`, `poll`, `choice`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 6),
(3, 2, 1, 2),
(4, 2, 2, 6),
(5, 3, 1, 3),
(6, 3, 2, 5),
(7, 4, 1, 1),
(8, 4, 2, 4),
(9, 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `polls_choices`
--

CREATE TABLE IF NOT EXISTS `polls_choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `polls_choices`
--

INSERT INTO `polls_choices` (`id`, `poll`, `name`) VALUES
(1, 1, 'Love it!'),
(2, 1, 'Hate it!'),
(3, 1, 'It''s alright'),
(4, 2, 'I love polls!'),
(5, 2, 'They''re ok when  I''m in the mood'),
(6, 2, 'I cant stand them');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `created`) VALUES
(1, 'ifah', 'ifah@gmail.com', '2014-12-25 11:38:03'),
(2, 'alex', 'alex@phpacademy.org', '2014-12-25 11:38:03');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
