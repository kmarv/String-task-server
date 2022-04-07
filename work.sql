-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 31, 2018 at 06:06 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `work`
--

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `clientid` varchar(11) NOT NULL,
  `function` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blacklist`
--

INSERT INTO `blacklist` (`clientid`, `function`, `job`) VALUES
('0', 'reverse', 'gxdvcetsdvegccccccccccccyjhdgvcuhujhuheugyegfyggggggggggggggggggggeuiagcuhqebcvcweg'),
('', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `clientid` int(100) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `jobid` int(100) NOT NULL,
  `duration` int(100) NOT NULL,
  `task` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`clientid`, `time`, `date`, `jobid`, `duration`, `task`) VALUES
(1, '10:10:13', '2018-07-26', 1001, 19, 'reverse'),
(2, '10:11:26', '2018-07-26', 1002, 17, 'double'),
(3, '10:12:22', '2018-07-26', 1003, 20, 'replace');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 4`
--

CREATE TABLE `TABLE 4` (
  `COL 1` varchar(55) DEFAULT NULL,
  `COL 2` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE 4`
--

INSERT INTO `TABLE 4` (`COL 1`, `COL 2`) VALUES
('CREATE TABLE IF NOT EXISTS `members` (', NULL),
('', NULL),
('  `id` int(11) NOT NULL AUTO_INCREMENT', ''),
('', NULL),
('  `name` varchar(256) NOT NULL', ''),
('', NULL),
('  `nick_name` varchar(256) NOT NULL', ''),
('', NULL),
('  `email` varchar(256) NOT NULL', ''),
('', NULL),
('  `password` varchar(256) NOT NULL', ''),
('', NULL),
('  PRIMARY KEY (`id`)', NULL),
('', NULL),
(') ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `clientid` varchar(200) NOT NULL,
  `jobid` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `function` varchar(255) NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`clientid`, `jobid`, `result`, `function`, `time`) VALUES
('0', 'j01', 'isaacisaac', 'double', '00:00:00.001327'),
('0', 'j02', 'allik', 'reverse', '00:00:00.001632'),
('', '', '', '', '00:00:00.000000'),
('0', 'j01', 'isaacisaac', 'double', '00:00:00.001327'),
('0', 'j02', 'allik', 'reverse', '00:00:00.001632'),
('0', 'j04', ' 2s1Bj102t1Ck211qI8I1mE4', 'encrypt', '00:00:00.000418'),
('0', 'j01', 'lubwamalubwama', 'double', '00:00:00.000419'),
('0', 'j02', 'amawbul', 'reverse', '00:00:00.000739'),
('0', 'j04', ' 1iA01nF5C1jB1', 'encrypt', '00:00:00.001025'),
('0', 'j05', 'jock', 'decrypt', '00:00:00.001502'),
('0', 'j03', 'ok', 'delete', '00:00:00.001820'),
('0', 'j02', 'casi', 'reverse', '00:00:00.002450'),
('0', 'j02', 'casi', 'reverse', '00:00:00.002718'),
('0', 'j02', 'casi', 'reverse', '00:00:00.002915'),
('0', 'j02', 'casi', 'reverse', '00:00:00.000593'),
('0', 'j02', 'caasi', 'reverse', '00:00:00.000858'),
('0', 'j02', 'caasi', 'reverse', '00:00:00.001088'),
('0', 'j02', 'casi', 'reverse\n', '00:00:00.000000'),
('0', 'j01', 'isacisac', 'double\n', '00:00:00.000000'),
('0', 'j04', ' I1r1Ai09AAC', 'encrypt\n', '00:00:00.000000'),
('0', 'j03', 'ubwma', 'delete\n', '00:00:00.000000'),
('0', 'j02', 'caasi', 'reverse\n', '00:00:00.000000'),
('0', 'j01', 'lubwamalubwama', 'double\n', '00:00:00.000000'),
('0', 'j02', 'caasi', 'reverse\n', '00:00:00.000000'),
('0', 'j01', 'lubwamalubwama', 'double\n', '00:00:00.000000'),
('0', 'j03', 'ok', 'delete\n', '00:00:00.000000'),
('0', 'j02', 'caasi', 'reverse\n', '00:00:00.000000'),
('0', 'j02', 'caasi', 'reverse\n', '00:00:00.000000'),
('0', 'j02', 'caasi', 'reverse\n', '00:00:00.000000'),
('0', 'j02', 'caasi', 'reverse\n', '00:00:00.000000'),
('0', 'j02', 'caasi', 'reverse\n', '00:00:00.000000'),
('0', 'j01', 'lubwamalubwama', 'double\n', '00:00:00.000000'),
('0', 'j02', 'caasi', 'reverse\n', '00:00:00.000000'),
('0', 'j01', 'lubwamalubwama', 'double\n', '00:00:00.000000'),
('0', 'j02', 'kcoj', 'reverse\n', '00:00:00.000000'),
('0', 'j01', 'jj', 'double\n', '00:00:00.000000'),
('0', 'j01', 'roprop', 'double\n', '00:00:00.000000'),
('', '', '', '', '00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('lubwama', 'lubwama1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`clientid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `clientid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
