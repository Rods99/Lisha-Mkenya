-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 03:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lisha_mkenya`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', 'admin', 'admin', 'admin'),
(5, 'wkip@gmail.com', '1234', 'Lex', 'moise'),
(7, 'Sammy', '0000', 'Omambia', 'Geof');

-- --------------------------------------------------------

--
-- Table structure for table `collector`
--

CREATE TABLE `collector` (
  `collector_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `collecting_location` varchar(200) NOT NULL,
  `reg_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collector`
--

INSERT INTO `collector` (`collector_id`, `username`, `password`, `fname`, `lname`, `contact`, `collecting_location`, `reg_date`) VALUES
(1, 'mokyseth537', '0000', 'Sammy', 'Omambia', '545454', 'nairobi south', '2020-04-19 09:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `donor_id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `food` varchar(200) NOT NULL,
  `place_lat` varchar(200) NOT NULL,
  `place_lng` varchar(200) NOT NULL,
  `place_location` varchar(200) NOT NULL,
  `collection_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `donation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `donation_status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`donor_id`, `fname`, `lname`, `email`, `contact`, `food`, `place_lat`, `place_lng`, `place_location`, `collection_time`, `donation_date`, `donation_status`) VALUES
(25, 'Christine', 'Mokua', 'ishmaelox@gmail.com', '0725865420', 'Rice 100 bags', '-1.3074645', '36.8724596', 'Lunga Lunga Rd, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-19 15:40:16', 'Pending'),
(16, 'Seth', 'Reuben', 'mokaseth537@gmil.com', '545454', 'Beans 100 kg', '-1.3098585', '36.8156065', 'Madaraka Estate, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-16 07:28:42', 'allocated'),
(26, 'Christine', 'Mokua', 'ishmaelox@gmail.com', '0725865420', '100kg beans', '-1.308418', '36.8606544', 'Lunga Lunga Rd, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-19 15:43:40', 'Pending'),
(12, 'Sammy', 'Omambia', 'Achionyango@gmail.com', '0725865420', 'wheat', '-1.2675001', '36.812022', 'Westlands, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-15 16:05:44', 'Pending'),
(13, 'Rodwell', 'Matei', 'matei@gmail.com', '4515111', '100kg beans', '-1.3098585', '36.8156065', 'Madaraka Estate, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-15 16:14:20', 'Pending'),
(14, 'mary', 'owino', 'Achionyango@gmail.com', '45878', '200 kg', '-1.2675001', '36.812022', 'Westlands, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-15 16:21:15', 'Pending'),
(15, 'terry', 'folly', 'tf@mil.com', '45878', 'Rice 50 kgs', '-1.3114845', '36.7879475', 'Kibera, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-15 16:26:44', 'Pending'),
(24, 'Elvis', 'Ojwangs', 'ishmaelox@gmail.com', '0725865420', 'wheat', '-1.2600455', '36.78308670000001', 'West End Towers, Muthangari Dr, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-19 15:25:12', 'Pending'),
(19, 'Sammy', 'moky', 'Achionyango@gmail.com', '0725865420', '100kg beans', '-1.319715', '36.82288610000001', '', '0000-00-00 00:00:00', '2020-04-17 04:53:48', 'Pending'),
(20, 'seth', 'moky', 'mokaseth537@gmil.com', '0725865420', '100kg beans', '-1.2572267', '36.8032074', '', '0000-00-00 00:00:00', '2020-04-17 05:50:10', 'Pending'),
(21, 'Jonny', 'Onserio', 'Ishmaelox@gmail.com ', '545454', '100kg beans', '-1.299166', '36.811666', 'Mara Rd, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-18 20:35:55', 'allocated'),
(22, 'Timothy', 'Otieno', 'timo@gmail.com', '4541', 'Rice 100 bags', '-1.2155659', '36.8150437', 'Runda, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-17 06:17:16', 'Pending'),
(23, 'yunis', 'Omambia', 'yunis', '0725865420', 'Rice 50 kgs', '-1.2892786', '36.78693109999999', 'Kilimani, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-17 06:25:55', 'Pending'),
(27, 'Sammy', 'Omambia', 'samomambia37@gmail.com', '0725865420', '100kg beans', '-1.3098585', '36.8156065', 'Madaraka Estate, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-19 16:07:37', 'Pending'),
(28, 'George', 'Ruto', 'geolegacy2@gmail.com', '0725865420', '100kg beans', '-1.3412345', '36.7151861', 'Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-19 16:14:16', 'Pending'),
(29, 'George', 'Ruto', 'geolegacy2@gmail.com', '0725865420', '100kg beans', '-1.316866', '36.6903289', 'Karen, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-19 16:19:08', 'Pending'),
(30, 'mary', 'Onserio', 'ishmaelox@gmail.com', '0725865420', 'Rice 50 kgs', '-1.2892786', '36.78693109999999', 'Kilimani, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-19 17:38:36', 'Pending'),
(31, 'mary', 'Onserio', 'ishmaelox@gmail.com', '0725865420', 'Rice 50 kgs', '-1.2892786', '36.78693109999999', 'Kilimani, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-04-19 17:38:45', 'Pending'),
(32, 'Yassir', 'Omar', 'geolegacy2@gmail.com', '0754584554', 'food', '-1.2807389', '36.78168639999999', 'Kileleshwa, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-06-12 08:56:50', 'Pending'),
(33, 'Yassir', 'koriri', 'ishmaelox@gmail.com', '7987988686', 'food', '-1.2807389', '36.78168639999999', 'Kileleshwa, Nairobi, Kenya', '0000-00-00 00:00:00', '2020-06-12 09:02:10', 'Pending'),
(34, 'Mary', 'Mwangi', 'ishmaelox@gmail.com', '7689', 'masks', '-1.2444491', '36.8593676', 'Pipeline Estate Road, Nairobi, Kenya', '2020-06-20 13:29:00', '2020-06-12 12:29:39', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `collector`
--
ALTER TABLE `collector`
  ADD PRIMARY KEY (`collector_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`donor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `collector`
--
ALTER TABLE `collector`
  MODIFY `collector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
