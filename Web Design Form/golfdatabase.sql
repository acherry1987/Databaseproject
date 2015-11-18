-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Nov 10, 2015 at 02:47 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Golf`
--

-- --------------------------------------------------------

--
-- Table structure for table `Handicap`
--

CREATE TABLE `Handicap` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `handicap` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Handicap`
--

INSERT INTO `Handicap` (`id`, `email`, `handicap`) VALUES
(2, 'andrewcherry@gmail.com', 6),
(3, 'carlcccherry@gmail.com', 11);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `Email` varchar(128) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `Postal` varchar(10) DEFAULT NULL,
  `GolfSkill` int(11) DEFAULT NULL,
  `Handicap` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`Email`, `Name`, `Postal`, `GolfSkill`, `Handicap`) VALUES
('andrewcherry@gmail.com', 'Andrew Chery', 'N2G2V7', 2, 6),
('carlcccherry@gmail.com', 'Carl Chery', 'N2G2V7', 3, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Handicap`
--
ALTER TABLE `Handicap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_email` (`email`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Handicap`
--
ALTER TABLE `Handicap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Handicap`
--
ALTER TABLE `Handicap`
  ADD CONSTRAINT `fk_email` FOREIGN KEY (`email`) REFERENCES `User` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;
