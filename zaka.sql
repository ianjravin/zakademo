-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 08:57 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `zaka_approvals`
--

CREATE TABLE `zaka_approvals` (
  `AUTO_ID` int(11) NOT NULL,
  `entrepreneur_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approval_status` int(11) NOT NULL,
  `approved_by` int(11) NOT NULL,
  `approved_on` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zaka_entrepreneurs`
--

CREATE TABLE `zaka_entrepreneurs` (
  `AUTO_ID` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_names` varchar(120) NOT NULL,
  `business_names` varchar(120) NOT NULL,
  `business_location` varchar(120) NOT NULL,
  `sector_id` int(11) NOT NULL,
  `funding_amount` float NOT NULL,
  `funding_reason` varchar(250) NOT NULL,
  `photos` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zaka_entrepreneurs_accounts`
--

CREATE TABLE `zaka_entrepreneurs_accounts` (
  `AUTO_ID` int(11) NOT NULL,
  `entrepreneur_id` int(11) NOT NULL,
  `account_balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zaka_investments`
--

CREATE TABLE `zaka_investments` (
  `AUTO_ID` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `amount_invested` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zaka_investors`
--

CREATE TABLE `zaka_investors` (
  `AUTO_ID` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `investor_names` varchar(120) NOT NULL,
  `investor_email` varchar(120) NOT NULL,
  `investor_contacts` varchar(15) NOT NULL,
  `day_onboarded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zaka_investor_accounts`
--

CREATE TABLE `zaka_investor_accounts` (
  `AUTO_ID` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `account_balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zaka_sectors`
--

CREATE TABLE `zaka_sectors` (
  `sector_id` int(11) NOT NULL,
  `sector_name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zaka_users`
--

CREATE TABLE `zaka_users` (
  `AUTO_ID` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zaka_user_types`
--

CREATE TABLE `zaka_user_types` (
  `user_type_id` int(11) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zaka_approvals`
--
ALTER TABLE `zaka_approvals`
  ADD PRIMARY KEY (`AUTO_ID`),
  ADD KEY `entrepreneur_id` (`entrepreneur_id`),
  ADD KEY `approved_by` (`approved_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `zaka_entrepreneurs`
--
ALTER TABLE `zaka_entrepreneurs`
  ADD PRIMARY KEY (`AUTO_ID`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `sector_id` (`sector_id`);

--
-- Indexes for table `zaka_entrepreneurs_accounts`
--
ALTER TABLE `zaka_entrepreneurs_accounts`
  ADD PRIMARY KEY (`AUTO_ID`),
  ADD KEY `entrepreneur_id` (`entrepreneur_id`);

--
-- Indexes for table `zaka_investments`
--
ALTER TABLE `zaka_investments`
  ADD PRIMARY KEY (`AUTO_ID`),
  ADD KEY `investor_id` (`investor_id`),
  ADD KEY `business_id` (`business_id`);

--
-- Indexes for table `zaka_investors`
--
ALTER TABLE `zaka_investors`
  ADD PRIMARY KEY (`AUTO_ID`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `zaka_investor_accounts`
--
ALTER TABLE `zaka_investor_accounts`
  ADD PRIMARY KEY (`AUTO_ID`),
  ADD KEY `investor_id` (`investor_id`);

--
-- Indexes for table `zaka_sectors`
--
ALTER TABLE `zaka_sectors`
  ADD PRIMARY KEY (`sector_id`);

--
-- Indexes for table `zaka_users`
--
ALTER TABLE `zaka_users`
  ADD PRIMARY KEY (`AUTO_ID`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `zaka_user_types`
--
ALTER TABLE `zaka_user_types`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zaka_approvals`
--
ALTER TABLE `zaka_approvals`
  MODIFY `AUTO_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zaka_entrepreneurs`
--
ALTER TABLE `zaka_entrepreneurs`
  MODIFY `AUTO_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zaka_entrepreneurs_accounts`
--
ALTER TABLE `zaka_entrepreneurs_accounts`
  MODIFY `AUTO_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zaka_investments`
--
ALTER TABLE `zaka_investments`
  MODIFY `AUTO_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zaka_investors`
--
ALTER TABLE `zaka_investors`
  MODIFY `AUTO_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zaka_investor_accounts`
--
ALTER TABLE `zaka_investor_accounts`
  MODIFY `AUTO_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zaka_sectors`
--
ALTER TABLE `zaka_sectors`
  MODIFY `sector_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zaka_users`
--
ALTER TABLE `zaka_users`
  MODIFY `AUTO_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zaka_user_types`
--
ALTER TABLE `zaka_user_types`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `zaka_approvals`
--
ALTER TABLE `zaka_approvals`
  ADD CONSTRAINT `zaka_approvals_ibfk_1` FOREIGN KEY (`entrepreneur_id`) REFERENCES `zaka_users` (`AUTO_ID`),
  ADD CONSTRAINT `zaka_approvals_ibfk_2` FOREIGN KEY (`approved_by`) REFERENCES `zaka_users` (`AUTO_ID`),
  ADD CONSTRAINT `zaka_approvals_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `zaka_users` (`AUTO_ID`);

--
-- Constraints for table `zaka_entrepreneurs`
--
ALTER TABLE `zaka_entrepreneurs`
  ADD CONSTRAINT `zaka_entrepreneurs_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `zaka_users` (`AUTO_ID`),
  ADD CONSTRAINT `zaka_entrepreneurs_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `zaka_users` (`AUTO_ID`),
  ADD CONSTRAINT `zaka_entrepreneurs_ibfk_3` FOREIGN KEY (`sector_id`) REFERENCES `zaka_sectors` (`sector_id`);

--
-- Constraints for table `zaka_entrepreneurs_accounts`
--
ALTER TABLE `zaka_entrepreneurs_accounts`
  ADD CONSTRAINT `zaka_entrepreneurs_accounts_ibfk_1` FOREIGN KEY (`entrepreneur_id`) REFERENCES `zaka_users` (`AUTO_ID`);

--
-- Constraints for table `zaka_investments`
--
ALTER TABLE `zaka_investments`
  ADD CONSTRAINT `zaka_investments_ibfk_1` FOREIGN KEY (`investor_id`) REFERENCES `zaka_users` (`AUTO_ID`),
  ADD CONSTRAINT `zaka_investments_ibfk_2` FOREIGN KEY (`business_id`) REFERENCES `zaka_users` (`AUTO_ID`),
  ADD CONSTRAINT `zaka_investments_ibfk_3` FOREIGN KEY (`business_id`) REFERENCES `zaka_entrepreneurs` (`AUTO_ID`);

--
-- Constraints for table `zaka_investors`
--
ALTER TABLE `zaka_investors`
  ADD CONSTRAINT `zaka_investors_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `zaka_users` (`AUTO_ID`);

--
-- Constraints for table `zaka_investor_accounts`
--
ALTER TABLE `zaka_investor_accounts`
  ADD CONSTRAINT `zaka_investor_accounts_ibfk_1` FOREIGN KEY (`investor_id`) REFERENCES `zaka_users` (`AUTO_ID`);

--
-- Constraints for table `zaka_users`
--
ALTER TABLE `zaka_users`
  ADD CONSTRAINT `zaka_users_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `zaka_user_types` (`user_type_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
