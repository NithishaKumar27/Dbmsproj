-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 08:44 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whbs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_list`
--

CREATE TABLE `booking_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `student_id` int(30) NOT NULL,
  `hall_id` int(30) NOT NULL,
  `services_ids` text DEFAULT NULL,
  `schedule` date NOT NULL,
  `total_students` float NOT NULL DEFAULT 0,
  `remarks` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_list`
--

INSERT INTO `booking_list` (`id`, `code`, `student_id`, `hall_id`, `services_ids`, `schedule`, `total_students`, `remarks`, `status`, `date_created`, `date_updated`) VALUES
(1, '202201-00001', 2, 2, '|1|,|2|', '2022-02-23', 300, 'This a sample remarks only.', 1, '2022-01-31 14:24:38', '2022-01-31 15:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `avatar` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `status`, `avatar`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Claire', 'C', 'Blake', 'Female', '09123456789', 'This is my sample Address only.', 'cblake@sample.com', '4744ddea876b11dcb1d169fadf494418', 1, 'uploads/clients/1.png?v=1643609613', 0, '2022-01-31 13:33:27', '2022-01-31 14:13:33'),
(2, 'John', 'D', 'Smith', 'Male', '09123456987', 'This my address.', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 1, '', 0, '2022-01-31 13:34:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall_list`
--

CREATE TABLE `hall_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` text NOT NULL,
  
  `description` text NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hall_list`
--

INSERT INTO `hall_list` (`id`, `code`, `name`,  `description`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1,'KP101', 'KP HALL - 101','TYPE: NORMAL CLASSROOM; LOCATION: GROUND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(2,'KP102', 'KP HALL - 102','TYPE: NORMAL CLASSROOM; LOCATION: GROUND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(3,'KP103', 'KP HALL - 103','TYPE: NORMAL CLASSROOM; LOCATION: GROUND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(4,'KP104', 'KP HALL - 104','TYPE: NORMAL CLASSROOM; LOCATION: GROUND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(5,'KP105D', 'KP HALL - 105(D)','TYPE: DIGITAL CLASSROOM; LOCATION: GROUND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(6,'KP106D', 'KP HALL - 106(D)','TYPE: DIGITAL CLASSROOM; LOCATION: GROUND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(7,'KP107D', 'KP HALL - 107(D)','TYPE: DIGITAL CLASSROOM; LOCATION: GROUND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(8,'KP108', 'KP HALL - 108','TYPE: NORMAL CLASSROOM; LOCATION: GROUND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(9,'KP109', 'KP HALL - 109','TYPE: NORMAL CLASSROOM; LOCATION: GROUND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(10,'KP201', 'KP HALL - 201','TYPE: NORMAL CLASSROOM; LOCATION: FIRST FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(11,'KP202', 'KP HALL - 202','TYPE: NORMAL CLASSROOM; LOCATION: FIRST FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(12,'KP203', 'KP HALL - 203','TYPE: NORMAL CLASSROOM; LOCATION: FIRST FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(13,'KP204D', 'KP HALL - 204(D)','TYPE: DIGITAL CLASSROOM; LOCATION: FIRST FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(14,'KP205D', 'KP HALL - 205(D)','TYPE: DIGITAL CLASSROOM; LOCATION: FIRST FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(15,'KP206D', 'KP HALL - 206(D)','TYPE: DIGITAL CLASSROOM; LOCATION: FIRST FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(16,'KP207', 'KP HALL - 207','TYPE: NORMAL CLASSROOM; LOCATION: FIRST FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(17,'KP208D', 'KP HALL - 208(D)','TYPE: DIGITAL CLASSROOM; LOCATION: FIRST FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(18,'KPRUSA', 'RUSA GALLERY(D)','TYPE: DIGITAL CLASSROOM; LOCATION: FIRST FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(19,'KP209', 'KP HALL - 209','TYPE: NORMAL CLASSROOM; LOCATION: FIRST FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(20,'KP301', 'KP HALL - 301','TYPE: NORMAL CLASSROOM; LOCATION: SECOND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(21,'KP302D', 'KP HALL - 302(D)','TYPE: DIGITAL CLASSROOM; LOCATION: SECOND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(22,'KP303', 'KP HALL - 303','TYPE: NORMAL CLASSROOM; LOCATION: SECOND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(23,'KP304D', 'KP HALL - 304(D)','TYPE: DIGITAL CLASSROOM; LOCATION: SECOND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(24,'KP305D', 'KP HALL - 305(D)','TYPE: DIGITAL CLASSROOM; LOCATION: SECOND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(25,'KP306D', 'KP HALL - 306(D)','TYPE: DIGITAL CLASSROOM; LOCATION: SECOND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(26,'KP307', 'KP HALL - 307','TYPE: NORMAL CLASSROOM; LOCATION: SECOND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(27,'KP308', 'KP HALL - 308','TYPE: NORMAL CLASSROOM; LOCATION: SECOND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(28,'KP309D', 'KP HALL - 309(D)','TYPE: DIGITAL CLASSROOM; LOCATION: SECOND FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(29,'KP401', 'KP HALL - 401','TYPE: NORMAL CLASSROOM; LOCATION: THIRD FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(30,'KP402', 'KP HALL - 402','TYPE: NORMAL CLASSROOM; LOCATION: THIRD FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(31,'KP403D', 'KP HALL - 403(D)','TYPE: DIGITAL CLASSROOM; LOCATION: THIRD FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(32,'KP404D', 'KP HALL - 404(D)','TYPE: DIGITAL CLASSROOM; LOCATION: THIRD FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(33,'KP405D', 'KP HALL - 405(D)','TYPE: DIGITAL CLASSROOM; LOCATION: THIRD FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(34,'KP406D', 'KP HALL - 406(D)','TYPE: DIGITAL CLASSROOM; LOCATION: THIRD FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(35,'KP407', 'KP HALL - 407','TYPE: NORMAL CLASSROOM; LOCATION: THIRD FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(36,'KP408D', 'KP HALL - 408(D)','TYPE: DIGITAL CLASSROOM; LOCATION: THIRD FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(37,'KP409D', 'KP HALL - 409(D)','TYPE: DIGITAL CLASSROOM; LOCATION: THIRD FLOOR; PURPOSE: For lectures, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(38,'RB10', 'RB HALL - 10','TYPE: DRAWING HALL; LOCATION: GROUND FLOOR; PURPOSE: For drawing sessions, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(39,'RB13', 'RB HALL - 13','TYPE: DRAWING HALL; LOCATION: GROUND FLOOR; PURPOSE: For drawing sessions, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(40,'RB49', 'RB HALL - 49','TYPE: DRAWING HALL; LOCATION: FIRST FLOOR; PURPOSE: For drawing sessions, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL),
(41,'RB32', 'RB HALL - 32','TYPE: DRAWING HALL; LOCATION: GROUND FLOOR; PURPOSE: For drawing sessions, exams and events.',NULL, 1, 0, '2024-05-20 09:59:18', NULL);








-- -(1,'KP101', 'KP HALL - 101','TYPE: DIGITAL CLASSROOM; LOCATION: GROUND FLOOR; PURPOSE: For lectures exams and event-------------------------------------------------------

--
-- Table structure for table `message_list`
--

CREATE TABLE `message_list` (
  `id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_list`
--

INSERT INTO `message_list` (`id`, `fullname`, `contact`, `email`, `message`, `status`, `date_created`) VALUES
(1, 'John Smith', '09123456789', 'jsmith@sample.com', 'This is a sample inquiry only.', 1, '2022-01-31 15:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'EXAMINATION', 'First preference is always given for exams,next for lectures and then for events.Incase of any important events,the decision of the admin will be final', 1, 0, '2022-01-31 10:22:31', NULL),
(2, 'EVENTS', 'First preference is always given for exams,next for lectures and then for events.Incase of any important events,the decision of the admin will be final', 1, 0, '2022-01-31 10:22:31', NULL),
(3, 'LECTURES', 'First preference is always given for exams,next for lectures and then for events.Incase of any important events,the decision of the admin will be final', 1, 0, '2022-01-31 10:22:31', NULL);


CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'AU Hall Booking System'),
(6, 'short_name', 'AU-HBS'),
(11, 'logo', 'uploads/logo-1643592116.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1643592116.png'),
(15, 'content', 'Array'),
(16, 'email', 'info@auhalls.com'),
(17, 'contact', '9854698789 / 9978945632'),
(18, 'from_time', '8:00'),
(19, 'to_time', '18:30'),
(20, 'address', ' Sardar Patel Road, Guindy, Chennai, 600028');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1639468007', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-14 15:47:08'),
(4, 'Smantha', NULL, 'Lou', 'slou', '1ed1255790523a907da869eab7306f5a', 'uploads/avatar-4.png?v=1641346647', NULL, 2, 1, '2022-01-05 09:36:56', '2022-01-05 09:37:27');

--
-- Indexes for dumped tables
--
 

--
-- Indexes for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hall_id` (`hall_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall_list`
--
ALTER TABLE `hall_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_list`
--
ALTER TABLE `message_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_list`
--
ALTER TABLE `booking_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hall_list`
--
ALTER TABLE `hall_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message_list`
--
ALTER TABLE `message_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD CONSTRAINT `booking_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_list_ibfk_2` FOREIGN KEY (`hall_id`) REFERENCES `hall_list` (`id`) ON DELETE CASCADE;
commit;

