-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2015 at 09:11 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL,
  `event_content` varchar(150) NOT NULL,
  `event_place` varchar(20) NOT NULL,
  `event_from_date` date NOT NULL,
  `event_to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_content`, `event_place`, `event_from_date`, `event_to_date`) VALUES
(1, 'American Society of Health-System Pharmacists', 'Anaheim, CA', '2015-04-11', '2015-04-18'),
(2, 'American Academy of Ophthalmology', 'Chicago, IL', '2015-04-01', '2015-04-16'),
(3, 'Digestive Disease Week', 'Chicago, IL', '2015-04-30', '2015-05-20'),
(4, 'Leading Age Peak Leadership Summitt', 'Washington, DC', '2015-04-15', '2015-04-30'),
(5, 'Chicago Dental Society', 'Chicago, IL', '2015-04-10', '2015-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL,
  `news_content` varchar(500) NOT NULL,
  `news_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_content`, `news_date`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', '2015-04-21'),
(2, 'Enhancing mechanism of capsaicin-evoked pain sensation', '2015-08-12'),
(3, 'How do you feel? Video of your face may tell all', '2015-04-16'),
(4, 'Catheter-related bloodstream infections examined in home parenteral nutrition patients', '2015-08-12'),
(5, 'NIH-funded scientists identify receptor for asthma-associated virus', '2015-08-12'),
(6, 'Simple antibiotic strategy is sufficient for treating pneumonia', '2015-08-12'),
(7, 'Young stone masons and construction workers at risk of serious occupational lung disease even when they don’t have symptoms', '2015-08-12'),
(8, 'Does increased spending on breast cancer treatment result in improved outcomes?', '2015-08-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`news_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
