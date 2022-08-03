-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2022 at 08:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `1and2e2econtents`
--

CREATE TABLE `1and2e2econtents` (
  `id` int(11) NOT NULL,
  `text` varchar(4096) NOT NULL,
  `date` datetime NOT NULL,
  `type` enum('None','Image','Location','Document','Video','Voice') NOT NULL,
  `isReply` tinyint(1) NOT NULL,
  `fileUrl` varchar(130) NOT NULL,
  `senderId` int(11) NOT NULL,
  `fileName` varchar(15) NOT NULL,
  `fileSize` varchar(15) NOT NULL,
  `location` point DEFAULT NULL,
  `isForward` tinyint(1) NOT NULL,
  `targetReplyId` int(11) NOT NULL,
  `forwardDataId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1channelcontents`
--

CREATE TABLE `1channelcontents` (
  `id` int(11) NOT NULL,
  `text` varchar(4096) NOT NULL,
  `date` datetime NOT NULL,
  `type` enum('None','Image','Location','Document','Video','Voice') NOT NULL,
  `isReply` tinyint(1) NOT NULL,
  `fileUrl` varchar(130) NOT NULL,
  `senderId` int(11) NOT NULL,
  `fileName` varchar(15) NOT NULL,
  `fileSize` varchar(15) NOT NULL,
  `location` point DEFAULT NULL,
  `isForward` tinyint(1) NOT NULL,
  `targetReplyId` int(11) NOT NULL,
  `forwardDataId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1groupcontents`
--

CREATE TABLE `1groupcontents` (
  `id` int(11) NOT NULL,
  `text` varchar(4096) NOT NULL,
  `date` datetime NOT NULL,
  `type` enum('None','Image','Location','Document','Video','Voice') NOT NULL,
  `isReply` tinyint(1) NOT NULL,
  `fileUrl` varchar(130) NOT NULL,
  `senderId` int(11) NOT NULL,
  `fileName` varchar(15) NOT NULL,
  `fileSize` varchar(15) NOT NULL,
  `location` point DEFAULT NULL,
  `isForward` tinyint(1) NOT NULL,
  `targetReplyId` int(11) NOT NULL,
  `forwardDataId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `09030207892savedmessages`
--

CREATE TABLE `09030207892savedmessages` (
  `id` int(11) NOT NULL,
  `text` varchar(4096) NOT NULL,
  `date` datetime NOT NULL,
  `type` enum('None','Image','Location','Document','Video','Voice') NOT NULL,
  `isReply` tinyint(1) NOT NULL,
  `fileUrl` varchar(130) NOT NULL,
  `senderId` int(11) NOT NULL,
  `fileName` varchar(15) NOT NULL,
  `fileSize` varchar(15) NOT NULL,
  `location` point DEFAULT NULL,
  `isForward` tinyint(1) NOT NULL,
  `targetReplyId` int(11) NOT NULL,
  `forwardDataId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(11) NOT NULL,
  `img` varchar(130) NOT NULL,
  `name` varchar(70) NOT NULL,
  `inviteLink` varchar(100) NOT NULL,
  `publicLink` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `defaultColor` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `channelsadmins`
--

CREATE TABLE `channelsadmins` (
  `id` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `isOwner` tinyint(1) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `channelsusers`
--

CREATE TABLE `channelsusers` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `deviceIp` varchar(15) NOT NULL,
  `createdAt` datetime NOT NULL,
  `deviceName` varchar(50) NOT NULL,
  `deviceLocation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `forwardcontents`
--

CREATE TABLE `forwardcontents` (
  `id` int(11) NOT NULL,
  `messageId` int(11) DEFAULT NULL,
  `conversationId` longtext NOT NULL,
  `conversationType` enum('Group','Channel','E2E','Personal''Group','Channel','E2E','Personal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `img` varchar(130) NOT NULL,
  `name` varchar(70) NOT NULL,
  `inviteLink` varchar(100) NOT NULL,
  `publicLink` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `defaultColor` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groupsadmins`
--

CREATE TABLE `groupsadmins` (
  `id` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `isOwner` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groupsusers`
--

CREATE TABLE `groupsusers` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listofuserchannels`
--

CREATE TABLE `listofuserchannels` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listofusere2es`
--

CREATE TABLE `listofusere2es` (
  `id` int(11) NOT NULL,
  `toUser` int(11) NOT NULL,
  `fromUser` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `tblChatId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listofusergroups`
--

CREATE TABLE `listofusergroups` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userblocklist`
--

CREATE TABLE `userblocklist` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userTargetId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `img` varchar(130) NOT NULL,
  `bio` varchar(70) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `apiKey` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `authCode` int(6) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `isBlocked` tinyint(1) NOT NULL,
  `defaultColor` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1and2e2econtents`
--
ALTER TABLE `1and2e2econtents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1and2e2econtents_ibfk_1` (`forwardDataId`),
  ADD KEY `1and2e2econtents_ibfk_2` (`senderId`);

--
-- Indexes for table `1channelcontents`
--
ALTER TABLE `1channelcontents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1channelcontents_ibfk_1` (`forwardDataId`),
  ADD KEY `1channelcontents_ibfk_2` (`senderId`);

--
-- Indexes for table `1groupcontents`
--
ALTER TABLE `1groupcontents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1groupcontents_ibfk_1` (`forwardDataId`),
  ADD KEY `1groupcontents_ibfk_2` (`senderId`);

--
-- Indexes for table `09030207892savedmessages`
--
ALTER TABLE `09030207892savedmessages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `09030207892savedmessages_ibfk_1` (`forwardDataId`),
  ADD KEY `09030207892savedmessages_ibfk_2` (`senderId`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channelsadmins`
--
ALTER TABLE `channelsadmins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channelsadmins_ibfk_1` (`adminId`),
  ADD KEY `channelsadmins_ibfk_2` (`channelId`);

--
-- Indexes for table `channelsusers`
--
ALTER TABLE `channelsusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channelsusers_ibfk_1` (`channelId`),
  ADD KEY `channelsusers_ibfk_2` (`userId`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `devices_ibfk_1` (`userId`);

--
-- Indexes for table `forwardcontents`
--
ALTER TABLE `forwardcontents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupsadmins`
--
ALTER TABLE `groupsadmins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupsadmins_ibfk_1` (`adminId`),
  ADD KEY `groupsadmins_ibfk_2` (`groupId`);

--
-- Indexes for table `groupsusers`
--
ALTER TABLE `groupsusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupsusers_ibfk_1` (`groupId`),
  ADD KEY `groupsusers_ibfk_2` (`userId`);

--
-- Indexes for table `listofuserchannels`
--
ALTER TABLE `listofuserchannels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listofuserchannels_ibfk_1` (`channelId`),
  ADD KEY `listofuserchannels_ibfk_2` (`userId`);

--
-- Indexes for table `listofusere2es`
--
ALTER TABLE `listofusere2es`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fromUser` (`fromUser`),
  ADD KEY `toUser` (`toUser`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `listofusergroups`
--
ALTER TABLE `listofusergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listofusergroups_ibfk_1` (`groupId`),
  ADD KEY `listofusergroups_ibfk_2` (`userId`);

--
-- Indexes for table `userblocklist`
--
ALTER TABLE `userblocklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userblocklist_ibfk_1` (`userId`),
  ADD KEY `userblocklist_ibfk_2` (`userTargetId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `1and2e2econtents`
--
ALTER TABLE `1and2e2econtents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1channelcontents`
--
ALTER TABLE `1channelcontents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1groupcontents`
--
ALTER TABLE `1groupcontents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `09030207892savedmessages`
--
ALTER TABLE `09030207892savedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channelsadmins`
--
ALTER TABLE `channelsadmins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channelsusers`
--
ALTER TABLE `channelsusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forwardcontents`
--
ALTER TABLE `forwardcontents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groupsadmins`
--
ALTER TABLE `groupsadmins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groupsusers`
--
ALTER TABLE `groupsusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listofuserchannels`
--
ALTER TABLE `listofuserchannels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listofusere2es`
--
ALTER TABLE `listofusere2es`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listofusergroups`
--
ALTER TABLE `listofusergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userblocklist`
--
ALTER TABLE `userblocklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `1and2e2econtents`
--
ALTER TABLE `1and2e2econtents`
  ADD CONSTRAINT `1and2e2econtents_ibfk_1` FOREIGN KEY (`forwardDataId`) REFERENCES `forwardcontents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `1and2e2econtents_ibfk_2` FOREIGN KEY (`senderId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `1channelcontents`
--
ALTER TABLE `1channelcontents`
  ADD CONSTRAINT `1channelcontents_ibfk_1` FOREIGN KEY (`forwardDataId`) REFERENCES `forwardcontents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `1channelcontents_ibfk_2` FOREIGN KEY (`senderId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `1groupcontents`
--
ALTER TABLE `1groupcontents`
  ADD CONSTRAINT `1groupcontents_ibfk_1` FOREIGN KEY (`forwardDataId`) REFERENCES `forwardcontents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `1groupcontents_ibfk_2` FOREIGN KEY (`senderId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `09030207892savedmessages`
--
ALTER TABLE `09030207892savedmessages`
  ADD CONSTRAINT `09030207892savedmessages_ibfk_1` FOREIGN KEY (`forwardDataId`) REFERENCES `forwardcontents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `09030207892savedmessages_ibfk_2` FOREIGN KEY (`senderId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `channelsadmins`
--
ALTER TABLE `channelsadmins`
  ADD CONSTRAINT `channelsadmins_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `channelsadmins_ibfk_2` FOREIGN KEY (`channelId`) REFERENCES `channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `channelsusers`
--
ALTER TABLE `channelsusers`
  ADD CONSTRAINT `channelsusers_ibfk_1` FOREIGN KEY (`channelId`) REFERENCES `channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `channelsusers_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `devices`
--
ALTER TABLE `devices`
  ADD CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `groupsadmins`
--
ALTER TABLE `groupsadmins`
  ADD CONSTRAINT `groupsadmins_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groupsadmins_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `groupsusers`
--
ALTER TABLE `groupsusers`
  ADD CONSTRAINT `groupsusers_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groupsusers_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listofuserchannels`
--
ALTER TABLE `listofuserchannels`
  ADD CONSTRAINT `listofuserchannels_ibfk_1` FOREIGN KEY (`channelId`) REFERENCES `channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listofuserchannels_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listofusere2es`
--
ALTER TABLE `listofusere2es`
  ADD CONSTRAINT `listofusere2es_ibfk_1` FOREIGN KEY (`fromUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listofusere2es_ibfk_2` FOREIGN KEY (`toUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listofusere2es_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listofusergroups`
--
ALTER TABLE `listofusergroups`
  ADD CONSTRAINT `listofusergroups_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listofusergroups_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userblocklist`
--
ALTER TABLE `userblocklist`
  ADD CONSTRAINT `userblocklist_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userblocklist_ibfk_2` FOREIGN KEY (`userTargetId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
