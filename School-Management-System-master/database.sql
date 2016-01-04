-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2016 at 07:37 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_system`
--
CREATE DATABASE IF NOT EXISTS `attendance_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `attendance_system`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `classid` int(50) NOT NULL,
  `id` int(50) NOT NULL,
  `isPresent` varchar(3) NOT NULL,
  `comments` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`classid`, `id`, `isPresent`, `comments`) VALUES
(1, 2, 'Yes', ''),
(2, 2, 'Yes', ''),
(1, 3, 'No', ''),
(2, 3, 'Yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(50) NOT NULL,
  `teacherid` int(50) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `credit_hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `teacherid`, `starttime`, `endtime`, `credit_hours`) VALUES
(1, 1, '03:00:00', '04:00:00', 4),
(2, 1, '04:00:00', '05:00:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(3) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email_address` varchar(100) NOT NULL,
  `admin_password` varchar(32) NOT NULL,
  `access_label` tinyint(1) NOT NULL,
  `activation_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email_address`, `admin_password`, `access_label`, `activation_status`) VALUES
(1, 'admin', 'admin@gmail.com', '96e79218965eb72c92a549dd5a330112', 1, 1),
(2, 'admin_b', 'admin_b@gmail.com', 'e3ceb5881a0a1fdaad01296d7554868d', 2, 0),
(3, 'admin_c', 'admin_c@gmail.com', '1a100d2c0dab19c4430e7d73762b3423', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class1_result`
--

CREATE TABLE `tbl_class1_result` (
  `student_roll` int(3) NOT NULL,
  `marks_bengali` int(3) NOT NULL,
  `marks_english` int(3) NOT NULL,
  `marks_mathematics` int(3) NOT NULL,
  `total_marks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_class1_result`
--

INSERT INTO `tbl_class1_result` (`student_roll`, `marks_bengali`, `marks_english`, `marks_mathematics`, `total_marks`) VALUES
(1, 98, 86, 99, 283),
(2, 80, 98, 100, 278);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class2_result`
--

CREATE TABLE `tbl_class2_result` (
  `student_roll` int(3) NOT NULL,
  `marks_bengali` int(3) NOT NULL,
  `marks_english` int(3) NOT NULL,
  `marks_mathematics` int(3) NOT NULL,
  `total_marks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_class2_result`
--

INSERT INTO `tbl_class2_result` (`student_roll`, `marks_bengali`, `marks_english`, `marks_mathematics`, `total_marks`) VALUES
(1, 98, 89, 97, 284);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class3_result`
--

CREATE TABLE `tbl_class3_result` (
  `student_roll` int(3) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `marks_bengali` int(3) NOT NULL,
  `marks_english` int(3) NOT NULL,
  `marks_mathematics` int(3) NOT NULL,
  `marks_social_science` int(3) NOT NULL,
  `marks_general_science` int(3) NOT NULL,
  `marks_religion` int(3) NOT NULL,
  `total_marks` int(3) NOT NULL,
  `gpa` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_class3_result`
--

INSERT INTO `tbl_class3_result` (`student_roll`, `student_name`, `marks_bengali`, `marks_english`, `marks_mathematics`, `marks_social_science`, `marks_general_science`, `marks_religion`, `total_marks`, `gpa`) VALUES
(1, '', 89, 96, 100, 95, 92, 95, 567, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class4_result`
--

CREATE TABLE `tbl_class4_result` (
  `student_roll` int(3) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `marks_bengali` int(3) NOT NULL,
  `marks_english` int(3) NOT NULL,
  `marks_mathematics` int(3) NOT NULL,
  `marks_social_science` int(3) NOT NULL,
  `marks_general_science` int(3) NOT NULL,
  `marks_religion` int(3) NOT NULL,
  `total_marks` int(3) NOT NULL,
  `gpa` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class5_result`
--

CREATE TABLE `tbl_class5_result` (
  `student_roll` int(3) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `marks_bengali` int(3) NOT NULL,
  `marks_english` int(3) NOT NULL,
  `marks_mathematics` int(3) NOT NULL,
  `marks_social_science` int(3) NOT NULL,
  `marks_general_science` int(3) NOT NULL,
  `marks_religion` int(3) NOT NULL,
  `total_marks` int(3) NOT NULL,
  `gpa` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_class5_result`
--

INSERT INTO `tbl_class5_result` (`student_roll`, `student_name`, `marks_bengali`, `marks_english`, `marks_mathematics`, `marks_social_science`, `marks_general_science`, `marks_religion`, `total_marks`, `gpa`) VALUES
(1, '', 90, 89, 95, 85, 86, 91, 536, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_id` varchar(10) NOT NULL,
  `class` int(2) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `total_marks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `class`, `course_name`, `total_marks`) VALUES
('0101', 1, 'Bengali', 100),
('0102', 1, 'English', 100),
('0103', 1, 'Mathematics', 100),
('0201', 2, 'Bengali', 100),
('0202', 2, 'English', 100),
('0203', 2, 'Mathematics', 100),
('0301', 3, 'Bengali', 100),
('0302', 3, 'English', 100),
('0303', 3, 'Mathematics', 100),
('0304', 3, 'Social Science', 100),
('0305', 3, 'General Science', 100),
('0306', 3, 'Religion', 100),
('0401', 4, 'Bengali', 100),
('0402', 4, 'English', 100),
('0403', 4, 'Mathematics', 100),
('0404', 4, 'Social Science', 100),
('0405', 4, 'General Science', 100),
('0406', 4, 'Religion', 100),
('0501', 5, 'Bengali', 100),
('0502', 5, 'English', 100),
('0503', 5, 'Mathematics', 100),
('0504', 5, 'Social Science', 100),
('0505', 5, 'General Science', 100),
('0506', 5, 'Religion', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_teacher`
--

CREATE TABLE `tbl_course_teacher` (
  `id` int(11) NOT NULL,
  `class` int(2) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `teacher_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_course_teacher`
--

INSERT INTO `tbl_course_teacher` (`id`, `class`, `course_name`, `teacher_name`) VALUES
(1, 1, 'English', 'md.atahar ali'),
(2, 4, 'General Science', 'md.saiful islam'),
(3, 4, 'Social Science', 'md.blue'),
(4, 4, 'bengali', 'mrs khusbu'),
(5, 5, 'social science', 'mrs. meena');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

CREATE TABLE `tbl_notice` (
  `notice_id` int(4) NOT NULL,
  `notice_topic` varchar(30) NOT NULL,
  `notice_details` text NOT NULL,
  `notice_date` varchar(10) NOT NULL,
  `publication_status` tinyint(1) NOT NULL DEFAULT '1',
  `deletion_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notice`
--

INSERT INTO `tbl_notice` (`notice_id`, `notice_topic`, `notice_details`, `notice_date`, `publication_status`, `deletion_status`) VALUES
(1, 'Vacation', 'This is to inform that, Chopinagar Primary School will be closed from 13.07.2015 to 30.07.2015 for the vacation of Eid-ul-Fitr.', '09.07.2015', 1, 1),
(2, 'Result Publication', 'the result of 1st terminal Examination 2015 will be published after Eid Vacation.', '09.07.2015', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parent`
--

CREATE TABLE `tbl_parent` (
  `parent_id` int(6) NOT NULL,
  `fathers_name` varchar(50) NOT NULL,
  `mothers_name` varchar(50) NOT NULL,
  `student_id` int(6) NOT NULL,
  `parent_email_address` varchar(100) NOT NULL,
  `parent_password` varchar(32) NOT NULL,
  `fathers_occupation` varchar(20) NOT NULL,
  `mothers_occupation` varchar(20) NOT NULL,
  `fathers_contact_no` int(14) NOT NULL,
  `mothers_contact_no` int(14) NOT NULL,
  `parent_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_parent`
--

INSERT INTO `tbl_parent` (`parent_id`, `fathers_name`, `mothers_name`, `student_id`, `parent_email_address`, `parent_password`, `fathers_occupation`, `mothers_occupation`, `fathers_contact_no`, `mothers_contact_no`, `parent_address`) VALUES
(1, 'Md. Saidur Rahman', 'Mrs. Anju-ara-begum', 1, 'saidur@gmail.com.com', 'd0e45878043844ffc41aac437e86b602', 'service', 'housewife', 1722916150, 1723658820, 'dahikandi,kamarpar,shahjahanpur,bogra'),
(2, 'Md. Matiur Rahman', 'Mrs. Golap Banu', 2, 'matiur@gmail.com', 'c68ad910ed49ac65f21f1bf2c5dbf912', 'business', 'school teacher', 1711000012, 1711000012, 'chopinagar,bogra');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_email_address` varchar(100) NOT NULL,
  `student_password` varchar(32) NOT NULL,
  `student_class` int(2) NOT NULL,
  `student_roll` int(3) NOT NULL,
  `fathers_name` varchar(50) NOT NULL,
  `mothers_name` varchar(50) NOT NULL,
  `student_image` varchar(100) NOT NULL,
  `student_contact_no` int(14) NOT NULL,
  `student_address` text NOT NULL,
  `student_dob` varchar(20) NOT NULL,
  `student_gender` tinyint(1) NOT NULL,
  `deletion_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_email_address`, `student_password`, `student_class`, `student_roll`, `fathers_name`, `mothers_name`, `student_image`, `student_contact_no`, `student_address`, `student_dob`, `student_gender`, `deletion_status`) VALUES
(1, 'Abid', 'abid@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', 3, 1, 'Md. Saidur Rahman', 'Mrs. Anju-ara-begum', '', 1722916150, 'Dahikandi.kamarpara,shahjahanpur,bogra.', '3.11.2005', 1, 0),
(2, 'abdullah', 'ashiq17nasa@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', 5, 1, 'Md. Saidur Rahman', 'Mrs. Anju-ara-begum', '', 1723658820, 'dahikandi,kamarpara,shahjahanpur,bogra', '3.11.2006', 1, 0),
(3, 'mottalib', 'mottalib@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', 4, 1, 'Md. Blue', 'Mrs. Momena', 'student_image/JFCL_school_2.jpg', 1711000011, 'Chopinagar,Shahjahanpur,bogra', '12.12.2003', 1, 0),
(4, 'Shakib', 'shakib@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', 1, 1, 'Md. Matiur Rahman', 'Mrs. Golap Banu', 'student_image/samsung_logo.jpg', 1711000012, 'Bogra', '01.02.2005', 1, 0),
(5, 'Shahdat', 'shahdat@gmail.com', '670b14728ad9902aecba32e22fa4f6bd', 2, 1, 'md. jaminur rahman', 'saleha begum', 'student_image/samsunglogo2.jpg', 171100013, 'bogra', '01.01.2003', 1, 0),
(6, 'student_class1_b', 'student_class1_b@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 2, 'Father of B', 'Mother of B', 'student_image/twinmos_logo.jpg', 1555222111, 'Dhaka', '02.01.99', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(5) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_email_address` varchar(100) NOT NULL,
  `teacher_password` varchar(32) NOT NULL,
  `teacher_gender` tinyint(1) NOT NULL,
  `teacher_contact_no` int(14) NOT NULL,
  `no_of_course` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_email_address`, `teacher_password`, `teacher_gender`, `teacher_contact_no`, `no_of_course`) VALUES
(1, 'md.atahar ali', 'chopinagar,bogra', 'atahar@yahoo.com', '8d788385431273d11e8b43bb78f3aa41', 1, 1222333444, 0),
(2, 'md.saiful islam', 'dahikandi,kamarpara,shahjahanpur,bogra', 'saiful@gmail.com', '8d788385431273d11e8b43bb78f3aa41', 1, 1555444666, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `class` varchar(10) NOT NULL,
  `role` enum('teacher','student','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `fullname`, `email`, `class`, `role`) VALUES
(1, 'fahad', 'Fahad Satti', 'fahad.satti@seecs.edu.pk', 'BESE-4A', 'teacher'),
(2, 'safie', 'Safie Ur Rehman', '13besesrehman@seecs.edu.pk', 'BESE-4A', 'student'),
(3, 'umar', 'Umar Hussain', '13beseuhussain@seecs.edu.pk', 'BESE-4A', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_class1_result`
--
ALTER TABLE `tbl_class1_result`
  ADD PRIMARY KEY (`student_roll`);

--
-- Indexes for table `tbl_class2_result`
--
ALTER TABLE `tbl_class2_result`
  ADD PRIMARY KEY (`student_roll`);

--
-- Indexes for table `tbl_class3_result`
--
ALTER TABLE `tbl_class3_result`
  ADD PRIMARY KEY (`student_roll`);

--
-- Indexes for table `tbl_class4_result`
--
ALTER TABLE `tbl_class4_result`
  ADD PRIMARY KEY (`student_roll`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_course_teacher`
--
ALTER TABLE `tbl_course_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `tbl_parent`
--
ALTER TABLE `tbl_parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_course_teacher`
--
ALTER TABLE `tbl_course_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  MODIFY `notice_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_parent`
--
ALTER TABLE `tbl_parent`
  MODIFY `parent_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Table structure for table `facuties_tbl`
--

CREATE TABLE `facuties_tbl` (
  `faculties_id` int(10) UNSIGNED NOT NULL,
  `faculties_name` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stu_score_tbl`
--

CREATE TABLE `stu_score_tbl` (
  `ss_id` int(10) UNSIGNED NOT NULL,
  `stu_id` varchar(50) NOT NULL,
  `faculties_id` varchar(50) NOT NULL,
  `sub_id` varchar(50) NOT NULL,
  `miderm` float NOT NULL,
  `final` float NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stu_tbl`
--

CREATE TABLE `stu_tbl` (
  `roll_no` int(10) NOT NULL,
  `stu_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_tbl`
--

INSERT INTO `stu_tbl` (`roll_no`, `stu_id`, `f_name`, `l_name`, `gender`, `dob`, `address`, `phone`, `email`) VALUES
(2116, 1, 'Saif-ur-', 'Rehman', 'Male', '1991-03-01', 'Lahore', '03054038588', 'saif-ur@gmail.com'),
(2115, 2, 'Jazib', 'Bashir', 'Male', '1990-05-04', '  Lahore', '03054038588', 'jazib@yahoo.com'),
(2103, 3, 'Tahir', 'Awan', 'Male', '1988-05-05', '   Lahore', '03054038588', 'tahir@gmail.com   '),
(2110, 4, 'Abdul', 'Jabbar', 'Male', '1989-06-06', 'Lahore', '03054038588 ', 'jabbar@gmail.com'),
(1234, 8, 'Safie Ur', 'Rehman', 'male', '2016-01-02', '123', '03435600075', '13besesrehman@seecs.edu.pk');

-- --------------------------------------------------------

--
-- Table structure for table `sub_tbl`
--

CREATE TABLE `sub_tbl` (
  `sub_id` int(10) UNSIGNED NOT NULL,
  `faculties_id` varchar(50) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tbl`
--

CREATE TABLE `teacher_tbl` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `salary` float NOT NULL,
  `married` char(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tbl`
--

INSERT INTO `teacher_tbl` (`teacher_id`, `f_name`, `l_name`, `gender`, `dob`, `address`, `degree`, `salary`, `married`, `phone`, `email`) VALUES
(1, 'Yameen', 'Bashir', 'Male', '1985-03-05', 'Lahore', 'Master', 1500, 'No', '015 871 787', 'yameen.like@gmail.com'),
(2, 'Atta-ur-', 'Rehman', 'Male', '1986-03-08', 'Lahore', 'Bachelor', 1500, 'Yes', '016 572 393', 'attarehman@gmail.com'),
(3, 'Hussain', 'Naqvi', 'Male', '1990-07-03', 'Lahore', 'Bachelor', 1000, 'Yes', '087 666 55 ', 'hussain@gmail.com'),
(4, 'Maria', 'Atif', 'Male', '0000-00-00', 'Lahore', 'Bachelor', 1000, 'Yes', '099 77 66 33', 'maria@gmail.com'),
(6, 'Fahad', 'Satti', 'female', '2016-01-20', '123', 'Bachelor', 100000, 'male', '73638282344', 'fahad.satti@seecs.edu.pk');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `u_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`u_id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', 'Admin'),
(7, 'Rehman', 'safie', 'Student'),
(8, 'Satti', 'fahad', 'Teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  ADD PRIMARY KEY (`faculties_id`);

--
-- Indexes for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  MODIFY `faculties_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  MODIFY `ss_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  MODIFY `stu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  MODIFY `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `u_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;--
-- Database: `database_new`
--
CREATE DATABASE IF NOT EXISTS `database_new` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database_new`;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `exp_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `student_expense` int(11) NOT NULL,
  `teachers_salary` int(11) NOT NULL,
  `staff_salary` int(11) NOT NULL,
  `bills` int(11) NOT NULL,
  `extras` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`exp_id`, `date`, `student_expense`, `teachers_salary`, `staff_salary`, `bills`, `extras`) VALUES
(2, '2015-11-30 19:00:00', 54355, 54635, 4354, 5435, 12000),
(23, '2016-01-02 16:41:59', 65767, 5000, 45435, 564, 432),
(24, '2016-01-02 16:42:19', 3123, 5000, 45435, 567, 67567),
(26, '2016-01-02 17:25:38', 571332, 5000, 45435, 435, 4535),
(27, '2016-01-02 17:26:02', 571332, 5000, 45435, 234, 342),
(28, '2016-01-03 15:40:52', 0, 5000, 49434, 75767, 57767),
(29, '2016-01-03 15:41:13', 0, 5000, 49434, 2, 2),
(30, '2016-01-03 15:46:31', 571332, 5000, 49434, 44, 44);

-- --------------------------------------------------------

--
-- Table structure for table `facuties_tbl`
--

CREATE TABLE `facuties_tbl` (
  `faculties_id` int(10) UNSIGNED NOT NULL,
  `faculties_name` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facuties_tbl`
--

INSERT INTO `facuties_tbl` (`faculties_id`, `faculties_name`, `note`) VALUES
(3, 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `stu_score_tbl`
--

CREATE TABLE `stu_score_tbl` (
  `ss_id` int(10) UNSIGNED NOT NULL,
  `stu_id` varchar(50) NOT NULL,
  `faculties_id` varchar(50) NOT NULL,
  `sub_id` varchar(50) NOT NULL,
  `miderm` float NOT NULL,
  `final` float NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_score_tbl`
--

INSERT INTO `stu_score_tbl` (`ss_id`, `stu_id`, `faculties_id`, `sub_id`, `miderm`, `final`, `note`) VALUES
(29, 'Saif-ur- Rehman', 'test', 'fdsf', 45, 80, 'fgdgsg');

-- --------------------------------------------------------

--
-- Table structure for table `stu_tbl`
--

CREATE TABLE `stu_tbl` (
  `roll_no` int(10) NOT NULL,
  `stu_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `student_expense` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_tbl`
--

INSERT INTO `stu_tbl` (`roll_no`, `stu_id`, `f_name`, `l_name`, `gender`, `dob`, `address`, `phone`, `email`, `student_expense`) VALUES
(2116, 1, 'Saif-ur-', 'Rehman', 'male', '1991-03-01', 'Lahore', '56456654654', 'saif-ur@gmail.com', 564565),
(2115, 2, 'Jazib', 'Bashir', 'male', '1990-05-04', '  Lahore', '03054038588', 'jazib@yahoo.com', 6767),
(2103, 3, 'Tahir', 'Awan', 'Male', '1988-05-05', '   Lahore', '03054038588', 'tahir@gmail.com   ', 0),
(2110, 4, 'Abdul', 'Jabbar', 'Male', '1989-06-06', 'Lahore', '03054038588 ', 'jabbar@gmail.com', 0),
(435, 5, 'gfdgfdg', 'gsfgdf', 'male', '2016-01-21', 'fdsfdf', '435435345435', 'fdggfsdg@gmail.com', 0),
(43, 6, 'fdg', 'fgds', 'male', '2013-07-17', 'twetert', '45324543542352', 'moaz@gmail.com', 454);

-- --------------------------------------------------------

--
-- Table structure for table `sub_tbl`
--

CREATE TABLE `sub_tbl` (
  `sub_id` int(10) UNSIGNED NOT NULL,
  `faculties_id` varchar(50) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_tbl`
--

INSERT INTO `sub_tbl` (`sub_id`, `faculties_id`, `teacher_id`, `semester`, `sub_name`, `note`) VALUES
(7, 'test', 'Yameen Bashir', '4', 'fdsf', 'dsfdf');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tbl`
--

CREATE TABLE `teacher_tbl` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `salary` float NOT NULL,
  `married` char(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(80) NOT NULL DEFAULT 'teacher'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tbl`
--

INSERT INTO `teacher_tbl` (`teacher_id`, `f_name`, `l_name`, `gender`, `dob`, `address`, `degree`, `salary`, `married`, `phone`, `email`, `type`) VALUES
(1, 'Yameen', 'Bashir', 'male', '1985-03-05', 'Lahore', 'Master', 1500, 'yes', '43525443525', 'yameen.like@gmail.com', 'teacher'),
(2, 'Atta-ur-', 'Rehman', 'Male', '1986-03-08', 'Lahore', 'Bachelor', 1500, 'Yes', '016 572 393', 'attarehman@gmail.com', 'teacher'),
(3, 'Hussain', 'Naqvi', 'Male', '1990-07-03', 'Lahore', 'Bachelor', 1000, 'Yes', '087 666 55 ', 'hussain@gmail.com', 'teacher'),
(4, 'Maria', 'Atif', 'Male', '0000-00-00', 'Lahore', 'Bachelor', 1000, 'Yes', '099 77 66 33', 'maria@gmail.com', 'teacher'),
(8, 'trett', 'terert', 'female', '2016-01-20', 'gtyrtyrty', 'FSC', 45435, 'female', '45454354353453', '', 'staff'),
(9, 'tret', 'ghgfh', 'male', '2016-01-06', 'rtetret', 'Matric', 543, 'male', '565654654656', '', 'staff'),
(10, 'qwe', 'qwe', 'male', '2016-01-13', 'gfdgfg', 'Basic', 3456, 'yes', '45345454556', '', 'staff'),
(11, 'tetytyw', 'tretew', 'female', '1992-02-11', 'gdfgfd', 'Master', 453451, 'yes', '435454353453', 'rtrg@dfsf.com', 'Teacher'),
(12, 'fsdf', 'fgder', 'female', '1990-01-06', 'rtwert', 'Matric', 34551, 'yes', '3423432423423', '', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `u_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `type` char(10) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`u_id`, `username`, `type`, `approved`) VALUES
(1, 'admin', 'admin', 1),
(4, 'moazkhan', 'admin', 1),
(5, 'teacher', 'teacher', 0),
(6, 'alikhan', 'student', 1),
(8, 'bilalkhan', 'teacher', 1),
(11, 'ter', 'admin', 1),
(12, 'admin11', 'student', 0),
(13, 'admin11', 'student', 0),
(14, 'admin11', 'student', 0),
(15, 'admin11', 'student', 0),
(16, 'admin11', 'student', 0),
(17, 'admin11', 'student', 0),
(18, 'admin11', 'student', 0),
(19, 'admin11', 'student', 0),
(20, 'admin11', 'student', 0),
(21, 'admin11', 'student', 0),
(22, 'admin11', 'student', 0),
(23, 'admin11', 'student', 0),
(24, 'admin11', 'student', 0),
(25, 'admin11', 'student', 0),
(26, 'admin11', 'student', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  ADD PRIMARY KEY (`faculties_id`);

--
-- Indexes for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  MODIFY `faculties_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  MODIFY `ss_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  MODIFY `stu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  MODIFY `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `u_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;--
-- Database: `laravelu`
--
CREATE DATABASE IF NOT EXISTS `laravelu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravelu`;

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`id`, `code`, `userId`, `created_at`, `updated_at`) VALUES
(1, '                                 ewkfjwejfbwejkfbwe fewf', 6, '2015-12-29 06:35:04', '2015-12-29 06:35:04'),
(2, 'adfjajkfbafj,a mf', 6, '2015-12-29 06:36:04', '2015-12-29 06:36:04'),
(3, '<?php\r\necho "Hello Safie"\r\n?>', 16, '2015-12-29 12:41:35', '2015-12-29 12:41:35'),
(4, '<?php>\r\necho\r\n?>', 6, '2015-12-29 12:53:31', '2015-12-29 12:53:31'),
(5, 'nvn', 6, '2015-12-29 12:53:59', '2015-12-29 12:53:59'),
(6, 'nvn', 6, '2015-12-29 12:53:59', '2015-12-29 12:53:59'),
(7, 'nvn', 6, '2015-12-29 13:04:46', '2015-12-29 13:04:46'),
(8, '                              jvhbjh ', 6, '2015-12-29 13:11:00', '2015-12-29 13:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_12_29_111440_create_codes_table', 2),
('2015_12_29_113401_add_timestamps_to_codes', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `code`) VALUES
(6, 'Safie Ur Rehman', '13besesrehman@seecs.edu.pk', '$2y$10$KDiZfjQxVrXK4jDz1yQFhe.EtyMYY/9u4cYvFp2LwivNF8LenXISK', 'exPq0ZypPeqHk3LCXhNmU2iDCsxssQbUqe23VCqeS4lojnKqj89sxIZg90kd', '2015-12-29 05:37:32', '2015-12-29 13:11:06', 'Admin', '<?php echo"!safie getting" ;?>'),
(14, 'Fahad Satti', 'fahad.satti@seecs.edu.pk', '$2y$10$PkL3/YktqTXQRnuymDuBAeYyvusp8LRLwZ/TnIpn0pL7l5soyiUYe', 'm03L905y3GSfzRT2a3VTOtuIMLLSQQPkIH9NSzQqNalXwxVbjTXFSCL6xJgQ', '2015-12-29 06:25:07', '2015-12-29 13:05:35', 'Moderator', ''),
(15, 'abc', 'abc@def.com', '$2y$10$JcOdzh993iv0UJ8Z4XBGf.FpTGZXj8vcb4gJxipV0d/iZGF6IKe76', 'Dw5cQiLhsoLRBvtxy1TnjmHJtZHnR2PvdHbwxLEVwPHUhy0Y33xUgA3wPbVQ', '2015-12-29 12:40:08', '2015-12-29 12:42:13', 'Moderator', ''),
(16, 'abcd', 'abcd@efgh.com', '$2y$10$1Etlry0yX6LSt9uKZjXwjOYMhZ4RY6xk.CDG4KzimS4Le31ApjvXC', 'CVVmaWktxjSc9lWxxqpju67HW0JMKDgIai0S2tTeZdJTFNzi6TymIVVEAh1D', '2015-12-29 12:40:56', '2015-12-29 12:41:51', 'Admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codes_userid_foreign` (`userId`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `codes`
--
ALTER TABLE `codes`
  ADD CONSTRAINT `codes_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'Attendance System', '{"quick_or_custom":"quick","what":"sql","structure_or_data_forced":"0","table_select[]":["attendance","class","user"],"table_structure[]":["attendance","class","user"],"table_data[]":["attendance","class","user"],"output_format":"sendit","filename_template":"@DATABASE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"structure_and_data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"structure_and_data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_create_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"test","table":"users_tbl"},{"db":"test","table":"user_details"},{"db":"test","table":"user_info"},{"db":"test","table":"user_profile"},{"db":"test","table":"user_table"},{"db":"test","table":"subject_info"},{"db":"test","table":"sr_users"},{"db":"test","table":"teacher_tbl"},{"db":"test","table":"facuties_tbl"},{"db":"userdata","table":"user_details"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'test', 'user_details', '{"sorted_col":"`user_details`.`firstname` ASC"}', '2016-01-04 18:10:58'),
('root', 'userdata', 'user_details', '{"sorted_col":"`user_details`.`firstname` ASC"}', '2016-01-04 16:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2015-12-08 09:21:25', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `sms`
--
CREATE DATABASE IF NOT EXISTS `sms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sms`;

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(281, 'admin', '2015-11-24 12:52:03', 'Added Student Scs591-0077/2012'),
(282, 'admin', '2015-11-24 12:53:05', 'Added Staff User john');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `adminthumbnails` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `adminthumbnails`) VALUES
(6, 'Admin', 'admin', 'admin', 'admin', 'uploads/me.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\n<span style="font-size:16px"><strong>Mission</strong></span></pre>\n\n<p style="text-align:left"><span style="font-family:arial,helvetica,sans-serif; font-size:medium"><span style="font-size:large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style="font-size:18px"> &nbsp; &nbsp; &nbsp;Respecting the human dignity and unique talents of each person, we\n dedicated in helping its students actualizetheir potentials for the enchancementof their own lives and or nationals Development.&nbsp;</span></p>\n\n<p style="text-align:left">&nbsp;</p>\n'),
(2, 'Vision', '<pre><span style="font-size: large;"><strong>Vision</strong></span></pre>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: large;">&nbsp; A progressive educational community where the individual is at the core of his own learning </span><br /><br /></p>'),
(3, 'History', 'Cooking.'),
(4, 'Footer', '<p style="text-align:center">Glinks Computer Systems: Copyright 2015</p>\n\n<p style="text-align:center">All Rights Reserved &reg;2015</p>\n'),
(5, 'Title', '<p><span style="font-family:trebuchet ms,geneva">School Management System\n</span></p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `thumbnails` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `username`, `password`, `firstname`, `lastname`, `thumbnails`) VALUES
(13, 'user', '1234', 'john', 'maitai', 'images/NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `FirstName` varchar(200) DEFAULT NULL,
  `SecondName` varchar(200) DEFAULT NULL,
  `Othername` varchar(200) DEFAULT NULL,
  `RegNo` varchar(200) NOT NULL,
  `PlaceOfBirth` varchar(200) DEFAULT NULL,
  `YearAdmitted` varchar(200) DEFAULT NULL,
  `YearOut` varchar(200) DEFAULT NULL,
  `YearOfBirth` varchar(200) DEFAULT NULL,
  `Mobile` varchar(200) DEFAULT NULL,
  `PostalCode` varchar(200) DEFAULT NULL,
  `PAddress` varchar(200) DEFAULT NULL,
  `KCPEMarks` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`FirstName`, `SecondName`, `Othername`, `RegNo`, `PlaceOfBirth`, `YearAdmitted`, `YearOut`, `YearOfBirth`, `Mobile`, `PostalCode`, `PAddress`, `KCPEMarks`) VALUES
('kithinji', 'Godie', 'mutia', 'Scs591-0077/2012', 'meru', '2012', '2016', '1992', '0725873436', '60602', '28 kianjai', 387);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(128) NOT NULL,
  `admin_id` int(128) NOT NULL,
  `staff_id` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `admin_id`, `staff_id`) VALUES
(190, 'admin', '2015-11-24 12:50:17', '', 6, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`RegNo`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `am_users`
--

CREATE TABLE `am_users` (
  `idam_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ngoemail` varchar(45) NOT NULL,
  `phonenumber` varchar(45) NOT NULL,
  `ngoname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_users`
--

INSERT INTO `am_users` (`idam_users`, `user_id`, `ngoemail`, `phonenumber`, `ngoname`) VALUES
(1, 19, '12wdqw@23131', '923121134567', 'qqweqw'),
(2, 24, '13beseuhussain@edu.pk', '923121234567', 'ngoname');

-- --------------------------------------------------------

--
-- Table structure for table `an_users`
--

CREATE TABLE `an_users` (
  `idan_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(45) NOT NULL DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `an_users`
--

INSERT INTO `an_users` (`idan_users`, `user_id`, `user_role`) VALUES
(1, 19, 'student'),
(2, 20, 'student'),
(3, 21, 'student'),
(4, 22, 'student'),
(5, 23, 'student'),
(6, 24, 'student'),
(7, 25, 'student'),
(8, 26, 'student'),
(9, 27, 'student'),
(10, 28, 'student'),
(11, 29, 'student'),
(12, 30, 'student'),
(13, 31, 'student'),
(14, 32, 'student'),
(15, 33, 'student'),
(16, 34, 'student'),
(17, 35, 'student'),
(18, 36, 'student'),
(19, 37, 'student'),
(20, 38, 'student'),
(21, 39, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `answer_info`
--

CREATE TABLE `answer_info` (
  `que_id` int(11) NOT NULL,
  `ans1` varchar(45) NOT NULL,
  `ans2` varchar(45) NOT NULL,
  `ans3` varchar(45) NOT NULL,
  `ans4` varchar(45) NOT NULL,
  `true_ans` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer_info`
--

INSERT INTO `answer_info` (`que_id`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(10, 'matter', 'big particles', 'elementary', 'ions', '4'),
(11, '1699 m', '1799 m', '1809 m ', '1609 m', '2'),
(12, '3', '4', '5', '2', '2'),
(13, 'Angstorm ', 'micron ', 'radian ', 'light year  ', '2'),
(14, 'giga', 'beta', 'mega', 'deca', '2'),
(15, '0.25', '0.50', '1', '.50', '1'),
(16, 'aqueous NaCl', 'molten NaCl', 'KOH', 'NaNO3', '1'),
(17, 'non spontaneous reaction', 'reversible reaction ', 'spontaneous reaction ', 'irreversible reaction ', '3'),
(18, 'caF2', 'NaCl', 'glass', 'All of these ', '2'),
(19, '9%', '10%', '11%', '12%', '1'),
(20, 'reflexive', 'transitive', 'trichotomy', 'symmetric', '2'),
(21, '(18,3)', '(18,-3)', '(38,9)', '(38,-9)', '4'),
(22, '(1,1)', '(1,2)', '(2,1)', '(2,2)', '1'),
(23, '(0,0)', '(1,0)', '(0,1)', '(1,1)', '2'),
(24, 'a = b', 'a != b', 'cannot be evaluated ', 'impossible ', '1'),
(25, 'q', 'q`', 'q', 'q', '3'),
(26, 'a', 'a', 'a', 'a', '3');

-- --------------------------------------------------------

--
-- Table structure for table `blood_req`
--

CREATE TABLE `blood_req` (
  `pat_name` varchar(20) NOT NULL,
  `typ_dis` varchar(20) NOT NULL,
  `doc_name` varchar(20) NOT NULL,
  `whn_req` date NOT NULL,
  `cont_num` varchar(12) NOT NULL,
  `blood_grp` varchar(5) NOT NULL,
  `quan` varchar(3) NOT NULL,
  `req_city` varchar(20) NOT NULL,
  `cont_per_name` varchar(20) NOT NULL,
  `hosp_add` varchar(50) NOT NULL,
  `dt` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_req`
--

INSERT INTO `blood_req` (`pat_name`, `typ_dis`, `doc_name`, `whn_req`, `cont_num`, `blood_grp`, `quan`, `req_city`, `cont_per_name`, `hosp_add`, `dt`) VALUES
('Usman', 'AIDS', 'Dr. Fahad', '2016-01-20', '03007787781', 'A+', '100', 'Islamabad', 'Sultan Mehmood', 'PIMS, Islamabad', '2016-01-02'),
('Basit', 'Fever', 'Dr. Arslan', '2016-01-22', '03007784678', 'A+', '50m', 'Lahore', 'Civil Hospital', 'Model Town Lahore', '2016-01-02'),
('Junaid', 'mental', 'Dr. Who', '2016-01-20', '03007787781', 'AB+', '200', 'Peshawar', 'Sultan Mehmood', 'PIMS, Peshawar', '2016-01-02'),
('Junaid', 'mental', 'Dr. Who', '2016-01-20', '03007787781', 'AB+', '200', 'Peshawar', 'Sultan Mehmood', 'PIMS, Peshawar', '2016-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cat_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `publication_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `page_name` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `timestamp_t` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(15) NOT NULL,
  `mob_num` varchar(12) NOT NULL,
  `e_mail` varchar(40) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `mob_num`, `e_mail`, `message`) VALUES
('Usman', '036878687', 'usman@gmail.com', 'Hello. I want some info.');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `article` text COLLATE utf8_unicode_ci NOT NULL,
  `date_published` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rating` enum('0','1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `user_id`, `cat_id`, `title`, `article`, `date_published`, `rating`) VALUES
(1, 0, 'A-1', 'چند اہم اصطلاحات', ':(Infection) وبا يا اچھوت\r\nعام حالات میں جانوروں اور پرندوں میں مختلف جراثیم، وائرس موجود ہوتے ہيں۔ کسی قسم کی ناگہانی صورت يا دباؤ کی وجہ سے جانوروں ياں پرندوں کا مدافعاتی نظام اس حد تک کمزور ہو جاتا ہے کہ يہ جراثيم ان کے اندرونی اعضاء تک رساي حاصل کر ليتے ہيں اور بيماری کا سبب بنتے ہيں۔ اس کو چھوت يا وبا کہتے ہيں۔ مثال کے طور پہ مرغیوں ميں متعدی نزلہ وغيرہ۔\r\n\r\n:(Disease) مرض\r\nصحت کی عمومی حالت سے مختلف ايسی صورت جس ميں جانور يا پرندے کو کسی قسم کی دشواری پيش ہو مرض يا بيماری کہلاتی ہے۔\r\n\r\n:(Pathogen) پيتھوجن\r\nوہ زندہ اجسام جو کسی بيماری کو پيدا کرنے کا سبب بتے ہيں۔ ازقسم بيکٹيريا، وائرس، پروٹوزوا، بيرونی يا اندرونی کرم وغيرہ۔\r\nان کو دو حصوں ميں تقسيم کيا جا سکتا ہے:\r\nاؤل: ايسے جراثيم جو بغير کسی بيرونی اثرکی موجودگی کے بيماری پيداکرنے کی اہليت رکھتے ہيں پرائمری پيتھوجن کہلاتے ہيں\r\nدوسری: ايسے جراثيم جو صحت مند جسم مين بيماری تو پیدا کر سکتے ہيں مگر اس مقصد کے ليے انکو چند بيرونی عواملکی ضرورت ہوتی ہے۔ مثلا کمزور مدافعتی نظام ار عضليات کو چوٹ، زخم وغيرہ۔\r\n\r\n :(Vaccine) ويکسين\r\nجانوروں ميں کسی بيماری سے حفاظت کے ليے حفظ ماتقدم کے طور پر دی جانے والی دوائ کو وےکسين کہتے ہيں۔ کسی بھی بيماری کے ليے ویکسین اسی بيماری کو پھيلانے والے جراثيم ؛وائرس يا بيکٹيريا سے بنائ جاتی ہے جو کہ ويکسين ميں مردہ، نيم مردہ يا زندہ حالت ميں پائے جاتے ہيں۔ ويکسين عمومن وبائ امراض کے ليے کی جاتی ہے۔\r\n\r\n:(Antibiotics) اينٹی بايئوٹکس\r\nايسے اجزاء جو بيکٹيريا سے حاصل کئے جائيں اور انہی کے خاتمے کے ليے استعمال کيے جائيں۔', '2016-01-03 09:40:27', '0');

-- --------------------------------------------------------

--
-- Table structure for table `content_android_devlopment`
--

CREATE TABLE `content_android_devlopment` (
  `chapter_no` int(11) NOT NULL,
  `video_link` varchar(500) NOT NULL,
  `video_summary` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_android_devlopment`
--

INSERT INTO `content_android_devlopment` (`chapter_no`, `video_link`, `video_summary`) VALUES
(1, 'https://www.youtube.com/watch?v=EknEIzswvC0&list=PLS1QulWo1RIbb1cYyzZpLFCKvdYV_yJ-E', 'Lesson 1 - User Interface Components \r\n\r\nIn this lesson, we will highlight various important components of the Android User Interface (UI) — like Radio Buttons, Grid Views and several more — that will allow you to make highly functional mobile apps. We will focus on each UI component by trying to answer the question, "How do I use ________ in Android?"\r\n\r\nFor each question below, we will guide you to the best Internet tutorial that will offer step-by-step instructions on how to use the UI component in a new android app. Here is the full list of questions we will answer in this course:\r\n\r\nInteractive Controls (about 3 hours)\r\n\r\nHow do I use a Toggle Button in Android?\r\nHow do I use a Radio Button in Android?\r\nHow do I use EditText in Android?\r\nWhat are Arrays (or lists) in Java and how do I use them?\r\nHow do I show suggestions (or autocomplete) when typing into an EditText?\r\nHow do I use a Spinner (or drop down list) in Android?\r\nHow do I change the orientation of the emulator while using shortcuts?\r\nHow do I simulate a button click with code in Android?\r\nMenus (about 2 hours)\r\n\r\nHow do I automatically add missing import statements in my code?\r\nHow do I create an Options Menu in Android?\r\nHow do I add a Popup Menu in Android?');

-- --------------------------------------------------------

--
-- Table structure for table `courses_info`
--

CREATE TABLE `courses_info` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `enrolled_students` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `image_logo` varchar(100) NOT NULL,
  `contentTable_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_info`
--

INSERT INTO `courses_info` (`course_id`, `course_name`, `enrolled_students`, `description`, `image_logo`, `contentTable_name`) VALUES
(1, 'Android Development for Beginners', 15, 'To access the free version of this course, click the blue button that says Access Course Materials.\r\n\r\nLearn the basics of Android and Java programming, and take the first step on your journey to becoming an Android developer!\r\n\r\nThis course is designed for students who are new to programming, and want to learn how to build Android apps. You don’t need any programming experience to take this course. If you’ve been using a smartphone to surf the web and chat with friends, then you’re our perfect target student!\r\n\r\nLearning anything new can be tough. We will walk you through the process of making Android apps, but to get the most out of this course, you must bring your enthusiasm for learning, and budget time on your calendar to learn with us.\r\n\r\nBy the end of the course, you’ll build two simple (but powerful) apps that you can share with your friends. We also hope that you will learn enough through this course to decide how best to continue your journey as an Android app developer, if you''re interesting in pursuing such a path.', 'android-app.jpg', 'content_android_development');

-- --------------------------------------------------------

--
-- Table structure for table `cw_users`
--

CREATE TABLE `cw_users` (
  `id_cw_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `isdonor` tinyint(4) NOT NULL DEFAULT '1',
  `phonenumber` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cw_users`
--

INSERT INTO `cw_users` (`id_cw_users`, `user_id`, `isdonor`, `phonenumber`) VALUES
(1, 19, 1, '923121234567'),
(2, 22, 0, '923121234567'),
(3, 24, 0, '923121234567'),
(4, 25, 1, '923121234567'),
(5, 33, 1, '923121234567'),
(6, 35, 1, '923121234567');

-- --------------------------------------------------------

--
-- Table structure for table `cwmigrations`
--

CREATE TABLE `cwmigrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cwmigrations`
--

INSERT INTO `cwmigrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_12_05_200000_create_problems_table', 1),
('2015_12_06_300000_add_cashier_columns', 1),
('2015_12_06_400000_create_money_table', 1),
('2015_12_12_500000_create_things_table', 1),
('2015_12_13_600000_create_donate_table', 1),
('2015_12_18_700000_add_fk_to_problems_table', 2),
('2016_01_02_221718_add_problemId_col_to_donate_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cwusers`
--

CREATE TABLE `cwusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donner` tinyint(1) NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stripe_active` tinyint(4) NOT NULL DEFAULT '0',
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_subscription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_four` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `subscription_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cwusers`
--

INSERT INTO `cwusers` (`id`, `name`, `email`, `phone`, `address`, `donner`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_active`, `stripe_id`, `stripe_subscription`, `stripe_plan`, `last_four`, `trial_ends_at`, `subscription_ends_at`) VALUES
(1, 'Waqas Raza', 'donor@gmail.com', '03048346944', 'nust h-12', 1, '$2y$10$Zun.sbyg15ucY.ncEnguMuYvhaPxxKuy3GktnndYbSMuXFAjnGzhy', 'CgNaGin86M0REgm3uCq3EXJPcWCYyvP5v3l0Bwrf8cEoR7LtseHcquC8mMKM', '2015-12-18 15:28:39', '2016-01-03 03:13:34', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Steve Austin', 'needy@gmail.com', '5096805330', 'street 32', 0, '$2y$10$tSFnnNDDiWZtlr2aqHvsS./qHSOE.dPk0BeT4xM0GTcIdNWRAqLWq', 'UxF4zuBUv3ysXhLzND1RiCpcXmsjtHAo005W1DaHW6fzgxP5rojdisOgC0cS', '2015-12-18 15:29:07', '2016-01-03 12:28:38', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Beverly Hills', 'bhills_3366@mailinator.com', '3105553366', '3366 Beverly Dr', 0, '$2y$10$mfccsoqr6IIoLoXHmLVi4eJ7xWCxpxHi0uih6z.3Ou5F0i2W8xa8.', NULL, '2015-12-20 06:59:50', '2015-12-20 06:59:50', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Beverly Hills', 'bhills_4992@mailinator.com', '3105554992', '4992 Beverly Dr', 1, '$2y$10$0zmu03ZfPIQZw45CuNs7YeSMRbiT9bTRg3JB39euEPlC0rDwE0Mkq', NULL, '2015-12-20 07:01:13', '2015-12-20 07:01:13', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Beverly Hills', 'bhills_9501@mailinator.com', '3105559501', '9501 Beverly Dr', 0, '$2y$10$qZUzQtb5s4M9juPQEUabiOxIFuts2nL6k7RPq7K1nMyYEWbRavWlO', NULL, '2015-12-20 13:11:59', '2015-12-20 13:11:59', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Beverly Hills', 'bhills_9685@mailinator.com', '3105559685', '9685 Beverly Dr', 0, '$2y$10$YkmClzF84L7Za9kabB.E/e0YjAJQzIVDPvrpZex8k.ebWFlKYAx7W', NULL, '2015-12-20 13:12:44', '2015-12-20 13:12:44', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Beverly Hills', 'bhills_6683@mailinator.com', '3105556683', '6683 Beverly Dr', 0, '$2y$10$ayI38zEc7daKs4sRSqa4yu2acqfDTiRq5qe/7E.x1wQIC6ZM7J21u', 'NVXuWIBda5crSirAnU9NyzOMkf401YhwxCEGeVGFs0bICsq13cFGqutCoGqi', '2015-12-20 13:14:01', '2015-12-20 13:14:18', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Beverly Hills', 'bhills_7547@mailinator.com', '3105557547', '7547 Beverly Dr', 1, '$2y$10$KtYvWgfX/7WrdP95c1xeceEmlrqsNsp04BcRP2EUJ0H6pNBMolRI2', 'RkNToSmDRkoD25Jz5Hk6IOYKeQNQETyd5Blo8F05WJDa9SVT1NFRF0hvuxEf', '2015-12-20 13:14:41', '2015-12-20 13:43:17', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definition` text COLLATE utf8_unicode_ci NOT NULL,
  `incidence` text COLLATE utf8_unicode_ci NOT NULL,
  `cause` text COLLATE utf8_unicode_ci NOT NULL,
  `transmission` text COLLATE utf8_unicode_ci NOT NULL,
  `symptoms` text COLLATE utf8_unicode_ci NOT NULL,
  `postmortem_exam` text COLLATE utf8_unicode_ci NOT NULL,
  `diagnosis` text COLLATE utf8_unicode_ci NOT NULL,
  `treatment` text COLLATE utf8_unicode_ci NOT NULL,
  `prevention` text COLLATE utf8_unicode_ci NOT NULL,
  `publication_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rating` enum('0','1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `user_id`, `cat_id`, `category`, `name`, `definition`, `incidence`, `cause`, `transmission`, `symptoms`, `postmortem_exam`, `diagnosis`, `treatment`, `prevention`, `publication_date`, `rating`) VALUES
(1, 0, 'P-1', 'Virus', ' (New Castle Disease) رانی کھیت ', 'نیو کیسل بیماری تمام عمر کے پولٹری کو متاثر  کرنے والی ایک انتہائی متعدی وائرل بیماری ہے . متاثرہ پرجاتیوں مرگی ، ترکی ، کبوتر اور بتھ شامل ہیں. حالت شاذ و نادر ہی بتھ میں تشخیص لیکن پیداوار قطرے / ارورتا مسائل کی ایک ممکنہ وجہ ہے . \r\nدوسرے پرجاتی کبھی کبھار ستنداریوں سمیت سنکردوست کیا جا سکتا (مثلا انسان میں آشوب چشم )\r\n', '', 'مملوث وائرس Paramyxovirus PMV 1 ، متغیر pathogenicity کی ہے جو ہے . نشانیاں عام طور پر ، اعصابی نظام تنفس یا تولیدی نظام کی بیماری ہیں . روگنتا عام طور پر زیادہ ہے اور اموات 0-100٪ سے مختلف ہوتی ہے . زیادہ اموات ویکسین سے محروم اسٹاک میں velogenic بیماری میں دیکھا جاتا ہے ', 'ٹرانسمیشن ایروسولز ، پرندوں ، fomites ، زائرین اور (اکثر asymptomatic ) درآمد psittacines کے ذریعے ہے . یہ عام طور پر عمودی نہیں ہے (لیکن چوزوں آلودہ گولوں سے \r\nافزائش گاہیں میں متاثرہ بن سکتا ہے ) \r\n', 'نشانیاں انتہائی متغیر ہیں اور انفیکشن وائرس ( اوپر ملاحظہ کریں) ، سنکرامک خوراک اور گزشتہ نمائش یا ویکسینیشن سے استثنی کی ڈگری کی نوعیت پر انحصار کرے گا .\r\n\r\nاچانک موت\r\nذہنی دباؤ.\r\nکم بھوک لگنا .\r\nکھانسی.\r\nڈائریا .\r\nاعصابی علامات .\r\nفالج .\r\nبٹی ہوئی گردن .\r\nانڈے کی پیداوار میں شدید کمی .\r\n', '', 'ایک گھمنڈی تشخیص نشانیوں، پوسٹ-ماورٹیم لیسانس، سرالوجی میں بڑھتی ہوئی ٹاٹری پر ہے. یہ تنہائی عیسوی، HA، ہیلو میں ND سیرم کے یا کیا آپ کو (کم کراس کے رد عمل), اف کے ساتھ تصدیق ہوتی ہے ۔ Cross-reactions پمو-3 کے ساتھ بنیادی طور پر کیا گیا ہے ۔ پیتھوگاناکاٹی موت کا مطلب ہے وقت کی طرف سے امبریاوس میں، انٹراسریبرال کا جائزہ لیا یا لڑکیاں میں ۴ پیتھوگاناکاٹی ۔ نمونے - داخل رغامی یا کلواکال ۔   فرق ہے متعدی بحفاظت، لارینگوٹراکہیاٹاس، متعدی کورازا، برڈفلو، EDS-76، حیموررحگاک کی بیماری، انکیپہالومیلاٹاس، انکیپہالومالاکیا، انٹسیکاٹانس، دائیں کان کے انفیکشن/کھوپڑی عثٹیاٹاس، پنیومووروس انفیکشن سے ۔', 'کوئی بھی ، اینٹی بایوٹک ثانوی بیکٹیریا کو کنٹرول کرنے کے لیے', 'سنگرودھ (Quarantine)  ، بائیو سیکیورٹی ، تمام میں / تمام آؤٹ پیداوار ، ویکسینیشن . یہ خاص طور پر معمول سیرم سائنسی نگرانی کے استعمال کی طرف سے پرندوں عمل میں ، ویکسی نیشن کے جواب کی نگرانی کے لئے عام ہے . HI بڑے پیمانے پر استعمال کیا گیا ہے؛ یلسا اب بھی استعمال کیا جاتا ہے . یہ ٹیسٹ براہ راست تاہم ، کے Mucosal استثنی کا اندازہ نہیں .\r\n\r\nحفاظتی ٹیکوں کے پروگرام مناسب طریقے سے محفوظ کیا جاتا ہے جس میں اعلی طاقت کی ویکسین ، استعمال کرتے ہیں اور اکاؤنٹ میں مقامی حالات لینا چاہئے . ایک مخصوص پروگرام دن 14 دنوں میں LaSota قسم ویکسین کے بعد کی عمر میں Hitchner B1 ویکسین شامل کر سکتے ہیں . LaSota قسم ویکسین بھی خطرہ زیادہ ہے تو عمر کے 35-40 دنوں میں بار بار کر سکتے ہیں . سپرے درخواست کے استعمال کی سفارش کی ہے لیکن یہ کم سے کم رد عمل کے ساتھ اچھا تحفظ حاصل کرنے کے لئے دیکھ بھال کے ساتھ لاگو کیا جا کرنے کی ضرورت ہے .\r\nفعال ویکسین زیادہ تر عام میں زندہ ویکسین کے استعمال کی جگہ لے لی ہے لیکن وہ مقامی بیماریوں کے لگنے کی روک تھام کے لیے نہیں .\r\n\r\nانیکٹاویٹد ویکسین زیادہ تر عام میں براہ راست ویکسین کے استعمال کی جگہ لے لی ہے بلکہ انہیں مقامی بیماریوں کے لگنے سے منع نہیں ہے ۔   کی روک تھام یا واکانال کے رد عمل میں نوجوان چوزوں کم کرنے کے لیے اس دن پرانی ہے ماؤں کو یکساں ٹاریس ضروری ہے ۔ واکانال رد عمل آشوبِ چشم، سناکانگ، اور کبھی کبھار کم trachea میں پیپ کا ایک پلگ کی وجہ سے سانس لینا کے طور پر پیش کرسکتا ہے ۔ کچھ ممالک میں اسے گلیزر واککانال ردعمل کے ادوار کے دوران اینٹی پروفیلیکٹاکالل فراہم کرنے کے لئے موجود رہی ہے ۔ اچھا انتظام کے تحت میکوپلاسم گاللاسیپٹیکم مفت اسٹاک کے استعمال کا خطرہ واکانال رد عمل کی گھٹا دیتا ہے ۔\r\n', '2016-01-03 09:51:48', '0'),
(2, 0, 'P-2', 'Virus', 'ميريکس کی بيماری (Marek’s Disease)', 'مرغیوں کی وہ بیماری اور شاذ و نادر ہی مرغیوں کے ساتھ قریبی ایسوسی ایشن میں ترکوں، دنیا بھر میں دیکھا کی ایک ہرپیز وائرس انفیکشن ہے. 1980 اور 1990 کے عشرے سے انتہائی کمزوری اپبھیدوں شمالی امریکہ اور یورپ میں ایک مسئلہ بن چکے ہیں ۔ مرض 10-50 فیصد اور شرح اموات 100 فیصد ہے ۔ ایک متاثرہ ریوڑ میں شرح اموات عام طور پر ایک اعتدال پسند یا اعلی کی شرح پر کافی چند ہفتوں تک جاری رہتا ہے ۔ ''دیر'' وہ میں کی اموات کی عمر 40 ہفتے کو وسیع کر سکتے ہیں ۔ متاثرہ پرندے زیادہ دیگر بیماریوں کے لئے، پرجیوی اور بیکٹیریل دونوں ساتھ ہیں ۔', '', 'انفیکشن کا راستہ عموماً تنفس ہے اور یہ بیماری پھیلانے متعدی پنکھ گلٹی غصہ، فاوماٹیس، وغیرہ کی طرف سے اعلی متعدی ہے ۔ متاثرہ پرندوں کی زندگی کے لئے واریماک رہیں ۔ عمودی ٹرانسمیشن اہم نہیں تصور کی جاتی ہے ۔', '', 'پیروں، پروں اور گردن کافالج . وزن میں کمی ۔ گرے iris یا Pupil۔ رویا تنظیمیں ۔ پنکھ کے follicles  کا اٹھنا اور رووگہان کے ارد گردکھردری جلد ہے ۔', 'جگر، طحال، گردوں، پھیپھڑوں، گوندس، دل اور استخوان بندی پٹھوں میں   گرے-سفید فوکا نیوپلاسٹاک ٹش ۔ عصبی تنوں اور سٹریاشن کا نقصان ہوا گاڑھا ہونا. ماکراسوپاکالل - لیمفواد گھسپیٹھ کی کثیرشکلیت ہے ', 'تاریخ، طبی علامات، لیسانس ، ہسٹوپیٹہولوجی ۔  لیمپہواد لیوکوساس، عصیھ، ٹہاامانا کی کمی، خاص طور پر آغاز پر، Ca/فاسفورس/وٹامن ڈی کی کمی ۔', 'کوئی نہیں', 'حفظان صحت، سب-میں/سب-out پیداوار، مزاحم اپبھیدوں، 1500PFU  کے HVT میں پرانے دن (مگر اب تیزی کے ساتھ میں اووا ایپلی کیشن پر منتقلی کے)، ایسوسی ایشن کے دیگر اپبھیدوں (SB1 سارو-قسم 2) کے ساتھ اور راسپان کے ساتھ عام طور پر قطرے پلانے ہیں ۔   یہ ویکسین کی مختلف اقسام کے امتزاج کی کوشش میں وسیع تحفظ حاصل کرنے کے لیے استعمال کرنا عام رواج ہے ۔ وراثیات B21 جین ہے جو وہ کی بیماری چیلنج کے لیے بڑھتی ہوئی مزاحمت ویسےہی کی فریکوئنسی میں اضافہ کی طرف سے مدد کر سکتے ہیں ۔', '2016-01-03 09:55:50', '0');

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `id` int(10) UNSIGNED NOT NULL,
  `donorId` int(10) UNSIGNED NOT NULL,
  `moneyId` int(10) UNSIGNED NOT NULL,
  `thingId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `problemId` int(10) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`id`, `donorId`, `moneyId`, `thingId`, `created_at`, `updated_at`, `problemId`) VALUES
(46, 2, 4, 0, '2016-01-02 13:48:26', '2016-01-02 13:48:26', 2),
(47, 1, 2, 0, '2016-01-02 13:53:31', '2016-01-02 13:53:31', 2),
(48, 1, 2, 0, '2016-01-02 14:14:07', '2016-01-02 14:14:07', 2),
(49, 1, 2, 0, '2016-01-02 14:16:25', '2016-01-02 14:16:25', 2),
(50, 1, 5, 0, '2016-01-02 14:25:14', '2016-01-02 14:25:14', 2),
(51, 1, 2, 0, '2016-01-02 15:08:22', '2016-01-02 15:08:22', 2),
(52, 1, 2, 0, '2016-01-03 03:10:26', '2016-01-03 03:10:26', 2);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `donation_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_reg`
--

CREATE TABLE `donor_reg` (
  `uname` varchar(15) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `weight` int(4) NOT NULL,
  `b_gp` varchar(5) NOT NULL,
  `ldd` date NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pin_code` int(10) NOT NULL,
  `mob_num` varchar(12) NOT NULL,
  `e_mail` varchar(40) NOT NULL,
  `msg` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor_reg`
--

INSERT INTO `donor_reg` (`uname`, `pass`, `name`, `age`, `gender`, `dob`, `weight`, `b_gp`, `ldd`, `state`, `city`, `pin_code`, `mob_num`, `e_mail`, `msg`) VALUES
('amad', '2345', 'ahmed', 13, 'male', '2013-45-67', 34, 'A+', '0000-00-00', 'Punjab', 'Multan', 44000, '35338573', 'asd@gmail.com', 'fggfc fgdg gdhg gd');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`id`, `course_name`, `student_name`, `status`) VALUES
(1, 'Introduction to android development', 'ahmed191', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `exp_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `student_expense` int(11) NOT NULL,
  `teachers_salary` int(11) NOT NULL,
  `staff_salary` int(11) NOT NULL,
  `bills` int(11) NOT NULL,
  `extras` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`exp_id`, `date`, `student_expense`, `teachers_salary`, `staff_salary`, `bills`, `extras`) VALUES
(2, '2015-11-30 19:00:00', 54355, 54635, 4354, 5435, 12000),
(23, '2016-01-02 16:41:59', 65767, 5000, 45435, 564, 432),
(24, '2016-01-02 16:42:19', 3123, 5000, 45435, 567, 67567),
(26, '2016-01-02 17:25:38', 571332, 5000, 45435, 435, 4535),
(27, '2016-01-02 17:26:02', 571332, 5000, 45435, 234, 342),
(28, '2016-01-03 15:40:52', 0, 5000, 49434, 75767, 57767),
(29, '2016-01-03 15:41:13', 0, 5000, 49434, 2, 2),
(30, '2016-01-03 15:46:31', 571332, 5000, 49434, 44, 44),
(31, '2016-01-04 18:24:43', 9094, 5000, 1000, 5000, 250);

-- --------------------------------------------------------

--
-- Table structure for table `facuties_tbl`
--

CREATE TABLE `facuties_tbl` (
  `faculties_id` int(10) UNSIGNED NOT NULL,
  `faculties_name` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facuties_tbl`
--

INSERT INTO `facuties_tbl` (`faculties_id`, `faculties_name`, `note`) VALUES
(3, 'Fahad Satti', 'Instructor');

-- --------------------------------------------------------

--
-- Table structure for table `forum_table`
--

CREATE TABLE `forum_table` (
  `post_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `comments_table` varchar(100) NOT NULL,
  `post_text` varchar(4000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_table`
--

INSERT INTO `forum_table` (`post_id`, `username`, `subject`, `comments_table`, `post_text`, `created_at`) VALUES
(1, 'ahmed191', 'Multiple forms in android eclipse', 'post_table1', 'how to link multiple form in android eclipse?*Do i have to make multiple xml files in res/layout/main.xml and if this how to use them?*', '2015-12-31 21:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `hw_users`
--

CREATE TABLE `hw_users` (
  `id_hw_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hw_users`
--

INSERT INTO `hw_users` (`id_hw_users`, `user_id`, `phone_number`) VALUES
(1, 24, '923121234567'),
(2, 19, '923121234567'),
(3, 27, '923127199912'),
(4, 33, '923121234567');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `cat_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `image_name` text COLLATE utf8_unicode_ci NOT NULL,
  `scan_image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(10) UNSIGNED NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(45) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `user_id`, `password`) VALUES
('', 19, ''),
('a', 26, 'a'),
('aaaa', 8, 'aaaa'),
('add', 15, 'qq'),
('admin', 6, 'admin'),
('asfandyar', 3, 'hashmi'),
('aw', 23, 'aw'),
('b', 172, 'b'),
('c', 14, 'c'),
('eee', 16, 'eee'),
('f', 4, 'p'),
('j', 172, 'j'),
('m', 18, 'm'),
('moazzam', 5, 'khan'),
('moiz', 2, 'farooq'),
('moiza', 25, '12345'),
('n', 20, 'n'),
('q', 12, 'q'),
('qq', 10, 'q'),
('qwe', 24, 'aa'),
('ss', 7, 'aa'),
('t', 17, 't'),
('talha', 1, 'munir'),
('usman', 4, 'asghar'),
('z', 9, 'z'),
('zz', 13, 'z');

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member_reg`
--

CREATE TABLE `member_reg` (
  `uname` varchar(15) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mob_num` varchar(12) NOT NULL,
  `e_mail` varchar(40) NOT NULL,
  `msg` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_reg`
--

INSERT INTO `member_reg` (`uname`, `pass`, `name`, `mob_num`, `e_mail`, `msg`) VALUES
('omer', '12345', 'Omer', '0515151667', 'omer@gmail.com', 'Stay Blessed everyone.'),
('Ali', 'pakistan', 'Ali Khan', '03006752872', 'ali@gmail.com', 'Hi, I am ALi. Have a Nice Day.'),
('basit', '12345', 'Basit Ali', '03005675671', 'basit@gmail.com', 'Happy New Year. '),
('usman', '12345', 'Hafiz Usman', '03331234567', 'h.usman@gmail.com', 'Hi, I am Usman.\r\nThanks'),
('ndsad', '1232', 'ewqe', '523423', 'qwe4r3', 'asdd');

-- --------------------------------------------------------

--
-- Table structure for table `metirial_donation`
--

CREATE TABLE `metirial_donation` (
  `metirial_id` int(11) NOT NULL,
  `metirial_name` varchar(60) NOT NULL,
  `category` varchar(30) NOT NULL,
  `picture` varchar(60) DEFAULT NULL,
  `sent` int(1) NOT NULL,
  `reserved` int(1) NOT NULL,
  `recieved` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metirial_donation`
--

INSERT INTO `metirial_donation` (`metirial_id`, `metirial_name`, `category`, `picture`, `sent`, `reserved`, `recieved`) VALUES
(45, '4564654', 'Clothes', 'pics/445dd8.jpg', 0, 0, 0),
(46, '4564654', 'Clothes', 'pics/445dd8.jpg', 0, 0, 0),
(47, 'sdfsdfs', 'Bags', 'pics/1511628_624478180923496_1200703402_n.jpg', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `metirial_donation_acceptor`
--

CREATE TABLE `metirial_donation_acceptor` (
  `metirial_id` int(11) NOT NULL DEFAULT '0',
  `user_first_name` varchar(15) NOT NULL,
  `user_last_name` varchar(15) NOT NULL,
  `user_email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metirial_donation_user`
--

CREATE TABLE `metirial_donation_user` (
  `metirial_id` int(11) NOT NULL DEFAULT '0',
  `user_first_name` varchar(15) NOT NULL,
  `user_last_name` varchar(15) NOT NULL,
  `user_email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metirial_donation_user`
--

INSERT INTO `metirial_donation_user` (`metirial_id`, `user_first_name`, `user_last_name`, `user_email`) VALUES
(45, '1234', 'Mouse', '13beseuhussain@seecsada.edu.pk'),
(46, '1234', 'Mouse', '13beseuhussain@seecsada.edu.pk'),
(47, '1234', 'Mouse', '13beseuhussain@seecsada.edu.pk');

-- --------------------------------------------------------

--
-- Table structure for table `mh_user_data`
--

CREATE TABLE `mh_user_data` (
  `user_first_name` varchar(15) NOT NULL,
  `user_last_name` varchar(15) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_donor` varchar(1) DEFAULT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_contact_number` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mh_user_data`
--

INSERT INTO `mh_user_data` (`user_first_name`, `user_last_name`, `user_email`, `user_donor`, `user_password`, `user_address`, `user_contact_number`) VALUES
('1234', 'Mouse', '13beseuhussain@seecsada.edu.pk', '1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sdasd asdasd adada', 2147483647),
('test', 'check', 'abc@kg.com', '1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'asasewe sdfsdfsd sdfsd f', 2147483647),
('test', 'check', 'skipper.umar@gmail.cd.com', '1', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 'sdfsdf', 2147483647),
('umar', 'hussain', '13beseuhussain@edu.pk', '0', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'asdasjhd', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `mh_users`
--

CREATE TABLE `mh_users` (
  `id_mh_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_number` varchar(45) NOT NULL,
  `is_donor` tinyint(4) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mh_users`
--

INSERT INTO `mh_users` (`id_mh_users`, `user_id`, `contact_number`, `is_donor`, `address`) VALUES
(1, 19, '923121234567', 0, 'house 1 street 2 awqq'),
(3, 21, '923121234567', 1, 'asasewe sdfsdfsd sdfsd f'),
(4, 24, '923121234567', 0, 'asdasjhd'),
(5, 25, '923121234567', 1, 'sdfsdf'),
(6, 33, '923121234567', 1, 'sdasd asdasd adada');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_01_01_062528_create_images_table', 1),
('2016_01_02_062528_create_MMusers_table', 1),
('2016_01_03_062528_create_schools_table', 1),
('2016_01_04_062528_create_password_resets_table', 1),
('2016_01_05_062528_create_donations_table', 1),
('2016_01_01_062528_create_images_table', 1),
('2016_01_02_062528_create_MMusers_table', 1),
('2016_01_03_062528_create_schools_table', 1),
('2016_01_04_062528_create_password_resets_table', 1),
('2016_01_05_062528_create_donations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mm_users`
--

CREATE TABLE `mm_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `bio` text COLLATE utf8_unicode_ci NOT NULL,
  `more_info` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mm_users`
--

INSERT INTO `mm_users` (`user_id`, `name`, `email`, `password`, `phone_number`, `occupation`, `role`, `bio`, `more_info`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Abdul Basit12', 'basit850@gmail.co12m', 'abcd123423', 'abcd123re4', 'Teacherer', 0, 'nothing Special ', 'fdsaf', 's7bp05t1wawJpX3SRmGlILYpxXGHbvbgekvXZxaGX9MyYgDpGr9XKCPgEes6', '0000-00-00 00:00:00', '2016-01-02 05:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `mmm_users`
--

CREATE TABLE `mmm_users` (
  `id_mm_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `bio` longtext NOT NULL,
  `more_info` text NOT NULL,
  `occupation` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mmm_users`
--

INSERT INTO `mmm_users` (`id_mm_users`, `user_id`, `phone_number`, `bio`, `more_info`, `occupation`) VALUES
(1, 22, '923121345678', 'sdfhsdfsdnfjk fsdjk f', 'sdfsdfnsdfk sdfsdk fsdkfs', 'carpainter'),
(2, 24, '923121234567', 'sdfsdfsd', 'sdfsd', 'dfsdf'),
(3, 25, '923121234567', 'fwfjkwefnw vk jkdsjksdnfsjknsjkdf sd fsdfw ieof wehdsfi oifoweoif uwo f wofjoweiow f ow fowe ofwo fow eo fuou fowe fowe ufouwe fuweuo fuweo fuoweiu iofu weiofwri uf orwfuru frefu erfoe rg eru ger gerio geroi goeri goetg trgu er ger goer oesfsdfsdfsdfsdfsdfsdf sdfsdfsd sd fsd fs  sd  d  d d d d d d werwern wefw jif rf erj fnd fn n efn wejn fn fne rfn enmr gmn rmn nmd vcm vern n vd fvn sdm vmsnd fnmw em mw', 'sfsdfsdssd', 'fwe'),
(4, 33, '923121234567', 'asdasdasd', 'asdasdadasdas', 'adasa'),
(5, 35, '923121234567', 'buhbuhj', 'zxdfxfgc', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `monetary_donation`
--

CREATE TABLE `monetary_donation` (
  `problem_id` int(11) NOT NULL,
  `problem_name` varchar(30) NOT NULL,
  `problem_description` varchar(500) NOT NULL,
  `money_required` int(11) DEFAULT NULL,
  `money_recieved` int(11) DEFAULT '0',
  `picture` varchar(30) DEFAULT NULL,
  `acceptor_contact` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `money`
--

CREATE TABLE `money` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) UNSIGNED NOT NULL,
  `problemId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `money`
--

INSERT INTO `money` (`id`, `name`, `organization`, `phone`, `email`, `address`, `city`, `state`, `cost`, `problemId`, `created_at`, `updated_at`) VALUES
(32, 'Beverly Hills', 'Xfwgc', '3105551253', 'bhills_1253@mailinator.com', 'Cmqhzi lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Beverly Hills', 'CA', 1253, 4, '2016-01-02 13:48:26', '2016-01-02 13:48:26'),
(33, 'Beverly Hills', 'Jhhgy', '3105550533', 'bhills_0533@mailinator.com', 'Haenuf lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Beverly Hills', 'CA', 533, 2, '2016-01-02 13:53:31', '2016-01-02 13:53:31'),
(34, 'Beverly Hills', 'Ckhvd', '3105557836', 'bhills_7836@mailinator.com', 'Yngafe lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Beverly Hills', 'CA', 7836, 2, '2016-01-02 14:14:07', '2016-01-02 14:14:07'),
(35, 'Beverly Hills', 'Xaaxh', '3105555886', 'bhills_5886@mailinator.com', 'Gdjvnc lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Beverly Hills', 'CA', 5886, 2, '2016-01-02 14:16:25', '2016-01-02 14:16:25'),
(36, 'Beverly Hills', 'Sygdo', '3105555116', 'bhills_5116@mailinator.com', 'Wahhoo lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Beverly Hills', 'CA', 5116, 5, '2016-01-02 14:25:14', '2016-01-02 14:25:14'),
(37, 'Beverly Hills', 'Xdodi', '3105551598', 'bhills_1598@mailinator.com', 'Qqqbvi lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Beverly Hills', 'CA', 1598, 2, '2016-01-02 15:08:22', '2016-01-02 15:08:22'),
(38, 'Beverly Hills', 'Iiayf', '3105554852', 'bhills_4852@mailinator.com', 'Jrjoaq lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Beverly Hills', 'CA', 4852, 2, '2016-01-03 03:10:26', '2016-01-03 03:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `mr_users`
--

CREATE TABLE `mr_users` (
  `idmr_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mr_users`
--

INSERT INTO `mr_users` (`idmr_users`, `user_id`, `contact`, `role`) VALUES
(1, 24, '923121234567', 0),
(2, 33, '923121234567', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `user_id` int(11) NOT NULL,
  `ngo_name` varchar(255) NOT NULL,
  `ngo_email` varchar(50) NOT NULL,
  `ngo_phone` varchar(20) DEFAULT NULL,
  `ngo_image` varchar(50) DEFAULT NULL,
  `ngo_description` varchar(255) DEFAULT NULL,
  `ngo_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ngo_rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ngo_cause`
--

CREATE TABLE `ngo_cause` (
  `cause_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cause_title` varchar(50) DEFAULT NULL,
  `cause_venue` varchar(100) DEFAULT NULL,
  `cause_cover` varchar(50) DEFAULT NULL,
  `cause_description` varchar(255) DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `finishing_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ngo_item`
--

CREATE TABLE `ngo_item` (
  `item_id` int(11) NOT NULL,
  `cause_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_description` varchar(255) DEFAULT NULL,
  `item_worth` int(11) DEFAULT NULL,
  `item_required` int(11) DEFAULT NULL,
  `item_recieved` int(11) DEFAULT NULL,
  `item_promised` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ngo_message`
--

CREATE TABLE `ngo_message` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `message_subject` varchar(100) DEFAULT NULL,
  `message_body` varchar(100) DEFAULT NULL,
  `send_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ngo_user`
--

CREATE TABLE `ngo_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(75) NOT NULL,
  `is_user_ngo` tinyint(1) DEFAULT NULL,
  `is_user_admin` tinyint(1) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo_user`
--

INSERT INTO `ngo_user` (`user_id`, `user_name`, `is_user_ngo`, `is_user_admin`, `pass`) VALUES
(1, 'wqe', 1, 1, 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `pamphlets`
--

CREATE TABLE `pamphlets` (
  `cat_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `pam_id` int(11) NOT NULL,
  `pam_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publication_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `title` varchar(30) NOT NULL,
  `cell` varchar(25) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `price` varchar(20) NOT NULL,
  `sponsored` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `location`, `caption`, `title`, `cell`, `fullname`, `price`, `sponsored`) VALUES
(61, 'photos/kk.jpg', 'hssa', 'bmwclassic', '03939933', 'hussnain', '3773373', 0),
(60, 'photos/kk.jpg', 'hushwuhushwu', 'bmw classic', '', '', '120000', 0),
(59, 'photos/1546385_657214171063958_5685249054500195149_n.jpg', '', '', '', '', '', 0),
(58, 'photos/10566357_915123541847414_2117040397_n.jpg', 'hdhushudhhdus', 'hussnain', '03128888822', 'hussnain', '1200000', 0),
(57, 'photos/10566357_915123541847414_2117040397_n.jpg', 'hdhushudhhdus', 'hussnain', '03128888822', 'hussnain', '1200000', 0),
(56, 'photos/', '', '', '', '', '', 0),
(53, 'photos/ss.jpg', 'brandnew', 'bmw classic', '', '', '200000', 0),
(54, 'photos/rolls.jpg', 'shsuhushushus', 'HealthyFit', '', '', '3939', 0),
(55, 'photos/kk.jpg', 'hey there', 'hhhhh', '99999', 'hhhhhhhhhhh', '313232', 0),
(62, 'photos/kk.jpg', 'nice one', 'bmw classic', '03333222', 'hussnain', '1230', 0),
(63, 'photos/', '', '', '', '', '', 0),
(64, 'photos/kk.jpgss', 'hssass', 'bmwclassicss', '03939933ss', 'hussnainss', '3773373ss', 1),
(65, '', '', '', '', '', '', 0),
(66, '', '', '', '', '', '', 0),
(67, '', '', '', '', '', '', 0),
(68, '', '', '', '', '', '', 0),
(69, '', '', '', '', '', '', 0),
(70, '', '', '', '', '', '', 0),
(71, '', '', '', '', '', '', 0),
(72, '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_table1`
--

CREATE TABLE `post_table1` (
  `cmnt-num` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` mediumtext NOT NULL,
  `posted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_table1`
--

INSERT INTO `post_table1` (`cmnt-num`, `username`, `comment`, `posted_at`) VALUES
(1, 'James', '\r\naccepted\r\nI''ll make a quick explanation for you at your level of understanding. You will want to follow the tutorial Houcine gave you, but to answer your question best I can:\r\n\r\nFirst off: A form is a field that users input information into. Like a textbox, or a checkbox. You CAN put multiple forms on a single page. For example:\r\n\r\n<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"\r\nandroid:layout_width="fill_parent"\r\nandroid:layout_height="fill_parent"\r\nandroid:orientation="vertical" >\r\n\r\n<TextView\r\n    android:layout_width="fill_parent"\r\n    android:layout_height="wrap_content"\r\n    android:text="@string/hello" />\r\n\r\n<EditText\r\n    android:id="@+id/editText1"\r\n    android:layout_width="match_parent"\r\n    android:layout_height="wrap_content" >\r\n\r\n    <requestFocus />\r\n</EditText>\r\n\r\n<CheckBox\r\n    android:id="@+id/checkBox1"\r\n    android:layout_width="wrap_content"\r\n    android:layout_height="wrap_content"\r\n    android:text="CheckBox" />\r\n\r\n<RadioButton\r\n    android:id="@+id/radioButton1"\r\n    android:layout_width="wrap_content"\r\n    android:layout_height="wrap_content"\r\n    android:text="RadioButton" />\r\n\r\n<Spinner\r\n    android:id="@+id/spinner1"\r\n    android:layout_width="match_parent"\r\n    android:layout_height="wrap_content" />\r\nSee, all sorts of forms!\r\n\r\nBut I think what you mean to ask is, how do I link to different layouts.\r\n\r\nThe answer to your second question is: Yes! Simply make a new xml file in your res>layout folder! Toss a <?xml version="1.0" encoding="utf-8"?> at the top then have fun!\r\n\r\nIf you want to link to that new layout, make a button or something in main.xml. in the .xml file of that button, add android:onClick="doThis" (or whatever you want in the quotations) to the button.\r\n\r\nNow, make your second page (a new class) in the same directory as your main.java. Call it whatever you want. I''m going to call it Page2Activity.java.\r\n\r\nNow, to switch between layouts easily as a beginner, I found this is the easiest way: Lets say our second page was page2.xml, add this piece of code into your main activity''s java file.\r\n\r\n    public void doThis(View view) {\r\n    Intent page2 = new Intent();\r\n    page2.setClassName("com.yourproject",\r\n            "com.yourproject.page2Activity");\r\n    startActivity(page2);\r\nThis should take you to the next class! Great huh? But we still need to use our page2.xml. You could use inflaters, (read up on those sometimes), but for beginner''s sake just put\r\n\r\nsetContentView(R.layout.page2);\r\nafter\r\n\r\n    public void onCreate(Bundle savedInstanceState) {\r\n    super.onCreate(savedInstanceState);\r\nIn your Page2Activity\r\n\r\nONE MORE THING: You have to add your new activity to your manifest! Easy peasy. Open up your AndroidManifest.xml, and add\r\n\r\n<activity android:name=".Page2Activity"</activity>\r\nright after the first you see (which would be the main one)\r\n\r\nTry it out!', '2015-12-31 21:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `problem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `severity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `solved` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `name`, `phone`, `address`, `problem`, `severity`, `cost`, `solved`, `userId`, `created_at`, `updated_at`) VALUES
(2, 'Beverly Hills', '3105550065', '0065 Beverly Dr', 'Awlqla lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'high', 65, 1, 2, '2015-12-18 15:35:57', '2015-12-21 14:10:26'),
(3, 'Beverly Hills', '3105557186', '7186 Beverly Dr', 'Qhtjed lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'high', 7186, 1, 2, '2015-12-18 15:36:16', '2015-12-19 08:37:43'),
(4, 'Waqas', '025998989', 'some address', 'Problem Detail', 'extreme', 989, 0, 2, '2015-12-19 09:58:06', '2015-12-19 09:58:06'),
(5, 'Beverly Hills', '3105552657', '2657 Beverly Dr', 'Bzaygi lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'high', 2657, 0, 2, '2016-01-02 13:09:02', '2016-01-02 13:09:02'),
(9, 'Beverly Hills', '310555552657', '2657 Beverly Dr', 'Bzaygi lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'high', 2657, 0, 1, '2016-01-02 13:09:55', '2016-01-02 13:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `profile_users`
--

CREATE TABLE `profile_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `bloodgroup` varchar(5) NOT NULL,
  `gender` int(11) NOT NULL,
  `education` varchar(250) DEFAULT NULL,
  `likes` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question_info`
--

CREATE TABLE `question_info` (
  `que_id` int(11) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `ques_desc` varchar(135) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_info`
--

INSERT INTO `question_info` (`que_id`, `test_id`, `ques_desc`) VALUES
(10, 2, 'In high energy physics scientist study '),
(11, 2, '1 mile is equal to '),
(12, 2, 'Number of significant figure in 0.0173 are:'),
(13, 2, 'which one of the following is not the unit of length:'),
(14, 2, 'which one is highest power multiple '),
(15, 4, 'The number of moles of CO2 which contain 8gm of O2'),
(16, 4, 'The electrolyte used in fuel cell is '),
(17, 4, 'burning of coal is an example of '),
(18, 4, 'which of the given is pseudo solid '),
(19, 4, 'Ice occupies more space than water '),
(20, 6, 'if a =b and b=c then a = c this property is called '),
(21, 6, 'if the product of complex number (4,3) and (5,-6) is'),
(22, 6, '(2,6)/(4,2)'),
(23, 6, 'multiplicative identity of complex number is '),
(24, 6, 'if a > b and b>a then'),
(25, 2, 'q'),
(26, 2, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller` varchar(255) NOT NULL,
  `buyer` varchar(255) NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `rating_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registered_modules`
--

CREATE TABLE `registered_modules` (
  `id_registered_modules` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_modules`
--

INSERT INTO `registered_modules` (`id_registered_modules`, `user_id`, `module_id`, `password`) VALUES
(1, 19, './school_management', ''),
(2, 19, './drixel', ''),
(3, 19, './academic_scholorships', ''),
(4, 19, './donations', ''),
(5, 19, './d2quiz', ''),
(6, 19, './ngos', ''),
(7, 19, './problem_sharing', ''),
(8, 21, './d2quiz', ''),
(10, 21, './donations', ''),
(11, 21, './school_management', ''),
(12, 22, './school_renovation', ''),
(13, 22, './problem_sharing', ''),
(14, 22, './drixel', ''),
(15, 22, './d2quiz', ''),
(16, 22, './school_management', ''),
(17, 24, './academic_scholorships', ''),
(18, 24, './school_renovation', ''),
(19, 24, './problem_sharing', ''),
(20, 24, './food_sustenance', ''),
(21, 24, './donations', ''),
(22, 24, './p2p_ecommerce', ''),
(23, 24, './drixel', ''),
(24, 24, './school_management', ''),
(25, 24, './d2quiz', ''),
(26, 24, './ngos', ''),
(27, 24, './blood_donations', ''),
(28, 25, './problem_sharing', ''),
(29, 25, './drixel', ''),
(30, 25, './school_management', ''),
(31, 25, './school_renovation', ''),
(32, 25, './academic_scholorships', ''),
(33, 25, './donations', ''),
(34, 19, './p2p_ecommerce', ''),
(35, 19, './blood_donations', ''),
(36, 27, './school_management', ''),
(37, 27, './p2p_ecommerce', ''),
(38, 27, './blood_donations', ''),
(39, 28, './blood_donations', ''),
(40, 29, './school_management', ''),
(41, 30, './school_management', ''),
(42, 31, './school_management', ''),
(43, 32, './school_management', ''),
(44, 32, './academic_scholorships', ''),
(45, 33, './donations', ''),
(48, 33, './academic_scholorships', ''),
(49, 33, './p2p_ecommerce', ''),
(50, 33, './drixel', ''),
(51, 33, './blood_donations', ''),
(52, 33, './d2quiz', ''),
(53, 33, './problem_sharing', ''),
(54, 33, './food_sustenance', ''),
(55, 33, './school_renovation', ''),
(56, 33, './school_management', ''),
(57, 34, './blood_donations', ''),
(58, 34, './school_management', ''),
(59, 35, './school_renovation', NULL),
(60, 35, './problem_sharing', NULL),
(61, 35, './academic_scholorships', NULL),
(62, 35, './drixel', NULL),
(63, 35, './d2quiz', NULL),
(64, 35, './blood_donations', NULL),
(65, 36, './school_management', NULL),
(66, 37, './school_management', NULL),
(67, 38, './school_management', NULL),
(68, 39, './school_management', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `username` varchar(45) DEFAULT NULL,
  `test_id` int(11) NOT NULL,
  `test_date` datetime DEFAULT NULL,
  `score` int(11) NOT NULL,
  `result_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`username`, `test_id`, `test_date`, `score`, `result_id`) VALUES
('talha', 6, '2015-01-26 03:27:34', 0, 1),
('talha', 6, '2015-01-26 03:29:43', 2, 2),
('talha', 6, '2015-01-26 03:31:13', 1, 3),
('talha', 2, '2015-01-26 12:00:07', 0, 4),
('talha', 2, '2015-01-26 12:11:46', 0, 5),
('talha', 2, '2015-01-26 13:11:12', 0, 6),
('talha', 6, '2015-01-27 10:08:12', 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sch_communication`
--

CREATE TABLE `sch_communication` (
  `school_id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_is` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sch_donations`
--

CREATE TABLE `sch_donations` (
  `don_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `req_id` int(11) NOT NULL,
  `don_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sch_requests`
--

CREATE TABLE `sch_requests` (
  `req_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `req_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `full_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `course_degree` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `approx_amount` int(11) NOT NULL,
  `school_name` varchar(80) NOT NULL,
  `req_text` text NOT NULL,
  `add_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sch_requests`
--

INSERT INTO `sch_requests` (`req_id`, `user_id`, `req_time`, `full_name`, `father_name`, `course_degree`, `age`, `gender`, `approx_amount`, `school_name`, `req_text`, `add_info`) VALUES
(1, 32, '0000-00-00 00:00:00', '11', 'abc', 'bs', 21, '0', 5000, 'fsd sdfs', 'erwereiw ', 'werwer');

-- --------------------------------------------------------

--
-- Table structure for table `sch_school`
--

CREATE TABLE `sch_school` (
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_ame` varchar(80) NOT NULL,
  `school_address` varchar(100) NOT NULL,
  `school_contact` varchar(20) NOT NULL,
  `school_email` varchar(30) NOT NULL,
  `school_website` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sch_school`
--

INSERT INTO `sch_school` (`school_id`, `user_id`, `school_ame`, `school_address`, `school_contact`, `school_email`, `school_website`) VALUES
(1, 9, 'abc school', 'xyz city', '03236566', 's@l.com', 'sdfsf'),
(3, 14, 'a', 'b', 'c', 'd@e.com', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `sch_users`
--

CREATE TABLE `sch_users` (
  `sch_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `is_school` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sch_users`
--

INSERT INTO `sch_users` (`sch_id`, `user_id`, `rating`, `is_school`, `is_admin`) VALUES
(1, 8, 0, 0, 1),
(2, 9, 0, 1, 0),
(3, 14, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount_required` int(11) NOT NULL,
  `amount_gathered` int(11) NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sr_users`
--

CREATE TABLE `sr_users` (
  `idsr_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(45) NOT NULL DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_users`
--

INSERT INTO `sr_users` (`idsr_users`, `user_id`, `user_role`) VALUES
(1, 19, 'student'),
(2, 20, 'student'),
(3, 21, 'student'),
(4, 22, 'student'),
(5, 23, 'student'),
(6, 24, 'student'),
(7, 25, 'student'),
(8, 26, 'student'),
(9, 27, 'student'),
(10, 28, 'student'),
(11, 29, 'student'),
(12, 30, 'teacher'),
(13, 31, 'admin'),
(14, 32, 'admin'),
(15, 33, 'teacher'),
(16, 34, 'teacher'),
(17, 36, 'student'),
(18, 37, 'student'),
(19, 38, 'student'),
(20, 39, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `stu_score_tbl`
--

CREATE TABLE `stu_score_tbl` (
  `ss_id` int(10) UNSIGNED NOT NULL,
  `stu_id` varchar(50) NOT NULL,
  `faculties_id` varchar(50) NOT NULL,
  `sub_id` varchar(50) NOT NULL,
  `miderm` float NOT NULL,
  `final` float NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_score_tbl`
--

INSERT INTO `stu_score_tbl` (`ss_id`, `stu_id`, `faculties_id`, `sub_id`, `miderm`, `final`, `note`) VALUES
(29, 'Saif-ur- Rehman', 'test', 'fdsf', 45, 80, 'fgdgsg');

-- --------------------------------------------------------

--
-- Table structure for table `stu_tbl`
--

CREATE TABLE `stu_tbl` (
  `roll_no` int(10) NOT NULL,
  `stu_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `student_expense` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_tbl`
--

INSERT INTO `stu_tbl` (`roll_no`, `stu_id`, `f_name`, `l_name`, `gender`, `dob`, `address`, `phone`, `email`, `student_expense`) VALUES
(2116, 1, 'Chaudhary', 'Waqas', 'male', '1991-03-01', 'Lahore', '12345678910', 'waqas@gmail.com', 1000),
(2115, 2, 'Usman', 'Asghar', 'male', '1990-05-04', '  Lahore', '12345678910', 'usman@yahoo.com', 6767),
(2103, 3, 'Tahir', 'Awan', 'male', '1988-05-05', '   Lahore', '12345678910', 'tahir@gmail.com', 550),
(2110, 4, 'Abdul', 'Jabbar', 'male', '1989-06-06', 'Lahore', '12345678910', 'jabbar@gmail.com', 777);

-- --------------------------------------------------------

--
-- Table structure for table `sub_tbl`
--

CREATE TABLE `sub_tbl` (
  `sub_id` int(10) UNSIGNED NOT NULL,
  `faculties_id` varchar(50) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_tbl`
--

INSERT INTO `sub_tbl` (`sub_id`, `faculties_id`, `teacher_id`, `semester`, `sub_name`, `note`) VALUES
(8, 'Fahad Satti', 'Yameen Bashir', '5', 'Mathematics', 'General Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `subject_info`
--

CREATE TABLE `subject_info` (
  `sub_id` int(11) NOT NULL,
  `subject_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_info`
--

INSERT INTO `subject_info` (`sub_id`, `subject_name`) VALUES
(1, 'physics'),
(2, 'chemistry'),
(3, 'maths'),
(4, 'Biology'),
(5, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tbl`
--

CREATE TABLE `teacher_tbl` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `salary` float NOT NULL,
  `married` char(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(80) NOT NULL DEFAULT 'teacher'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tbl`
--

INSERT INTO `teacher_tbl` (`teacher_id`, `f_name`, `l_name`, `gender`, `dob`, `address`, `degree`, `salary`, `married`, `phone`, `email`, `type`) VALUES
(1, 'Yameen', 'Bashir', 'male', '1985-03-05', 'Lahore', 'Master', 1500, 'no', '12345678910', 'yameen@gmail.com', 'teacher'),
(2, 'Atta Ur', 'Rehman', 'male', '1986-03-08', 'Lahore', 'Bachelor', 1500, 'yes', '12345678910', 'rehman@gmail.com', 'teacher'),
(3, 'Hussain', 'Naqvi', 'male', '1990-07-03', 'Lahore', 'Bachelor', 1000, 'yes', '12345678910', 'hussain@gmail.com', 'teacher'),
(4, 'Maria', 'Atif', 'female', '1990-12-08', 'Lahore', 'Bachelor', 1000, 'no', '12345678910', 'maria@gmail.com', 'teacher'),
(8, 'Hussnain', 'Arif', 'female', '1994-01-20', 'Islamabad', 'Matric', 500, 'yes', '12345678910', 'hussnain@gmail.com', 'staff'),
(9, 'Hussnain', 'Waris', 'male', '1993-01-06', 'Islamabad', 'Matric', 500, 'yes', '12345678910', 'waris@gmail.com', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `test_info`
--

CREATE TABLE `test_info` (
  `test_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `test_name` varchar(45) DEFAULT NULL,
  `total_que` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test_info`
--

INSERT INTO `test_info` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(1, 1, 'first year', 5),
(2, 1, 'second year', 5),
(3, 2, 'first year', 5),
(4, 2, 'second year', 5),
(5, 3, 'first year ', 5),
(6, 3, 'second year', 5);

-- --------------------------------------------------------

--
-- Table structure for table `things`
--

CREATE TABLE `things` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `problemId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ua_users`
--

CREATE TABLE `ua_users` (
  `idua_users` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `phonenumber` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ua_users`
--

INSERT INTO `ua_users` (`idua_users`, `role`, `phonenumber`, `user_id`) VALUES
(1, 0, '923121234567', 28),
(2, 1, '923121234567', 33),
(3, 0, '923121234567', 34),
(4, 1, '923121234567', 35);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `username`, `firstname`, `lastname`, `email`, `password`, `role`) VALUES
(19, 'admin11', 'Mickey', 'Mouse', '13beseuhussain@seecs.edu.pk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1),
(20, '77', 'Mickey', 'Mouse', 'ab@q', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(21, '2345', 'test', 'check', 'abc@kg.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(22, '13beseuhussain', '1234', 'asd', 'sk@q', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(23, '123456', 'dasadas', 'ewe', 'skipper.umar@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(24, 'test21', 'umar', 'hussain', '13beseuhussain@edu.pk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(25, 'finaltest', 'test', 'check', 'skipper.umar@gmail.cd.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 0),
(26, '14bbb123', '1234', 'Mouse', '13beseuhussain@scs.edu.pk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(27, '78945687', 'qwe', 'Mouse', '13beseuhussain@seecs.e.pk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(28, '654321', '1234', 'asd', 'skipper.umar@il.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(29, 'portar43', 'test', '87', 'skipper.umar@g.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(30, '13beseuhussain32', 'dasadas', '78979', 'qwee@dew.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(31, 'moazkhan', 'Moaz', 'Khan', '13besemmoaz@seecs.edu.pk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(32, 'safierehman', 'Safieur', 'Rehman', '13besesrehman@seecs.edu.pk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1),
(33, 'admin112', '1234', 'Mouse', '13beseuhussain@seecsada.edu.pk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(34, '110beseuhussain', 'Mickey', 'Mouse', 'sakipper.umar@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(35, 'testtest', 'Mickey', 'Mouse', 'skipper.umar@gmailfgdf.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(36, 'student', 'Student', '..', 'student@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b 	', 1),
(37, 'jahanzeb', 'Jahanzeb', 'Ahmed', 'jahanzeb@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(38, 'rahathashmi', 'Rahat', 'Hashmi', 'rahat@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(39, 'gulkhan', 'Gul', 'Khan', 'gul@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `confirm_pass` varchar(45) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `username`, `pass`, `confirm_pass`, `firstname`, `lastname`, `address`, `city`, `phone`, `email`) VALUES
(1, 'talha', 'munir', 'munir', 'talha', 'munir', '151/E garden town', 'Multan', '3317098137', 'talhamunir@gmail.com'),
(2, 'moiz', 'farooq', 'farooq', 'AbdulMoiz', 'Farooq', '22 Ghazali Street', 'Abbotabad', '3455900866', 'abdulmoiz@gmail.com'),
(27, 'Talha', '12345', '12345', 'Talha', 'Munir', '2', '1', '2', 'talhamunir95@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact_num` int(11) NOT NULL,
  `image` varchar(30) NOT NULL,
  `skills` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `date_of_birth`, `gender`, `age`, `address`, `contact_num`, `image`, `skills`) VALUES
(101, '2000-01-21', 'male', 16, 'Bahria town phase 9, lahore', 2147483647, 'ahmed.jpg', 'Article Writing , Editing & Database Management');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `first name` varchar(15) NOT NULL,
  `last name` varchar(15) NOT NULL,
  `email id` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `username`, `first name`, `last name`, `email id`, `password`, `role`) VALUES
(101, 'ahmed19', 'Ahmed', 'Mubashar', 'ahmed_191@gmail.com', 'ahmed1234', 'student'),
(10145, '2000-01-21', 'male', '16', 'Bahria town phase 9, lahore', '2147483647', 'ahmed.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `useranswer`
--

CREATE TABLE `useranswer` (
  `user_name` varchar(45) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_id` int(11) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL,
  `userans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useranswer`
--

INSERT INTO `useranswer` (`user_name`, `test_id`, `que_id`, `true_ans`, `your_ans`, `userans_id`) VALUES
('talha', 6, 20, 2, 4, 1),
('talha', 6, 21, 4, 1, 2),
('talha', 6, 22, 1, 2, 3),
('talha', 6, 23, 2, 2, 4),
('talha', 6, 24, 1, 1, 5),
('talha', 6, 20, 2, 4, 6),
('talha', 6, 21, 4, 1, 7),
('talha', 6, 22, 1, 2, 8),
('talha', 6, 23, 2, 2, 9),
('talha', 6, 24, 1, 2, 10),
('talha', 2, 10, 4, 1, 11),
('talha', 2, 11, 2, 1, 12),
('talha', 2, 12, 2, 1, 13),
('talha', 2, 13, 2, 1, 14),
('talha', 2, 14, 2, 1, 15),
('talha', 2, 10, 4, 1, 16),
('talha', 2, 11, 2, 1, 17),
('talha', 2, 12, 2, 1, 18),
('talha', 2, 14, 2, 1, 19),
('talha', 2, 10, 4, 1, 20),
('talha', 2, 11, 2, 1, 21),
('talha', 2, 12, 2, 1, 22),
('talha', 2, 13, 2, 1, 23),
('talha', 2, 14, 2, 1, 24),
('talha', 6, 20, 2, 1, 25),
('talha', 6, 21, 4, 2, 26),
('talha', 6, 22, 1, 1, 27),
('talha', 6, 23, 2, 1, 28),
('talha', 6, 24, 1, 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `u_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `type` char(10) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`u_id`, `username`, `type`, `approved`) VALUES
(4, 'moazkhan', 'admin', 1),
(12, 'safierehman', 'admin', 1),
(16, 'jahanzeb', 'student', 1),
(32, 'rahathashmi', 'student', 1),
(38, 'gulkhan', 'teacher', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_comment`
--

CREATE TABLE `visitor_comment` (
  `comment_id` int(11) NOT NULL,
  `visitor_name` varchar(30) NOT NULL,
  `visitor_email` varchar(30) NOT NULL,
  `visitor_subject` varchar(55) DEFAULT NULL,
  `visitor_message` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `am_users`
--
ALTER TABLE `am_users`
  ADD PRIMARY KEY (`idam_users`),
  ADD KEY `id_idx` (`user_id`);

--
-- Indexes for table `an_users`
--
ALTER TABLE `an_users`
  ADD PRIMARY KEY (`idan_users`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `answer_info`
--
ALTER TABLE `answer_info`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_android_devlopment`
--
ALTER TABLE `content_android_devlopment`
  ADD UNIQUE KEY `chapter_no` (`chapter_no`);

--
-- Indexes for table `courses_info`
--
ALTER TABLE `courses_info`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `cw_users`
--
ALTER TABLE `cw_users`
  ADD PRIMARY KEY (`id_cw_users`),
  ADD KEY `p_user_idx` (`user_id`);

--
-- Indexes for table `cwusers`
--
ALTER TABLE `cwusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donate_donorid_foreign` (`donorId`),
  ADD KEY `donate_problemid_foreign` (`problemId`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `donations_user_id_foreign` (`user_id`),
  ADD KEY `donations_school_id_foreign` (`school_id`);

--
-- Indexes for table `donor_reg`
--
ALTER TABLE `donor_reg`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `enrollment_table`
--
ALTER TABLE `enrollment_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  ADD PRIMARY KEY (`faculties_id`);

--
-- Indexes for table `forum_table`
--
ALTER TABLE `forum_table`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `hw_users`
--
ALTER TABLE `hw_users`
  ADD PRIMARY KEY (`id_hw_users`),
  ADD KEY `user_id_hw_users_idx` (`user_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_reg`
--
ALTER TABLE `member_reg`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `metirial_donation`
--
ALTER TABLE `metirial_donation`
  ADD PRIMARY KEY (`metirial_id`);

--
-- Indexes for table `metirial_donation_acceptor`
--
ALTER TABLE `metirial_donation_acceptor`
  ADD PRIMARY KEY (`metirial_id`),
  ADD KEY `user_first_name` (`user_first_name`,`user_last_name`,`user_email`);

--
-- Indexes for table `metirial_donation_user`
--
ALTER TABLE `metirial_donation_user`
  ADD PRIMARY KEY (`metirial_id`),
  ADD KEY `user_first_name` (`user_first_name`,`user_last_name`,`user_email`);

--
-- Indexes for table `mh_user_data`
--
ALTER TABLE `mh_user_data`
  ADD PRIMARY KEY (`user_first_name`,`user_last_name`,`user_email`);

--
-- Indexes for table `mh_users`
--
ALTER TABLE `mh_users`
  ADD PRIMARY KEY (`id_mh_users`),
  ADD KEY `userlnk_idx` (`user_id`);

--
-- Indexes for table `mm_users`
--
ALTER TABLE `mm_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `mm_users_email_unique` (`email`);

--
-- Indexes for table `mmm_users`
--
ALTER TABLE `mmm_users`
  ADD PRIMARY KEY (`id_mm_users`),
  ADD KEY `user_idx` (`user_id`);

--
-- Indexes for table `monetary_donation`
--
ALTER TABLE `monetary_donation`
  ADD PRIMARY KEY (`problem_id`);

--
-- Indexes for table `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`id`),
  ADD KEY `money_problemid_foreign` (`problemId`);

--
-- Indexes for table `mr_users`
--
ALTER TABLE `mr_users`
  ADD PRIMARY KEY (`idmr_users`),
  ADD KEY `userid_idx` (`user_id`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ngo_name` (`ngo_name`);

--
-- Indexes for table `ngo_cause`
--
ALTER TABLE `ngo_cause`
  ADD PRIMARY KEY (`cause_id`),
  ADD KEY `User_ID_Cause_FK` (`user_id`);

--
-- Indexes for table `ngo_item`
--
ALTER TABLE `ngo_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `Cause_ID_FK` (`cause_id`);

--
-- Indexes for table `ngo_message`
--
ALTER TABLE `ngo_message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `User_ID_Message_FK` (`user_id`);

--
-- Indexes for table `ngo_user`
--
ALTER TABLE `ngo_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `pamphlets`
--
ALTER TABLE `pamphlets`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_table1`
--
ALTER TABLE `post_table1`
  ADD PRIMARY KEY (`cmnt-num`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `problems_phone_unique` (`phone`),
  ADD KEY `problems_userid_foreign` (`userId`);

--
-- Indexes for table `profile_users`
--
ALTER TABLE `profile_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_info`
--
ALTER TABLE `question_info`
  ADD PRIMARY KEY (`que_id`),
  ADD KEY `test_id_idx` (`test_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `user_id_FK` (`user_id`);

--
-- Indexes for table `registered_modules`
--
ALTER TABLE `registered_modules`
  ADD PRIMARY KEY (`id_registered_modules`),
  ADD KEY `users_idx` (`user_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `test_id2_idx` (`test_id`),
  ADD KEY `username1_idx` (`username`);

--
-- Indexes for table `sch_communication`
--
ALTER TABLE `sch_communication`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `sch_donations`
--
ALTER TABLE `sch_donations`
  ADD PRIMARY KEY (`don_id`);

--
-- Indexes for table `sch_requests`
--
ALTER TABLE `sch_requests`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `sch_school`
--
ALTER TABLE `sch_school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `sch_users`
--
ALTER TABLE `sch_users`
  ADD PRIMARY KEY (`sch_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_id`),
  ADD KEY `schools_user_id_foreign` (`user_id`),
  ADD KEY `schools_image_id_foreign` (`image_id`);

--
-- Indexes for table `sr_users`
--
ALTER TABLE `sr_users`
  ADD PRIMARY KEY (`idsr_users`),
  ADD KEY `userid_idx` (`user_id`);

--
-- Indexes for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `subject_info`
--
ALTER TABLE `subject_info`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `test_info`
--
ALTER TABLE `test_info`
  ADD PRIMARY KEY (`test_id`),
  ADD KEY `sub_id_idx` (`sub_id`);

--
-- Indexes for table `things`
--
ALTER TABLE `things`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ua_users`
--
ALTER TABLE `ua_users`
  ADD PRIMARY KEY (`idua_users`),
  ADD KEY `userss_idx` (`user_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `username_idx` (`username`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useranswer`
--
ALTER TABLE `useranswer`
  ADD PRIMARY KEY (`userans_id`),
  ADD KEY `test_id_idx` (`test_id`),
  ADD KEY `que_id_idx` (`que_id`),
  ADD KEY `username_idx` (`user_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `visitor_comment`
--
ALTER TABLE `visitor_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `am_users`
--
ALTER TABLE `am_users`
  MODIFY `idam_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `an_users`
--
ALTER TABLE `an_users`
  MODIFY `idan_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `answer_info`
--
ALTER TABLE `answer_info`
  MODIFY `que_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `courses_info`
--
ALTER TABLE `courses_info`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cw_users`
--
ALTER TABLE `cw_users`
  MODIFY `id_cw_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cwusers`
--
ALTER TABLE `cwusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `donation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `enrollment_table`
--
ALTER TABLE `enrollment_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  MODIFY `faculties_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `forum_table`
--
ALTER TABLE `forum_table`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hw_users`
--
ALTER TABLE `hw_users`
  MODIFY `id_hw_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `metirial_donation`
--
ALTER TABLE `metirial_donation`
  MODIFY `metirial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `mh_users`
--
ALTER TABLE `mh_users`
  MODIFY `id_mh_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mm_users`
--
ALTER TABLE `mm_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mmm_users`
--
ALTER TABLE `mmm_users`
  MODIFY `id_mm_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `monetary_donation`
--
ALTER TABLE `monetary_donation`
  MODIFY `problem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `money`
--
ALTER TABLE `money`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `mr_users`
--
ALTER TABLE `mr_users`
  MODIFY `idmr_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ngo_cause`
--
ALTER TABLE `ngo_cause`
  MODIFY `cause_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ngo_item`
--
ALTER TABLE `ngo_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ngo_message`
--
ALTER TABLE `ngo_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pamphlets`
--
ALTER TABLE `pamphlets`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `post_table1`
--
ALTER TABLE `post_table1`
  MODIFY `cmnt-num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `profile_users`
--
ALTER TABLE `profile_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `question_info`
--
ALTER TABLE `question_info`
  MODIFY `que_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `registered_modules`
--
ALTER TABLE `registered_modules`
  MODIFY `id_registered_modules` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sch_communication`
--
ALTER TABLE `sch_communication`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sch_donations`
--
ALTER TABLE `sch_donations`
  MODIFY `don_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sch_requests`
--
ALTER TABLE `sch_requests`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sch_school`
--
ALTER TABLE `sch_school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sch_users`
--
ALTER TABLE `sch_users`
  MODIFY `sch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `school_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sr_users`
--
ALTER TABLE `sr_users`
  MODIFY `idsr_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  MODIFY `ss_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  MODIFY `stu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `subject_info`
--
ALTER TABLE `subject_info`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  MODIFY `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `test_info`
--
ALTER TABLE `test_info`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `things`
--
ALTER TABLE `things`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ua_users`
--
ALTER TABLE `ua_users`
  MODIFY `idua_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10146;
--
-- AUTO_INCREMENT for table `useranswer`
--
ALTER TABLE `useranswer`
  MODIFY `userans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `u_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `visitor_comment`
--
ALTER TABLE `visitor_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `am_users`
--
ALTER TABLE `am_users`
  ADD CONSTRAINT `id` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `an_users`
--
ALTER TABLE `an_users`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `answer_info`
--
ALTER TABLE `answer_info`
  ADD CONSTRAINT `que_id3` FOREIGN KEY (`que_id`) REFERENCES `question_info` (`que_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cw_users`
--
ALTER TABLE `cw_users`
  ADD CONSTRAINT `p_user` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`),
  ADD CONSTRAINT `donations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `mm_users` (`user_id`);

--
-- Constraints for table `hw_users`
--
ALTER TABLE `hw_users`
  ADD CONSTRAINT `user_id_hw_users` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mh_users`
--
ALTER TABLE `mh_users`
  ADD CONSTRAINT `userlnk` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mmm_users`
--
ALTER TABLE `mmm_users`
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mr_users`
--
ALTER TABLE `mr_users`
  ADD CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ngo`
--
ALTER TABLE `ngo`
  ADD CONSTRAINT `User_ID_FK` FOREIGN KEY (`user_id`) REFERENCES `ngo_user` (`user_id`);

--
-- Constraints for table `ngo_cause`
--
ALTER TABLE `ngo_cause`
  ADD CONSTRAINT `User_ID_Cause_FK` FOREIGN KEY (`user_id`) REFERENCES `ngo_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ngo_item`
--
ALTER TABLE `ngo_item`
  ADD CONSTRAINT `Cause_ID_FK` FOREIGN KEY (`cause_id`) REFERENCES `ngo_cause` (`cause_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ngo_message`
--
ALTER TABLE `ngo_message`
  ADD CONSTRAINT `User_ID_Message_FK` FOREIGN KEY (`user_id`) REFERENCES `ngo_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_info`
--
ALTER TABLE `question_info`
  ADD CONSTRAINT `test_id` FOREIGN KEY (`test_id`) REFERENCES `test_info` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `registered_modules`
--
ALTER TABLE `registered_modules`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `test_id2` FOREIGN KEY (`test_id`) REFERENCES `test_info` (`test_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `username1` FOREIGN KEY (`username`) REFERENCES `login` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`image_id`),
  ADD CONSTRAINT `schools_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `mm_users` (`user_id`);

--
-- Constraints for table `sr_users`
--
ALTER TABLE `sr_users`
  ADD CONSTRAINT `sr_userid` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `test_info`
--
ALTER TABLE `test_info`
  ADD CONSTRAINT `sub_id` FOREIGN KEY (`sub_id`) REFERENCES `subject_info` (`sub_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ua_users`
--
ALTER TABLE `ua_users`
  ADD CONSTRAINT `userss` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `userdata`
--
CREATE DATABASE IF NOT EXISTS `userdata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `userdata`;

-- --------------------------------------------------------

--
-- Table structure for table `am_users`
--

CREATE TABLE `am_users` (
  `idam_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ngoemail` varchar(45) NOT NULL,
  `phonenumber` varchar(45) NOT NULL,
  `ngoname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_users`
--

INSERT INTO `am_users` (`idam_users`, `user_id`, `ngoemail`, `phonenumber`, `ngoname`) VALUES
(1, 19, '12wdqw@23131', '923121134567', 'qqweqw');

-- --------------------------------------------------------

--
-- Table structure for table `an_users`
--

CREATE TABLE `an_users` (
  `idan_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(45) NOT NULL DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `an_users`
--

INSERT INTO `an_users` (`idan_users`, `user_id`, `user_role`) VALUES
(1, 19, 'student'),
(2, 20, 'student'),
(3, 21, 'student'),
(4, 22, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `cw_users`
--

CREATE TABLE `cw_users` (
  `id_cw_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `isdonor` tinyint(4) NOT NULL DEFAULT '1',
  `phonenumber` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cw_users`
--

INSERT INTO `cw_users` (`id_cw_users`, `user_id`, `isdonor`, `phonenumber`) VALUES
(1, 19, 1, '923121234567');

-- --------------------------------------------------------

--
-- Table structure for table `hw_users`
--

CREATE TABLE `hw_users` (
  `id_hw_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mh_user_data`
--

CREATE TABLE `mh_user_data` (
  `user_first_name` varchar(15) NOT NULL,
  `user_last_name` varchar(15) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_donor` varchar(1) DEFAULT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_contact_number` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mh_user_data`
--

INSERT INTO `mh_user_data` (`user_first_name`, `user_last_name`, `user_email`, `user_donor`, `user_password`, `user_address`, `user_contact_number`) VALUES
('test', 'check', 'abc@kg.com', '1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'asasewe sdfsdfsd sdfsd f', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `mh_users`
--

CREATE TABLE `mh_users` (
  `id_mh_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_number` varchar(45) NOT NULL,
  `is_donor` tinyint(4) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mh_users`
--

INSERT INTO `mh_users` (`id_mh_users`, `user_id`, `contact_number`, `is_donor`, `address`) VALUES
(1, 19, '923121234567', 0, 'house 1 street 2 awqq'),
(3, 21, '923121234567', 1, 'asasewe sdfsdfsd sdfsd f');

-- --------------------------------------------------------

--
-- Table structure for table `mm_users`
--

CREATE TABLE `mm_users` (
  `id_mm_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `bio` longtext NOT NULL,
  `more_info` text NOT NULL,
  `occupation` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mm_users`
--

INSERT INTO `mm_users` (`id_mm_users`, `user_id`, `phone_number`, `bio`, `more_info`, `occupation`) VALUES
(1, 22, '923121345678', 'sdfhsdfsdnfjk fsdjk f', 'sdfsdfnsdfk sdfsdk fsdkfs', 'carpainter');

-- --------------------------------------------------------

--
-- Table structure for table `mr_users`
--

CREATE TABLE `mr_users` (
  `idmr_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registered_modules`
--

CREATE TABLE `registered_modules` (
  `id_registered_modules` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_modules`
--

INSERT INTO `registered_modules` (`id_registered_modules`, `user_id`, `module_id`) VALUES
(1, 19, './school_management'),
(2, 19, './drixel'),
(3, 19, './academic_scholorships'),
(4, 19, './donations'),
(5, 19, './d2quiz'),
(6, 19, './ngos'),
(7, 19, './problem_sharing'),
(8, 21, './d2quiz'),
(10, 21, './donations'),
(11, 21, './school_management'),
(12, 22, './school_renovation'),
(13, 29, './school_management');

-- --------------------------------------------------------

--
-- Table structure for table `sr_users`
--

CREATE TABLE `sr_users` (
  `idsr_users` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(45) NOT NULL DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_users`
--

INSERT INTO `sr_users` (`idsr_users`, `user_id`, `user_role`) VALUES
(1, 19, 'student'),
(2, 20, 'student'),
(3, 21, 'student'),
(4, 22, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `username`, `firstname`, `lastname`, `email`, `password`, `role`) VALUES
(19, 'admin11', 'Mickey', 'Mouse', '13beseuhussain@seecs.edu.pk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1),
(20, '77', 'Mickey', 'Mouse', 'ab@q', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(21, '2345', 'test', 'check', 'abc@kg.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(22, '13beseuhussain', '1234', 'asd', 'sk@q', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0),
(25, 'moazkhan', 'moaz', 'khan', 'moazkhan@kadja.com', '123456', 1),
(29, 'moazkhan', 'moaz', 'khan', 'moazkhan@kadja.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `am_users`
--
ALTER TABLE `am_users`
  ADD PRIMARY KEY (`idam_users`),
  ADD KEY `id_idx` (`user_id`);

--
-- Indexes for table `an_users`
--
ALTER TABLE `an_users`
  ADD PRIMARY KEY (`idan_users`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `cw_users`
--
ALTER TABLE `cw_users`
  ADD PRIMARY KEY (`id_cw_users`),
  ADD KEY `p_user_idx` (`user_id`);

--
-- Indexes for table `hw_users`
--
ALTER TABLE `hw_users`
  ADD PRIMARY KEY (`id_hw_users`),
  ADD KEY `user_id_hw_users_idx` (`user_id`);

--
-- Indexes for table `mh_user_data`
--
ALTER TABLE `mh_user_data`
  ADD PRIMARY KEY (`user_first_name`,`user_last_name`,`user_email`);

--
-- Indexes for table `mh_users`
--
ALTER TABLE `mh_users`
  ADD PRIMARY KEY (`id_mh_users`),
  ADD KEY `userlnk_idx` (`user_id`);

--
-- Indexes for table `mm_users`
--
ALTER TABLE `mm_users`
  ADD PRIMARY KEY (`id_mm_users`),
  ADD KEY `user_idx` (`user_id`);

--
-- Indexes for table `mr_users`
--
ALTER TABLE `mr_users`
  ADD PRIMARY KEY (`idmr_users`),
  ADD KEY `userid_idx` (`user_id`);

--
-- Indexes for table `registered_modules`
--
ALTER TABLE `registered_modules`
  ADD PRIMARY KEY (`id_registered_modules`),
  ADD KEY `users_idx` (`user_id`);

--
-- Indexes for table `sr_users`
--
ALTER TABLE `sr_users`
  ADD PRIMARY KEY (`idsr_users`),
  ADD KEY `userid_idx` (`user_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `am_users`
--
ALTER TABLE `am_users`
  MODIFY `idam_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `an_users`
--
ALTER TABLE `an_users`
  MODIFY `idan_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cw_users`
--
ALTER TABLE `cw_users`
  MODIFY `id_cw_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hw_users`
--
ALTER TABLE `hw_users`
  MODIFY `id_hw_users` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mh_users`
--
ALTER TABLE `mh_users`
  MODIFY `id_mh_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mm_users`
--
ALTER TABLE `mm_users`
  MODIFY `id_mm_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mr_users`
--
ALTER TABLE `mr_users`
  MODIFY `idmr_users` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `registered_modules`
--
ALTER TABLE `registered_modules`
  MODIFY `id_registered_modules` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sr_users`
--
ALTER TABLE `sr_users`
  MODIFY `idsr_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `am_users`
--
ALTER TABLE `am_users`
  ADD CONSTRAINT `id` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `an_users`
--
ALTER TABLE `an_users`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cw_users`
--
ALTER TABLE `cw_users`
  ADD CONSTRAINT `p_user` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `hw_users`
--
ALTER TABLE `hw_users`
  ADD CONSTRAINT `user_id_hw_users` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mh_users`
--
ALTER TABLE `mh_users`
  ADD CONSTRAINT `userlnk` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mm_users`
--
ALTER TABLE `mm_users`
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mr_users`
--
ALTER TABLE `mr_users`
  ADD CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `registered_modules`
--
ALTER TABLE `registered_modules`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `sr_users`
--
ALTER TABLE `sr_users`
  ADD CONSTRAINT `sr_userid` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `userdata_final`
--
CREATE DATABASE IF NOT EXISTS `userdata_final` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `userdata_final`;
--
-- Database: `vision`
--
CREATE DATABASE IF NOT EXISTS `vision` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vision`;

-- --------------------------------------------------------

--
-- Table structure for table `bursarystudent`
--

CREATE TABLE `bursarystudent` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `CLASS` varchar(35) NOT NULL,
  `SEX` varchar(1) NOT NULL,
  `AMOUNT` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bursarystudent`
--

INSERT INTO `bursarystudent` (`ID`, `NAME`, `CLASS`, `SEX`, `AMOUNT`) VALUES
(1, 'JAC romeo', 'SENIOR THREE', 'F', 300000),
(2, 'jack', '', '', 400),
(3, 'him', '', '', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `CLUB_ID` varchar(5) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `CHAIRMAN` varchar(72) NOT NULL,
  `PATRON` varchar(50) NOT NULL,
  `DATE` date NOT NULL,
  `STATUS` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`CLUB_ID`, `NAME`, `DESCRIPTION`, `CHAIRMAN`, `PATRON`, `DATE`, `STATUS`) VALUES
('23w', 'jjj', 'fgd', 'dsfrsd', 'dgfsr', '2013-07-24', 'Active'),
('A122', 'WILD LIFE', 'FOREST', 'HERBERT', 'NANA', '2013-09-03', 'active'),
('A123', 'SCOUT CLUB', 'STEADY', 'JACK', 'MUGAGA', '2012-05-08', 'active'),
('A124', 'TASO', 'PROVIDE', 'KIVOSA', 'HIM', '2013-06-14', 'active'),
('dsfas', 'dsfsad', 'sdfsa', 'sfaweewfwe', 'sdcsa', '2013-07-24', 'Active'),
('F100', 'FOOTBALL', 'ARSENAL FC', 'JACK', 'SON', '2013-07-13', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `clubmember`
--

CREATE TABLE `clubmember` (
  `CLUB_ID` varchar(5) NOT NULL,
  `MEMBER_ID` varchar(45) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubmember`
--

INSERT INTO `clubmember` (`CLUB_ID`, `MEMBER_ID`, `DATE`) VALUES
('A122', 'cubed tevvez', '2013-07-22'),
('A122', 'herbert samz', '2013-06-14'),
('A122', 'jackson hreb', '2013-06-14'),
('A122', 'NANI lous', '2013-07-04'),
('A123', 'herbert samz', '2013-06-14'),
('A123', 'JAC romeo', '2013-06-14'),
('A124', 'cubed tevvez', '2013-06-14'),
('A124', 'FRED john', '2013-07-04'),
('A124', 'NANI lous', '2013-06-14'),
('F100', 'herbert samz', '2013-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE `expenditure` (
  `ID` int(11) NOT NULL,
  `ITEM` varchar(50) NOT NULL,
  `AMOUNT` float NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `ID` int(2) NOT NULL,
  `SUB_ID` varchar(7) NOT NULL,
  `LMARK` int(2) NOT NULL,
  `HMARK` int(3) NOT NULL,
  `AGGREGATE` smallint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`ID`, `SUB_ID`, `LMARK`, `HMARK`, `AGGREGATE`) VALUES
(1, 'AGR', 90, 95, 1),
(5, 'CHEM', 85, 89, 2),
(6, 'ART', 96, 100, 1),
(7, 'BIO', 76, 81, 3),
(8, 'CRE', 82, 87, 2),
(9, 'GEO', 65, 72, 3),
(10, 'GEO', 45, 50, 4),
(11, 'LIT', 57, 62, 4),
(12, 'BIO', 46, 55, 4),
(13, 'LIT', 47, 56, 1),
(14, 'PHY', 23, 40, 7),
(15, 'BIO', 0, 15, 9),
(16, 'AGR', 62, 65, 6),
(17, 'LIT', 55, 57, 4),
(18, 'HIST', 10, 35, 7);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image_id` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image_id`, `location`) VALUES
(24, '23', 'upload/Capture.PNG'),
(9, 'cubed tevvez', 'upload/936787_388129121304239_1854243492_n.jpg'),
(29, 'emilly', 'upload/3_2.jpg'),
(13, 'FRED john', 'upload/jackss.PNG'),
(19, 'Gideon', 'upload/feature_mental.gif'),
(10, 'herbert samz', 'upload/kk.PNG'),
(12, 'JAC romeo', 'upload/jac.PNG'),
(8, 'jackson hreb', 'upload/dd.PNG'),
(23, 'jasso', 'upload/1003254_139289079600772_600430553_n.jpg'),
(17, 'jolly', 'upload/Tulips.jpg'),
(21, 'lillian', 'upload/969983_139540719575608_652983355_n.jpg'),
(20, 'maniraguha', 'upload/945922_139288632934150_1239182602_n.jpg'),
(30, 'mut', 'upload/image.jpg'),
(11, 'NANI lous', 'upload/551779_239753149475171_273745233_n.jpg'),
(25, 'ngoroye', 'upload/8db594cdfc5a95f59f59d8f3aeead3be.jpg'),
(28, 'NYIRAMAHIRWE EMILLY', 'upload/3_2.jpg'),
(18, 'ONYANGO', 'upload/phonewor.PNG'),
(15, 'rebecca me', 'upload/vlcsnap-2013-06-22-15h42m40s140.png'),
(16, 'safi', 'upload/Penguins.jpg'),
(14, 'testing', 'upload/7.jpg'),
(22, 'working', 'upload/5897_139288476267499_1719977008_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `itempay`
--

CREATE TABLE `itempay` (
  `ID` int(11) NOT NULL,
  `STNAME` varchar(255) NOT NULL,
  `ITEM` varchar(255) NOT NULL,
  `AMOUNT` float NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itempay`
--

INSERT INTO `itempay` (`ID`, `STNAME`, `ITEM`, `AMOUNT`, `DATE`) VALUES
(3, 'jackson hreb', 'sugar', 2500, '2013-07-23'),
(5, 'herbert samz', 'slasher,\r\noil', 2500, '2013-07-24'),
(11, 'herbert samz', 'dfdsfdsfs', 323, '2013-07-24'),
(12, 'jackson hreb', 'bullete', 500, '2013-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `nonstaff`
--

CREATE TABLE `nonstaff` (
  `NONS_ID` int(5) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `SEX` varchar(1) NOT NULL,
  `AGE` varchar(5) NOT NULL,
  `DUTY` varchar(45) NOT NULL,
  `STATUS` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nonstaff`
--

INSERT INTO `nonstaff` (`NONS_ID`, `NAME`, `SEX`, `AGE`, `DUTY`, `STATUS`) VALUES
(5, 'rebecca me', 'F', '30-35', 'Gate keeper', 'active'),
(7, 'sinamu', 'F', '35-40', 'sweeper', 'terminated'),
(9, 'jackson', 'F', '25-30', 'store keeper', 'active'),
(10, 'rebecca', 'M', '25-30', 'sweeper', 'active'),
(11, 'red', 'M', '12', 'store keeper', 'Active'),
(12, 'Ngobi Daniel', 'M', '23', 'Askari', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `nonstaffpay`
--

CREATE TABLE `nonstaffpay` (
  `NON_ID` varchar(255) NOT NULL,
  `PAY_ID` int(1) NOT NULL,
  `SALARY` float NOT NULL,
  `PAYAMOUNT` double NOT NULL,
  `CREDIT` double NOT NULL,
  `DAYPAY1` date NOT NULL,
  `DAYPAY2` date NOT NULL,
  `STATUS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nonstaffpay`
--

INSERT INTO `nonstaffpay` (`NON_ID`, `PAY_ID`, `SALARY`, `PAYAMOUNT`, `CREDIT`, `DAYPAY1`, `DAYPAY2`, `STATUS`) VALUES
('Ngobi Daniel', 22, 20000, 0, 20000, '0000-00-00', '0000-00-00', ''),
('red', 21, 600, 600, 0, '2013-11-11', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `STUDENT_ID` int(11) NOT NULL,
  `STNAME` varchar(255) NOT NULL,
  `CLASS` varchar(15) NOT NULL,
  `TERM` varchar(15) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `TUTION` float NOT NULL,
  `AMOUNT` float NOT NULL,
  `DUES` float NOT NULL,
  `BALANCE` float NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`STUDENT_ID`, `STNAME`, `CLASS`, `TERM`, `YEAR`, `TUTION`, `AMOUNT`, `DUES`, `BALANCE`, `DATE`) VALUES
(8, 'cubed tevvez', 'SENIOR THREE', 'THIRD TERM', 2013, 300000, 34000, 266000, -266000, '2013-07-20'),
(10, 'rebecca me', 'SENIOR ONE', 'FIRST TERM', 2011, 500, 700, -200, 200, '2013-07-24'),
(13, 'jackson hreb', 'SENIOR ONE', 'FIRST TERM', 2011, 5000, 5000, 0, 0, '2013-07-22'),
(16, 'FRED john', 'SENIOR TWO', 'FIRST TERM', 2011, 500, 400, 100, -100, '2013-07-23'),
(17, 'NANI lous', 'SENIOR THREE', 'SECOND TERM', 2014, 5000, 2500, 2500, -2500, '2013-07-23'),
(18, 'safi', 'SENIOR THREE', 'SECOND TERM', 2013, 600, 0, 600, 1900, '2013-07-23'),
(19, 'herbert samz', 'SENIOR FIVE', 'SECOND TERM', 2013, 30000, 3000, 27000, -27000, '2013-07-23'),
(22, 'ONYANGO', 'SENIOR THREE', 'SECOND TERM', 2013, 200000, 5000000, -4800000, 4800000, '2013-07-24'),
(23, 'Gideon', 'SENIOR ONE', 'FIRST TERM', 2013, 5000, 2500, 2500, -2500, '2013-08-07'),
(24, 'maniraguha', 'SENIOR FIVE', 'SECOND TERM', 2013, 6000, 7000, -1000, 1000, '2013-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT_ID` int(11) NOT NULL,
  `STNAME` varchar(255) NOT NULL,
  `SEX` char(1) NOT NULL,
  `AGE` int(2) NOT NULL,
  `DISTRICT` varchar(15) NOT NULL,
  `GUARDIAN` varchar(30) NOT NULL,
  `OFFERING` varchar(15) NOT NULL,
  `CLASS` varchar(15) NOT NULL,
  `STATUS` varchar(25) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUDENT_ID`, `STNAME`, `SEX`, `AGE`, `DISTRICT`, `GUARDIAN`, `OFFERING`, `CLASS`, `STATUS`, `DATE`) VALUES
(1, 'jackson hreb', 'M', 12, 'KISORO', 'jacob', 'DAY', 'SENIOR ONE', 'ACTIVE', '2013-05-03'),
(2, 'cubed tevvez', 'M', 14, 'Kisoro', 'yurself', 'Day', 'SENIOR SIX', 'Active', '2013-07-04'),
(3, 'herbert samz', 'M', 25, 'kidoro', 'mself', 'DAY', 'SENIOR TWO', 'expelled', '0000-00-00'),
(4, 'NANI lous', 'F', 33, 'EASTA', 'FAGUSON', 'BORDING', 'SENIOR FOUR', 'Active', '0000-00-00'),
(5, 'JAC romeo', 'F', 13, 'KABALE', 'SINAM', 'DAY', 'SENIOR THREE', 'died', '0000-00-00'),
(6, 'FRED john', 'F', 20, 'KABALE', 'jackson', 'BORDING', 'SENIOR ONE', 'Active', '0000-00-00'),
(8, 'rebecca me', 'F', 17, 'HERE', 'FATHER', 'BORDING', 'SENIOR FIVE', 'Active', '2013-07-19'),
(9, 'safi', 'F', 12, 'HERE', 'FATHER', 'DAY', 'SENIOR TWO', 'Active', '2013-07-19'),
(11, 'jolly', 'F', 12, 'kabale', 'jesca', 'BORDING', 'SENIOR THREE', 'Active', '2013-07-22'),
(13, 'jasso', 'M', 29, 'kapale', '1qws', 'BORDING', 'SENIOR ONE', 'Active', '2013-07-22'),
(16, 'lillian', 'F', 20, 'Mbarara', 'JA', 'BORDING', 'SENIOR SIX', 'Active', '2013-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `studentmark`
--

CREATE TABLE `studentmark` (
  `YEAR` int(4) NOT NULL,
  `TERM` varchar(15) NOT NULL,
  `CODE` varchar(7) NOT NULL,
  `STUDENT_ID` varchar(255) NOT NULL,
  `TEST` int(3) DEFAULT NULL,
  `EXAM` int(3) DEFAULT NULL,
  `TNAME` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentmark`
--

INSERT INTO `studentmark` (`YEAR`, `TERM`, `CODE`, `STUDENT_ID`, `TEST`, `EXAM`, `TNAME`) VALUES
(2013, 'FIRST TERM', 'AGR', 'cubed tevvez', 45, 80, 'YH'),
(2014, 'SECOND TERM', 'AGR', 'FRED john', 60, 80, 'jk'),
(2013, 'FIRST TERM', 'AGR', 'Gideon', 88, 99, 'mj'),
(2013, 'THIRD TERM', 'AGR', 'jackson hreb', 77, 80, 'YH'),
(2013, 'FIRST TERM', 'AGR', 'ngoroye', 88, 99, 'ngw'),
(2013, 'THIRD TERM', 'ART', 'jackson hreb', 49, 100, 'AA'),
(2014, 'THIRD TERM', 'BIO', 'jackson hreb', 45, 76, 'YH'),
(2012, 'THIRD TERM', 'BIO', 'NANI lous', 78, 56, 'YH'),
(2015, 'FIRST TERM', 'CHEM', 'cubed tevvez', 91, 0, 'Daniel'),
(2013, 'SECOND TERM', 'CHEM', 'FRED john', 45, 0, 'SK'),
(2013, 'SECOND TERM', 'CHEM', 'jackson hreb', 78, 98, 'SK'),
(2014, 'FIRST TERM', 'CRE', 'jackson hreb', 60, 0, 'ok'),
(2013, 'SECOND TERM', 'CRE', 'safi', 78, 98, 'SK'),
(2013, 'FIRST TERM', 'ENG', 'cubed tevvez', 23, 23, 'Daniel'),
(2013, 'THIRD TERM', 'ENG', 'jackson hreb', 100, 100, 'ZZ'),
(2014, 'FIRST TERM', 'ENG', 'NANI lous', 78, 0, 'ok'),
(2013, 'THIRD TERM', 'FRE', 'jackson hreb', 56, 72, 'KJ'),
(2013, 'SECOND TERM', 'HIST', 'cubed tevvez', 45, 0, 'Daniel'),
(2013, 'THIRD TERM', 'LIT', 'jackson hreb', 67, 90, 'SJ'),
(2013, 'THIRD TERM', 'MTC', 'jackson hreb', 88, 90, 'KJ'),
(2013, 'SECOND TERM', 'MTC', 'maniraguha', 70, 77, 'MJ'),
(2013, 'SECOND TERM', 'MUS', 'JAC romeo', 66, 0, 'HJ'),
(2014, 'SECOND TERM', 'MUS', 'JACKSON HREB', 45, 0, 'Daniel'),
(2013, 'FIRST TERM', 'PHY', 'herbert samz', 45, 68, 'YH'),
(2013, 'THIRD TERM', 'PHY', 'jackson hreb', 88, 66, 'JH');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` int(2) NOT NULL,
  `CODE` varchar(5) NOT NULL,
  `SUBJECTNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`ID`, `CODE`, `SUBJECTNAME`) VALUES
(1, 'AGR', 'AGRICULTURE'),
(2, 'ART', 'ART'),
(3, 'BIO', 'BIOLOGY'),
(4, 'CHEM', 'CHEMISTRY'),
(5, 'CRE', 'CHRISTIAN RELIGIOUS EDUCATION'),
(6, 'ENG', 'ENGLISH'),
(7, 'FRE', 'FRENCH'),
(8, 'GEO', 'GEOGRAPHY'),
(9, 'HIST', 'HISTORY'),
(13, 'LIT', 'LITERATURE'),
(10, 'MTC', 'MATHEMATICS'),
(11, 'MUS', 'MUSIC'),
(12, 'PHY', 'PHYSICS');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `TEACH_ID` int(11) NOT NULL,
  `NAMES` varchar(30) NOT NULL,
  `SEX` char(1) NOT NULL,
  `AGE` int(2) NOT NULL,
  `QUALITY` varchar(30) NOT NULL,
  `STATUS` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`TEACH_ID`, `NAMES`, `SEX`, `AGE`, `QUALITY`, `STATUS`) VALUES
(2, 'Hackson', 'F', 25, 'NTC', 'Active'),
(3, 'jackson', 'M', 44, 'BSSE', 'active'),
(5, 'IT WORKS', 'M', 24, 'BASE', 'active'),
(6, 'kananura', 'M', 21, 'NTC', 'left'),
(7, 'sebdir', 'F', 36, 'BBA', 'Active'),
(9, 'red', 'F', 20, 'BBA', 'Active'),
(10, 'lydia', 'F', 20, 'BBA', 'Active'),
(11, 'RIMA', 'F', 20, 'ddd', 'Active'),
(14, 'NGOBI DANIEL', 'M', 26, 'Bachelors', 'Active'),
(15, 'NGOBI DANIEl1', 'M', 28, 'bach', 'Active'),
(17, 'mugisha', 'M', 20, 'BSSE', 'Active'),
(18, 'MANIRAGUHA JOSEPH', 'M', 25, 'NTC', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `teachercheck`
--

CREATE TABLE `teachercheck` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(300) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL,
  `COMMENT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachercheck`
--

INSERT INTO `teachercheck` (`ID`, `NAME`, `DATE`, `TIME`, `COMMENT`) VALUES
(27, 'siname jackson', '2013-07-21', '16:55:05', ''),
(28, 'emmanu hima', '2013-07-21', '16:56:37', ''),
(30, 'NGOBI DANIEL', '2013-07-22', '18:18:24', ''),
(31, 'siname jackson', '2013-07-22', '22:18:24', ''),
(32, 'siname jackson', '2013-07-22', '22:27:22', ''),
(52, 'JACKSON SINAME', '2013-08-04', '17:54:31', ''),
(53, 'MUGISHA', '2013-08-07', '19:19:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `teachersalary`
--

CREATE TABLE `teachersalary` (
  `TEACH_ID` varchar(255) NOT NULL,
  `PAY_ID` int(1) NOT NULL,
  `SALARY` float NOT NULL,
  `PAYAMOUNT` double NOT NULL,
  `CREDIT` double NOT NULL,
  `DAYPAY1` date NOT NULL,
  `DAYPAY2` date NOT NULL,
  `STATUS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachersalary`
--

INSERT INTO `teachersalary` (`TEACH_ID`, `PAY_ID`, `SALARY`, `PAYAMOUNT`, `CREDIT`, `DAYPAY1`, `DAYPAY2`, `STATUS`) VALUES
('Hackson', 2, 70000, 76000, -6000, '2013-01-02', '0000-00-00', ''),
('IT WORKS', 14, 5600000, 0, 0, '0000-00-00', '0000-00-00', ''),
('jackson', 4, 23000, 23000, 0, '2012-06-11', '0000-00-00', ''),
('kananura', 10, 450000, 0, 0, '0000-00-00', '0000-00-00', ''),
('lydia', 21, 12300, 0, 12300, '0000-00-00', '0000-00-00', ''),
('MANIRAGUHA JOSEPH', 27, 150000, 150000, 0, '2013-08-08', '0000-00-00', ''),
('mugisha', 26, 6000, 6000, 0, '2013-05-05', '0000-00-00', ''),
('NGOBI DANIEL', 23, 200000, 500, 199500, '2013-07-17', '0000-00-00', ''),
('NGOBI DANIEl1', 24, 23333, 0, 23333, '0000-00-00', '0000-00-00', ''),
('red', 20, 400, 500, -100, '2013-03-10', '0000-00-00', ''),
('RIMA', 22, 0, 0, 0, '0000-00-00', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `LEVEL` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `FNAME`, `LNAME`, `LEVEL`) VALUES
(11, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'DERICK', 'DAN', 1),
(13, 'jackson', 'e99a18c428cb38d5f260853678922e03', 'NANI', 'LOUS', 2),
(14, 'secretary', '21232f297a57a5a743894a0e4a801fc3', 'Mrs', 'Erina', 3),
(15, 'bursar', '21232f297a57a5a743894a0e4a801fc3', 'Mr ', 'Bursar', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bursarystudent`
--
ALTER TABLE `bursarystudent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`CLUB_ID`);

--
-- Indexes for table `clubmember`
--
ALTER TABLE `clubmember`
  ADD PRIMARY KEY (`CLUB_ID`,`MEMBER_ID`);

--
-- Indexes for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `itempay`
--
ALTER TABLE `itempay`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nonstaff`
--
ALTER TABLE `nonstaff`
  ADD PRIMARY KEY (`NONS_ID`);

--
-- Indexes for table `nonstaffpay`
--
ALTER TABLE `nonstaffpay`
  ADD PRIMARY KEY (`NON_ID`),
  ADD UNIQUE KEY `PAY_ID` (`PAY_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `studentmark`
--
ALTER TABLE `studentmark`
  ADD PRIMARY KEY (`CODE`,`STUDENT_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`CODE`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`TEACH_ID`);

--
-- Indexes for table `teachercheck`
--
ALTER TABLE `teachercheck`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teachersalary`
--
ALTER TABLE `teachersalary`
  ADD PRIMARY KEY (`TEACH_ID`),
  ADD UNIQUE KEY `PAY_ID` (`PAY_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bursarystudent`
--
ALTER TABLE `bursarystudent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `expenditure`
--
ALTER TABLE `expenditure`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `itempay`
--
ALTER TABLE `itempay`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nonstaff`
--
ALTER TABLE `nonstaff`
  MODIFY `NONS_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nonstaffpay`
--
ALTER TABLE `nonstaffpay`
  MODIFY `PAY_ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `TEACH_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `teachercheck`
--
ALTER TABLE `teachercheck`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `teachersalary`
--
ALTER TABLE `teachersalary`
  MODIFY `PAY_ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `clubmember`
--
ALTER TABLE `clubmember`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`CLUB_ID`) REFERENCES `club` (`CLUB_ID`);
--
-- Database: `web_db`
--
CREATE DATABASE IF NOT EXISTS `web_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `web_db`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `student_id` int(10) NOT NULL,
  `score` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `teacher_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(10) NOT NULL,
  `classname` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `classname`) VALUES
(1, 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `score_acitivty`
--

CREATE TABLE `score_acitivty` (
  `student_id` int(10) NOT NULL,
  `score` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `teacher_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `score_exam`
--

CREATE TABLE `score_exam` (
  `student_id` int(10) NOT NULL,
  `score` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `ename` int(10) DEFAULT NULL,
  `teacher_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `score_homework`
--

CREATE TABLE `score_homework` (
  `student_id` int(10) NOT NULL,
  `score` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hwname` varchar(20) DEFAULT NULL,
  `teacher_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) NOT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `teacherclass_id` int(10) NOT NULL,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `lastname`, `firstname`, `teacherclass_id`, `code`) VALUES
(1, 'Dulam', 'Dulamaa', 1, 'AE150201'),
(2, 'Badka', 'Badral', 1, 'AE150203');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(10) NOT NULL,
  `lastname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `firstname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `subject_type` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `lastname`, `firstname`, `username`, `password`, `subject_type`) VALUES
(1, 'Дорж', 'Дулам', 'admin', 'admin', 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `teacherclass`
--

CREATE TABLE `teacherclass` (
  `teacherclass_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherclass`
--

INSERT INTO `teacherclass` (`teacherclass_id`, `teacher_id`, `class_id`) VALUES
(1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `FKattendance942477` (`teacher_id`),
  ADD KEY `FKattendance599068` (`student_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `score_acitivty`
--
ALTER TABLE `score_acitivty`
  ADD KEY `FKscore_acit485813` (`teacher_id`),
  ADD KEY `FKscore_acit829222` (`student_id`);

--
-- Indexes for table `score_exam`
--
ALTER TABLE `score_exam`
  ADD KEY `FKscore_exam85442` (`teacher_id`),
  ADD KEY `FKscore_exam428851` (`student_id`);

--
-- Indexes for table `score_homework`
--
ALTER TABLE `score_homework`
  ADD KEY `FKscore_home530204` (`teacher_id`),
  ADD KEY `FKscore_home186795` (`student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `FKstudent855086` (`teacherclass_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacherclass`
--
ALTER TABLE `teacherclass`
  ADD PRIMARY KEY (`teacherclass_id`),
  ADD KEY `FKteachercla245070` (`class_id`),
  ADD KEY `FKteachercla268593` (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teacherclass`
--
ALTER TABLE `teacherclass`
  MODIFY `teacherclass_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `FKattendance599068` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `FKattendance942477` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `score_acitivty`
--
ALTER TABLE `score_acitivty`
  ADD CONSTRAINT `FKscore_acit485813` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `FKscore_acit829222` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `score_exam`
--
ALTER TABLE `score_exam`
  ADD CONSTRAINT `FKscore_exam428851` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `FKscore_exam85442` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `score_homework`
--
ALTER TABLE `score_homework`
  ADD CONSTRAINT `FKscore_home186795` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `FKscore_home530204` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FKstudent855086` FOREIGN KEY (`teacherclass_id`) REFERENCES `teacherclass` (`teacherclass_id`);

--
-- Constraints for table `teacherclass`
--
ALTER TABLE `teacherclass`
  ADD CONSTRAINT `FKteachercla245070` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `FKteachercla268593` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
