-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 12:35 PM
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
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message_type_id` smallint(6) DEFAULT NULL,
  `file_url` varchar(130) DEFAULT NULL,
  `text` varchar(4096) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `is_reply` varchar(5) DEFAULT NULL,
  `target_reply_id` int(11) DEFAULT NULL,
  `forward_data_id` int(11) DEFAULT NULL,
  `file_name` varchar(12) DEFAULT NULL,
  `file_size` varchar(10) DEFAULT NULL,
  `is_forward` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `090307892andazi1578cat_reply`
--

CREATE TABLE `090307892andazi1578cat_reply` (
  `message_target_id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `user_id` int(11) NOT NULL,
  `user_target_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `name` varchar(70) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `invite_link` varchar(100) NOT NULL,
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
  `is_owner` varchar(5) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `channel_joins`
--

CREATE TABLE `channel_joins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `channel_reply`
--

CREATE TABLE `channel_reply` (
  `message_target_id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `const_message_type`
--

CREATE TABLE `const_message_type` (
  `type` varchar(8) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='''image'',''location'',''document'',''video'',''voice''';

-- --------------------------------------------------------

--
-- Table structure for table `const_report_type`
--

CREATE TABLE `const_report_type` (
  `id` int(11) NOT NULL,
  `type` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='''spam'',''fake account'',''violence'',''child abuse'',''illegal drugs'',''personal details'',''pornography'',''other''';

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
  `message_type_id` smallint(6) DEFAULT NULL,
  `file_url` varchar(130) DEFAULT NULL,
  `is_reply` varchar(5) DEFAULT NULL,
  `target_reply_id` int(11) DEFAULT NULL,
  `forward_data_id` int(11) DEFAULT NULL,
  `file_name` varchar(12) DEFAULT NULL,
  `file_size` varchar(10) DEFAULT NULL,
  `is_forward` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `googleandroid_group_reply`
--

CREATE TABLE `googleandroid_group_reply` (
  `message_target_id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `name` varchar(70) NOT NULL,
  `description` varchar(255) NOT NULL,
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
  `is_owner` varchar(5) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
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
  `message_type_id` smallint(6) DEFAULT NULL,
  `is_reply` varchar(5) DEFAULT NULL,
  `target_reply_id` int(11) DEFAULT NULL,
  `forward_data_id` int(11) DEFAULT NULL,
  `file_name` varchar(12) DEFAULT NULL,
  `file_size` varchar(10) DEFAULT NULL,
  `is_forward` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report_channel`
--

CREATE TABLE `report_channel` (
  `user_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `type_id` smallint(6) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` enum('accept','pending','decline') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report_group`
--

CREATE TABLE `report_group` (
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `type_id` smallint(6) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `status` enum('accept','pending','decline') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report_group_message`
--

CREATE TABLE `report_group_message` (
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `type` enum('spam','fake account','violence','child abuse','illegal drugs','personal details','pornography','other') DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `status` enum('accept','pending','decline') DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treer00t_personal_chat_data`
--

CREATE TABLE `treer00t_personal_chat_data` (
  `text` varchar(4096) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `message_type_id` smallint(6) DEFAULT NULL,
  `file_url` varchar(130) DEFAULT NULL,
  `is_reply` varchar(5) DEFAULT NULL,
  `target_reply_id` int(11) DEFAULT NULL,
  `forward_data_id` int(11) DEFAULT NULL,
  `file_name` varchar(12) DEFAULT NULL,
  `file_size` varchar(10) DEFAULT NULL,
  `is_forward` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treer00t_reply`
--

CREATE TABLE `treer00t_reply` (
  `message_target_id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `phone` int(11) NOT NULL,
  `authCode` smallint(6) DEFAULT NULL,
  `bio` varchar(70) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `img` varchar(130) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(70) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `is_active` varchar(5) DEFAULT NULL,
  `is_blocked` varchar(5) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_channel_chat_list`
--

CREATE TABLE `user_channel_chat_list` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_e2e_chat_list`
--

CREATE TABLE `user_e2e_chat_list` (
  `chat_tbl_id` varchar(3000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_group_chat_list`
--

CREATE TABLE `user_group_chat_list` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `090307892andazi1578cat_e2e_data`
--
ALTER TABLE `090307892andazi1578cat_e2e_data`
  ADD PRIMARY KEY (`sender_id`,`id`),
  ADD KEY `text` (`text`(768)),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `forward_data_id` (`forward_data_id`);

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `channel_admin`
--
ALTER TABLE `channel_admin`
  ADD KEY `channel_id` (`channel_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `channel_joins`
--
ALTER TABLE `channel_joins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indexes for table `channel_reply`
--
ALTER TABLE `channel_reply`
  ADD KEY `message_target_id_copy_1` (`message_target_id`),
  ADD KEY `message_id_copy_1` (`message_id`),
  ADD KEY `channel_id_copy_3` (`channel_id`);

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
  ADD KEY `user_id` (`user_id`);

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
  ADD KEY `text` (`text`(768));

--
-- Indexes for table `googleandroid_group_reply`
--
ALTER TABLE `googleandroid_group_reply`
  ADD KEY `message_target_id_copy_3` (`message_target_id`),
  ADD KEY `message_id_copy_3` (`message_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `group_admin`
--
ALTER TABLE `group_admin`
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `group_joins`
--
ALTER TABLE `group_joins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `mohsenpack_channel_data`
--
ALTER TABLE `mohsenpack_channel_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `text` (`text`(768));

--
-- Indexes for table `report_channel`
--
ALTER TABLE `report_channel`
  ADD KEY `channel_id` (`channel_id`);

--
-- Indexes for table `report_group`
--
ALTER TABLE `report_group`
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `treer00t_personal_chat_data`
--
ALTER TABLE `treer00t_personal_chat_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `text` (`text`(768));

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phone` (`phone`);

--
-- Indexes for table `user_channel_chat_list`
--
ALTER TABLE `user_channel_chat_list`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_e2e_chat_list`
--
ALTER TABLE `user_e2e_chat_list`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_group_chat_list`
--
ALTER TABLE `user_group_chat_list`
  ADD KEY `user_id` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `090307892andazi1578cat_e2e_data`
--
ALTER TABLE `090307892andazi1578cat_e2e_data`
  ADD CONSTRAINT `forward_data_id` FOREIGN KEY (`forward_data_id`) REFERENCES `forward_data` (`id`),
  ADD CONSTRAINT `receiver_id` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sender_id` FOREIGN KEY (`sender_id`) REFERENCES `users` (`phone`);

--
-- Constraints for table `block_list`
--
ALTER TABLE `block_list`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`phone`);

--
-- Constraints for table `channel_admin`
--
ALTER TABLE `channel_admin`
  ADD CONSTRAINT `admin_id` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `channel_id` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`);

--
-- Constraints for table `channel_reply`
--
ALTER TABLE `channel_reply`
  ADD CONSTRAINT `channel_id_copy_3` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`),
  ADD CONSTRAINT `message_id_copy_1` FOREIGN KEY (`message_id`) REFERENCES `mohsenpack_channel_data` (`id`),
  ADD CONSTRAINT `message_target_id_copy_1` FOREIGN KEY (`message_target_id`) REFERENCES `mohsenpack_channel_data` (`id`);

--
-- Constraints for table `googleandroid_group_reply`
--
ALTER TABLE `googleandroid_group_reply`
  ADD CONSTRAINT `message_id_copy_3` FOREIGN KEY (`message_id`) REFERENCES `googleandroid_group_data` (`id`),
  ADD CONSTRAINT `message_target_id_copy_3` FOREIGN KEY (`message_target_id`) REFERENCES `googleandroid_group_data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
