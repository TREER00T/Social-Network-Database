-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2022 at 10:28 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database-social-media`
--

-- --------------------------------------------------------

--
-- Table structure for table `090307892andazi1578cat_e2e_data`
--

CREATE TABLE `090307892andazi1578cat_e2e_data` (
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message_type_id` int(1) DEFAULT NULL,
  `file_url` varchar(130) DEFAULT NULL,
  `text` varchar(4096) DEFAULT NULL,
  `is_reply` bit(1) DEFAULT NULL,
  `target_reply_id` int(11) DEFAULT NULL,
  `forward_data_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `is_forward` bit(1) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_target_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `name` varchar(70) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `invite_link` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `img` varchar(130) DEFAULT NULL,
  `public_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `channel_admin`
--

CREATE TABLE `channel_admin` (
  `channel_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `is_owner` bit(1) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `channel_joins`
--

CREATE TABLE `channel_joins` (
  `user_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `const_message_type`
--

CREATE TABLE `const_message_type` (
  `type` varchar(8) DEFAULT NULL,
  `id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `const_message_type`
--

INSERT INTO `const_message_type` (`type`, `id`) VALUES
('Image', 1),
('Location', 2),
('Document', 3),
('Video', 4),
('Voice', 5);

-- --------------------------------------------------------

--
-- Table structure for table `const_report_type`
--

CREATE TABLE `const_report_type` (
  `id` int(1) NOT NULL,
  `type` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `const_report_type`
--

INSERT INTO `const_report_type` (`id`, `type`) VALUES
(1, 'Spam'),
(2, 'Fake Account'),
(3, 'Violence'),
(4, 'Child Abuse'),
(5, 'Illegal Drugs'),
(6, 'Personal Details'),
(7, 'Pornography'),
(8, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device_name` varchar(50) DEFAULT NULL,
  `device_ip` varchar(15) DEFAULT NULL,
  `device_location` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `forward_data`
--

CREATE TABLE `forward_data` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `type_conversation` enum('group','channel','e2e','personal') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `googleandroid_group_data`
--

CREATE TABLE `googleandroid_group_data` (
  `text` varchar(4096) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `message_type_id` int(1) DEFAULT NULL,
  `file_url` varchar(130) DEFAULT NULL,
  `is_reply` bit(1) DEFAULT NULL,
  `target_reply_id` int(11) DEFAULT NULL,
  `forward_data_id` int(11) DEFAULT NULL,
  `file_name` varchar(12) DEFAULT NULL,
  `file_size` varchar(10) DEFAULT NULL,
  `is_forward` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `name` varchar(70) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `img` varchar(130) DEFAULT NULL,
  `invite_link` varchar(100) DEFAULT NULL,
  `public_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group_admin`
--

CREATE TABLE `group_admin` (
  `group_id` int(11) DEFAULT NULL,
  `is_owner` bit(1) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group_joins`
--

CREATE TABLE `group_joins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mohsenpack_channel_data`
--

CREATE TABLE `mohsenpack_channel_data` (
  `text` varchar(4096) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `file_url` varchar(130) DEFAULT NULL,
  `message_type_id` int(1) DEFAULT NULL,
  `is_reply` bit(1) DEFAULT NULL,
  `target_reply_id` int(11) DEFAULT NULL,
  `forward_data_id` int(11) DEFAULT NULL,
  `file_name` varchar(12) DEFAULT NULL,
  `file_size` varchar(10) DEFAULT NULL,
  `is_forward` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report_channel`
--

CREATE TABLE `report_channel` (
  `user_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `type_id` int(1) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` enum('accept','pending','decline') DEFAULT NULL,
  `accept_at` varchar(16) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report_group`
--

CREATE TABLE `report_group` (
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `type_id` int(1) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` enum('accept','pending','decline') DEFAULT NULL,
  `accept_at` varchar(16) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treer00t_personal_chat_data`
--

CREATE TABLE `treer00t_personal_chat_data` (
  `text` varchar(4096) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `message_type_id` int(1) DEFAULT NULL,
  `file_url` varchar(130) DEFAULT NULL,
  `is_reply` bit(1) DEFAULT NULL,
  `target_reply_id` int(11) DEFAULT NULL,
  `forward_data_id` int(11) DEFAULT NULL,
  `file_name` varchar(12) DEFAULT NULL,
  `file_size` varchar(10) DEFAULT NULL,
  `is_forward` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `phone` varchar(20) DEFAULT NULL,
  `authCode` int(6) DEFAULT NULL,
  `bio` varchar(70) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `img` varchar(130) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `is_blocked` bit(1) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `api_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_channel_chat_list`
--

CREATE TABLE `user_channel_chat_list` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_e2e_chat_list`
--

CREATE TABLE `user_e2e_chat_list` (
  `chat_tbl_id` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_group_chat_list`
--

CREATE TABLE `user_group_chat_list` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `090307892andazi1578cat_e2e_data`
--
ALTER TABLE `090307892andazi1578cat_e2e_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `090307892ANDAZI1578Cat_E2e_Data_Text_Msg` (`text`(768)),
  ADD KEY `forwardDataId4` (`forward_data_id`),
  ADD KEY `messageTypeId2` (`message_type_id`),
  ADD KEY `receiverId3` (`receiver_id`),
  ADD KEY `senderId1` (`sender_id`);

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId5` (`user_id`),
  ADD KEY `userTargetId6` (`user_target_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Channels_Name` (`name`);

--
-- Indexes for table `channel_admin`
--
ALTER TABLE `channel_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminId7` (`admin_id`),
  ADD KEY `channelId8` (`channel_id`);

--
-- Indexes for table `channel_joins`
--
ALTER TABLE `channel_joins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId9` (`user_id`),
  ADD KEY `channelId10` (`channel_id`);

--
-- Indexes for table `const_message_type`
--
ALTER TABLE `const_message_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `const_report_type`
--
ALTER TABLE `const_report_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId11` (`user_id`);

--
-- Indexes for table `forward_data`
--
ALTER TABLE `forward_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `googleandroid_group_data`
--
ALTER TABLE `googleandroid_group_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `GoogleAndroid_Group_Data_Text_Msg` (`text`(768)),
  ADD KEY `messageTypeId12` (`message_type_id`),
  ADD KEY `forwardDataId13` (`forward_data_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Groups_Name` (`name`);

--
-- Indexes for table `group_admin`
--
ALTER TABLE `group_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminId14` (`admin_id`),
  ADD KEY `groupId15` (`group_id`);

--
-- Indexes for table `group_joins`
--
ALTER TABLE `group_joins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId16` (`user_id`),
  ADD KEY `groupId17` (`group_id`);

--
-- Indexes for table `mohsenpack_channel_data`
--
ALTER TABLE `mohsenpack_channel_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MohsenPack_Channel_Data_Text_Msg` (`text`(768)),
  ADD KEY `messageTypeId` (`message_type_id`),
  ADD KEY `forwardDataId` (`forward_data_id`);

--
-- Indexes for table `report_channel`
--
ALTER TABLE `report_channel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId18` (`user_id`),
  ADD KEY `channelId19` (`channel_id`),
  ADD KEY `typeId20` (`type_id`);

--
-- Indexes for table `report_group`
--
ALTER TABLE `report_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId21` (`user_id`),
  ADD KEY `groupId22` (`group_id`),
  ADD KEY `typeId23` (`type_id`);

--
-- Indexes for table `treer00t_personal_chat_data`
--
ALTER TABLE `treer00t_personal_chat_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TREER00T_Personal_Chat_Data_Text_Msg` (`text`(768)),
  ADD KEY `messageTypeId25` (`message_type_id`),
  ADD KEY `forwardDataId26` (`forward_data_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_channel_chat_list`
--
ALTER TABLE `user_channel_chat_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channelId27` (`group_id`),
  ADD KEY `userId28` (`user_id`);

--
-- Indexes for table `user_e2e_chat_list`
--
ALTER TABLE `user_e2e_chat_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId29` (`user_id`);

--
-- Indexes for table `user_group_chat_list`
--
ALTER TABLE `user_group_chat_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId30` (`user_id`),
  ADD KEY `groupId31` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `090307892andazi1578cat_e2e_data`
--
ALTER TABLE `090307892andazi1578cat_e2e_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `block_list`
--
ALTER TABLE `block_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channel_admin`
--
ALTER TABLE `channel_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channel_joins`
--
ALTER TABLE `channel_joins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `const_message_type`
--
ALTER TABLE `const_message_type`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `const_report_type`
--
ALTER TABLE `const_report_type`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forward_data`
--
ALTER TABLE `forward_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `googleandroid_group_data`
--
ALTER TABLE `googleandroid_group_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_admin`
--
ALTER TABLE `group_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_joins`
--
ALTER TABLE `group_joins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mohsenpack_channel_data`
--
ALTER TABLE `mohsenpack_channel_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_channel`
--
ALTER TABLE `report_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_group`
--
ALTER TABLE `report_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treer00t_personal_chat_data`
--
ALTER TABLE `treer00t_personal_chat_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_channel_chat_list`
--
ALTER TABLE `user_channel_chat_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_e2e_chat_list`
--
ALTER TABLE `user_e2e_chat_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_group_chat_list`
--
ALTER TABLE `user_group_chat_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `090307892andazi1578cat_e2e_data`
--
ALTER TABLE `090307892andazi1578cat_e2e_data`
  ADD CONSTRAINT `forwardDataId4` FOREIGN KEY (`forward_data_id`) REFERENCES `forward_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messageTypeId2` FOREIGN KEY (`message_type_id`) REFERENCES `const_message_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `receiverId3` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `senderId1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `block_list`
--
ALTER TABLE `block_list`
  ADD CONSTRAINT `userId5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userTargetId6` FOREIGN KEY (`user_target_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `channel_admin`
--
ALTER TABLE `channel_admin`
  ADD CONSTRAINT `adminId7` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `channelId8` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `channel_joins`
--
ALTER TABLE `channel_joins`
  ADD CONSTRAINT `channelId10` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userId9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `devices`
--
ALTER TABLE `devices`
  ADD CONSTRAINT `userId11` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `googleandroid_group_data`
--
ALTER TABLE `googleandroid_group_data`
  ADD CONSTRAINT `forwardDataId13` FOREIGN KEY (`forward_data_id`) REFERENCES `forward_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messageTypeId12` FOREIGN KEY (`message_type_id`) REFERENCES `const_message_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `group_admin`
--
ALTER TABLE `group_admin`
  ADD CONSTRAINT `adminId14` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groupId15` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `group_joins`
--
ALTER TABLE `group_joins`
  ADD CONSTRAINT `groupId17` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userId16` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mohsenpack_channel_data`
--
ALTER TABLE `mohsenpack_channel_data`
  ADD CONSTRAINT `forwardDataId` FOREIGN KEY (`forward_data_id`) REFERENCES `forward_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messageTypeId` FOREIGN KEY (`message_type_id`) REFERENCES `const_message_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `report_channel`
--
ALTER TABLE `report_channel`
  ADD CONSTRAINT `channelId19` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `typeId20` FOREIGN KEY (`type_id`) REFERENCES `const_report_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `userId18` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report_group`
--
ALTER TABLE `report_group`
  ADD CONSTRAINT `groupId22` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `typeId23` FOREIGN KEY (`type_id`) REFERENCES `const_report_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `userId21` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `treer00t_personal_chat_data`
--
ALTER TABLE `treer00t_personal_chat_data`
  ADD CONSTRAINT `forwardDataId26` FOREIGN KEY (`forward_data_id`) REFERENCES `forward_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messageTypeId25` FOREIGN KEY (`message_type_id`) REFERENCES `const_message_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `user_channel_chat_list`
--
ALTER TABLE `user_channel_chat_list`
  ADD CONSTRAINT `channelId27` FOREIGN KEY (`group_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userId28` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_e2e_chat_list`
--
ALTER TABLE `user_e2e_chat_list`
  ADD CONSTRAINT `userId29` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_group_chat_list`
--
ALTER TABLE `user_group_chat_list`
  ADD CONSTRAINT `groupId31` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userId30` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
