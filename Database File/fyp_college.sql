-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 10:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp_college`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `features` longtext DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `video_id` varchar(191) DEFAULT NULL,
  `button_text` varchar(191) DEFAULT NULL,
  `mission_title` varchar(191) DEFAULT NULL,
  `mission_desc` text DEFAULT NULL,
  `mission_icon` varchar(191) DEFAULT NULL,
  `mission_image` text DEFAULT NULL,
  `vision_title` varchar(191) DEFAULT NULL,
  `vision_desc` text DEFAULT NULL,
  `vision_icon` varchar(191) DEFAULT NULL,
  `vision_image` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `language_id`, `label`, `title`, `short_desc`, `description`, `features`, `attach`, `video_id`, `button_text`, `mission_title`, `mission_desc`, `mission_icon`, `mission_image`, `vision_title`, `vision_desc`, `vision_icon`, `vision_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'About College', 'A Few Words About Horizon College Chakwal', NULL, '<p>Horizon College Chakwal stands as the undisputed leader in education in the town. The institution\'s commitment to academic excellence is reflected not only in its past results but also in the holistic development of its students. The vibrant campus life, state-of-the-art facilities, and a dedicated faculty contribute to creating an environment conducive to learning and personal growth. Horizon College Chakwal takes pride in its position as the top choice for students seeking a comprehensive and outstanding educational experience in the heart of Chakwal city.</p>', 'null', 'Screenshot_2023_11_19_at_12.38.33_AM_1700336342.png', NULL, NULL, 'College\'s Mission', '<p>The mission of Horizon College is to empower students with a transformative education that goes beyond traditional boundaries, fostering intellectual curiosity, critical thinking, and a passion for lifelong learning. We are committed to providing a dynamic and inclusive learning environment that nurtures individual talents, embraces diversity, and prepares students to meet the challenges of a rapidly changing world.</p>', NULL, NULL, 'College\'s Vision', '<p>Our vision is to be a leading institution that sets the standard for excellence in education, producing well-rounded individuals who are not only academically proficient but also socially responsible and ethically grounded. We aim to cultivate a culture of innovation, creativity, and global awareness, equipping our students with the skills and values needed to make meaningful contributions to society.</p>', NULL, NULL, 1, '2023-08-24 16:17:46', '2023-11-18 19:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_no` varchar(191) DEFAULT NULL,
  `batch_id` int(10) UNSIGNED DEFAULT NULL,
  `program_id` int(10) UNSIGNED DEFAULT NULL,
  `apply_date` date DEFAULT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `father_name` varchar(191) DEFAULT NULL,
  `mother_name` varchar(191) DEFAULT NULL,
  `father_occupation` varchar(191) DEFAULT NULL,
  `mother_occupation` varchar(191) DEFAULT NULL,
  `father_photo` text DEFAULT NULL,
  `mother_photo` text DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `present_province` int(10) UNSIGNED DEFAULT NULL,
  `present_district` int(10) UNSIGNED DEFAULT NULL,
  `present_village` text DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `permanent_province` int(10) UNSIGNED DEFAULT NULL,
  `permanent_district` int(10) UNSIGNED DEFAULT NULL,
  `permanent_village` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `gender` int(11) NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `emergency_phone` varchar(191) DEFAULT NULL,
  `religion` varchar(191) DEFAULT NULL,
  `caste` varchar(191) DEFAULT NULL,
  `mother_tongue` varchar(191) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `blood_group` int(11) DEFAULT NULL,
  `nationality` varchar(191) DEFAULT NULL,
  `national_id` varchar(191) DEFAULT NULL,
  `passport_no` varchar(191) DEFAULT NULL,
  `school_name` text DEFAULT NULL,
  `school_exam_id` varchar(191) DEFAULT NULL,
  `school_graduation_field` varchar(191) DEFAULT NULL,
  `school_graduation_year` varchar(191) DEFAULT NULL,
  `school_graduation_point` varchar(191) DEFAULT NULL,
  `collage_name` text DEFAULT NULL,
  `collage_exam_id` varchar(191) DEFAULT NULL,
  `collage_graduation_field` varchar(191) DEFAULT NULL,
  `collage_graduation_year` varchar(191) DEFAULT NULL,
  `collage_graduation_point` varchar(191) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Rejected, 1 Pending, 2 Approve',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `registration_no`, `batch_id`, `program_id`, `apply_date`, `first_name`, `last_name`, `father_name`, `mother_name`, `father_occupation`, `mother_occupation`, `father_photo`, `mother_photo`, `country`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `gender`, `dob`, `email`, `phone`, `emergency_phone`, `religion`, `caste`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `school_name`, `school_exam_id`, `school_graduation_field`, `school_graduation_year`, `school_graduation_point`, `collage_name`, `collage_exam_id`, `collage_graduation_field`, `collage_graduation_year`, `collage_graduation_point`, `photo`, `signature`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, '10000003', NULL, 3, '2023-11-18', 'Hammad Ahmad', 'Khan', 'Shafqat Mehmood', 'sadf', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 'Faisal Colony Talagang road', 0, 0, NULL, NULL, 1, '2023-11-05', 'hammadahmadkhan15@gmail.com', '+923335905906', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdf', 'adsf', NULL, 'asdf', 'adsf', 'dfs', 'sdf', NULL, 'adsf', 'dsfa', 'Screenshot_2023_11_15_at_3.22.08_PM_1700338975.png', 'footprint_1700338975.png', 1, NULL, NULL, '2023-11-18 20:22:55', '2023-11-18 20:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `application_settings`
--

CREATE TABLE `application_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `title` text DEFAULT NULL,
  `header_left` text DEFAULT NULL,
  `header_center` text DEFAULT NULL,
  `header_right` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `footer_left` text DEFAULT NULL,
  `footer_center` text DEFAULT NULL,
  `footer_right` text DEFAULT NULL,
  `logo_left` text DEFAULT NULL,
  `logo_right` text DEFAULT NULL,
  `background` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_settings`
--

INSERT INTO `application_settings` (`id`, `slug`, `title`, `header_left`, `header_center`, `header_right`, `body`, `footer_left`, `footer_center`, `footer_right`, `logo_left`, `logo_right`, `background`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admission', 'Apply to admission on our College', NULL, NULL, NULL, '<p>The online admission form provides a convenient and efficient way for prospective students to submit their details and kickstart their academic journey. Alternatively, for those who prefer a physical form, admission forms are also accessible directly from our campus. Applicants can visit our campus to collect a hard copy of the admission form, ensuring that the process caters to the diverse needs and preferences of our prospective students. Whichever method suits you best, we are dedicated to providing a seamless and accessible admission process to welcome you to Horizon College Chakwal.</p>', NULL, NULL, NULL, 'logoJPG_1700293249.png', 'logoJPG_1700293249.png', NULL, 1, '2023-02-13 11:05:47', '2023-11-19 21:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT NULL,
  `program_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `total_marks` decimal(5,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `assign_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `subject_id`, `title`, `description`, `total_marks`, `start_date`, `end_date`, `attach`, `status`, `assign_by`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 3, 1, 1, 6, 'Theory of relativity', '<p>The theory of relativity usually encompasses two interrelated theories by Albert Einstein: special relativity and general relativity, proposed and published in 1905 and 1915, respectively. Special relativity applies to all physical phenomena in the absence of gravity</p>', 10.00, '2022-10-03', '2022-10-03', 'book-cover2_1664817002.jpg', 1, 1, '2022-10-03 11:10:02', '2022-10-03 12:57:10'),
(2, 2, 2, 4, 1, 1, 5, 'Measurement and Height', '<p>To convert your height to its metric equivalent, start by calculating your height in inches only. A person who\'s 5 feet, 6 inches tall is 66 inches. One inch equals 2.54 centimeters (cm). So, to make the conversion, simply</p>', 10.00, '2022-10-03', '2022-10-21', 'book-covers_1664817184.jpg', 1, 1, '2022-10-03 11:13:04', '2022-10-03 12:56:58'),
(3, 2, 3, 4, 0, 0, 3, 'Rules of Article', '<p>Rule 1 &ndash; The very basic rule of the article says that the article \'the\' is used before a singular or plural noun, which is specific. It indicates a particular ...</p>', 10.00, '2022-10-04', '2022-10-08', NULL, 1, 1, '2022-10-04 06:53:42', '2022-10-04 06:55:45'),
(5, 2, 3, 4, 0, 0, 3, 'Rules of voice change', '<p>Active and Passive Voice Rules in English Grammar, Examples and Exercise, General Rules. ... The Rules to Change the Sentences from Active to Passive Form</p>', 10.00, '2022-10-04', '2022-10-13', NULL, 1, 1, '2022-10-04 07:05:34', '2022-10-04 07:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `start_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `title`, `start_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '1st Batch', '2018-10-01', 1, '2022-09-30 13:02:48', '2022-09-30 13:02:48'),
(2, '2nd Batch', '2019-10-01', 1, '2022-09-30 13:03:01', '2022-09-30 13:03:01'),
(3, '3rd Batch', '2020-10-01', 1, '2022-09-30 13:03:23', '2022-09-30 13:03:23'),
(4, '4th Batch', '2021-10-01', 1, '2022-09-30 13:03:38', '2022-09-30 13:03:38'),
(5, '5th Batch', '2022-10-01', 1, '2022-09-30 13:03:56', '2022-09-30 13:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `batch_program`
--

CREATE TABLE `batch_program` (
  `batch_id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `isbn` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `author` varchar(191) DEFAULT NULL,
  `publisher` varchar(191) DEFAULT NULL,
  `edition` varchar(191) DEFAULT NULL,
  `publish_year` varchar(191) DEFAULT NULL,
  `language` varchar(191) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `section` varchar(191) DEFAULT NULL,
  `column` varchar(191) DEFAULT NULL,
  `row` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Lost, 1 Available, 2 Damage',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `title`, `isbn`, `code`, `author`, `publisher`, `edition`, `publish_year`, `language`, `price`, `quantity`, `section`, `column`, `row`, `description`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 1, 'Alexa and the sons', '978-3-16-146347-5', NULL, 'Alex', 'Gary Somherlder', '8th', '1987', 'English', 1400.00, 385, '7', '78', '52', 'Fuga Optio ea offi', 'In consectetur ea om', NULL, 1, 1, 1, '2022-10-01 12:45:56', '2023-11-22 08:49:56'),
(4, 4, 'Love and Death', '978-3-16-785410-9', NULL, 'Arman', 'Amir Khan', '2nd ed', '1981', 'English', 10.00, 349, '78', '01', '14', 'Vel nisi ut et rem q', 'Voluptas ea suscipit', NULL, 1, 1, 1, '2022-10-01 13:07:42', '2023-11-22 08:49:18'),
(5, 2, 'A Story of Your Childhood', '1-566147-548-7', NULL, 'Saif', 'Zoho Khan', '1st', '2000', 'English', 170.00, 435, '17', '77', '47', 'Unde voluptatem ut u', 'Sequi veniam non se', NULL, 1, 1, 1, '2022-10-01 13:10:51', '2023-11-22 08:48:50'),
(6, 1, 'Life and love', '1-254147-457-9', NULL, 'Arman', 'Mark Z', '4th', '1982', 'English', 4500.00, 758, '77', '14', '23', 'Quae irure aut conse', 'Numquam mollit aliqu', 'book-covers_1664653539.jpg', 1, 1, 1, '2022-10-01 13:45:39', '2023-11-22 08:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fiction Books', 'fiction-books', NULL, 1, '2022-09-30 14:13:20', '2022-09-30 14:13:20'),
(2, 'Crime & Mystery', 'crime-mystery', NULL, 1, '2022-09-30 14:13:35', '2022-09-30 14:13:35'),
(3, 'History', 'history', NULL, 1, '2022-09-30 14:13:50', '2022-09-30 14:13:50'),
(4, 'Magazine', 'magazine', NULL, 1, '2022-09-30 14:14:12', '2022-09-30 14:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `isbn` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `author` varchar(191) DEFAULT NULL,
  `publisher` varchar(191) DEFAULT NULL,
  `edition` varchar(191) DEFAULT NULL,
  `publish_year` varchar(191) DEFAULT NULL,
  `language` varchar(191) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `request_by` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Rejected, 1 Pending, 2 Progress, 3 Approved',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_requests`
--

INSERT INTO `book_requests` (`id`, `category_id`, `title`, `isbn`, `code`, `author`, `publisher`, `edition`, `publish_year`, `language`, `price`, `quantity`, `request_by`, `phone`, `email`, `description`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'The sons', NULL, NULL, 'Qasid', 'Vovek', '2nd', '1990', 'Quas et impedit vol', 0.00, 421, 'Rafaqat ALi khan', '+923134564567', 'rafakat@gmail.com', 'Asperiores elit ill', 'Reprehenderit illum', NULL, 1, 1, 1, '2023-02-13 12:11:02', '2023-11-22 08:52:07'),
(2, 2, 'Alexa and Sons', NULL, NULL, 'Asim', 'Gary Somherlder', '7th', '2010', 'Dolor tenetur exerci', 1400.00, 324, 'Shamir ali', '+923335905906', 'yououou@gmail.com', 'Harum dicta sint et', 'Tempor doloremque do', NULL, 1, 1, 1, '2023-02-13 12:11:18', '2023-11-22 08:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `call_to_actions`
--

CREATE TABLE `call_to_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `bg_image` text DEFAULT NULL,
  `button_text` varchar(191) DEFAULT NULL,
  `button_link` varchar(191) DEFAULT NULL,
  `video_id` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `call_to_actions`
--

INSERT INTO `call_to_actions` (`id`, `language_id`, `title`, `sub_title`, `image`, `bg_image`, `button_text`, `button_link`, `video_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Horizon Scholarship Programs', 'At Horizon College, we prepare you to launch your career by providing a supportive, creative, and professional environment from which to learn practical skills and build a network of industry contacts.', NULL, NULL, 'Horizon College', 'https://www.hcchakwal.edu.pk/', NULL, 1, '2023-08-24 16:01:48', '2023-11-19 18:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_id` int(10) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `starting_year` varchar(191) DEFAULT NULL,
  `ending_year` varchar(191) DEFAULT NULL,
  `credits` decimal(5,2) NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `barcode` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `template_id`, `student_id`, `serial_no`, `date`, `starting_year`, `ending_year`, `credits`, `point`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '100001', '2022-10-02', '2022-01-01', '2022-12-01', 10.00, 3.80, '100001', 1, '2022-10-02 16:12:54', '2022-10-04 11:06:27'),
(2, 1, 3, '100002', '2022-10-04', '2022-01-01', '2022-12-01', 10.00, 4.50, '100002', 1, '2022-10-04 11:04:35', '2022-10-04 11:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_templates`
--

CREATE TABLE `certificate_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `header_left` text DEFAULT NULL,
  `header_center` text DEFAULT NULL,
  `header_right` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `footer_left` text DEFAULT NULL,
  `footer_center` text DEFAULT NULL,
  `footer_right` text DEFAULT NULL,
  `logo_left` text DEFAULT NULL,
  `logo_right` text DEFAULT NULL,
  `background` text DEFAULT NULL,
  `width` varchar(191) NOT NULL DEFAULT 'auto',
  `height` varchar(191) NOT NULL DEFAULT 'auto',
  `student_photo` tinyint(1) NOT NULL DEFAULT 0,
  `barcode` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_templates`
--

INSERT INTO `certificate_templates` (`id`, `title`, `header_left`, `header_center`, `header_right`, `body`, `footer_left`, `footer_center`, `footer_right`, `logo_left`, `logo_right`, `background`, `width`, `height`, `student_photo`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Provisional Certificate', NULL, NULL, NULL, 'This is to certify that  [first_name] [last_name] son / daughter of  [father_name] and [mother_name] passed [program] degree under [faculty] examination of the university held in [ending_year]. And that he/she was placed [cgpa] with grade of [grade]. \r\n\r\nHe/She completed the course of  [credits] credits and all of the requirements for the award of the Bachelor\'s degree.', 'Controller', 'Director', 'Register', 'logoJPG_1700294263.png', NULL, 'background-border_1664614748.png', '800px', 'auto', 1, 1, 1, '2022-10-01 02:56:19', '2023-11-18 07:57:43'),
(2, 'Transfer Certificate', NULL, NULL, NULL, 'This is to certify that  [first_name] [last_name] son / daughter of  [father_name] and [mother_name] passed [program] degree under [faculty] examination of the university held in [ending_year]. And that he/she was placed [cgpa] with grade of [grade]. \r\n\r\nHe/She completed the course of  [credits] credits and all of the requirements for the award of the Bachelor\'s degree.', 'Controller', 'Director', 'Register', 'logoJPG_1700294307.png', NULL, 'background-border_1664614963.png', '800px', 'auto', 1, 0, 1, '2022-10-01 03:02:43', '2023-11-18 07:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `floor` varchar(191) DEFAULT NULL,
  `capacity` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `title`, `slug`, `floor`, `capacity`, `type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '201A', '201a', '2nd Floor', NULL, 'Theory', NULL, 1, '2022-09-30 13:32:31', '2022-09-30 13:34:51'),
(2, '202B', '202b', '2nd Floor', NULL, 'Theory', NULL, 1, '2022-09-30 13:33:11', '2022-09-30 13:34:45'),
(3, '305A', '305a', '3rd Floor', '40', 'Lab', NULL, 1, '2022-09-30 13:34:10', '2022-09-30 13:34:10'),
(4, '306A', '306a', '3rd Floor', '60', 'Lab', NULL, 1, '2022-09-30 13:34:27', '2022-09-30 13:34:59'),
(5, '205B', '205b', '2nd Floor', NULL, 'Theory', NULL, 1, '2022-10-01 04:46:18', '2022-10-01 04:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `class_routines`
--

CREATE TABLE `class_routines` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `day` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `source_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `father_name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `action_taken` text DEFAULT NULL,
  `assigned` varchar(191) DEFAULT NULL,
  `issue` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `type_id`, `source_id`, `name`, `father_name`, `phone`, `email`, `date`, `action_taken`, `assigned`, `issue`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 'Alina Zahra', 'Zahid Hamdani', '+9233456767', 'alina@mailinator.com', '2021-02-13', 'Ordered', 'Liz', 'hostel issues', 'hostel change', NULL, 1, 1, 1, '2022-10-01 12:29:41', '2022-10-27 13:29:43'),
(2, 9, 3, 'Bushra Bibi', 'Basharat Hussein', '+9234354667', 'bushra@mailinator.com', '2020-08-02', 'Solved', 'Saif', 'problem with grades ', 'showing low grades in final exams ', 'book-cover2_1664656121.jpg', 1, 1, 1, '2022-10-01 12:30:16', '2022-10-27 13:29:18'),
(3, 3, 1, 'Kashif Butt ', 'Nazar Butt ', '+92343556789', 'kashif@mailinator.com', '2022-06-22', 'Suspend', '8', 'dummy issues', 'issue is resolved ', NULL, 0, 1, 1, '2022-10-01 12:30:38', '2023-02-13 12:27:14'),
(4, 5, 2, 'Eleena Tariq ', 'Tariq Hussein ', '+92333545666', 'eleena@mailinator.com', '2020-03-23', 'Change', 'Alee Muhammad ', 'Expensive books ', 'Donated books ', NULL, 1, 1, 1, '2022-10-01 12:31:10', '2022-10-27 13:28:34'),
(6, 5, 3, 'Ghulam Rasool', 'Haji Shafqat', '03334564567', 'weripazu@mailinator.com', '2022-12-03', NULL, '9', 'Nilll', 'Nill', NULL, 0, 1, 1, '2023-02-13 12:27:46', '2023-11-18 08:06:54'),
(7, 3, 3, 'Naqeeb khan', 'Ali Khan', '031145444567', 'hufomyc@mailinator.com', '2023-08-17', 'On Going', '9', 'excess of burden...', 'MD is resolving issue...', NULL, 1, 1, 1, '2023-08-25 07:29:47', '2023-11-18 08:06:00'),
(8, 6, 2, 'Aleena', 'Ali Naqvi', '03234545456', 'muxasi@mailinator.com', '2023-07-30', 'Solved', '9', 'Issues with roomates...', 'The issue was resolved, room changed....', NULL, 3, 1, 1, '2023-08-25 07:30:22', '2023-11-18 08:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `complain_sources`
--

CREATE TABLE `complain_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complain_sources`
--

INSERT INTO `complain_sources` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Staff', 'staff', NULL, 1, '2022-10-01 03:56:33', '2022-10-01 03:56:33'),
(2, 'Student', 'student', NULL, 1, '2022-10-01 03:56:40', '2022-10-01 03:56:40'),
(3, 'Parent', 'parent', NULL, 1, '2022-10-01 03:56:47', '2022-10-01 03:56:47'),
(4, 'Teacher', 'teacher', NULL, 1, '2022-10-01 03:56:58', '2022-10-01 03:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `complain_types`
--

CREATE TABLE `complain_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complain_types`
--

INSERT INTO `complain_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fees', 'fees', NULL, 1, '2022-10-01 03:53:14', '2022-10-01 03:53:14'),
(2, 'Study', 'study', NULL, 1, '2022-10-01 03:53:29', '2022-10-01 03:53:29'),
(3, 'Teacher', 'teacher', NULL, 1, '2022-10-01 03:53:37', '2022-10-01 03:53:37'),
(4, 'Sports', 'sports', NULL, 1, '2022-10-01 03:53:42', '2022-10-01 03:53:42'),
(5, 'Transport', 'transport', NULL, 1, '2022-10-01 03:53:51', '2022-10-01 03:53:51'),
(6, 'Hostel', 'hostel', NULL, 1, '2022-10-01 03:54:00', '2022-10-01 03:54:00'),
(7, 'Instrument', 'instrument', NULL, 1, '2022-10-01 03:54:55', '2022-10-01 03:54:55'),
(8, 'Exam', 'exam', NULL, 1, '2022-10-01 03:55:27', '2022-10-01 03:55:27'),
(9, 'Library', 'library', NULL, 1, '2022-10-01 03:55:41', '2022-10-01 03:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `contentables`
--

CREATE TABLE `contentables` (
  `content_id` bigint(20) NOT NULL,
  `contentable_id` bigint(20) NOT NULL,
  `contentable_type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contentables`
--

INSERT INTO `contentables` (`content_id`, `contentable_id`, `contentable_type`) VALUES
(1, 8, 'App\\Models\\Student'),
(1, 7, 'App\\Models\\Student'),
(3, 14, 'App\\Models\\Student'),
(3, 12, 'App\\Models\\Student'),
(3, 11, 'App\\Models\\Student'),
(3, 10, 'App\\Models\\Student');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT NULL,
  `program_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `url` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `type_id`, `title`, `description`, `date`, `url`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 4, 1, 1, 2, 'Optical Physics 1st Class', NULL, '2022-10-03', NULL, 'book-covers_1664802778.jpg', 1, 1, NULL, '2022-10-03 07:12:58', '2022-10-03 07:12:58'),
(2, 2, 3, 4, 1, 0, 1, 'Full Syllabus 2022', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose</p>', '2022-10-03', NULL, 'book-cover2_1664802896.jpg', 1, 1, 1, '2022-10-03 07:14:56', '2022-10-03 14:56:00'),
(3, 2, 3, 4, 1, 0, 2, '2nd Class Of English', NULL, '2022-10-04', NULL, 'Provisional Certificate-100001_1664888967.pdf', 1, 1, NULL, '2022-10-04 07:09:27', '2022-10-04 07:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

CREATE TABLE `content_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_types`
--

INSERT INTO `content_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Syllabus', 'syllabus', NULL, 1, '2022-09-30 13:55:02', '2022-09-30 13:55:02'),
(2, 'Lecture Sheet', 'lecture-sheet', NULL, 1, '2022-09-30 13:55:07', '2022-09-30 13:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `faculty` varchar(191) DEFAULT NULL,
  `semesters` varchar(191) DEFAULT NULL,
  `credits` varchar(191) DEFAULT NULL,
  `courses` varchar(191) DEFAULT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `fee` double(10,2) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `language_id`, `title`, `slug`, `faculty`, `semesters`, `credits`, `courses`, `duration`, `fee`, `description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'FSC Pre-Med', 'fsc-pre-med', 'Pre-Medical', NULL, NULL, '13', '2 Years', 88000.00, '<p>FSC Pre-medical at Horizon College Chakwal offers a comprehensive and rigorous academic program tailored for students aspiring to pursue a career in medicine. The program is designed to prepare students for the challenging field of medical sciences, laying a solid foundation in the biological and chemical sciences.</p>\r\n<p><strong>Board/University:</strong></p>\r\n<p>Conducted under the auspices of the Rawalpindi Board (BISE RWP), the final examinations adhere to a high standard of academic excellence. Students undergo thorough preparation, ensuring they are well-equipped with the knowledge and skills required for success in the medical entrance exams.</p>\r\n<p><strong>Fee/Charges:</strong></p>\r\n<p>Students are required to pay a non-refundable admission fee of 8000 PKR, securing their enrollment in the program. The tuition fee, amounting to 78,000 PKR (payable in three installments), covers the cost of quality education delivered by experienced faculty members dedicated to nurturing the academic growth of each student.</p>\r\n<p>In addition to the tuition fee, an annual charge of 2000 PKR is applicable, contributing to the overall infrastructure and facilities provided by Horizon College Chakwal. The total cost for the FSC Pre-medical program at Horizon College Chakwal is 88,000 PKR.</p>\r\n<p>With a commitment to academic excellence and a holistic approach to student development, Horizon College Chakwal\'s FSC Pre-medical program not only prepares students for academic success but also instills the values and skills necessary for a successful future in the field of medicine.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'premed_1700418005.jpeg', 1, '2023-08-25 05:22:05', '2023-11-19 18:32:30'),
(2, 1, 'FSC Pre-Eng', 'fsc-pre-eng', 'Engineering', NULL, NULL, '13', '2 Years', 88000.00, '<p>FSC Pre-engineering at Horizon College Chakwal is a dynamic educational program crafted to provide students with a solid foundation in the fundamental principles of engineering and technology. This rigorous curriculum is designed to prepare students for the challenges and opportunities in the field of engineering.</p>\r\n<p><strong>Board/University:</strong></p>\r\n<p>Conducted under the auspices of the Rawalpindi Board (BISE RWP), the final examinations maintain a high standard to ensure students are well-prepared for future academic and professional pursuits. The program places a strong emphasis on mathematics, physics, and chemistry, fostering a comprehensive understanding of engineering principles.</p>\r\n<p><strong>Fee/Charges:</strong></p>\r\n<p>To secure enrollment in this promising program, students are required to pay a non-refundable admission fee of 8000 PKR. The tuition fee, amounting to 78,000 PKR and payable in three installments, covers the cost of quality education delivered by a team of experienced and dedicated faculty members. </p>\r\n<p>In addition to the tuition fee, an annual charge of 2000 PKR is applicable, contributing to the overall infrastructure and facilities provided by Horizon College Chakwal. The total cost for the FSC Pre-engineering program at Horizon College Chakwal is 88,000 PKR. </p>\r\n<p>Horizon College Chakwal is committed to fostering a conducive learning environment that not only focuses on academic excellence but also encourages critical thinking, problem-solving, and innovation. The FSC Pre-engineering program prepares students not only for their immediate academic goals but also equips them with the skills and knowledge necessary for a successful career in the dynamic field of engineering.</p>', 'preeng_1700418300.jpeg', 1, '2023-08-25 05:24:10', '2023-11-19 18:26:55'),
(3, 1, 'ICS', 'ics', 'Computer Sciences', NULL, NULL, '13', '2 Years', 88000.00, '<p>This comprehensive course is designed to equip students with a strong foundation in computer science, fostering skills that are essential in today\'s digital age.</p>\r\n<p><strong>Board/University:</strong></p>\r\n<p>Under the accreditation of the Rawalpindi Board (BISE RWP), the ICS program at Horizon College ensures that students are well-prepared for the final examinations, which uphold a rigorous standard to meet the demands of the evolving field of computer science.</p>\r\n<p>To secure enrollment in this cutting-edge program, students are required to pay a non-refundable admission fee of 8000 PKR. The tuition fee, amounting to 78,000 PKR and payable in three installments, covers a curriculum delivered by experienced faculty members dedicated to nurturing the technical prowess of each student.</p>\r\n<p>In addition to the tuition fee, an annual charge of 2000 PKR is applicable, contributing to the overall infrastructure and facilities provided by Horizon College Chakwal. The total cost for the ICS program is 88,000 PKR.</p>\r\n<p>Horizon College Chakwal is committed to providing a dynamic learning environment that goes beyond traditional education. The ICS program not only focuses on academic excellence in computer science but also encourages critical thinking, problem-solving, and innovation. Students in the ICS program are poised to become future leaders in the rapidly advancing field of technology, armed with the skills and knowledge needed for success in various computing domains.</p>', 'ics_1700418528.jpeg', 1, '2023-08-25 05:26:23', '2023-11-19 18:31:43'),
(4, 1, 'I.Com.', 'icom', 'Commerce', NULL, NULL, '7', '2 Years', 80000.00, '<p>Horizon College Chakwal offers an enriching academic program for students seeking to pursue Intermediate in Commerce (I.COM). This program, designed for individuals with a keen interest in commerce and business, provides a comprehensive curriculum to develop a strong foundation in key subjects.</p>\r\n<p><strong>Board/University:</strong></p>\r\n<p>The Intermediate in Commerce program at Horizon College Chakwal is structured to meet the standards set by the Rawalpindi Board (BISE RWP), ensuring a high-quality education and recognized certification upon successful completion. The final examinations, which are conducted by the Rawalpindi Board, serve as a benchmark for assessing students\' knowledge and proficiency in commerce-related subjects.</p>\r\n<p><strong>Fee/Charges:</strong></p>\r\n<p>To embark on this educational journey at Horizon College Chakwal, prospective students are required to pay a non-refundable admission fee of 8000 PKR. Additionally, the tuition fee for the program amounts to 70,000 PKR, payable in three installments. In order to facilitate a conducive learning environment, an annual charge of 2000 PKR is applied.</p>\r\n<p>The total cost for the Intermediate in Commerce program at Horizon College Chakwal sums up to 80,000 PKR, encompassing the admission fee, tuition fee, and annual charges. This investment reflects the commitment of the college to provide a high-caliber education, preparing students for future challenges and opportunities in the dynamic field of commerce. Join Horizon College Chakwal for a transformative educational experience that equips students with the skills and knowledge needed for a successful career in commerce.</p>', 'icom_1700419059.jpeg', 1, '2023-11-19 18:37:39', '2023-11-19 18:56:10'),
(5, 1, 'ADP IT', 'adp-it', 'Associate Degree', '4', '66', '22', '2 Years', 51000.00, '<p>Horizon College Chakwal is delighted to present the Associate Degree Program (ADP) in Information Technology, a comprehensive two-year, four-semester program designed to provide students with a robust foundation in the rapidly evolving field of Information Technology.</p>\r\n<p><strong>Board/University:</strong></p>\r\n<p>This program is in affiliation with Punjab University, ensuring that the curriculum meets industry standards and that successful graduates receive a recognized qualification.</p>\r\n<p><strong>Fee/Charges:</strong></p>\r\n<p>To embark on this transformative educational journey, prospective students are required to pay a non-refundable admission fee of 8000 PKR. The tuition fee for each semester is 42,000 PKR, making quality education accessible to aspiring IT professionals. Additionally, an annual charge of 1000 PKR per semester covers miscellaneous expenses and ensures a conducive learning environment.</p>\r\n<p>The total cost for the Associate Degree Program in Information Technology at Horizon College Chakwal is 51,000 PKR per semester, encompassing the admission fee, tuition fee, and annual charges. This investment reflects the commitment of the college to provide a high-caliber education that equips students with the knowledge and skills needed to thrive in the IT industry.</p>\r\n<p>Join Horizon College Chakwal for the ADP in Information Technology, a two-year program that opens doors to exciting career opportunities and prepares you for success in the ever-evolving landscape of Information Technology.</p>\r\n<p>&nbsp;</p>', 'Most_Attractive_Youtube_Thumbnail_1700421433.jpg', 1, '2023-11-19 19:17:13', '2023-11-19 19:17:13'),
(6, 1, 'ADP Botany', 'adp-botany', 'Associate Degree', '4', '66', '22', '2 Years', NULL, '<p>Horizon College Chakwal is proud to introduce the Associate Degree Program (ADP) in Botany, a two-year, four-semester academic journey crafted to provide students with a profound understanding of plant sciences.</p>\r\n<p><strong>Board/University:</strong></p>\r\n<p>Affiliated with Punjab University, this program ensures a curriculum that aligns with academic excellence and industry standards, offering students a recognized qualification upon successful completion.</p>\r\n<p><strong>Fee/Charge:</strong></p>\r\n<p>To commence this educational odyssey, aspiring students are required to submit a non-refundable admission fee of 8000 PKR. The tuition fee for each semester is 42,000 PKR, making quality education accessible to those with a passion for botany. Additionally, an annual charge of 1000 PKR per semester ensures a conducive learning environment and covers miscellaneous expenses.</p>\r\n<p>The total cost for the Associate Degree Program in Botany at Horizon College Chakwal amounts to 51,000 PKR per semester, encompassing the admission fee, tuition fee, and annual charges. This investment reflects the commitment of the college to provide a comprehensive education in botany, preparing students for diverse career paths and further studies in the field.</p>\r\n<p>Embark on a botanical journey with Horizon College Chakwal\'s ADP in Botany, where a rich academic experience awaits, offering a deep dive into the captivating world of plants and their significance in our ecosystem.</p>', 'Most_Attractive_Youtube_Thumbnail_(1)_1700421682.jpg', 1, '2023-11-19 19:21:22', '2023-11-19 19:21:22'),
(7, 1, 'ADP Chemistry', 'adp-chemistry', 'Associate Degree', '4', '66', '22', '2 Years', 51000.00, '<p>Horizon College Chakwal proudly presents the Associate Degree Program (ADP) in Chemistry, a two-year, four-semester academic endeavor tailored to provide students with a comprehensive understanding of the fascinating realm of chemistry.</p>\r\n<p><strong>Board/University:</strong></p>\r\n<p>Affiliated with Punjab University, this program ensures a curriculum that meets rigorous academic standards and offers students a recognized qualification upon successful completion.</p>\r\n<p><strong>Fee/Charges:</strong></p>\r\n<p>To embark on this educational journey, prospective students are required to submit a non-refundable admission fee of 8000 PKR. The tuition fee for each semester is 42,000 PKR, making quality education accessible to those passionate about chemistry. Additionally, an annual charge of 1000 PKR per semester ensures a conducive learning environment and covers miscellaneous expenses associated with the program.</p>\r\n<p>The total cost for the Associate Degree Program in Chemistry at Horizon College Chakwal amounts to 51,000 PKR per semester, encompassing the admission fee, tuition fee, and annual charges. This investment reflects the commitment of the college to provide a comprehensive education in chemistry, preparing students for diverse career opportunities and advanced studies in the field.</p>\r\n<p>Embark on a transformative journey into the world of chemistry with Horizon College Chakwal\'s ADP, where a rich academic experience awaits, fostering a deep understanding of the fundamental principles that shape our understanding of matter and its transformations.</p>', 'Most_Attractive_Youtube_Thumbnail_(2)_1700421907.jpg', 1, '2023-11-19 19:25:07', '2023-11-19 19:25:07'),
(8, 1, 'ADP Physics', 'adp-physics', 'Associate Degree', '4', '66', '22', '2 Years', 51000.00, '<p>Horizon College Chakwal is delighted to introduce the Associate Degree Program (ADP) in Physics, a comprehensive two-year, four-semester academic initiative designed to provide students with a profound understanding of the principles and applications of physics.</p>\r\n<p><strong>Board/University:</strong></p>\r\n<p>Affiliated with Punjab University, this program ensures a curriculum that meets the highest academic standards, offering students a recognized qualification upon successful completion.</p>\r\n<p><strong>Fee/Charges:</strong></p>\r\n<p>To embark on this educational journey, aspiring students are required to submit a non-refundable admission fee of 8000 PKR. The tuition fee for each semester is 42,000 PKR, making quality education accessible to those with a passion for physics. Additionally, an annual charge of 1000 PKR per semester ensures a conducive learning environment and covers miscellaneous expenses associated with the program.</p>\r\n<p>The total cost for the Associate Degree Program in Physics at Horizon College Chakwal amounts to 51,000 PKR per semester, encompassing the admission fee, tuition fee, and annual charges. This investment reflects the commitment of the college to provide a comprehensive education in physics, preparing students for diverse career paths and further studies in the field.</p>\r\n<p>Embark on an intellectual journey into the world of physics with Horizon College Chakwal\'s ADP, where a rich academic experience awaits, fostering a deep understanding of the fundamental principles that govern the physical universe.</p>', 'Most_Attractive_Youtube_Thumbnail_(3)_1700422123.jpg', 1, '2023-11-19 19:28:43', '2023-11-19 19:28:43'),
(9, 1, 'ADP Zoology', 'adp-zoology', 'Associate Degree', '4', '66', '22', '2 Years', 51000.00, '<p>Horizon College Chakwal proudly presents the Associate Degree Program (ADP) in Zoology, a captivating two-year, four-semester academic journey meticulously designed to provide students with a comprehensive understanding of the fascinating world of zoology.</p>\r\n<p><strong>Board/University:</strong></p>\r\n<p>Affiliated with Punjab University, this program ensures a curriculum that adheres to rigorous academic standards, offering students a recognized qualification upon successful completion.</p>\r\n<p><strong>Fee/Charges:</strong></p>\r\n<p>To embark on this educational odyssey, prospective students are required to submit a non-refundable admission fee of 8000 PKR. The tuition fee for each semester is 42,000 PKR, making quality education accessible to those with a passion for zoology. Additionally, an annual charge of 1000 PKR per semester ensures a conducive learning environment and covers miscellaneous expenses associated with the program.</p>\r\n<p>The total cost for the Associate Degree Program in Zoology at Horizon College Chakwal amounts to 51,000 PKR per semester, encompassing the admission fee, tuition fee, and annual charges. This investment reflects the commitment of the college to provide a comprehensive education in zoology, preparing students for diverse career opportunities and advanced studies in the field.</p>\r\n<p>Embark on a transformative journey into the world of zoology with Horizon College Chakwal\'s ADP, where a rich academic experience awaits, fostering a deep understanding of the fascinating and diverse life forms that inhabit our planet.</p>', 'Most_Attractive_Youtube_Thumbnail_(4)_1700422399.jpg', 1, '2023-11-19 19:33:19', '2023-11-19 19:33:19'),
(10, 1, 'ADP Mathematics', 'adp-mathematics', 'Associate Degree', '4', '66', '22', '2 Years', 51000.00, '<p>This comprehensive two-year program, spanning four semesters, is designed to provide students with a solid foundation in mathematics, equipping them with the knowledge and skills necessary for a successful career or further academic pursuits.</p>\r\n<p><strong>Academic Structure: </strong></p>\r\n<p>The ADP in Mathematics curriculum at Horizon College Chakwal encompasses a diverse range of subjects, including calculus, algebra, statistics, and applied mathematics. With a focus on both theoretical understanding and practical application, students engage in coursework that fosters critical thinking and problem-solving abilities.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>The program culminates with final examinations conducted by the esteemed Punjab University, ensuring that students receive a certification that is recognized and respected in academic and professional circles.</p>\r\n<p><strong>Admission Details: </strong></p>\r\n<p>Prospective students are invited to join this enriching program by submitting their applications. The non-refundable admission fee is set at 8000 PKR, securing a place in the vibrant academic community at Horizon College Chakwal.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 42,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Cost: The total cost for the ADP in Mathematics program at Horizon College Chakwal is 51,000 PKR, inclusive of tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose ADP in Mathematics at Horizon College Chakwal? </strong></p>\r\n<p><strong>1. Quality Education:</strong> Benefit from a high-quality education delivered by experienced and dedicated faculty members. Practical Application: Gain hands-on experience through practical exercises and real-world applications of mathematical concepts.</p>\r\n<p><strong>2. Punjab University Certification:</strong> Receive a certification from Punjab University, enhancing the credibility of your academic qualifications.</p>\r\n<p><strong>3. Community Engagement:</strong> Become part of a vibrant academic community, fostering collaboration and intellectual growth.</p>\r\n<p>Prepare for a future filled with opportunities and challenges as you delve into the world of mathematics through the ADP program at Horizon College Chakwal. Embrace a transformative educational experience that lays the groundwork for a successful and fulfilling career in mathematics.</p>', 'Most_Attractive_Youtube_Thumbnail_(5)_1700422781.jpg', 1, '2023-11-19 19:39:41', '2023-11-19 19:39:41'),
(11, 1, 'ADP Applied Psychology', 'adp-applied-psychology', 'Associate Degree', '4', '66', '22', '2 Years', 51000.00, '<p>This two-year program, spanning four semesters, is crafted to provide students with a comprehensive understanding of applied psychology and its practical applications in various fields.</p>\r\n<p><strong>Academic Exploration: </strong></p>\r\n<p>The ADP in Applied Psychology curriculum at Horizon College Chakwal is thoughtfully designed to cover a broad spectrum of topics, including cognitive psychology, counseling, human development, and applied behavioral analysis. Through a combination of theoretical knowledge and practical applications, students are equipped with the skills necessary for a meaningful career in psychology.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>The final examinations for this program are conducted by the prestigious Punjab University, ensuring that students receive a certification that is recognized and respected nationally and internationally.</p>\r\n<p><strong>Admission Process: </strong></p>\r\n<p>Aspiring students are invited to apply for admission to the ADP in Applied Psychology program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this dynamic academic community.</p>\r\n<p><strong>Financial Breakdown:</strong></p>\r\n<p>Tuition Fee: 42,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the ADP in Applied Psychology program at Horizon College Chakwal is 51,000 PKR, inclusive of tuition fees and annual charges for each semester.</p>\r\n<p><strong> Why Choose ADP in Applied Psychology at Horizon College Chakwal? </strong></p>\r\n<p><strong>1. Comprehensive Curriculum:</strong> Explore a well-rounded curriculum that covers various branches of applied psychology, providing a holistic understanding of the discipline.</p>\r\n<p><strong>2. Practical Application: </strong>Gain hands-on experience through case studies, internships, and real-world scenarios to enhance your practical skills.</p>\r\n<p><strong>3. Punjab University Certification:</strong> Receive a certification from Punjab University, a mark of academic excellence widely recognized in academic and professional circles.</p>\r\n<p><strong>4. Supportive Academic Community:</strong> Join a supportive academic community where faculty members are dedicated to nurturing your intellectual and personal growth.</p>\r\n<p>Prepare to make a positive impact in the field of applied psychology by enrolling in the ADP program at Horizon College Chakwal. Embrace a dynamic learning environment that combines theoretical knowledge with practical experience, setting the stage for a rewarding career in applied psychology.</p>', 'Most_Attractive_Youtube_Thumbnail_(6)_1700423339.jpg', 1, '2023-11-19 19:48:59', '2023-11-19 19:49:33'),
(12, 1, 'ADP Economics', 'adp-economics', 'Associate Degree', '4', '66', '22', '2 Years', 51000.00, '<p>Embark on an intellectual journey in the realm of economics with the Associate Degree Program (ADP) in Economics at Horizon College Chakwal. This comprehensive two-year program, spanning four semesters, is tailored to provide students with a profound understanding of economic principles, theories, and their real-world applications.</p>\r\n<p><strong>Academic Rigor:</strong></p>\r\n<p>The ADP in Economics curriculum at Horizon College Chakwal is designed to cover a diverse range of economic topics, including microeconomics, macroeconomics, econometrics, and economic policy. Through a balanced mix of theoretical knowledge and practical application, students acquire analytical and critical thinking skills crucial for navigating the complexities of the economic landscape.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>The final examinations for this program are conducted by the esteemed Punjab University, ensuring that students receive a certification that holds national and international recognition, signifying academic excellence.</p>\r\n<p><strong>Admission Procedure:</strong></p>\r\n<p>Prospective students are invited to apply for admission to the ADP in Economics program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a position in this intellectually stimulating academic community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 42,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the ADP in Economics program at Horizon College Chakwal is 51,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose ADP in Economics at Horizon College Chakwal?</strong></p>\r\n<p><strong>1. Holistic Curriculum:</strong> Explore a comprehensive curriculum covering key economic principles, preparing students for a variety of career paths. Real-world Application: Gain practical insights through case studies, research projects, and engagement with contemporary economic issues.</p>\r\n<p><strong>2. Punjab University Certification:</strong> Receive a certification from Punjab University, a mark of academic excellence respected in academic and professional spheres.</p>\r\n<p><strong>3. Supportive Learning Environment:</strong> Benefit from a supportive academic community where faculty members are dedicated to fostering a conducive environment for learning and growth.</p>\r\n<p>Prepare for a dynamic future in the field of economics by enrolling in the ADP program at Horizon College Chakwal. Acquire the knowledge and skills needed to analyze economic trends, contribute to policy discussions, and make informed decisions in a globalized world.</p>', 'Most_Attractive_Youtube_Thumbnail_(7)_1700423636.jpg', 1, '2023-11-19 19:53:56', '2023-11-19 19:53:56'),
(13, 1, 'ADP Accounting & Finance', 'adp-accounting-finance', 'Associate Degree', '4', '66', '22', '2 Years', 51000.00, '<p>Welcome to the Associate Degree Program (ADP) in Accounting &amp; Finance at Horizon College Chakwal, a comprehensive two-year educational journey designed to equip students with a solid foundation in the dynamic fields of accounting and finance. This program spans four semesters and is meticulously crafted to meet the academic standards set by Punjab University.</p>\r\n<p><strong>Program Overview:</strong></p>\r\n<p>The ADP in Accounting &amp; Finance is a two-year program divided into four semesters, each offering a carefully curated curriculum that combines theoretical knowledge with practical applications. Students will delve into the core principles of accounting and finance, gaining a comprehensive understanding of financial reporting, auditing, taxation, and financial management.</p>\r\n<p><strong>Academic Excellence: </strong></p>\r\n<p>Horizon College Chakwal prides itself on maintaining high academic standards, ensuring that students receive a quality education that prepares them for the challenges of the professional world. The program is designed to foster critical thinking, problem-solving skills, and ethical considerations crucial in the fields of accounting and finance.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>The culmination of the program is marked by the final examinations conducted by Punjab University. These examinations are a testament to the academic rigor and integrity of our program, offering students an opportunity to showcase their acquired knowledge and skills.</p>\r\n<p><strong>Fee Structure:</strong></p>\r\n<p>To embark on this educational journey, a non-refundable admission fee of 8000 PKR is required. For each semester, the tuition fee is 42,000 PKR, supplemented by annual charges of 1000 PKR per semester. The total cost for the entire program is 51,000 PKR, providing students with access to quality education and a pathway to a successful career in accounting and finance.</p>\r\n<p>Horizon College Chakwal is committed to providing an enriching learning environment, and the ADP in Accounting &amp; Finance is a testament to our dedication to academic excellence. Join us on this educational adventure, where knowledge meets opportunity, and pave the way for a rewarding future in the world of accounting and finance.</p>', 'Most_Attractive_Youtube_Thumbnail_(8)_1700423863.jpg', 1, '2023-11-19 19:57:43', '2023-11-19 19:57:43'),
(14, 1, 'ADP Sociology', 'adp-sociology', 'Associate Degree', '4', '66', '22', '2 Years', 51000.00, '<p>This two-year, four-semester program is tailored to provide students with a deep comprehension of the intricacies of human societies and their structures. Administered in collaboration with Punjab University, our ADP in Sociology stands as a beacon of academic excellence and social awareness.</p>\r\n<p><strong>Program Overview: </strong></p>\r\n<p>The ADP in Sociology at Horizon College Chakwal offers a comprehensive curriculum spanning four semesters. Students delve into the various facets of sociology, exploring topics such as social theory, research methods, and the analysis of social institutions. This program empowers individuals to critically examine and understand the complexities of human behavior, social relationships, and the broader societal landscape.</p>\r\n<p><strong>Academic Excellence: </strong></p>\r\n<p>At Horizon College Chakwal, we are committed to fostering a learning environment that encourages critical thinking and analytical skills. Our faculty comprises experienced educators dedicated to providing students with a robust educational foundation in sociology. The program emphasizes the application of sociological concepts to real-world issues, preparing students for a wide range of careers or further academic pursuits.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>The final examinations for the ADP in Sociology are conducted by Punjab University, ensuring that students are evaluated according to rigorous academic standards. This external validation adds credibility to the program and reflects our commitment to maintaining excellence in education.</p>\r\n<p><strong>Fee Structure:</strong></p>\r\n<p>Embarking on the ADP in Sociology requires a non-refundable admission fee of 8000 PKR. For each semester, the tuition fee is 42,000 PKR, supplemented by annual charges of 1000 PKR per semester. The total cost for the entire program is 51,000 PKR, providing students with access to quality education that prepares them for a nuanced understanding of societal dynamics.</p>\r\n<p>Join us at Horizon College Chakwal and be part of an educational journey that transcends textbook knowledge, promoting a holistic understanding of the world we live in. The ADP in Sociology is a gateway to a future where social insight meets academic excellence, guiding you toward a meaningful and impactful career.</p>', 'Most_Attractive_Youtube_Thumbnail_(9)_1700424110.jpg', 1, '2023-11-19 20:01:50', '2023-11-19 20:01:50'),
(15, 1, 'ADP English', 'adp-english', 'Associate Degree', '4', '66', '22', '2 Years', 51000.00, '<p>Literary and linguistic journey with the Associate Degree Program (ADP) in English at Horizon College Chakwal. This enriching two-year program, spanning four semesters, is meticulously designed to provide students with a deep understanding of the English language, literature, and critical analysis.</p>\r\n<p><strong>Academic Exploration: </strong></p>\r\n<p>The ADP in English curriculum at Horizon College Chakwal covers a wide array of subjects, including literature, linguistics, creative writing, and literary analysis. Students engage in coursework that fosters a love for language and literature while honing their communication and analytical skills.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>Final examinations for this program are conducted by the esteemed Punjab University, ensuring that students receive a certification with national and international recognition, validating their proficiency in the English language and literary studies.</p>\r\n<p><strong>Admission Process: </strong></p>\r\n<p>Prospective students are invited to apply for admission to the ADP in English program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this vibrant academic community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 42,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the ADP in English program at Horizon College Chakwal is 51,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose ADP in English at Horizon College Chakwal?</strong></p>\r\n<p><strong>1. Diverse Curriculum:</strong> Explore a diverse and comprehensive curriculum that covers various aspects of English language and literature, fostering a well-rounded education.</p>\r\n<p><strong>2. Enhanced Communication Skills: </strong>Develop strong written and verbal communication skills through engaging coursework and practical applications.</p>\r\n<p><strong>3. Punjab University Certification: </strong>Receive a certification from Punjab University, symbolizing academic excellence and proficiency in the English language.</p>\r\n<p><strong>4. Literary Community: </strong>Join a supportive academic community where students and faculty alike share a passion for literature and language, creating an environment conducive to intellectual growth.</p>\r\n<p>Immerse yourself in the world of literature and language by enrolling in the ADP program at Horizon College Chakwal. Gain the skills and knowledge necessary for a range of careers, from writing and editing to teaching and beyond.</p>', 'Most_Attractive_Youtube_Thumbnail_(10)_1700424447.jpg', 1, '2023-11-19 20:07:27', '2023-11-19 20:07:27'),
(16, 1, 'BS IT', 'bs-it', 'Bachelors', '8', '134', '58', '4 Years', 59000.00, '<p>This four-year program, spanning eight semesters, is meticulously crafted to equip students with the knowledge and skills required to thrive in the dynamic field of Information Technology.</p>\r\n<p><strong>Academic Excellence:</strong> The BS in Information Technology curriculum at Horizon College Chakwal is designed to cover a comprehensive range of subjects, including programming, database management, network administration, and cybersecurity. Students delve into both theoretical concepts and hands-on applications, ensuring a well-rounded understanding of IT principles.</p>\r\n<p><strong>Examination Authority: </strong>Final examinations for this program are conducted by esteemed universities such as Punjab University or Sargodha University, ensuring that graduates hold certifications that are widely recognized and respected in the field of Information Technology.</p>\r\n<p><strong>Admission Process: </strong>Prospective students are invited to apply for admission to the BS in Information Technology program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this forward-thinking academic community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 50,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the BS in Information Technology program at Horizon College Chakwal is 59,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose BS in Information Technology at Horizon College Chakwal?</strong></p>\r\n<p><strong>1. Cutting-Edge Curriculum:</strong> Stay at the forefront of technology with a curriculum that integrates the latest advancements in Information Technology.</p>\r\n<p><strong>2. Hands-On Learning:</strong> Gain practical experience through lab sessions, projects, and internships, preparing you for real-world IT challenges.</p>\r\n<p><strong>3. University Certification:</strong> Receive a certification from reputable universities like Punjab University or Sargodha University, enhancing the value of your degree in the job market.</p>\r\n<p><strong>4. Supportive IT Community: </strong>Join a collaborative academic community where faculty and students share a passion for technology, fostering a supportive learning environment.</p>\r\n<p>Prepare for a successful career in Information Technology by enrolling in the BS program at Horizon College Chakwal. Acquire the skills and knowledge necessary to navigate the ever-evolving IT landscape and make a significant impact in this dynamic field.</p>', 'Most_Attractive_Youtube_Thumbnail_(11)_1700425164.jpg', 1, '2023-11-19 20:19:24', '2023-11-19 20:19:24'),
(17, 1, 'BS Physics', 'bs-physics', 'Bachelors', '8', '134', '58', '4 Years', 59000.00, '<p>This four-year, eight-semester program is meticulously crafted to provide students with a profound understanding of the fundamental principles of physics and prepare them for a range of exciting career opportunities.</p>\r\n<p><strong>Academic Depth: </strong></p>\r\n<p>The BS in Physics curriculum at Horizon College Chakwal encompasses a comprehensive study of classical and modern physics. From mechanics and thermodynamics to quantum mechanics and astrophysics, students delve into a rich tapestry of theoretical knowledge and practical applications.</p>\r\n<p><strong>Examination Authority:</strong></p>\r\n<p>Final examinations for this program are conducted by esteemed universities such as Punjab University or Sargodha University. Graduates emerge with a certification that is widely recognized and respected, validating their expertise in the field of physics.</p>\r\n<p><strong>Admission Process: </strong></p>\r\n<p>Prospective students are invited to apply for admission to the BS in Physics program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this intellectually stimulating academic community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 50,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the BS in Physics program at Horizon College Chakwal is 59,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose BS in Physics at Horizon College Chakwal?</strong></p>\r\n<p><strong>1. Comprehensive Curriculum: </strong>Explore a broad spectrum of physics topics, providing a strong foundation for specialized areas of interest.</p>\r\n<p><strong>2. Hands-On Experience:</strong> Engage in practical experiments and research projects, honing your skills in the application of theoretical concepts.</p>\r\n<p><strong>3. University Certification: </strong>Obtain a certification from reputable universities such as Punjab University or Sargodha University, adding credibility to your academic achievements.</p>\r\n<p><strong>4. Scientific Community: </strong>Join a vibrant academic community where faculty members are dedicated to fostering a passion for physics, encouraging collaborative learning and research.</p>\r\n<p>Prepare for a rewarding career in the world of physics by enrolling in the BS program at Horizon College Chakwal. Gain the knowledge, skills, and scientific mindset needed to contribute to groundbreaking discoveries and advancements in this ever-evolving field.</p>', 'Most_Attractive_Youtube_Thumbnail_(12)_1700425454.jpg', 1, '2023-11-19 20:24:14', '2023-11-19 20:24:14'),
(18, 1, 'BS Botany', 'bs-botany', 'Bachelors', '8', '134', '58', '4 Years', 59000.00, '<p>This four-year, eight-semester program is thoughtfully designed to immerse students in the fascinating world of plants, offering a comprehensive exploration of botanical science and its diverse applications.</p>\r\n<p><strong>Academic Exploration: </strong></p>\r\n<p>The BS in Botany curriculum at Horizon College Chakwal encompasses a diverse range of subjects, from plant anatomy and physiology to ecology and biodiversity. Students engage in hands-on laboratory work, field studies, and research projects, fostering a deep understanding of plant life and ecosystems.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>Final examinations for this program are conducted by esteemed universities such as Punjab University or Sargodha University. Graduates receive a certification that is recognized nationally and internationally, validating their expertise in the field of botany.</p>\r\n<p><strong>Admission Process: </strong></p>\r\n<p>Prospective students are invited to apply for admission to the BS in Botany program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this academically enriching community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 50,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the BS in Botany program at Horizon College Chakwal is 59,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose BS in Botany at Horizon College Chakwal? </strong></p>\r\n<p><strong>1. Comprehensive Botanical Curriculum: </strong>Explore a broad range of botanical topics, including plant morphology, taxonomy, and environmental botany.</p>\r\n<p><strong>2. Hands-On Learning:</strong> Engage in practical experiences, including laboratory experiments and fieldwork, enhancing your skills in plant research and analysis.</p>\r\n<p><strong>3. University Certification:</strong> Obtain a certification from reputable universities such as Punjab University or Sargodha University, reinforcing the academic rigor and excellence of your botanical studies.</p>\r\n<p><strong>4. Botanical Community:</strong> Join a supportive academic community where faculty members are passionate about botany, fostering an environment conducive to collaborative learning and scientific exploration.</p>\r\n<p>Embark on a rewarding academic journey in the realm of plants and ecosystems by enrolling in the BS in Botany program at Horizon College Chakwal. Develop the expertise and knowledge needed to contribute to the understanding and conservation of plant life in diverse ecosystems.</p>', 'Most_Attractive_Youtube_Thumbnail_(13)_1700425655.jpg', 1, '2023-11-19 20:27:35', '2023-11-19 20:27:35'),
(19, 1, 'BS Chemistry', 'bs-chemistry', 'Bachelors', '8', '134', '58', '4 Years', 59000.00, '<p>This four-year, eight-semester program is meticulously designed to provide students with a comprehensive understanding of the principles and applications of chemistry.</p>\r\n<p><strong>Academic Depth: </strong></p>\r\n<p>The BS in Chemistry curriculum at Horizon College Chakwal offers a rich exploration of chemical theories, laboratory techniques, and applied chemistry. From organic and inorganic chemistry to physical and analytical chemistry, students delve into a diverse range of subjects to develop a robust foundation in the field.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>Final examinations for this program are conducted by esteemed universities such as Punjab University or Sargodha University. Graduates receive a certification that is widely recognized, validating their expertise in the field of chemistry.</p>\r\n<p><strong>Admission Process: </strong></p>\r\n<p>Prospective students are invited to apply for admission to the BS in Chemistry program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this intellectually stimulating academic community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 50,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the BS in Chemistry program at Horizon College Chakwal is 59,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose BS in Chemistry at Horizon College Chakwal?</strong></p>\r\n<p><strong>1. Comprehensive Curriculum:</strong> Explore a diverse range of chemistry disciplines, from theoretical foundations to practical applications.</p>\r\n<p><strong>2. Hands-On Laboratory Experience:</strong> Engage in extensive laboratory work, experiments, and research projects, honing practical skills in chemical analysis and synthesis.</p>\r\n<p><strong>3. University Certification: </strong>Obtain a certification from reputable universities such as Punjab University or Sargodha University, adding credibility to your academic achievements in the field of chemistry.</p>\r\n<p><strong>4. Chemical Community: </strong>Join a vibrant academic community where faculty members are dedicated to fostering a passion for chemistry, encouraging collaborative learning, and research.</p>\r\n<p>Prepare for a rewarding career in the field of chemistry by enrolling in the BS program at Horizon College Chakwal. Acquire the knowledge and skills necessary to contribute to scientific advancements and innovations in this dynamic and ever-evolving discipline.</p>', 'Most_Attractive_Youtube_Thumbnail_(14)_1700425865.jpg', 1, '2023-11-19 20:31:05', '2023-11-19 20:31:05'),
(20, 1, 'BS Zoology', 'bs-zoology', 'Bachelors', '8', '134', '58', '4 Years', 59000.00, '<p>Embark on an exciting exploration of the animal kingdom with the Bachelor of Science (BS) in Zoology program at Horizon College Chakwal. This four-year, eight-semester program is thoughtfully designed to provide students with a comprehensive understanding of animal biology, behavior, and ecology.</p>\r\n<p><strong>Academic Exploration: </strong></p>\r\n<p>The BS in Zoology curriculum at Horizon College Chakwal offers a fascinating study of animal life, covering topics such as animal anatomy, physiology, evolution, and ecology. Students engage in hands-on laboratory work, field studies, and research projects, gaining a deep appreciation for the diversity and intricacies of the animal world.</p>\r\n<p><strong> Examination Authority: </strong></p>\r\n<p>Final examinations for this program are conducted by esteemed universities such as Punjab University or Sargodha University. Graduates receive a certification that is recognized nationally and internationally, validating their expertise in the field of zoology.</p>\r\n<p><strong>Admission Process:</strong></p>\r\n<p>Prospective students are invited to apply for admission to the BS in Zoology program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this academically enriching community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 50,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the BS in Zoology program at Horizon College Chakwal is 59,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose BS in Zoology at Horizon College Chakwal? </strong></p>\r\n<p><strong>1. Comprehensive Zoological Curriculum:</strong> Explore a diverse range of topics in zoology, from the microscopic world to the study of entire ecosystems.</p>\r\n<p><strong>2. Hands-On Learning:</strong> Engage in practical experiences, including laboratory experiments and fieldwork, fostering a deep understanding of animal biology and behavior.</p>\r\n<p><strong>3. University Certification:</strong> Obtain a certification from reputable universities such as Punjab University or Sargodha University, reinforcing the academic rigor and excellence of your zoological studies.</p>\r\n<p><strong>4. Zoological Community: </strong>Join a supportive academic community where faculty members are passionate about zoology, encouraging collaborative learning and research.</p>\r\n<p>Embark on a journey of discovery and understanding in the world of zoology by enrolling in the BS program at Horizon College Chakwal. Acquire the knowledge and skills necessary to contribute to the conservation and study of the fascinating and diverse animal kingdom.</p>', 'Most_Attractive_Youtube_Thumbnail_(15)_1700426106.jpg', 1, '2023-11-19 20:35:06', '2023-11-19 20:35:06'),
(21, 1, 'BS CS', 'bs-cs', 'Bachelors', '8', '134', '58', '4 Years', 59000.00, '<p>This four-year, eight-semester program is designed to equip students with the skills and knowledge necessary to excel in the dynamic field of computer science.</p>\r\n<p><strong>Academic Excellence: </strong></p>\r\n<p>The BS-CS curriculum at Horizon College Chakwal offers a comprehensive study of computer science, covering areas such as programming, algorithms, database management, artificial intelligence, and software development. Students engage in hands-on projects, ensuring practical application of theoretical concepts.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>Final examinations for this program are conducted by prestigious universities such as Punjab University or Sargodha University. Graduates receive a certification that is widely recognized, affirming their expertise in the field of computer science.</p>\r\n<p><strong>Admission Process: </strong></p>\r\n<p>Prospective students are invited to apply for admission to the BS-CS program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this innovative academic community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 50,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the BS-CS program at Horizon College Chakwal is 59,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose BS-CS at Horizon College Chakwal? </strong></p>\r\n<p><strong>1. Cutting-Edge Curriculum:</strong> Stay at the forefront of technology with a curriculum that integrates the latest advancements in computer science.</p>\r\n<p><strong>2. Practical Learning: </strong>Engage in hands-on projects, coding exercises, and internships to gain practical experience and develop real-world skills.</p>\r\n<p><strong>3. University Certification: </strong>Obtain a certification from reputable universities such as Punjab University or Sargodha University, adding credibility to your computer science credentials.</p>\r\n<p><strong>4. Innovative Community: </strong>Join a collaborative academic community where faculty members are dedicated to fostering innovation, creativity, and excellence in computer science.</p>\r\n<p>Prepare for a successful career in the ever-evolving field of computer science by enrolling in the BS-CS program at Horizon College Chakwal. Acquire the knowledge and skills needed to tackle complex challenges, contribute to technological advancements, and shape the future of the digital world.</p>', 'Most_Attractive_Youtube_Thumbnail_(16)_1700426380.jpg', 1, '2023-11-19 20:39:40', '2023-11-19 20:39:40');
INSERT INTO `courses` (`id`, `language_id`, `title`, `slug`, `faculty`, `semesters`, `credits`, `courses`, `duration`, `fee`, `description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(22, 1, 'BS Mathematics', 'bs-mathematics', 'Bachelors', '8', '134', '58', '4 Years', 59000.00, '<p>This four-year, eight-semester program is meticulously designed to provide students with a strong foundation in mathematical theory and its practical applications.</p>\r\n<p><strong>Academic Depth: </strong></p>\r\n<p>The BS-Mathematics curriculum at Horizon College Chakwal covers a comprehensive range of mathematical disciplines, including calculus, algebra, statistics, and discrete mathematics. Students engage in theoretical studies and practical problem-solving, preparing them for diverse applications in various fields.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>Final examinations for this program are conducted by esteemed universities such as Punjab University or Sargodha University. Graduates receive a certification that is widely recognized, affirming their proficiency and expertise in the field of mathematics.</p>\r\n<p><strong>Admission Process:</strong></p>\r\n<p>Prospective students are invited to apply for admission to the BS-Mathematics program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this intellectually stimulating academic community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 50,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the BS-Mathematics program at Horizon College Chakwal is 59,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose BS-Mathematics at Horizon College Chakwal?</strong></p>\r\n<p><strong>1. Comprehensive Mathematical Curriculum: </strong>Explore a broad spectrum of mathematical topics, providing a solid foundation for advanced studies and real-world problem-solving.</p>\r\n<p><strong>2. Practical Application:</strong> Engage in practical exercises, projects, and applications that enhance your ability to solve complex problems using mathematical principles.</p>\r\n<p><strong>3. University Certification:</strong> Obtain a certification from reputable universities such as Punjab University or Sargodha University, adding credibility to your mathematical expertise.</p>\r\n<p><strong>4. Mathematical Community: </strong>Join a supportive academic community where faculty members are passionate about mathematics, fostering a collaborative environment for intellectual growth.</p>\r\n<p>Prepare for a rewarding career in the field of mathematics by enrolling in the BS-Mathematics program at Horizon College Chakwal. Acquire the analytical and problem-solving skills needed to excel in diverse professional fields, from academia to industry.</p>', 'Most_Attractive_Youtube_Thumbnail_(17)_1700426635.jpg', 1, '2023-11-19 20:43:55', '2023-11-19 20:43:55'),
(23, 1, 'BS English', 'bs-english', 'Bachelors', '8', '134', '58', '4 Years', 59000.00, '<p>This four-year, eight-semester program is meticulously crafted to provide students with a comprehensive understanding of English language, literature, and critical analysis.</p>\r\n<p><strong>Academic Exploration: </strong></p>\r\n<p>The BS-English curriculum at Horizon College Chakwal covers a diverse range of subjects, including literature, linguistics, creative writing, and literary analysis. Students engage in coursework that fosters a deep appreciation for the written word and enhances both written and verbal communication skills.</p>\r\n<p><strong>Examination Authority:</strong></p>\r\n<p>Final examinations for this program are conducted by esteemed universities such as Punjab University or Sargodha University. Graduates receive a certification that is widely recognized, affirming their proficiency in the English language and literary studies.</p>\r\n<p><strong>Admission Process: </strong></p>\r\n<p>Prospective students are invited to apply for admission to the BS-English program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this academically enriching community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 50,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the BS-English program at Horizon College Chakwal is 59,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose BS-English at Horizon College Chakwal? </strong></p>\r\n<p><strong>1. Comprehensive Curriculum:</strong> Explore a diverse and comprehensive curriculum that covers various aspects of the English language, literature, and linguistics.</p>\r\n<p><strong>2. Enhanced Communication Skills:</strong> Develop strong written and verbal communication skills through engaging coursework and practical applications.</p>\r\n<p><strong>3. University Certification:</strong> Obtain a certification from reputable universities such as Punjab University or Sargodha University, adding credibility to your language and literary studies.</p>\r\n<p><strong>4. Literary Community: </strong>Join a vibrant academic community where students and faculty share a passion for literature and language, fostering an environment conducive to intellectual growth.</p>\r\n<p>Immerse yourself in the beauty of language and literature by enrolling in the BS-English program at Horizon College Chakwal. Gain the skills and knowledge necessary for a range of careers, from writing and editing to teaching and beyond.</p>', 'Most_Attractive_Youtube_Thumbnail_(18)_1700426848.jpg', 1, '2023-11-19 20:47:28', '2023-11-19 20:47:28'),
(24, 1, 'BBA', 'bba', 'Bachelors', '8', '136', '46', '4 Years', 59000.00, '<p>This four-year, eight-semester program is tailored to equip students with the knowledge and skills needed to thrive in the competitive world of business.</p>\r\n<p><strong>Academic Excellence: </strong></p>\r\n<p>The BBA curriculum at Horizon College Chakwal encompasses a comprehensive study of business disciplines, including marketing, finance, human resources, and strategic management. Students engage in coursework that blends theoretical concepts with practical applications, preparing them for the complexities of the business world.</p>\r\n<p><strong>Examination Authority: </strong></p>\r\n<p>Final examinations for this program are conducted by esteemed universities such as Punjab University or Sargodha University. Graduates receive a certification that is widely recognized, affirming their proficiency in business administration.</p>\r\n<p><strong>Admission Process: </strong></p>\r\n<p>Prospective students are invited to apply for admission to the BBA program at Horizon College Chakwal. A non-refundable admission fee of 8000 PKR secures a place in this academically enriching community.</p>\r\n<p><strong>Financial Breakdown: </strong></p>\r\n<p>Tuition Fee: 50,000 PKR per semester</p>\r\n<p>Annual Charges: 1,000 PKR (per semester)</p>\r\n<p>Total Program Cost: The total cost for the BBA program at Horizon College Chakwal is 59,000 PKR, encompassing tuition fees and annual charges for each semester.</p>\r\n<p><strong>Why Choose BBA at Horizon College Chakwal? </strong></p>\r\n<p><strong>1. Comprehensive Business Curriculum:</strong> Explore a broad spectrum of business disciplines, gaining a well-rounded understanding of management principles.</p>\r\n<p><strong>2. Real-world Application:</strong> Engage in case studies, internships, and practical projects to apply theoretical knowledge to real business challenges.</p>\r\n<p><strong>3. University Certification:</strong> Obtain a certification from reputable universities such as Punjab University or Sargodha University, adding credibility to your business qualifications.</p>\r\n<p><strong>4. Business Community: </strong>Join a vibrant academic community where faculty members are dedicated to fostering a passion for business and leadership, encouraging collaborative learning and professional development.</p>\r\n<p>Prepare for a successful career in the dynamic field of business by enrolling in the BBA program at Horizon College Chakwal. Acquire the knowledge, skills, and strategic mindset needed to navigate the ever-evolving business landscape and make a meaningful impact in the corporate world.</p>', 'Most_Attractive_Youtube_Thumbnail_(19)_1700427145.jpg', 1, '2023-11-19 20:52:25', '2023-11-19 20:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admission', 'admission', NULL, 1, '2022-09-30 14:02:55', '2022-09-30 14:02:55'),
(2, 'Finance', 'finance', NULL, 1, '2022-09-30 14:03:04', '2022-10-01 04:16:23'),
(3, 'Library', 'library', NULL, 1, '2022-09-30 14:03:14', '2022-09-30 14:03:14'),
(4, 'IT Support', 'it-support', NULL, 1, '2022-09-30 14:03:33', '2022-09-30 14:03:33'),
(5, 'Faculty', 'faculty', NULL, 1, '2022-09-30 14:03:44', '2022-09-30 14:03:44'),
(6, 'Sports', 'sports', NULL, 1, '2022-10-01 04:16:51', '2022-10-01 04:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Instructor', 'instructor', NULL, 1, '2022-09-30 14:04:24', '2022-09-30 14:04:24'),
(2, 'Admin', 'admin', NULL, 1, '2022-09-30 14:04:34', '2022-10-01 04:17:39'),
(3, 'Professor', 'professor', NULL, 1, '2022-09-30 14:04:45', '2022-09-30 14:04:45'),
(4, 'Accountant', 'accountant', NULL, 1, '2022-09-30 14:05:06', '2022-09-30 14:05:06'),
(5, 'Librarian', 'librarian', NULL, 1, '2022-09-30 14:05:17', '2022-09-30 14:05:17'),
(6, 'Receptionist', 'receptionist', NULL, 1, '2022-09-30 14:06:12', '2022-09-30 14:06:12'),
(7, 'Director', 'director', NULL, 1, '2022-10-01 04:17:59', '2022-10-01 04:17:59'),
(8, 'Chancellor', 'chancellor', NULL, 1, '2022-10-01 04:18:48', '2022-10-01 04:18:48'),
(9, 'Exam Controller', 'exam-controller', NULL, 1, '2022-10-01 04:19:03', '2022-10-01 04:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `province_id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chakwal Campus', NULL, 1, '2022-09-30 14:17:34', '2023-11-19 20:58:34'),
(14, 1, 'Talagang Campus', NULL, 1, '2023-11-19 20:57:11', '2023-11-19 20:57:11'),
(15, 1, 'Dhudial Campus', NULL, 1, '2023-11-19 20:57:26', '2023-11-19 20:57:26'),
(16, 1, 'Mulhal Campus', NULL, 1, '2023-11-19 20:57:37', '2023-11-19 20:57:37'),
(17, 1, 'Choa saiden shah Campus', NULL, 1, '2023-11-19 20:57:51', '2023-11-19 20:57:51'),
(18, 1, 'Buchal Campus', NULL, 1, '2023-11-19 20:58:00', '2023-11-19 20:58:00'),
(19, 1, 'Kharian Campus', NULL, 1, '2023-11-19 20:58:10', '2023-11-19 20:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `docables`
--

CREATE TABLE `docables` (
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `docable_type` varchar(191) NOT NULL,
  `docable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `docables`
--

INSERT INTO `docables` (`document_id`, `docable_type`, `docable_id`) VALUES
(4, 'App\\Models\\Student', 2),
(5, 'App\\Models\\Student', 4),
(6, 'App\\Models\\Student', 8),
(7, 'App\\Models\\Student', 9),
(8, 'App\\Models\\Student', 13),
(9, 'App\\Models\\Student', 14);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NID Copy', 'book-cover2.jpg_1664711842.jpg', 1, '2022-10-02 05:57:22', '2022-10-02 05:57:22'),
(2, 'Passport Copy', 'book-covers.jpg_1664732229.jpg', 1, '2022-10-02 11:37:09', '2022-10-02 11:37:09'),
(3, 'Experiance Cer', 'book-covers.jpg_1664732856.jpg', 1, '2022-10-02 11:47:36', '2022-10-02 11:47:36'),
(4, 'Marksheet', 'book-covers.jpg_1664734667.jpg', 1, '2022-10-02 12:17:47', '2022-10-02 12:17:47'),
(5, 'Marksheet', 'book-cover2.jpg_1664734905.jpg', 1, '2022-10-02 12:21:45', '2022-10-02 12:21:45'),
(6, 'Marksheet', 'book-covers.jpg_1664735357.jpg', 1, '2022-10-02 12:29:17', '2022-10-02 12:29:17'),
(7, 'Transfer Doc', 'background-border.png_1664835743.png', 1, '2022-10-03 16:22:23', '2022-10-03 16:22:23'),
(8, 'Marksheet', 'book-cover2.jpg_1664884572.jpg', 1, '2022-10-04 05:56:12', '2022-10-04 05:56:12'),
(9, 'Marksheet', 'book-covers.jpg_1664884807.jpg', 1, '2022-10-04 06:00:07', '2022-10-04 06:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `email_notifies`
--

CREATE TABLE `email_notifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT NULL,
  `program_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `receive_count` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_notifies`
--

INSERT INTO `email_notifies` (`id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `subject`, `message`, `receive_count`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 4, 0, 0, 'Your Fees Due Date Is Very Close', 'This depends on when you enrol. Your fees are due 30 days from your starting date. For more information, please see Fees due dates.', 2, 1, 1, NULL, '2022-10-03 11:54:16', '2022-10-03 11:54:16'),
(2, 2, 3, 3, 1, 1, 'Ready for attend our special class on sunday!', 'Note: If any of these dates fall on a holiday or weekend, the due date for fee payment will be the first working day following the holiday/weekend.', 4, 1, 1, NULL, '2022-10-03 12:06:14', '2022-10-03 12:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `source_id` int(10) UNSIGNED DEFAULT NULL,
  `program_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `father_name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` date NOT NULL,
  `follow_up_date` date DEFAULT NULL,
  `assigned` varchar(191) DEFAULT NULL,
  `number_of_students` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `reference_id`, `source_id`, `program_id`, `name`, `father_name`, `phone`, `email`, `address`, `purpose`, `note`, `date`, `follow_up_date`, `assigned`, `number_of_students`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 3, 'Sajawal', NULL, '+9234545676', 'voxagikib@mailinator.com', 'Bhown chowk chakwal', 'randommm...', 'attend for 10 minutes', '2022-10-01', '2022-12-07', '3', 1, 3, 1, 1, '2022-10-01 12:24:34', '2023-08-25 07:28:58'),
(2, 3, 1, 1, 'Junaid ali', NULL, '+92332322234', 'morexy@mailinator.com', 'Shah Multani Chakwal', 'Pariatur Facilis in', 'inquire about vacant', '2019-04-02', NULL, 'Architecto', 1, 0, 1, 1, '2022-10-01 12:25:14', '2022-10-01 12:27:18'),
(3, 5, 1, 1, 'Malik Basharat ', NULL, '+92334455667', 'wicodikico@mailinator.com', 'Jail road, Lahore ', 'Meeting with a teacher', 'Sint vel animi tem', '2021-09-25', '2022-12-29', 'Arman', 1, 1, 1, 1, '2022-10-01 12:25:59', '2022-10-01 12:26:58'),
(4, 2, 4, 1, 'Ajmal shah', NULL, '+923568456', 'lela@mailinator.com', 'Millat chowk chakwal', 'Qui laborum Dicta n', '...', '2020-12-13', NULL, 'Aneeka ', 1, 1, 1, NULL, '2022-10-01 12:26:30', '2022-10-01 12:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_references`
--

CREATE TABLE `enquiry_references` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiry_references`
--

INSERT INTO `enquiry_references` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Staff', 'staff', NULL, 1, '2022-10-01 03:50:35', '2022-10-01 03:50:35'),
(2, 'Parent', 'parent', NULL, 1, '2022-10-01 03:50:46', '2022-10-01 03:50:46'),
(3, 'Student', 'student', NULL, 1, '2022-10-01 03:50:53', '2022-10-01 03:50:53'),
(4, 'Self', 'self', NULL, 1, '2022-10-01 03:51:01', '2022-10-01 03:51:01'),
(5, 'Promotional Partner', 'promotional-partner', NULL, 1, '2022-10-01 03:52:48', '2022-10-01 03:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_sources`
--

CREATE TABLE `enquiry_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiry_sources`
--

INSERT INTO `enquiry_sources` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Front Office', 'front-office', NULL, 1, '2022-10-01 03:48:47', '2022-10-01 03:48:47'),
(2, 'Advertisement', 'advertisement', NULL, 1, '2022-10-01 03:48:55', '2022-10-01 03:48:55'),
(3, 'University Website', 'university-website', NULL, 1, '2022-10-01 03:49:10', '2022-10-01 03:50:15'),
(4, 'Google Ads', 'google-ads', NULL, 1, '2022-10-01 03:49:20', '2022-10-01 03:49:20'),
(5, 'Admission Campaign', 'admission-campaign', NULL, 1, '2022-10-01 03:49:28', '2022-10-01 03:49:28'),
(6, 'Social Media', 'social-media', NULL, 1, '2022-10-01 03:49:42', '2022-10-01 03:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_subjects`
--

CREATE TABLE `enroll_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll_subject_subject`
--

CREATE TABLE `enroll_subject_subject` (
  `enroll_subject_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start_date`, `end_date`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kashmir Day', '2023-10-03', '2023-10-17', '#70c24a', 1, '2022-10-03 11:38:23', '2023-11-22 08:39:29'),
(2, 'eid al adha', '2023-11-03', '2023-11-10', '#4a5cc2', 1, '2022-10-03 11:39:06', '2023-11-22 08:39:14'),
(3, 'EID al Fittar', '2023-10-27', '2023-11-01', '#c24a4e', 1, '2022-10-03 11:39:24', '2023-11-22 08:38:46'),
(4, 'Final Exam', '2023-11-23', '2023-12-03', '#c2b44a', 1, '2022-10-03 11:39:54', '2023-08-25 06:38:02'),
(5, 'Summer Vacation', '2023-11-22', '2023-12-06', '#4aaec2', 1, '2022-10-03 11:41:19', '2023-08-25 06:37:52'),
(6, 'New Year Vacation', '2023-12-24', '2024-01-08', '#c24ac2', 1, '2022-10-03 11:41:57', '2023-08-25 06:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_enroll_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `exam_type_id` int(10) UNSIGNED DEFAULT NULL,
  `attendance` int(11) NOT NULL DEFAULT 2 COMMENT '1-Present, 2-Absent',
  `marks` decimal(5,2) DEFAULT NULL,
  `achieve_marks` decimal(5,2) DEFAULT NULL,
  `contribution` decimal(5,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routines`
--

CREATE TABLE `exam_routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_type_id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine_room`
--

CREATE TABLE `exam_routine_room` (
  `exam_routine_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine_user`
--

CREATE TABLE `exam_routine_user` (
  `exam_routine_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `marks` decimal(5,2) NOT NULL,
  `contribution` decimal(5,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `title`, `marks`, `contribution`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Final Exam', 100.00, 50.00, NULL, 1, NULL, '2023-02-13 11:50:36'),
(2, 'Midterm Exam', 50.00, 20.00, NULL, 1, NULL, '2023-02-13 11:50:36'),
(3, 'Test Exam', 20.00, 0.00, NULL, 1, NULL, '2023-02-13 11:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `invoice_id` varchar(191) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `category_id`, `title`, `invoice_id`, `amount`, `date`, `payment_method`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `reference`) VALUES
(1, 1, 'Electricity bill ', '874596', 954.00, '2020-07-07', NULL, 'a bill of electricity', NULL, 1, 1, 1, '2022-10-01 13:22:35', '2022-10-01 13:24:33', NULL),
(2, 4, 'Stationery purchase', '89654', 841.00, '2020-08-09', NULL, 'some statenories purchased', NULL, 1, 1, 1, '2022-10-01 13:22:50', '2022-10-01 13:24:17', NULL),
(3, 3, 'Pizza for all Staffs', '987456', 544.00, '2021-05-08', NULL, 'purchased Pizza for all Staff', 'background-border_1664652223.png', 1, 1, 1, '2022-10-01 13:23:43', '2022-10-01 13:24:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electricity BIll', 'electricity-bill', NULL, 1, '2022-09-30 14:09:42', '2022-09-30 14:09:42'),
(2, 'Internet Bill', 'internet-bill', NULL, 1, '2022-09-30 14:10:08', '2022-09-30 14:10:08'),
(3, 'Snacks', 'snacks', NULL, 1, '2022-09-30 14:10:40', '2022-09-30 14:10:40'),
(4, 'Stationery Purchase', 'stationery-purchase', NULL, 1, '2022-10-01 04:11:52', '2022-10-01 04:11:52'),
(5, 'Flower', 'flower', NULL, 1, '2022-10-01 04:12:06', '2022-10-01 04:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `shortcode` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `title`, `slug`, `shortcode`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Pre Medical', 'pre-medical', NULL, 1, '2023-11-19 21:07:07', '2023-11-19 21:07:07'),
(7, 'Pre Eng', 'pre-eng', NULL, 1, '2023-11-19 21:07:13', '2023-11-19 21:07:13'),
(8, 'Commerce', 'commerce', NULL, 1, '2023-11-19 21:07:19', '2023-11-19 21:07:19'),
(9, 'Computer Sciences', 'computer-sciences', NULL, 1, '2023-11-19 21:07:34', '2023-11-19 21:07:34'),
(10, 'Associate Degree Program', 'associate-degree-program', NULL, 1, '2023-11-19 21:07:49', '2023-11-19 21:07:49'),
(11, 'Bachelors', 'bachelors', NULL, 1, '2023-11-19 21:07:54', '2023-11-19 21:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `title`, `description`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'What is the minimum qualification for admission?', 'For FSC, ICS, and Icom admissions, the minimum educational requirement is completion of the matriculation level. Prospective students should have successfully completed their matriculation studies to be eligible for enrollment in these intermediate programs. \r\nOn the other hand, for bachelor\'s and Associate Degree in Programs (ADP), a minimum of 12 years of education is required. \r\n\r\nThis typically includes successful completion of intermediate studies. Additionally, applicants for bachelor\'s and ADP programs are required to have obtained a minimum percentage of 55% in their academic results. This academic criterion ensures that students entering these higher education programs possess a solid foundation to excel in the more advanced and specialized coursework offered at Horizon College Chakwal.', NULL, 1, '2023-08-24 15:56:49', '2023-11-19 21:36:03'),
(2, 1, 'What the required document for admission?', 'To streamline the admission process, prospective students are required to submit a set of essential documents along with their admission form. These documents include two photocopies of their Computerized National Identity Card (CNIC), two recent passport-size photographs, and photocopies of their previous educational certificates or degrees. These documents play a crucial role in verifying the identity and academic background of the applicants, ensuring accuracy and completeness in the admission procedure. By providing these necessary documents, candidates contribute to the efficient processing of their admission at Horizon College Chakwal, facilitating a smooth transition into their chosen academic program.', NULL, 1, '2023-08-24 15:57:23', '2023-11-19 21:38:10'),
(3, 1, 'What is the admission process?', 'The admission process at our college is designed to be straightforward and accessible. Prospective students have the option to apply conveniently through our user-friendly online portal. The online application platform provides a seamless experience for submitting necessary information and documents. Alternatively, for those who prefer a more traditional approach, students can also visit the college in person to complete the admission process. This flexibility ensures that the application process caters to the diverse preferences and needs of our prospective students, making it easy for them to take the first step towards their educational journey at our institution.', NULL, 1, '2023-08-24 15:57:54', '2023-11-19 21:39:50'),
(4, 1, 'How to apply for under graduation?', 'Students seeking admission to undergraduate programs at our institution have the convenience of choosing between online and physical application methods. The online application process allows candidates to submit their details and necessary documents through our designated digital platform. Alternatively, students can opt for the traditional method by obtaining and submitting a physical application form directly at our campus. Following the application, a mandatory admission test is administered. Success in this examination is a prerequisite for admission, ensuring that candidates possess the necessary academic aptitude for the chosen undergraduate program. This comprehensive approach to the admission process is designed to select students with the academic prowess and potential to excel in their chosen fields of study', NULL, 1, '2023-08-24 15:58:32', '2023-11-19 21:42:23'),
(5, 1, 'Does other campuses also allows BS?', 'Currently, Horizon\'s main campus, the Chakwal City Campus, is offering bachelor\'s programs affiliated with both Punjab University and Sargodha University. As part of our future expansion plans, we aim to extend the availability of bachelor\'s programs to all our campuses. This strategic initiative is geared towards providing a wider range of academic opportunities to students across various locations, ensuring accessibility and convenience. The prospective expansion reflects our commitment to offering quality higher education and increasing educational accessibility in diverse regions through our growing network of campuses.', NULL, 1, '2023-08-24 15:59:16', '2023-11-19 21:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `title`, `description`, `icon`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Academic Excellence', 'Horizon College has consistently achieved outstanding academic results, with a high percentage of students securing top grades in examinations.', NULL, NULL, 1, '2023-08-24 15:54:29', '2023-11-18 20:03:19'),
(2, 1, 'Teaching Methods', 'Horizon embraces modern pedagogical approaches, incorporates technology in the classroom, and encourages hands-on, experiential learning.', NULL, NULL, 1, '2023-08-24 15:54:48', '2023-11-18 20:04:56'),
(3, 1, 'Student Development', 'Beyond academics, Horizon College is dedicated to the development of its students. Provides a wide range of extracurricular activities & opportunities.', NULL, NULL, 1, '2023-08-24 15:55:08', '2023-11-18 20:09:47'),
(4, 1, 'Research and Innovation', 'The college encourages a culture of inquiry and discovery, providing students with opportunities to participate in research projects across various disciplines.', NULL, NULL, 1, '2023-11-18 20:12:21', '2023-11-18 20:12:21'),
(5, 1, 'Social Impact', 'Horizon College\'s commitment to making a positive difference in the community reflects its dedication to producing socially conscious and compassionate individuals.', NULL, NULL, 1, '2023-11-18 20:13:58', '2023-11-18 20:15:42'),
(6, 1, 'Career Placement', 'The college\'s career counseling and placement services are tailored to equip students with the skills and guidance needed to enter the workforce confidently.', NULL, NULL, 1, '2023-11-18 20:17:07', '2023-11-18 20:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_enroll_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `fee_amount` double(10,2) NOT NULL,
  `fine_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` double(10,2) NOT NULL,
  `assign_date` date NOT NULL,
  `due_date` date NOT NULL,
  `pay_date` date DEFAULT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 Unpaid, 1 Paid',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `student_enroll_id`, `category_id`, `fee_amount`, `fine_amount`, `discount_amount`, `paid_amount`, `assign_date`, `due_date`, `pay_date`, `payment_method`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3500.00, 0.00, 300.00, 3200.00, '2022-10-03', '2022-10-13', '2022-10-04', 3, NULL, 1, 1, 1, '2022-10-03 12:31:20', '2022-10-04 09:22:54'),
(2, 2, 1, 3500.00, 0.00, 350.00, 3150.00, '2022-10-03', '2022-10-13', NULL, NULL, NULL, 0, 1, 1, '2022-10-03 12:31:20', '2022-10-04 09:22:16'),
(3, 3, 1, 3500.00, 0.00, 0.00, 0.00, '2022-10-03', '2022-10-13', NULL, NULL, NULL, 2, 1, 1, '2022-10-03 12:31:20', '2022-10-03 14:24:47'),
(4, 4, 1, 3500.00, 0.00, 300.00, 3200.00, '2022-10-03', '2022-10-13', '2022-10-04', 5, 'Online', 1, 1, 1, '2022-10-03 12:31:20', '2022-10-04 09:23:56'),
(5, 7, 1, 4500.00, 0.00, 450.00, 4050.00, '2022-10-03', '2022-10-03', '2022-10-03', 2, NULL, 1, NULL, 1, '2022-10-03 13:38:36', '2022-10-03 13:39:15'),
(6, 5, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(7, 6, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(8, 7, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(9, 8, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(10, 9, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2023-08-25', 2, NULL, 1, 1, 1, '2022-10-04 07:26:59', '2023-08-25 06:29:56'),
(11, 10, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(12, 11, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(13, 12, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2022-10-04', 4, NULL, 1, 1, 1, '2022-10-04 07:26:59', '2022-10-04 10:23:58'),
(14, 13, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2023-08-25', 3, NULL, 1, 1, 1, '2022-10-04 07:26:59', '2023-08-25 06:29:24'),
(15, 14, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2022-10-04', 1, NULL, 1, 1, 1, '2022-10-04 07:26:59', '2022-10-04 10:11:26'),
(16, 15, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(17, 16, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2022-10-04', 3, NULL, 1, 1, 1, '2022-10-04 07:26:59', '2022-10-04 10:11:18'),
(18, 17, 2, 2000.00, 0.00, 0.00, 0.00, '2022-10-04', '2022-10-20', NULL, NULL, NULL, 0, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59'),
(19, 18, 2, 2000.00, 0.00, 200.00, 1800.00, '2022-10-04', '2022-10-20', '2022-10-04', 2, 'Testing', 1, 1, 1, '2022-10-04 07:26:59', '2022-10-04 09:21:36'),
(20, 5, 3, 2000.00, 0.00, 200.00, 1800.00, '2023-02-13', '2023-02-28', '2023-02-13', 1, 'Paid', 1, 1, 1, '2023-02-13 11:53:18', '2023-02-13 11:55:00'),
(21, 6, 3, 2000.00, 0.00, 0.00, 0.00, '2023-02-13', '2023-02-28', NULL, NULL, NULL, 0, 1, NULL, '2023-02-13 11:53:18', '2023-02-13 11:53:18'),
(22, 7, 3, 2000.00, 0.00, 0.00, 0.00, '2023-02-13', '2023-02-28', NULL, NULL, NULL, 0, 1, NULL, '2023-02-13 11:53:18', '2023-02-13 11:53:18'),
(23, 8, 3, 2000.00, 0.00, 200.00, 1800.00, '2023-02-13', '2023-02-28', '2023-02-13', 2, NULL, 1, 1, 1, '2023-02-13 11:53:18', '2023-02-13 11:54:05'),
(24, 17, 3, 2000.00, 0.00, 0.00, 0.00, '2023-02-13', '2023-02-28', NULL, NULL, NULL, 0, 1, NULL, '2023-02-13 11:53:18', '2023-02-13 11:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `fees_categories`
--

CREATE TABLE `fees_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_categories`
--

INSERT INTO `fees_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admission Fees', 'admission-fees', NULL, 1, NULL, '2022-10-01 04:21:10'),
(2, 'Semester Fees', 'semester-fees', NULL, 1, NULL, '2022-10-01 04:21:21'),
(3, 'Exam Fees', 'exam-fees', NULL, 1, NULL, '2022-10-01 04:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `fees_category_fees_discount`
--

CREATE TABLE `fees_category_fees_discount` (
  `fees_category_id` int(10) UNSIGNED NOT NULL,
  `fees_discount_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_category_fees_discount`
--

INSERT INTO `fees_category_fees_discount` (`fees_category_id`, `fees_discount_id`) VALUES
(3, 3),
(2, 3),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fees_category_fees_fine`
--

CREATE TABLE `fees_category_fees_fine` (
  `fees_category_id` int(10) UNSIGNED NOT NULL,
  `fees_fine_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_category_fees_fine`
--

INSERT INTO `fees_category_fees_fine` (`fees_category_id`, `fees_fine_id`) VALUES
(1, 1),
(3, 1),
(2, 1),
(1, 2),
(3, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

CREATE TABLE `fees_discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1 Fixed & 2 Percentange',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_discounts`
--

INSERT INTO `fees_discounts` (`id`, `title`, `start_date`, `end_date`, `amount`, `type`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Winter Discount', '2022-10-03', '2022-10-31', 300.00, 1, 1, '2022-10-03 13:14:13', '2022-10-04 08:50:10'),
(3, 'Covid-19 Discount', '2022-10-04', '2023-10-04', 10.00, 2, 1, '2022-10-04 08:48:04', '2022-10-04 08:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `fees_discount_status_type`
--

CREATE TABLE `fees_discount_status_type` (
  `fees_discount_id` int(10) UNSIGNED NOT NULL,
  `status_type_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_discount_status_type`
--

INSERT INTO `fees_discount_status_type` (`fees_discount_id`, `status_type_id`) VALUES
(2, 2),
(2, 7),
(2, 4),
(2, 1),
(2, 3),
(2, 5),
(2, 6),
(3, 2),
(3, 7),
(3, 4),
(3, 1),
(3, 3),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `fees_fines`
--

CREATE TABLE `fees_fines` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_day` int(11) NOT NULL,
  `end_day` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1 Fixed, 2 Percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_fines`
--

INSERT INTO `fees_fines` (`id`, `start_day`, `end_day`, `amount`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 15.00, 2, 1, '2022-09-30 13:58:24', '2022-09-30 13:58:24'),
(2, 6, 30, 500.00, 1, 1, '2022-09-30 13:58:59', '2022-09-30 13:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `fees_masters`
--

CREATE TABLE `fees_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT NULL,
  `program_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `assign_date` date NOT NULL,
  `due_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1 Fixed, 2 Per Credit'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_masters`
--

INSERT INTO `fees_masters` (`id`, `category_id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `amount`, `assign_date`, `due_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `type`) VALUES
(1, 1, 2, 3, 3, 0, 0, 3500.00, '2022-10-03', '2022-10-13', 1, 1, NULL, '2022-10-03 12:31:20', '2022-10-03 12:31:20', 1),
(2, 2, 0, 0, 0, 0, 0, 2000.00, '2022-10-04', '2022-10-20', 1, 1, NULL, '2022-10-04 07:26:59', '2022-10-04 07:26:59', 1),
(3, 3, 2, 2, 0, 0, 0, 200.00, '2023-02-13', '2023-02-28', 1, 1, NULL, '2023-02-13 11:53:18', '2023-02-13 11:53:18', 2);

-- --------------------------------------------------------

--
-- Table structure for table `fees_master_student_enroll`
--

CREATE TABLE `fees_master_student_enroll` (
  `fees_master_id` bigint(20) UNSIGNED NOT NULL,
  `student_enroll_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user_father_name', 1, NULL, NULL),
(2, 'user_mother_name', 1, NULL, NULL),
(3, 'user_joining_date', 1, NULL, NULL),
(4, 'user_ending_date', 1, NULL, NULL),
(5, 'user_emergency_phone', 1, NULL, NULL),
(6, 'user_religion', 0, NULL, NULL),
(7, 'user_caste', 0, NULL, NULL),
(8, 'user_mother_tongue', 0, NULL, NULL),
(9, 'user_nationality', 0, NULL, NULL),
(10, 'user_marital_status', 1, NULL, NULL),
(11, 'user_blood_group', 1, NULL, NULL),
(12, 'user_national_id', 1, NULL, NULL),
(13, 'user_passport_no', 1, NULL, NULL),
(14, 'user_address', 1, NULL, NULL),
(15, 'user_education', 1, NULL, NULL),
(16, 'user_epf_no', 1, NULL, NULL),
(17, 'user_bank_account', 1, NULL, NULL),
(18, 'user_signature', 1, NULL, NULL),
(19, 'user_resume', 1, NULL, NULL),
(20, 'user_joining_letter', 1, NULL, NULL),
(21, 'user_documents', 1, NULL, NULL),
(22, 'student_father_name', 1, NULL, NULL),
(23, 'student_mother_name', 1, NULL, NULL),
(24, 'student_father_occupation', 1, NULL, NULL),
(25, 'student_mother_occupation', 1, NULL, NULL),
(26, 'student_emergency_phone', 1, NULL, NULL),
(27, 'student_religion', 1, NULL, NULL),
(28, 'student_caste', 0, NULL, NULL),
(29, 'student_mother_tongue', 0, NULL, NULL),
(30, 'student_nationality', 0, NULL, NULL),
(31, 'student_marital_status', 1, NULL, NULL),
(32, 'student_blood_group', 1, NULL, NULL),
(33, 'student_national_id', 1, NULL, NULL),
(34, 'student_passport_no', 1, NULL, NULL),
(35, 'student_address', 1, NULL, NULL),
(36, 'student_school_info', 1, NULL, NULL),
(37, 'student_collage_info', 1, NULL, NULL),
(38, 'student_relatives', 1, NULL, NULL),
(39, 'student_photo', 1, NULL, NULL),
(40, 'student_signature', 1, NULL, NULL),
(41, 'student_documents', 1, NULL, NULL),
(42, 'application_father_name', 1, NULL, NULL),
(43, 'application_mother_name', 1, NULL, NULL),
(44, 'application_father_occupation', 1, NULL, NULL),
(45, 'application_mother_occupation', 1, NULL, NULL),
(46, 'application_emergency_phone', 0, NULL, NULL),
(47, 'application_religion', 0, NULL, NULL),
(48, 'application_caste', 0, NULL, NULL),
(49, 'application_mother_tongue', 0, NULL, NULL),
(50, 'application_nationality', 0, NULL, NULL),
(51, 'application_marital_status', 1, NULL, NULL),
(52, 'application_blood_group', 1, NULL, NULL),
(53, 'application_national_id', 1, NULL, NULL),
(54, 'application_passport_no', 1, NULL, NULL),
(55, 'application_address', 1, NULL, NULL),
(56, 'application_school_info', 1, NULL, NULL),
(57, 'application_collage_info', 1, NULL, NULL),
(58, 'application_photo', 1, NULL, NULL),
(59, 'application_signature', 1, NULL, NULL),
(60, 'panel_class_routine', 1, NULL, NULL),
(61, 'panel_exam_routine', 1, NULL, NULL),
(62, 'panel_attendance', 1, NULL, NULL),
(63, 'panel_leave', 1, NULL, NULL),
(64, 'panel_fees_report', 1, NULL, NULL),
(65, 'panel_library', 1, NULL, NULL),
(66, 'panel_notice', 1, NULL, NULL),
(67, 'panel_assignment', 1, NULL, NULL),
(68, 'panel_download', 1, NULL, NULL),
(69, 'panel_transcript', 1, NULL, NULL),
(70, 'panel_profile', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `language_id`, `title`, `description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(7, 1, 'horizon college chakwal', NULL, 'WhatsApp_Image_2023_11_18_at_10.15.16_AM_(1)_1700429225.jpeg', 1, '2023-11-19 21:27:05', '2023-11-19 21:27:05'),
(8, 1, '2', NULL, 'WhatsApp_Image_2023_11_19_at_12.37.06_AM_1700429256.jpeg', 1, '2023-11-19 21:27:36', '2023-11-19 21:27:36'),
(9, 1, '3', NULL, 'WhatsApp_Image_2023_11_19_at_12.37.05_AM_1700429269.jpeg', 1, '2023-11-19 21:27:50', '2023-11-19 21:27:50'),
(10, 1, '4', NULL, 'WhatsApp_Image_2023_11_19_at_12.37.04_AM_1700429282.jpeg', 1, '2023-11-19 21:28:02', '2023-11-19 21:28:02'),
(11, 1, '5', NULL, 'WhatsApp_Image_2023_11_18_at_10.15.16_AM_1700429296.jpeg', 1, '2023-11-19 21:28:16', '2023-11-19 21:28:16'),
(12, 1, '6', NULL, 'WhatsApp_Image_2023_11_19_at_12.37.06_AM_(1)_1700429308.jpeg', 1, '2023-11-19 21:28:28', '2023-11-19 21:28:28'),
(13, 1, '7', NULL, '2020_01_19_1700429426.jpg', 1, '2023-11-19 21:30:26', '2023-11-19 21:30:26'),
(14, 1, '8', NULL, 'download_1700429436.jpeg', 1, '2023-11-19 21:30:36', '2023-11-19 21:30:36'),
(15, 1, '11', NULL, 'images_1700429446.jpeg', 1, '2023-11-19 21:30:46', '2023-11-19 21:30:46'),
(16, 1, '12', NULL, 'images_(1)_1700429504.jpeg', 1, '2023-11-19 21:31:44', '2023-11-19 21:31:44'),
(17, 1, '111', NULL, 'WhatsApp_Image_2023_11_17_at_7.04.19_PM_1700429520.jpeg', 1, '2023-11-19 21:32:01', '2023-11-19 21:32:01'),
(18, 1, '32', NULL, 'WhatsApp_Image_2023_11_17_at_7.04.20_PM_(1)_1700429556.jpeg', 1, '2023-11-19 21:32:36', '2023-11-19 21:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `min_mark` decimal(5,2) NOT NULL,
  `max_mark` decimal(5,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `title`, `point`, `min_mark`, `max_mark`, `status`, `created_at`, `updated_at`, `remark`) VALUES
(1, 'A', 5.00, 80.00, 100.00, 1, NULL, NULL, NULL),
(2, 'B', 4.00, 70.00, 79.99, 1, NULL, NULL, NULL),
(3, 'C', 3.00, 60.00, 69.99, 1, NULL, NULL, NULL),
(4, 'D', 2.00, 50.00, 59.99, 1, NULL, '2022-10-02 15:21:33', NULL),
(5, 'E', 1.00, 40.00, 49.99, 1, NULL, NULL, NULL),
(6, 'F', 0.00, 0.00, 39.99, 1, NULL, '2022-10-02 15:21:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '1 Boys, 2 Girls, 3 Staff, 4 Combain',
  `capacity` varchar(191) DEFAULT NULL,
  `warden_name` varchar(191) DEFAULT NULL,
  `warden_contact` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `name`, `type`, `capacity`, `warden_name`, `warden_contact`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'City Garden', 3, '50', NULL, NULL, 'Ut non proident pra', NULL, 1, '2023-02-13 13:04:25', '2023-02-13 13:10:40'),
(2, 'House of Mystery', 1, '150', NULL, NULL, 'Excepteur dicta magn', NULL, 1, '2023-02-13 13:04:43', '2023-02-13 13:10:47'),
(3, 'Rose and Rings', 2, '120', NULL, NULL, 'Commodo fugit quia', NULL, 1, '2023-02-13 13:05:00', '2023-02-13 13:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_members`
--

CREATE TABLE `hostel_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hostelable_type` varchar(191) NOT NULL,
  `hostelable_id` bigint(20) UNSIGNED NOT NULL,
  `hostel_room_id` int(10) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Inactive, 1 Active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostel_members`
--

INSERT INTO `hostel_members` (`id`, `hostelable_type`, `hostelable_id`, `hostel_room_id`, `start_date`, `end_date`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Student', 14, 2, '2023-02-13', '2023-11-22', NULL, 0, 1, 1, '2023-02-13 13:12:29', '2023-11-22 09:45:45'),
(2, 'App\\Models\\Student', 12, 3, '2023-02-13', '2023-11-24', NULL, 0, 1, 1, '2023-02-13 13:12:39', '2023-11-24 06:19:17'),
(3, 'App\\Models\\Student', 10, 2, '2023-02-13', '2023-11-24', NULL, 0, 1, 1, '2023-02-13 13:12:45', '2023-11-24 06:19:45'),
(4, 'App\\Models\\Student', 9, 1, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:13:00', '2023-02-13 13:13:00'),
(5, 'App\\User', 8, 5, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:13:32', '2023-02-13 13:13:32'),
(6, 'App\\User', 3, 6, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:13:37', '2023-02-13 13:13:37'),
(7, 'App\\User', 2, 6, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:13:42', '2023-02-13 13:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

CREATE TABLE `hostel_rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `hostel_id` int(10) UNSIGNED NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `bed` int(11) NOT NULL DEFAULT 1,
  `fee` double(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostel_rooms`
--

INSERT INTO `hostel_rooms` (`id`, `name`, `hostel_id`, `room_type_id`, `bed`, `fee`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A1', 3, 1, 2, NULL, 'Ex atque consequatur', 1, '2023-02-13 13:06:01', '2023-02-13 13:06:01'),
(2, 'A2', 2, 4, 3, NULL, 'Et ut ut sint ex rat', 1, '2023-02-13 13:06:13', '2023-02-13 13:07:29'),
(3, 'A3', 3, 4, 3, NULL, 'Fugiat aut sit nost', 1, '2023-02-13 13:06:25', '2023-02-13 13:06:25'),
(4, 'A4', 2, 2, 3, NULL, 'Sit voluptate fugia', 1, '2023-02-13 13:06:40', '2023-02-13 13:06:56'),
(5, 'A5', 1, 4, 3, NULL, 'Eveniet eu consecte', 1, '2023-02-13 13:07:16', '2023-02-13 13:07:16'),
(6, 'A6', 1, 1, 2, NULL, 'Enim quis molestias', 1, '2023-02-13 13:07:50', '2023-02-13 13:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_room_types`
--

CREATE TABLE `hostel_room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `fee` double(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostel_room_types`
--

INSERT INTO `hostel_room_types` (`id`, `title`, `fee`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AC 2 Bed', 2500.00, NULL, 1, '2023-02-13 13:03:07', '2023-02-13 13:03:07'),
(2, 'AC 3 Bed', 2000.00, NULL, 1, '2023-02-13 13:03:17', '2023-02-13 13:03:17'),
(3, 'Non-AC 2 Bed', 1700.00, NULL, 1, '2023-02-13 13:03:41', '2023-02-13 13:03:41'),
(4, 'Non-AC 3 Bed', 1200.00, NULL, 1, '2023-02-13 13:03:54', '2023-02-13 13:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_settings`
--

CREATE TABLE `id_card_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `subtitle` varchar(191) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `background` text DEFAULT NULL,
  `website_url` varchar(191) DEFAULT NULL,
  `validity` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `student_photo` tinyint(1) NOT NULL DEFAULT 0,
  `signature` tinyint(1) NOT NULL DEFAULT 0,
  `barcode` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `id_card_settings`
--

INSERT INTO `id_card_settings` (`id`, `slug`, `title`, `subtitle`, `logo`, `background`, `website_url`, `validity`, `address`, `student_photo`, `signature`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'student-card', 'Horizon College', 'ID Card', NULL, NULL, NULL, '5', 'Bhown Road, Chakwal', 0, 0, 0, 1, '2022-09-30 12:16:48', '2023-11-24 01:16:52'),
(2, 'library-card', 'Our University Library Card', 'Our University Slogan', NULL, NULL, NULL, '5', 'Chakwal Pakistan', 0, 0, 0, 1, '2022-09-30 14:14:49', '2023-11-22 08:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `invoice_id` varchar(191) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `category_id`, `title`, `invoice_id`, `amount`, `date`, `payment_method`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `reference`) VALUES
(1, 1, 'Sint reprehenderit', '789452', 758.00, '2021-02-25', NULL, 'Praesentium et nostr', 'background-border_1664651865.png', 1, 1, NULL, '2022-10-01 13:17:45', '2022-10-01 13:17:45', NULL),
(2, 4, 'Rerum in ducimus es', '78147', 365.00, '2022-03-01', 1, 'Commodo enim maxime', NULL, 1, 1, 1, '2022-10-01 13:18:15', '2023-02-13 12:05:42', NULL),
(3, 3, 'Velit iure velit qui', '78458', 254.00, '2020-07-19', NULL, 'Aliquid at sit inci', NULL, 1, 1, 1, '2022-10-01 13:18:33', '2022-10-01 13:18:49', NULL),
(4, 5, 'Expedita voluptas pr', '758426', 905.00, '2022-05-19', 2, 'Esse laboris quis re', NULL, 1, 1, 1, '2022-10-01 13:19:17', '2023-02-13 12:05:34', NULL),
(5, 6, 'Fugiat ad non digni', '458752', 548.00, '2022-05-30', 3, 'Quidem temporibus qu', 'background-border_1664651984.png', 1, 1, 1, '2022-10-01 13:19:44', '2023-02-13 12:05:26', NULL),
(6, 3, 'Non in voluptatem A', '87458', 654.00, '2021-11-22', NULL, 'Ut deleniti voluptas', NULL, 1, 1, 1, '2022-10-01 13:20:24', '2022-10-01 13:20:36', NULL),
(7, 4, 'Donation received', '5454', 530.00, '2023-06-17', 2, 'donation for poor students', NULL, 1, 1, 1, '2023-08-25 06:35:17', '2023-11-24 01:23:31', 'Muhammad ali'),
(8, 5, 'Book sold', '4545', 550.00, '2023-05-27', 4, 'Enim omnis nesciunt', NULL, 1, 1, 1, '2023-08-25 06:35:55', '2023-11-24 01:22:52', 'Aneeka'),
(9, 1, 'Caffeteria rent', '454', 6700.00, '2023-07-02', 2, 'paid...', NULL, 1, 1, 1, '2023-08-25 06:42:55', '2023-11-24 01:22:14', 'Malik sagar');

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

CREATE TABLE `income_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_categories`
--

INSERT INTO `income_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shop Rent', 'shop-rent', NULL, 1, '2022-09-30 14:07:22', '2022-09-30 14:07:22'),
(2, 'Hostel Fees', 'hostel-fees', NULL, 1, '2022-09-30 14:07:58', '2022-09-30 14:07:58'),
(3, 'Waste Sell', 'waste-sell', NULL, 1, '2022-09-30 14:09:14', '2022-09-30 14:09:14'),
(4, 'Donation', 'donation', NULL, 1, '2022-10-01 04:09:18', '2022-10-01 04:09:18'),
(5, 'Book Sell', 'book-sell', NULL, 1, '2022-10-01 04:10:13', '2022-10-01 04:10:13'),
(6, 'Uniform Sell', 'uniform-sell', NULL, 1, '2022-10-01 04:10:55', '2022-10-01 04:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `issue_returns`
--

CREATE TABLE `issue_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `penalty` decimal(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Lost, 1 Issued, 2 Returned',
  `issued_by` bigint(20) UNSIGNED DEFAULT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issue_returns`
--

INSERT INTO `issue_returns` (`id`, `member_id`, `book_id`, `issue_date`, `due_date`, `return_date`, `penalty`, `status`, `issued_by`, `received_by`, `created_at`, `updated_at`) VALUES
(1, 3, 5, '2022-10-03', '2022-10-13', '2022-10-03', NULL, 2, 1, 1, '2022-10-03 15:05:37', '2022-10-03 15:07:20'),
(2, 5, 3, '2022-10-03', '2023-01-12', NULL, NULL, 1, 1, NULL, '2022-10-03 15:06:13', '2022-10-03 15:06:13'),
(3, 14, 4, '2022-10-03', '2022-12-21', NULL, NULL, 1, 1, NULL, '2022-10-03 15:06:34', '2022-10-03 15:06:34'),
(6, 21, 5, '2022-10-04', '2022-10-14', '2022-10-04', NULL, 2, 1, 1, '2022-10-04 07:42:03', '2022-10-04 07:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `unit` varchar(191) DEFAULT NULL,
  `serial_number` varchar(191) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category_id`, `unit`, `serial_number`, `quantity`, `description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Acid', 1, 'Pound', NULL, 0, NULL, NULL, 1, '2023-02-13 13:26:53', '2023-02-13 13:29:35'),
(2, 'Volt Metar', 3, 'Digital', NULL, 0, NULL, NULL, 1, '2023-02-13 13:27:57', '2023-02-13 13:29:51'),
(3, 'Cricket Bat', 2, 'M Size', NULL, 0, NULL, NULL, 1, '2023-02-13 13:28:15', '2023-02-13 13:29:01'),
(4, 'Football', 2, '5 No', NULL, 0, NULL, NULL, 1, '2023-02-13 13:28:27', '2023-02-13 13:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chemistry Lab Equipment', 'chemistry-lab-equipment', NULL, 1, '2023-02-13 13:22:02', '2023-02-13 13:22:23'),
(2, 'Sports Equipment', 'sports-equipment', NULL, 1, '2023-02-13 13:22:10', '2023-02-13 13:22:31'),
(3, 'Electrical Lab Equipment', 'electrical-lab-equipment', NULL, 1, '2023-02-13 13:23:01', '2023-02-13 13:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `item_issues`
--

CREATE TABLE `item_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `penalty` decimal(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Lost, 1 Issued, 2 Returned',
  `issued_by` bigint(20) UNSIGNED DEFAULT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_stocks`
--

CREATE TABLE `item_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(10,2) DEFAULT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_stocks`
--

INSERT INTO `item_stocks` (`id`, `item_id`, `supplier_id`, `store_id`, `quantity`, `price`, `date`, `reference`, `payment_method`, `description`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 10, 650.00, '2022-10-10', NULL, 1, 'Quia et et aliquam q', NULL, 1, 1, NULL, '2023-02-13 13:30:33', '2023-02-13 13:30:33'),
(2, 4, 1, 1, 5, 350.00, '2023-01-19', NULL, 5, 'Laborum in tempore', NULL, 1, 1, NULL, '2023-02-13 13:31:19', '2023-02-13 13:31:19'),
(3, 1, 2, 2, 17, 230.00, '2023-01-21', NULL, 4, 'Cumque praesentium v', NULL, 1, 1, NULL, '2023-02-13 13:32:02', '2023-02-13 13:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `item_stores`
--

CREATE TABLE `item_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `store_no` varchar(191) NOT NULL,
  `in_charge` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_stores`
--

INSERT INTO `item_stores` (`id`, `title`, `store_no`, `in_charge`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports Store', '001', NULL, 'rurapovome@mailinator.com', '+924343476677', 'Building 1', 1, '2023-02-13 13:25:30', '2023-11-22 08:53:27'),
(2, 'Lab Store', '002', NULL, 'Luxer@gmail.com', '+92343579777', 'Building 2', 1, '2023-02-13 13:25:51', '2023-11-22 08:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `item_suppliers`
--

CREATE TABLE `item_suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `contact_person` varchar(191) DEFAULT NULL,
  `designation` varchar(191) DEFAULT NULL,
  `contact_person_email` varchar(191) DEFAULT NULL,
  `contact_person_phone` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_suppliers`
--

INSERT INTO `item_suppliers` (`id`, `title`, `email`, `phone`, `address`, `contact_person`, `designation`, `contact_person_email`, `contact_person_phone`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DJ Sports Ltd', 'satudo@mailinator.com', '+9234345655', 'Islamabad Pakistan', 'Habib', 'Manager', 'zenigigyqo@mailinator.com', '+9234345655', 'Molestias distinctio', 1, '2023-02-13 13:24:00', '2023-11-22 08:54:02'),
(2, 'SF Cemix', 'pezu@mailinator.com', '+92321434562', 'Rawalpindi Pakistan', 'Saif', 'Executive', 'cusopiwu@mailinator.com', '+92321434562', 'Sed quis magnam elig', 1, '2023-02-13 13:24:49', '2023-11-22 08:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `direction` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 LTR, 1 RTL',
  `default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Not Default, 1 Default',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `description`, `direction`, `default`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', NULL, 0, 1, 1, '2022-09-30 12:00:47', '2022-09-30 12:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `review_by` bigint(20) UNSIGNED DEFAULT NULL,
  `apply_date` date NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `reason` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `pay_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 Paid & 2 Unpaid',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 Pending, 1 Approved and 2 Rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `type_id`, `user_id`, `review_by`, `apply_date`, `from_date`, `to_date`, `reason`, `attach`, `note`, `pay_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-10-02', '2022-10-02', '2022-10-08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, 1, 2, '2022-10-02 12:00:39', '2022-10-02 12:02:46'),
(2, 2, 1, 1, '2022-10-02', '2022-10-20', '2022-10-24', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'book-covers_1664733674.jpg', NULL, 2, 1, '2022-10-02 12:01:14', '2022-10-02 12:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `limit` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `slug`, `limit`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Casual Leave', 'casual-leave', NULL, NULL, 1, NULL, NULL),
(2, 'Sick Leave', 'sick-leave', NULL, NULL, 1, NULL, NULL),
(3, 'Maternity Leave', 'maternity-leave', NULL, NULL, 1, NULL, NULL),
(4, 'Marriage Leave', 'marriage-leave', NULL, NULL, 1, NULL, NULL),
(5, 'Bereavement Leave', 'bereavement-leave', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `library_members`
--

CREATE TABLE `library_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `memberable_type` varchar(191) NOT NULL,
  `memberable_id` bigint(20) UNSIGNED NOT NULL,
  `library_id` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Inactive, 1 Active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_members`
--

INSERT INTO `library_members` (`id`, `memberable_type`, `memberable_id`, `library_id`, `date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Student', 1, 'L1001', '2027-10-03', 1, 1, NULL, '2022-10-03 05:32:53', '2022-10-03 05:32:53'),
(2, 'App\\Models\\Student', 2, 'L1002', '2027-10-03', 0, 1, 1, '2022-10-03 05:33:11', '2022-10-03 05:42:05'),
(3, 'App\\Models\\Student', 3, 'L1003', '2027-10-03', 1, 1, NULL, '2022-10-03 05:33:18', '2022-10-03 05:33:18'),
(4, 'App\\Models\\Student', 5, 'L1004', '2027-10-03', 1, 1, NULL, '2022-10-03 05:33:48', '2022-10-03 05:33:48'),
(5, 'App\\Models\\Student', 6, 'L1005', '2027-10-03', 1, 1, NULL, '2022-10-03 05:33:57', '2022-10-03 05:33:57'),
(6, 'App\\Models\\Student', 8, 'L1006', '2027-10-03', 1, 1, NULL, '2022-10-03 05:35:11', '2022-10-03 05:35:11'),
(13, 'App\\User', 1, 'L1015', '2027-10-03', 1, 1, NULL, '2022-10-03 05:41:29', '2022-10-03 05:41:29'),
(14, 'App\\Models\\OutsideUser', 1, 'L1016', '2027-10-03', 1, 1, NULL, '2022-10-03 05:44:53', '2022-10-03 05:44:53'),
(15, 'App\\Models\\OutsideUser', 2, 'L1017', '2027-10-03', 1, 1, NULL, '2022-10-03 05:45:41', '2022-10-03 05:45:41'),
(16, 'App\\Models\\OutsideUser', 3, 'L1018', '2027-10-03', 0, 1, 1, '2022-10-03 05:46:30', '2022-10-03 05:48:52'),
(17, 'App\\Models\\OutsideUser', 4, 'L1020', '2027-10-03', 1, 1, NULL, '2022-10-03 05:48:01', '2022-10-03 05:48:01'),
(18, 'App\\Models\\Student', 10, 'L1021', '2027-10-04', 1, 1, NULL, '2022-10-04 07:39:22', '2022-10-04 07:39:22'),
(19, 'App\\Models\\Student', 11, 'L1022', '2027-10-04', 1, 1, NULL, '2022-10-04 07:39:31', '2022-10-04 07:39:31'),
(20, 'App\\Models\\Student', 13, 'L1023', '2027-10-04', 0, 1, 1, '2022-10-04 07:39:42', '2022-10-04 07:39:45'),
(21, 'App\\Models\\Student', 14, 'L1024', '2027-10-04', 1, 1, 1, '2022-10-04 07:39:52', '2023-11-22 08:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `mail_settings`
--

CREATE TABLE `mail_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver` text DEFAULT NULL,
  `host` text DEFAULT NULL,
  `port` text DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `encryption` text DEFAULT NULL,
  `sender_email` text DEFAULT NULL,
  `sender_name` text DEFAULT NULL,
  `reply_email` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_settings`
--

INSERT INTO `mail_settings` (`id`, `driver`, `host`, `port`, `username`, `password`, `encryption`, `sender_email`, `sender_name`, `reply_email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'smtp.mailtrap.io', '2525', '5b1c119ce5a400', 'e177cd2e8894b5', 'tls', 'bushra@mail.com', 'Horizon University FYP', 'info@mail.com', 1, '2022-09-30 12:00:47', '2023-11-24 00:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `marksheet_settings`
--

CREATE TABLE `marksheet_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `header_left` text DEFAULT NULL,
  `header_center` text DEFAULT NULL,
  `header_right` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `footer_left` text DEFAULT NULL,
  `footer_center` text DEFAULT NULL,
  `footer_right` text DEFAULT NULL,
  `logo_left` text DEFAULT NULL,
  `logo_right` text DEFAULT NULL,
  `background` text DEFAULT NULL,
  `width` varchar(191) NOT NULL DEFAULT 'auto',
  `height` varchar(191) NOT NULL DEFAULT 'auto',
  `student_photo` tinyint(1) NOT NULL DEFAULT 0,
  `barcode` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marksheet_settings`
--

INSERT INTO `marksheet_settings` (`id`, `title`, `header_left`, `header_center`, `header_right`, `body`, `footer_left`, `footer_center`, `footer_right`, `logo_left`, `logo_right`, `background`, `width`, `height`, `student_photo`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Horizon University Academic Transcript', NULL, NULL, NULL, NULL, 'Controller', 'Director', 'Register', 'logoJPG_1700294206.png', 'logoJPG_1700294206.png', NULL, '800px', 'auto', 0, 0, 1, '2022-10-01 02:44:46', '2023-11-18 07:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_schedules`
--

CREATE TABLE `meeting_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `father_name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `id_no` varchar(191) DEFAULT NULL,
  `token` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `persons` varchar(191) DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_schedules`
--

INSERT INTO `meeting_schedules` (`id`, `type_id`, `user_id`, `name`, `father_name`, `phone`, `email`, `address`, `purpose`, `note`, `id_no`, `token`, `date`, `in_time`, `out_time`, `persons`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Channing Hicks', 'Felix Conway', '+1 (169) 929-4323', 'webizigi@mailinator.com', 'Ut sed proident del', 'Fugit provident ip', 'Est quam amet nobi', '45', 'Pass-100001', '2023-10-09', '17:29:00', '08:22:00', '1', NULL, 0, 1, 1, '2023-02-13 12:30:58', '2023-08-25 07:41:26'),
(2, 2, 8, 'Elaine Guerra', 'Zeus Phelps', '+1 (274) 544-4761', 'zaja@mailinator.com', 'Aut neque saepe pari', 'Fuga Obcaecati haru', 'Est minim iste ea re', '54877', 'Pass-100002', '2023-02-13', '09:45:00', '02:04:00', '2', NULL, 1, 1, 1, '2023-02-13 12:31:57', '2023-02-13 12:37:11'),
(3, 2, 5, 'Kasimir Cooper', 'Yvonne Reid', '+1 (322) 377-7963', 'dinalezo@mailinator.com', 'Provident omnis opt', 'Perspiciatis non cu', 'Aut est molestiae od', '234', 'Pass-100003', '2024-01-25', '04:52:00', '14:49:00', '2', NULL, 3, 1, 1, '2023-08-25 07:39:50', '2023-08-25 07:41:35'),
(4, 1, 1, 'Rebekah Calderon', 'Kyle Armstrong', '+1 (928) 388-3493', 'qezug@mailinator.com', 'Irure ipsam distinct', 'Et non et consequatu', 'Aliqua Et eu velit', '35', 'Pass-100004', '2024-03-05', '23:35:00', '13:21:00', '1', NULL, 1, 1, NULL, '2023-08-25 07:40:20', '2023-08-25 07:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_types`
--

CREATE TABLE `meeting_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_types`
--

INSERT INTO `meeting_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Board Meeting', 'board-meeting', NULL, 1, '2023-02-13 12:23:18', '2023-02-13 12:23:18'),
(2, 'Parent Teacher Meeting', 'parent-teacher-meeting', NULL, 1, '2023-02-13 12:23:34', '2023-02-13 12:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_06_04_092405_create_faculties_table', 1),
(5, '2021_06_04_102314_create_programs_table', 1),
(6, '2021_06_04_114619_create_batches_table', 1),
(7, '2021_06_04_120154_create_sessions_table', 1),
(8, '2021_06_04_131456_create_semesters_table', 1),
(9, '2021_06_04_132856_create_sections_table', 1),
(10, '2021_06_04_141432_create_class_rooms_table', 1),
(11, '2021_06_05_121933_create_income_categories_table', 1),
(12, '2021_06_05_125236_create_incomes_table', 1),
(13, '2021_06_05_144224_create_expense_categories_table', 1),
(14, '2021_06_05_150317_create_expenses_table', 1),
(15, '2021_06_07_152605_create_subjects_table', 1),
(16, '2021_06_07_155306_create_enroll_subjects_table', 1),
(17, '2021_06_07_160042_create_enroll_subject_subject_table', 1),
(18, '2021_06_08_102053_create_program_subject_table', 1),
(19, '2021_06_08_105550_create_batch_program_table', 1),
(20, '2021_06_08_125338_create_program_semester_table', 1),
(21, '2021_06_08_125531_create_program_class_room_table', 1),
(22, '2021_06_08_180439_create_program_session_table', 1),
(23, '2021_06_08_182844_create_program_semester_sections_table', 1),
(24, '2021_06_09_133442_create_class_routines_table', 1),
(25, '2021_06_12_153215_create_departments_table', 1),
(26, '2021_06_12_155411_create_designations_table', 1),
(27, '2021_06_13_075755_create_leave_types_table', 1),
(28, '2021_06_13_125451_create_leaves_table', 1),
(29, '2021_06_13_173512_create_work_shift_types_table', 1),
(30, '2021_06_13_175400_create_tax_settings_table', 1),
(31, '2021_06_13_193417_create_user_program_table', 1),
(32, '2021_06_15_184223_create_staff_attendances_table', 1),
(33, '2021_06_16_180912_create_staff_hourly_attendances_table', 1),
(34, '2021_06_17_083411_create_payrolls_table', 1),
(35, '2021_06_22_185503_create_jobs_table', 1),
(36, '2021_07_07_081616_create_students_table', 1),
(37, '2021_07_07_182329_create_student_relatives_table', 1),
(38, '2021_07_07_190034_create_documents_table', 1),
(39, '2021_07_07_192727_create_docables_table', 1),
(40, '2021_07_08_054948_create_student_enrolls_table', 1),
(41, '2021_07_08_172152_create_student_transfers_table', 1),
(42, '2021_07_08_195650_create_transfer_creadits_table', 1),
(43, '2021_07_09_061940_create_status_types_table', 1),
(44, '2021_07_09_092958_create_status_type_student_table', 1),
(45, '2021_07_09_163443_create_student_enroll_subject_table', 1),
(46, '2021_07_09_173413_create_student_leaves_table', 1),
(47, '2021_07_09_194126_create_student_attendances_table', 1),
(48, '2021_07_17_160726_create_events_table', 1),
(49, '2021_07_18_074323_create_notice_categories_table', 1),
(50, '2021_07_18_080209_create_notices_table', 1),
(51, '2021_07_18_105550_create_noticeables_table', 1),
(52, '2021_07_19_182908_create_email_notifies_table', 1),
(53, '2021_07_19_200327_create_s_m_s_notifies_table', 1),
(54, '2021_09_01_070002_create_exam_types_table', 1),
(55, '2021_09_01_071547_create_result_contributions_table', 1),
(56, '2021_09_01_084615_create_grades_table', 1),
(57, '2021_09_02_184433_create_exams_table', 1),
(58, '2021_09_04_101915_create_subject_markings_table', 1),
(59, '2021_09_27_183257_create_certificate_templates_table', 1),
(60, '2021_10_01_163600_create_certificates_table', 1),
(61, '2021_10_15_182241_create_marksheet_settings_table', 1),
(62, '2022_01_21_142336_create_print_settings_table', 1),
(63, '2022_01_21_170648_create_visit_purposes_table', 1),
(64, '2022_01_21_171901_create_visitors_table', 1),
(65, '2022_01_21_185105_create_postal_exchange_types_table', 1),
(66, '2022_01_21_185152_create_postal_exchanges_table', 1),
(67, '2022_01_21_185201_create_phone_logs_table', 1),
(68, '2022_01_22_103339_create_complain_types_table', 1),
(69, '2022_01_22_103551_create_complain_sources_table', 1),
(70, '2022_01_22_103657_create_complains_table', 1),
(71, '2022_01_23_103439_create_enquiry_sources_table', 1),
(72, '2022_01_23_110653_create_enquiry_references_table', 1),
(73, '2022_01_23_114509_create_enquiries_table', 1),
(74, '2022_01_24_174515_create_assignments_table', 1),
(75, '2022_01_24_179252_create_student_assignments_table', 1),
(76, '2022_01_24_181419_create_content_types_table', 1),
(77, '2022_01_25_165931_create_contents_table', 1),
(78, '2022_01_26_105511_create_contentables_table', 1),
(79, '2022_01_27_100200_create_notifications_table', 1),
(80, '2022_01_28_131433_create_book_categories_table', 1),
(81, '2022_01_28_173902_create_books_table', 1),
(82, '2022_01_29_045003_create_outside_users_table', 1),
(83, '2022_01_29_045120_create_library_members_table', 1),
(84, '2022_01_29_093915_create_issue_returns_table', 1),
(85, '2022_01_31_061950_create_notes_table', 1),
(86, '2022_02_15_173515_create_fees_categories_table', 1),
(87, '2022_02_15_182124_create_fees_masters_table', 1),
(88, '2022_02_16_100327_create_fees_master_student_enroll', 1),
(89, '2022_02_26_184930_create_fees_fines_table', 1),
(90, '2022_02_26_191642_create_fees_category_fees_fine_table', 1),
(91, '2022_03_04_172257_create_fees_discounts_table', 1),
(92, '2022_03_05_132058_create_fees_category_fees_discount_table', 1),
(93, '2022_03_05_132541_create_fees_discount_status_type_table', 1),
(94, '2022_03_05_195051_create_fees_table', 1),
(95, '2022_03_05_203440_create_transactions_table', 1),
(96, '2022_03_10_131324_create_exam_routines_table', 1),
(97, '2022_03_10_131936_create_exam_routine_user_table', 1),
(98, '2022_03_10_132124_create_exam_routine_room_table', 1),
(99, '2022_03_31_074913_create_id_card_settings_table', 1),
(100, '2022_04_01_125726_create_settings_table', 1),
(101, '2022_04_01_210417_create_languages_table', 1),
(102, '2022_04_02_144303_create_permission_tables', 1),
(103, '2022_04_03_103141_create_mail_settings_table', 1),
(104, '2022_04_03_173021_create_s_m_s_settings_table', 1),
(105, '2022_04_03_174009_create_schedule_settings_table', 1),
(106, '2022_04_04_123222_create_provinces_table', 1),
(107, '2022_04_04_173222_create_districts_table', 1),
(108, '2021_06_17_183706_create_payroll_details_table', 2),
(109, '2021_07_04_172713_create_application_settings_table', 2),
(110, '2021_07_06_121630_create_applications_table', 2),
(111, '2022_01_23_192650_create_meeting_types_table', 2),
(112, '2022_01_23_202252_create_meeting_schedules_table', 2),
(113, '2022_01_28_195224_create_book_requests_table', 2),
(114, '2022_11_20_171503_create_item_categories_table', 2),
(115, '2022_11_20_182303_create_item_stores_table', 2),
(116, '2022_11_20_185841_create_item_suppliers_table', 2),
(117, '2022_11_21_190954_create_items_table', 2),
(118, '2022_11_21_194218_create_item_stocks_table', 2),
(119, '2022_11_21_200834_create_item_issues_table', 2),
(120, '2022_12_08_140339_create_hostel_room_types_table', 2),
(121, '2022_12_08_193208_create_hostels_table', 2),
(122, '2022_12_10_203126_create_hostel_rooms_table', 2),
(123, '2022_12_14_181050_create_hostel_members_table', 2),
(124, '2022_12_22_112935_create_transport_routes_table', 2),
(125, '2022_12_23_110116_create_transport_vehicles_table', 2),
(126, '2022_12_23_112400_create_transport_route_transport_vehicle_table', 2),
(127, '2022_12_24_121402_create_transport_members_table', 2),
(128, '2022_12_29_173356_add_fields_to_tables', 2),
(129, '2023_08_12_153552_add_fields_v3_to_table', 3),
(130, '2023_08_12_174813_create_fields_table', 3),
(131, '2023_08_15_010030_create_topbar_settings_table', 3),
(132, '2023_08_15_010553_create_social_settings_table', 3),
(133, '2023_08_15_025440_create_sliders_table', 3),
(134, '2023_08_15_034340_create_features_table', 3),
(135, '2023_08_15_043734_create_about_us_table', 3),
(136, '2023_08_15_112651_create_faqs_table', 3),
(137, '2023_08_15_115731_create_testimonials_table', 3),
(138, '2023_08_15_121544_create_call_to_actions_table', 3),
(139, '2023_08_16_172019_create_galleries_table', 3),
(140, '2023_08_16_172620_create_courses_table', 3),
(141, '2023_08_16_173224_create_web_events_table', 3),
(142, '2023_08_16_173331_create_news_table', 3),
(143, '2023_08_23_142818_create_pages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `description` longtext NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `language_id`, `title`, `slug`, `date`, `description`, `meta_title`, `meta_description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Final year project FYP date is revealed!', 'final-year-project-fyp-date-is-revealed', '2023-09-30', '<p>**Exciting Update: Final Year Projects for IT &amp; CS Departments at Horizon College Expected in Early January 2024**</p>\r\n<p>&nbsp;</p>\r\n<p>Chakwal, [30 Sep, 2023 ] &ndash; Horizon College is abuzz with anticipation as the Final Year Projects for the Information Technology (IT) and Computer Science (CS) departments are slated to take center stage in early January 2024. This marks a significant milestone for graduating students who have dedicated their skills and knowledge to these innovative and impactful projects.</p>\r\n<p>&nbsp;</p>\r\n<p>Students from the IT and CS departments have been working diligently on a diverse range of projects, showcasing their creativity and technical acumen. The projects cover a spectrum of cutting-edge topics, from software development to artificial intelligence, and promise to be a testament to the students\' proficiency in their respective fields.</p>\r\n<p>&nbsp;</p>\r\n<p>The college is gearing up to provide a platform for these aspiring technologists to present their projects to faculty, peers, and industry professionals. This event not only highlights the culmination of their academic journey but also serves as an opportunity for students to demonstrate the practical application of the skills they have acquired during their time at Horizon College.</p>\r\n<p>&nbsp;</p>\r\n<p>The college administration encourages students to stay focused on their project timelines and make the most of the resources available to them. Faculty members are ready to provide guidance and support as students put the finishing touches on their projects.</p>\r\n<p>&nbsp;</p>\r\n<p>We extend our best wishes to all IT and CS final year students as they approach this exciting phase of their academic careers. Stay tuned for more updates on this showcase of technological prowess at Horizon College!</p>\r\n<p>&nbsp;</p>\r\n<p>*Horizon College: Shaping Technological Innovators for Tomorrow.*</p>', NULL, NULL, 'fyp_1700674746.jpeg', 1, '2023-08-24 16:30:23', '2023-11-22 17:48:41'),
(2, 1, 'Final year exams of all BS Students are coming', 'final-year-exams-of-all-bs-students-are-coming', '2023-09-21', '<p>**Important Announcement: Final Year Exams for Horizon College Students Approaching in Mid-December 2023**</p>\r\n<p>&nbsp;</p>\r\n<p>Chakwal, [21 Sep, 2023] &ndash; Attention all final year students at Horizon College! The much-anticipated final year examinations are on the horizon, expected to kick off in the mid of December 2023. As the academic year draws to a close, students are gearing up to showcase their knowledge, skills, and academic prowess.</p>\r\n<p>&nbsp;</p>\r\n<p>The examination schedule, including specific dates and times for each subject, will be communicated to students well in advance to ensure adequate preparation time. It is crucial for all final year students to stay informed about the examination guidelines, syllabus, and any additional instructions provided by the college.</p>\r\n<p>&nbsp;</p>\r\n<p>Horizon College is committed to creating an environment that supports academic success, and the upcoming final year exams serve as a culmination of the hard work and dedication exhibited by our students throughout the academic year. Faculty and staff are ready to assist and guide students through this crucial period, ensuring a smooth and fair examination process.</p>\r\n<p>&nbsp;</p>\r\n<p>We wish all final year students the best of luck as they prepare for these exams. Remember, each exam is an opportunity to showcase your knowledge and skills, reflecting the culmination of your academic journey at Horizon College.</p>\r\n<p>&nbsp;</p>\r\n<p>For any queries or additional information, students are encouraged to contact the college administration or refer to official communication channels.</p>\r\n<p>&nbsp;</p>\r\n<p>*Horizon College: Nurturing Minds, Shaping Futures.*</p>', NULL, NULL, 'finalpp_1700674320.jpeg', 1, '2023-08-24 16:31:34', '2023-11-22 17:32:00'),
(3, 1, 'Important News', 'important-news', '2023-08-24', '<p>**Exciting News Alert: Admission Open at Horizon College Chakwal!**</p>\r\n<p>&nbsp;</p>\r\n<p>Chakwal, [24 Aug, 2023] &ndash; Horizon College proudly announces the commencement of admissions for the upcoming academic year. Aspiring students can now seize the opportunity to embark on a journey of knowledge and excellence at our esteemed institution.</p>\r\n<p>&nbsp;</p>\r\n<p>Applying for admission is easier than ever with the flexibility of both online and offline application options. Students can visit our official website to complete the online application process from the comfort of their homes. The user-friendly online portal ensures a seamless and convenient experience for applicants.</p>\r\n<p>&nbsp;</p>\r\n<p>For those who prefer a more traditional approach, offline applications are also warmly welcomed. Interested candidates can collect admission forms from the college campus and submit them in person.</p>\r\n<p>&nbsp;</p>\r\n<p>Horizon College, known for its commitment to academic brilliance and holistic development, offers a range of programs to cater to diverse interests and career aspirations. From cutting-edge facilities to a dedicated faculty, students can expect a nurturing environment that fosters growth and success.</p>\r\n<p>&nbsp;</p>\r\n<p>Don\'t miss this opportunity to be a part of Horizon College\'s academic legacy. Whether you choose the digital route or the classic paperwork method, we look forward to welcoming you into the Horizon family. Apply today and embark on a journey towards a brighter future!</p>\r\n<p>&nbsp;</p>\r\n<p>For more details and to access the online application portal, please visit [College Website URL].</p>\r\n<p>&nbsp;</p>\r\n<p>*Horizon College Chakwal: Where Knowledge Meets Excellence.*</p>', NULL, NULL, 'news1_1700673889.jpeg', 1, '2023-08-24 16:32:04', '2023-11-22 17:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `noteable_type` varchar(191) NOT NULL,
  `noteable_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `noteable_type`, `noteable_id`, `title`, `description`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(4, 'App\\Models\\Student', 3, 'Dolor aut excepturi', 'Culpa labore fugit', NULL, 1, 1, NULL, '2022-10-02 12:40:45', '2022-10-02 12:40:45'),
(5, 'App\\Models\\Student', 6, 'Magna culpa distinc', 'At ullam magni autem', 'book-covers_1664736057.jpg', 1, 1, NULL, '2022-10-02 12:40:57', '2022-10-02 12:40:57'),
(6, 'App\\Models\\Student', 4, 'Et nulla sint ut no', 'Rerum sit nostrud l', NULL, 1, 1, NULL, '2022-10-02 12:41:02', '2022-10-02 12:41:02'),
(7, 'App\\Models\\Student', 1, 'Est magnam exercita', 'Aliquid deserunt asp', 'book-cover2_1664736079.jpg', 1, 1, NULL, '2022-10-02 12:41:19', '2022-10-02 12:41:19'),
(8, 'App\\Models\\Student', 13, 'Assumenda ad corpori', 'Qui ea impedit a ex', 'background-border_1664885966.png', 1, 1, NULL, '2022-10-04 06:19:26', '2022-10-04 06:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `noticeables`
--

CREATE TABLE `noticeables` (
  `notice_id` bigint(20) NOT NULL,
  `noticeable_id` bigint(20) NOT NULL,
  `noticeable_type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeables`
--

INSERT INTO `noticeables` (`notice_id`, `noticeable_id`, `noticeable_type`) VALUES
(1, 4, 'App\\Models\\Student'),
(1, 3, 'App\\Models\\Student'),
(1, 2, 'App\\Models\\Student'),
(1, 1, 'App\\Models\\Student'),
(2, 14, 'App\\Models\\Student'),
(2, 12, 'App\\Models\\Student'),
(2, 11, 'App\\Models\\Student'),
(2, 10, 'App\\Models\\Student');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT NULL,
  `program_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `notice_no` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `category_id`, `notice_no`, `title`, `description`, `date`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 0, 0, 0, 4, '1001', 'Android Development Hackathon 2022', '<p>Hackathon Android App Innovation Challenge in will happen on Feb 20th 2022. ... To develop an innovative applications which can be helpful for society.</p>\r\n<p>&nbsp;</p>', '2022-10-03', 'book-covers_1664819413.jpg', 1, 1, 1, '2022-10-03 11:50:13', '2022-10-03 14:55:38'),
(2, 2, 3, 4, 1, 0, 2, '1004', 'Winter Vacation Pick On From Sunday', '<p>Winter Vacations for Sun and Scene Seekers: The Caribbean​​ The Caribbean has long drawn couples, families and friends for easy warm-weather getaways, thanks to</p>', '2022-10-04', 'Provisional Certificate-100001_1664890296.pdf', 1, 1, NULL, '2022-10-04 07:31:36', '2022-10-04 07:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `notice_categories`
--

CREATE TABLE `notice_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_categories`
--

INSERT INTO `notice_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Exam', 'exam', NULL, 1, '2022-09-30 14:11:08', '2022-09-30 14:11:54'),
(2, 'Vacation', 'vacation', NULL, 1, '2022-09-30 14:11:23', '2022-09-30 14:12:05'),
(3, 'Festival', 'festival', NULL, 1, '2022-09-30 14:11:41', '2022-09-30 14:12:00'),
(4, 'Competitive Event', 'competitive-event', NULL, 1, '2022-10-01 04:08:04', '2022-10-01 04:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('011f54a5-007b-47ec-8ca0-ef8d4d02377e', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 12, '{\"id\":3,\"title\":\"2nd Class Of English\",\"type\":\"content\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('07aab651-5c90-4523-86b8-d27aae1056ec', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 1, '{\"id\":1,\"title\":\"Android Development Hackathon 2022\",\"type\":\"notice\"}', NULL, '2022-10-03 11:50:13', '2022-10-03 11:50:13'),
('11a62dee-3881-4ac4-8a3b-df96a73781de', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 10, '{\"id\":2,\"title\":\"Winter Vacation Pick On From Sunday\",\"type\":\"notice\"}', NULL, '2022-10-04 07:31:37', '2022-10-04 07:31:37'),
('141e4e0d-3663-43b1-a7be-dc7674e5928d', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 11, '{\"id\":3,\"title\":\"2nd Class Of English\",\"type\":\"content\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('15b99a58-fcc8-4de2-a8dc-f47df77d7134', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 3, '{\"id\":1,\"title\":\"Theory of relativity\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
('1664d794-1262-4ee9-aca5-c3ea560e4291', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 4, '{\"id\":1,\"title\":\"Android Development Hackathon 2022\",\"type\":\"notice\"}', NULL, '2022-10-03 11:50:13', '2022-10-03 11:50:13'),
('1e6faade-b601-4573-8611-252bd426a5e4', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 14, '{\"id\":3,\"title\":\"2nd Class Of English\",\"type\":\"content\"}', '2022-10-04 07:32:42', '2022-10-04 07:22:41', '2022-10-04 07:32:42'),
('27700e79-b1ef-4aea-84a5-dca35601e2c7', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 14, '{\"id\":5,\"title\":\"Rules of voice change\",\"type\":\"assignment\"}', '2022-10-04 07:32:47', '2022-10-04 07:22:41', '2022-10-04 07:32:47'),
('31bf7290-9e38-4131-9f5c-7a972e49616a', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 14, '{\"id\":2,\"title\":\"Winter Vacation Pick On From Sunday\",\"type\":\"notice\"}', '2022-10-04 07:32:02', '2022-10-04 07:31:37', '2022-10-04 07:32:02'),
('5b2538da-38e9-4a7a-9d5e-12a5b71bdf90', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 7, '{\"id\":1,\"title\":\"Optical Physics 1st Class\",\"type\":\"content\"}', NULL, '2022-10-03 07:12:59', '2022-10-03 07:12:59'),
('6ca44526-326d-40f7-80a2-cd99f3a77fcd', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 10, '{\"id\":3,\"title\":\"Rules of Article\",\"type\":\"assignment\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('70bf8a20-bd71-403e-bd84-006b6e524a66', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 1, '{\"id\":1,\"title\":\"Theory of relativity\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
('785f549e-c101-40f4-b4f8-134c2cd2a0fe', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 11, '{\"id\":3,\"title\":\"Rules of Article\",\"type\":\"assignment\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('839d685b-468a-459c-b7e1-8d4b74e7d5df', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 8, '{\"id\":2,\"title\":\"Measurement and Height\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:13:04', '2022-10-03 11:13:04'),
('93f6ddc6-d6a9-4e6d-b492-d417e1b9b2f7', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 4, '{\"id\":1,\"title\":\"Theory of relativity\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
('9ba811dd-0e6a-4070-b216-069614bc2b9d', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 10, '{\"id\":3,\"title\":\"2nd Class Of English\",\"type\":\"content\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('a3f21e8d-3610-40b8-a2e5-7b1a94bf90e6', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 10, '{\"id\":5,\"title\":\"Rules of voice change\",\"type\":\"assignment\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('a67fd579-3132-4fb3-9107-9108ecc310c8', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 12, '{\"id\":3,\"title\":\"Rules of Article\",\"type\":\"assignment\"}', '2022-10-04 07:23:16', '2022-10-04 07:22:41', '2022-10-04 07:23:16'),
('a9e0eaac-ddc8-44b7-9a05-c280aa5ce15e', 'App\\Notifications\\ContentNotification', 'App\\Models\\Student', 8, '{\"id\":1,\"title\":\"Optical Physics 1st Class\",\"type\":\"content\"}', NULL, '2022-10-03 07:12:59', '2022-10-03 07:12:59'),
('b131cbc5-8f6d-46af-85ba-99e114a468f7', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 3, '{\"id\":1,\"title\":\"Android Development Hackathon 2022\",\"type\":\"notice\"}', NULL, '2022-10-03 11:50:13', '2022-10-03 11:50:13'),
('c150c5b3-2d00-465e-bb7c-8fb0506f4cb7', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 12, '{\"id\":2,\"title\":\"Winter Vacation Pick On From Sunday\",\"type\":\"notice\"}', NULL, '2022-10-04 07:31:37', '2022-10-04 07:31:37'),
('c223bf63-bf78-4425-b70d-d7f0ed751ba9', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 12, '{\"id\":5,\"title\":\"Rules of voice change\",\"type\":\"assignment\"}', '2022-10-04 07:23:16', '2022-10-04 07:22:41', '2022-10-04 07:23:16'),
('cdd8fdc1-b992-4df9-a1d7-833bc22c1728', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 14, '{\"id\":3,\"title\":\"Rules of Article\",\"type\":\"assignment\"}', '2022-10-04 07:32:47', '2022-10-04 07:22:41', '2022-10-04 07:32:47'),
('d1693c75-da05-4cb0-a5fa-4e0e98eed4f4', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 2, '{\"id\":1,\"title\":\"Android Development Hackathon 2022\",\"type\":\"notice\"}', NULL, '2022-10-03 11:50:13', '2022-10-03 11:50:13'),
('d86483c2-2cac-4a32-a274-aa402c0c63d5', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 2, '{\"id\":1,\"title\":\"Theory of relativity\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:10:03', '2022-10-03 11:10:03'),
('edf49484-fd6d-4d28-9024-dab31f141b7a', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 7, '{\"id\":2,\"title\":\"Measurement and Height\",\"type\":\"assignment\"}', NULL, '2022-10-03 11:13:04', '2022-10-03 11:13:04'),
('f3bcc8a3-b372-4657-9f29-ea4438f455bc', 'App\\Notifications\\AssignmentNotification', 'App\\Models\\Student', 11, '{\"id\":5,\"title\":\"Rules of voice change\",\"type\":\"assignment\"}', NULL, '2022-10-04 07:22:41', '2022-10-04 07:22:41'),
('fa65ad88-4332-42ac-a773-796203413c68', 'App\\Notifications\\NoticeNotification', 'App\\Models\\Student', 11, '{\"id\":2,\"title\":\"Winter Vacation Pick On From Sunday\",\"type\":\"notice\"}', NULL, '2022-10-04 07:31:37', '2022-10-04 07:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `outside_users`
--

CREATE TABLE `outside_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `father_name` varchar(191) DEFAULT NULL,
  `mother_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `present_province` int(10) UNSIGNED DEFAULT NULL,
  `present_district` int(10) UNSIGNED DEFAULT NULL,
  `present_village` text DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `permanent_province` int(10) UNSIGNED DEFAULT NULL,
  `permanent_district` int(10) UNSIGNED DEFAULT NULL,
  `permanent_village` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `education_level` varchar(191) DEFAULT NULL,
  `occupation` varchar(191) DEFAULT NULL,
  `gender` int(11) NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `mother_tongue` varchar(191) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `blood_group` int(11) DEFAULT NULL,
  `nationality` varchar(191) DEFAULT NULL,
  `national_id` varchar(191) DEFAULT NULL,
  `passport_no` varchar(191) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Inactive, 1 Active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `father_occupation` varchar(191) DEFAULT NULL,
  `mother_occupation` varchar(191) DEFAULT NULL,
  `father_photo` text DEFAULT NULL,
  `mother_photo` text DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `religion` varchar(191) DEFAULT NULL,
  `caste` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outside_users`
--

INSERT INTO `outside_users` (`id`, `first_name`, `last_name`, `father_name`, `mother_name`, `email`, `phone`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `education_level`, `occupation`, `gender`, `dob`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `photo`, `signature`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `father_occupation`, `mother_occupation`, `father_photo`, `mother_photo`, `country`, `religion`, `caste`) VALUES
(2, 'Shafeeq', 'Sagar', 'Sagar', NULL, 'wygicyb@email.com', '+923434876766', 0, 0, NULL, 'Chandni Chowk Chakwal', 1, 1, NULL, 'Main city Mianwali', NULL, 'Engineer', 1, '1989-11-30', NULL, 4, NULL, NULL, '76554633543', '43865438', 'student_1664797541.jpg', NULL, 1, 1, 1, '2022-10-03 05:45:41', '2023-11-22 08:46:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Zubaida', 'ALi', 'Noor Muhammad', NULL, 'corojeja@email.com', '+923335487875', 0, 0, NULL, 'Chakwal chowk', 0, 0, NULL, 'Mirpur Kashmir PK', NULL, NULL, 2, '2014-03-07', NULL, 4, NULL, NULL, '56789688', '876856876', NULL, NULL, 1, 1, 1, '2022-10-03 05:46:30', '2023-11-22 08:45:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Sara', 'Naqvi', 'Alvi Naqvi', NULL, 'semat@gmail.com', '+923335905906', 0, 0, NULL, 'Tehsil chowk chakwal', 0, 0, NULL, 'Khanpur chakwal', NULL, 'Student', 2, '1994-07-13', NULL, 1, NULL, NULL, '55489789441', '124897891', 'student_1664797681.jpg', NULL, 1, 1, 1, '2022-10-03 05:48:01', '2023-11-22 08:44:49', NULL, NULL, NULL, NULL, NULL, 'islam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `title`, `slug`, `description`, `meta_title`, `meta_description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Requirements', 'requirements', '<p>Horizon College in Chakwal stands as a beacon of quality education, offering various programs to aspiring students. The institution prides itself on maintaining academic excellence while nurturing the intellectual growth of its students. However, gaining admission to Horizon College requires meeting specific criteria designed to ensure a standard of competence and dedication among incoming students.</p>\r\n<p>&nbsp;</p>\r\n<p>For prospective candidates seeking admission to the FSC (Intermediate) and Bachelor\'s degree programs at Horizon College, certain prerequisites must be fulfilled. The college has set clear guidelines to ensure that students admitted into their programs demonstrate a solid academic foundation and commitment to learning.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>FSC Admission Requirements:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>For admission to the FSC program, aspiring students must have obtained a minimum of 60% marks in their Matriculation exams. This benchmark reflects the college\'s emphasis on selecting candidates who have shown a commendable level of academic performance at the secondary education level. It serves as an indicator of a student\'s capability to excel in the intermediate program.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Bachelor\'s Degree Admission Requirements:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>To enroll in Bachelor\'s degree programs at Horizon College, candidates are required to have secured a minimum of 55% marks in their FSC (Intermediate) exams. This criterion signifies the college\'s commitment to accepting students who have a strong grasp of foundational subjects, ensuring they are well-prepared for higher education.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Admission Process:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Prospective students have the flexibility to apply for admission to Horizon College through both online and offline modes. The college has designed an accessible and convenient application process to cater to the preferences of a diverse pool of applicants.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Online Application:</strong></p>\r\n<p>The online admission process allows candidates to submit their applications electronically through the college\'s official website. This method streamlines the application procedure, enabling students to fill out forms, upload necessary documents, and track their application status from the comfort of their homes.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Offline Application:</strong></p>\r\n<p>For individuals who prefer a traditional approach, Horizon College also accepts admission applications through offline channels. Applicants can obtain physical application forms from the college\'s admission office or designated centers, fill them out manually, and submit the completed forms along with the required documents in person.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Conclusion:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Horizon College in Chakwal maintains a stringent yet fair set of admission requirements aimed at selecting candidates who demonstrate academic promise and dedication to their studies. By setting specific benchmarks for FSC and Bachelor\'s degree programs, the college ensures that admitted students possess the foundational knowledge necessary to excel in their chosen fields. Additionally, the option to apply online or offline caters to the varying preferences of prospective students, ensuring accessibility and convenience in the admission process.</p>\r\n<p>&nbsp;</p>\r\n<p>For those aspiring to join Horizon College, meeting these admission criteria serves as the first step towards a promising academic journey within an institution committed to fostering excellence and scholarly growth.</p>', NULL, NULL, NULL, 1, '2023-08-24 16:05:03', '2023-11-24 01:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `basic_salary` double(10,2) NOT NULL DEFAULT 0.00,
  `salary_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 Fixed & 2 Hourly',
  `total_earning` double(10,2) NOT NULL,
  `total_allowance` double(10,2) NOT NULL DEFAULT 0.00,
  `bonus` double(10,2) NOT NULL DEFAULT 0.00,
  `gross_salary` double(10,2) NOT NULL,
  `total_deduction` double(10,2) NOT NULL,
  `tax` double(10,2) NOT NULL DEFAULT 0.00,
  `net_salary` double(10,2) NOT NULL,
  `salary_month` date NOT NULL,
  `pay_date` date DEFAULT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 Unpaid, 1 Paid',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `user_id`, `basic_salary`, `salary_type`, `total_earning`, `total_allowance`, `bonus`, `gross_salary`, `total_deduction`, `tax`, `net_salary`, `salary_month`, `pay_date`, `payment_method`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 40000.00, 1, 15484.00, 2000.00, 0.00, 15984.00, 1500.00, 1099.00, 14886.00, '2022-10-01', '2023-02-13', 3, NULL, 1, 1, 1, '2022-10-03 15:35:22', '2023-02-13 12:02:40'),
(2, 6, 40000.00, 1, 20645.00, 3500.00, 0.00, 22945.00, 1200.00, 2692.00, 20254.00, '2022-10-01', NULL, NULL, NULL, 0, 1, NULL, '2022-10-03 15:35:34', '2023-02-13 12:00:30'),
(3, 7, 38000.00, 1, 14710.00, 5000.00, 0.00, 19410.00, 300.00, 1441.00, 17969.00, '2022-10-01', '2023-02-13', 5, NULL, 1, 1, 1, '2022-10-03 15:36:45', '2023-02-13 12:02:49'),
(4, 8, 35000.00, 1, 15806.00, 2500.00, 0.00, 17106.00, 1200.00, 1211.00, 15896.00, '2022-10-01', NULL, NULL, NULL, 0, 1, 1, '2022-10-03 15:37:27', '2023-02-13 12:01:32'),
(5, 3, 300.00, 2, 3000.00, 2500.00, 0.00, 4300.00, 1200.00, 0.00, 4300.00, '2022-10-01', '2023-02-13', 2, NULL, 1, 1, 1, '2022-10-03 15:44:50', '2023-02-13 12:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_details`
--

CREATE TABLE `payroll_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payroll_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Deduction, 1 Allowance',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_details`
--

INSERT INTO `payroll_details` (`id`, `payroll_id`, `title`, `amount`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Eid Bonus', 2000.00, 1, NULL, NULL, '2023-02-13 12:00:01', '2023-02-13 12:00:01'),
(2, 1, 'Lunch', 1500.00, 0, NULL, NULL, '2023-02-13 12:00:01', '2023-02-13 12:00:01'),
(3, 2, 'Eid Bonus', 3500.00, 1, NULL, NULL, '2023-02-13 12:00:30', '2023-02-13 12:00:30'),
(4, 2, 'Lunch', 1200.00, 0, NULL, NULL, '2023-02-13 12:00:30', '2023-02-13 12:00:30'),
(5, 3, 'Bonus', 5000.00, 1, NULL, NULL, '2023-02-13 12:00:59', '2023-02-13 12:00:59'),
(6, 3, 'Snaks', 300.00, 0, NULL, NULL, '2023-02-13 12:00:59', '2023-02-13 12:00:59'),
(7, 4, 'Transport', 2500.00, 1, NULL, NULL, '2023-02-13 12:01:32', '2023-02-13 12:01:32'),
(8, 4, 'Late', 1200.00, 0, NULL, NULL, '2023-02-13 12:01:32', '2023-02-13 12:01:32'),
(9, 5, 'Eid Bonus', 2500.00, 1, NULL, NULL, '2023-02-13 12:02:07', '2023-02-13 12:02:07'),
(10, 5, 'Lunch', 1200.00, 0, NULL, NULL, '2023-02-13 12:02:07', '2023-02-13 12:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `group` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group`, `title`, `guard_name`, `created_at`, `updated_at`) VALUES
(1068, 'application-view', 'Application', 'View', 'web', NULL, NULL),
(1069, 'application-create', 'Application', 'Admission', 'web', NULL, NULL),
(1070, 'application-edit', 'Application', 'Action', 'web', NULL, NULL),
(1071, 'application-delete', 'Application', 'Delete', 'web', NULL, NULL),
(1072, 'student-view', 'Student', 'View', 'web', NULL, NULL),
(1073, 'student-create', 'Student', 'Create', 'web', NULL, NULL),
(1074, 'student-edit', 'Student', 'Edit', 'web', NULL, NULL),
(1075, 'student-delete', 'Student', 'Delete', 'web', NULL, NULL),
(1076, 'student-import', 'Student', 'Import', 'web', NULL, NULL),
(1077, 'student-password-print', 'Student', 'Password Print', 'web', NULL, NULL),
(1078, 'student-password-change', 'Student', 'Password Change', 'web', NULL, NULL),
(1079, 'student-card', 'Student', 'ID Card', 'web', NULL, NULL),
(1080, 'id-card-setting-view', 'ID Card', 'Setting', 'web', NULL, NULL),
(1081, 'student-transfer-in-view', 'Student Transfer In', 'View', 'web', NULL, NULL),
(1082, 'student-transfer-in-create', 'Student Transfer In', 'Transfer', 'web', NULL, NULL),
(1083, 'student-transfer-in-edit', 'Student Transfer In', 'Edit', 'web', NULL, NULL),
(1084, 'student-transfer-out-view', 'Student Transfer Out', 'View', 'web', NULL, NULL),
(1085, 'student-transfer-out-create', 'Student Transfer Out', 'Transfer', 'web', NULL, NULL),
(1086, 'student-transfer-out-edit', 'Student Transfer Out', 'Edit', 'web', NULL, NULL),
(1087, 'status-type-view', 'Status Type', 'View', 'web', NULL, NULL),
(1088, 'status-type-create', 'Status Type', 'Create', 'web', NULL, NULL),
(1089, 'status-type-edit', 'Status Type', 'Edit', 'web', NULL, NULL),
(1090, 'status-type-delete', 'Status Type', 'Delete', 'web', NULL, NULL),
(1091, 'student-attendance-action', 'Student Attendance', 'Manage', 'web', NULL, NULL),
(1092, 'student-attendance-report', 'Student Attendance', 'Report', 'web', NULL, NULL),
(1093, 'student-attendance-import', 'Student Attendance', 'Import', 'web', NULL, NULL),
(1094, 'student-leave-manage-view', 'Student Leave Manage', 'View', 'web', NULL, NULL),
(1095, 'student-leave-manage-edit', 'Student Leave Manage', 'Action', 'web', NULL, NULL),
(1096, 'student-leave-manage-delete', 'Student Leave Manage', 'Delete', 'web', NULL, NULL),
(1097, 'student-note-view', 'Student Note', 'View', 'web', NULL, NULL),
(1098, 'student-note-create', 'Student Note', 'Create', 'web', NULL, NULL),
(1099, 'student-note-edit', 'Student Note', 'Edit', 'web', NULL, NULL),
(1100, 'student-note-delete', 'Student Note', 'Delete', 'web', NULL, NULL),
(1101, 'student-enroll-single', 'Student Enroll', 'Single Enroll', 'web', NULL, NULL),
(1102, 'student-enroll-group', 'Student Enroll', 'Group Enroll', 'web', NULL, NULL),
(1103, 'student-enroll-adddrop', 'Student Enroll', 'Course Add Drop', 'web', NULL, NULL),
(1104, 'student-enroll-complete', 'Student Enroll', 'Course Complete', 'web', NULL, NULL),
(1105, 'student-enroll-alumni', 'Student Enroll', 'Student Alumni', 'web', NULL, NULL),
(1106, 'faculty-view', 'Faculty', 'View', 'web', NULL, NULL),
(1107, 'faculty-create', 'Faculty', 'Create', 'web', NULL, NULL),
(1108, 'faculty-edit', 'Faculty', 'Edit', 'web', NULL, NULL),
(1109, 'faculty-delete', 'Faculty', 'Delete', 'web', NULL, NULL),
(1110, 'program-view', 'Program', 'View', 'web', NULL, NULL),
(1111, 'program-create', 'Program', 'Create', 'web', NULL, NULL),
(1112, 'program-edit', 'Program', 'Edit', 'web', NULL, NULL),
(1113, 'program-delete', 'Program', 'Delete', 'web', NULL, NULL),
(1114, 'batch-view', 'Batch', 'View', 'web', NULL, NULL),
(1115, 'batch-create', 'Batch', 'Create', 'web', NULL, NULL),
(1116, 'batch-edit', 'Batch', 'Edit', 'web', NULL, NULL),
(1117, 'batch-delete', 'Batch', 'Delete', 'web', NULL, NULL),
(1118, 'session-view', 'Session', 'View', 'web', NULL, NULL),
(1119, 'session-create', 'Session', 'Create', 'web', NULL, NULL),
(1120, 'session-edit', 'Session', 'Edit', 'web', NULL, NULL),
(1121, 'session-delete', 'Session', 'Delete', 'web', NULL, NULL),
(1122, 'semester-view', 'Semester', 'View', 'web', NULL, NULL),
(1123, 'semester-create', 'Semester', 'Create', 'web', NULL, NULL),
(1124, 'semester-edit', 'Semester', 'Edit', 'web', NULL, NULL),
(1125, 'semester-delete', 'Semester', 'Delete', 'web', NULL, NULL),
(1126, 'section-view', 'Section', 'View', 'web', NULL, NULL),
(1127, 'section-create', 'Section', 'Create', 'web', NULL, NULL),
(1128, 'section-edit', 'Section', 'Edit', 'web', NULL, NULL),
(1129, 'section-delete', 'Section', 'Delete', 'web', NULL, NULL),
(1130, 'class-room-view', 'Class Room', 'View', 'web', NULL, NULL),
(1131, 'class-room-create', 'Class Room', 'Create', 'web', NULL, NULL),
(1132, 'class-room-edit', 'Class Room', 'Edit', 'web', NULL, NULL),
(1133, 'class-room-delete', 'Class Room', 'Delete', 'web', NULL, NULL),
(1134, 'subject-view', 'Course', 'View', 'web', NULL, NULL),
(1135, 'subject-create', 'Course', 'Create', 'web', NULL, NULL),
(1136, 'subject-edit', 'Course', 'Edit', 'web', NULL, NULL),
(1137, 'subject-delete', 'Course', 'Delete', 'web', NULL, NULL),
(1138, 'subject-import', 'Course', 'Import', 'web', NULL, NULL),
(1139, 'enroll-subject-view', 'Enroll Course', 'View', 'web', NULL, NULL),
(1140, 'enroll-subject-create', 'Enroll Course', 'Create', 'web', NULL, NULL),
(1141, 'enroll-subject-edit', 'Enroll Course', 'Edit', 'web', NULL, NULL),
(1142, 'enroll-subject-delete', 'Enroll Course', 'Delete', 'web', NULL, NULL),
(1143, 'class-routine-view', 'Class Routine', 'View', 'web', NULL, NULL),
(1144, 'class-routine-create', 'Class Routine', 'Manage', 'web', NULL, NULL),
(1145, 'class-routine-print', 'Class Routine', 'Print', 'web', NULL, NULL),
(1146, 'exam-routine-view', 'Exam Routine', 'View', 'web', NULL, NULL),
(1147, 'exam-routine-create', 'Exam Routine', 'Create', 'web', NULL, NULL),
(1148, 'exam-routine-edit', 'Exam Routine', 'Edit', 'web', NULL, NULL),
(1149, 'exam-routine-delete', 'Exam Routine', 'Delete', 'web', NULL, NULL),
(1150, 'exam-routine-print', 'Exam Routine', 'Print', 'web', NULL, NULL),
(1151, 'class-routine-teacher', 'Teacher Routine', 'View', 'web', NULL, NULL),
(1152, 'routine-setting-class', 'Routine Setting', 'Class Routine', 'web', NULL, NULL),
(1153, 'routine-setting-exam', 'Routine Setting', 'Exam Routine', 'web', NULL, NULL),
(1154, 'exam-attendance', 'Exam', 'Attendance', 'web', NULL, NULL),
(1155, 'exam-marking', 'Exam', 'Mark Ledger', 'web', NULL, NULL),
(1156, 'exam-result', 'Exam', 'Result', 'web', NULL, NULL),
(1157, 'exam-import', 'Exam', 'Import', 'web', NULL, NULL),
(1158, 'subject-marking', 'Course Final', 'Mark Ledger', 'web', NULL, NULL),
(1159, 'subject-result', 'Course Final', 'Result', 'web', NULL, NULL),
(1160, 'grade-view', 'Grade', 'View', 'web', NULL, NULL),
(1161, 'grade-create', 'Grade', 'Create', 'web', NULL, NULL),
(1162, 'grade-edit', 'Grade', 'Edit', 'web', NULL, NULL),
(1163, 'grade-delete', 'Grade', 'Delete', 'web', NULL, NULL),
(1164, 'exam-type-view', 'Exam Type', 'View', 'web', NULL, NULL),
(1165, 'exam-type-create', 'Exam Type', 'Create', 'web', NULL, NULL),
(1166, 'exam-type-edit', 'Exam Type', 'Edit', 'web', NULL, NULL),
(1167, 'exam-type-delete', 'Exam Type', 'Delete', 'web', NULL, NULL),
(1168, 'admit-card-view', 'Admit Card', 'View', 'web', NULL, NULL),
(1169, 'admit-card-print', 'Admit Card', 'Print', 'web', NULL, NULL),
(1170, 'admit-card-download', 'Admit Card', 'Download', 'web', NULL, NULL),
(1171, 'admit-setting-view', 'Admit Card', 'Setting', 'web', NULL, NULL),
(1172, 'result-contribution-view', 'Contribution', 'Setting', 'web', NULL, NULL),
(1173, 'assignment-view', 'Assignment', 'View', 'web', NULL, NULL),
(1174, 'assignment-create', 'Assignment', 'Create', 'web', NULL, NULL),
(1175, 'assignment-edit', 'Assignment', 'Edit', 'web', NULL, NULL),
(1176, 'assignment-delete', 'Assignment', 'Delete', 'web', NULL, NULL),
(1177, 'assignment-marking', 'Assignment', 'Mark Ledger', 'web', NULL, NULL),
(1178, 'content-view', 'Content', 'View', 'web', NULL, NULL),
(1179, 'content-create', 'Content', 'Create', 'web', NULL, NULL),
(1180, 'content-edit', 'Content', 'Edit', 'web', NULL, NULL),
(1181, 'content-delete', 'Content', 'Delete', 'web', NULL, NULL),
(1182, 'content-type-view', 'Content Type', 'View', 'web', NULL, NULL),
(1183, 'content-type-create', 'Content Type', 'Create', 'web', NULL, NULL),
(1184, 'content-type-edit', 'Content Type', 'Edit', 'web', NULL, NULL),
(1185, 'content-type-delete', 'Content Type', 'Delete', 'web', NULL, NULL),
(1186, 'fees-student-due', 'Student Fees', 'Fees Due', 'web', NULL, NULL),
(1187, 'fees-student-quick-assign', 'Student Fees', 'Quick Assign', 'web', NULL, NULL),
(1188, 'fees-student-quick-received', 'Student Fees', 'Quick Received', 'web', NULL, NULL),
(1189, 'fees-student-report', 'Student Fees', 'Report', 'web', NULL, NULL),
(1190, 'fees-student-action', 'Student Fees', 'Action', 'web', NULL, NULL),
(1191, 'fees-student-print', 'Student Fees', 'Print', 'web', NULL, NULL),
(1192, 'fees-receipt-view', 'Fees Receipt', 'Setting', 'web', NULL, NULL),
(1193, 'fees-master-view', 'Fees Master', 'View', 'web', NULL, NULL),
(1194, 'fees-master-create', 'Fees Master', 'Manage', 'web', NULL, NULL),
(1195, 'fees-category-view', 'Fees Type', 'View', 'web', NULL, NULL),
(1196, 'fees-category-create', 'Fees Type', 'Create', 'web', NULL, NULL),
(1197, 'fees-category-edit', 'Fees Type', 'Edit', 'web', NULL, NULL),
(1198, 'fees-category-delete', 'Fees Type', 'Delete', 'web', NULL, NULL),
(1199, 'fees-discount-view', 'Fees Discount', 'View', 'web', NULL, NULL),
(1200, 'fees-discount-create', 'Fees Discount', 'Create', 'web', NULL, NULL),
(1201, 'fees-discount-edit', 'Fees Discount', 'Edit', 'web', NULL, NULL),
(1202, 'fees-discount-delete', 'Fees Discount', 'Delete', 'web', NULL, NULL),
(1203, 'fees-fine-view', 'Fees Fine', 'View', 'web', NULL, NULL),
(1204, 'fees-fine-create', 'Fees Fine', 'Create', 'web', NULL, NULL),
(1205, 'fees-fine-edit', 'Fees Fine', 'Edit', 'web', NULL, NULL),
(1206, 'fees-fine-delete', 'Fees Fine', 'Delete', 'web', NULL, NULL),
(1207, 'user-view', 'Staff', 'View', 'web', NULL, NULL),
(1208, 'user-create', 'Staff', 'Create', 'web', NULL, NULL),
(1209, 'user-edit', 'Staff', 'Edit', 'web', NULL, NULL),
(1210, 'user-delete', 'Staff', 'Delete', 'web', NULL, NULL),
(1211, 'user-import', 'Staff', 'Import', 'web', NULL, NULL),
(1212, 'user-password-change', 'Staff', 'Password Change', 'web', NULL, NULL),
(1213, 'staff-daily-attendance-action', 'Staff Daily Attendance', 'Manage', 'web', NULL, NULL),
(1214, 'staff-daily-attendance-report', 'Staff Daily Attendance', 'Report', 'web', NULL, NULL),
(1215, 'staff-hourly-attendance-action', 'Staff Hourly Attendance', 'Manage', 'web', NULL, NULL),
(1216, 'staff-hourly-attendance-report', 'Staff Hourly Attendance', 'Report', 'web', NULL, NULL),
(1217, 'staff-note-view', 'Staff Note', 'View', 'web', NULL, NULL),
(1218, 'staff-note-create', 'Staff Note', 'Create', 'web', NULL, NULL),
(1219, 'staff-note-edit', 'Staff Note', 'Edit', 'web', NULL, NULL),
(1220, 'staff-note-delete', 'Staff Note', 'Delete', 'web', NULL, NULL),
(1221, 'payroll-view', 'Payroll', 'View', 'web', NULL, NULL),
(1222, 'payroll-action', 'Payroll', 'Action', 'web', NULL, NULL),
(1223, 'payroll-report', 'Payroll', 'Report', 'web', NULL, NULL),
(1224, 'payroll-print', 'Payroll', 'Print', 'web', NULL, NULL),
(1225, 'pay-slip-setting-view', 'Pay Slip', 'Setting', 'web', NULL, NULL),
(1226, 'staff-leave-manage-view', 'Staff Leave Manage', 'View', 'web', NULL, NULL),
(1227, 'staff-leave-manage-edit', 'Staff Leave Manage', 'Action', 'web', NULL, NULL),
(1228, 'staff-leave-manage-delete', 'Staff Leave Manage', 'Delete', 'web', NULL, NULL),
(1229, 'staff-leave-view', 'Staff Apply Leave', 'View', 'web', NULL, NULL),
(1230, 'staff-leave-create', 'Staff Apply Leave', 'Create', 'web', NULL, NULL),
(1231, 'staff-leave-delete', 'Staff Apply Leave', 'Delete', 'web', NULL, NULL),
(1232, 'leave-type-view', 'Leave Type', 'View', 'web', NULL, NULL),
(1233, 'leave-type-create', 'Leave Type', 'Create', 'web', NULL, NULL),
(1234, 'leave-type-edit', 'Leave Type', 'Edit', 'web', NULL, NULL),
(1235, 'leave-type-delete', 'Leave Type', 'Delete', 'web', NULL, NULL),
(1236, 'work-shift-type-view', 'Work Shift Type', 'View', 'web', NULL, NULL),
(1237, 'work-shift-type-create', 'Work Shift Type', 'Create', 'web', NULL, NULL),
(1238, 'work-shift-type-edit', 'Work Shift Type', 'Edit', 'web', NULL, NULL),
(1239, 'work-shift-type-delete', 'Work Shift Type', 'Delete', 'web', NULL, NULL),
(1240, 'tax-setting-view', 'Tax Setting', 'View', 'web', NULL, NULL),
(1241, 'tax-setting-create', 'Tax Setting', 'Create', 'web', NULL, NULL),
(1242, 'tax-setting-edit', 'Tax Setting', 'Edit', 'web', NULL, NULL),
(1243, 'tax-setting-delete', 'Tax Setting', 'Delete', 'web', NULL, NULL),
(1244, 'designation-view', 'Designation', 'View', 'web', NULL, NULL),
(1245, 'designation-create', 'Designation', 'Create', 'web', NULL, NULL),
(1246, 'designation-edit', 'Designation', 'Edit', 'web', NULL, NULL),
(1247, 'designation-delete', 'Designation', 'Delete', 'web', NULL, NULL),
(1248, 'department-view', 'Department', 'View', 'web', NULL, NULL),
(1249, 'department-create', 'Department', 'Create', 'web', NULL, NULL),
(1250, 'department-edit', 'Department', 'Edit', 'web', NULL, NULL),
(1251, 'department-delete', 'Department', 'Delete', 'web', NULL, NULL),
(1252, 'income-view', 'Income', 'View', 'web', NULL, NULL),
(1253, 'income-create', 'Income', 'Create', 'web', NULL, NULL),
(1254, 'income-edit', 'Income', 'Edit', 'web', NULL, NULL),
(1255, 'income-delete', 'Income', 'Delete', 'web', NULL, NULL),
(1256, 'income-category-view', 'Income Category', 'View', 'web', NULL, NULL),
(1257, 'income-category-create', 'Income Category', 'Create', 'web', NULL, NULL),
(1258, 'income-category-edit', 'Income Category', 'Edit', 'web', NULL, NULL),
(1259, 'income-category-delete', 'Income Category', 'Delete', 'web', NULL, NULL),
(1260, 'expense-view', 'Expense', 'View', 'web', NULL, NULL),
(1261, 'expense-create', 'Expense', 'Create', 'web', NULL, NULL),
(1262, 'expense-edit', 'Expense', 'Edit', 'web', NULL, NULL),
(1263, 'expense-delete', 'Expense', 'Delete', 'web', NULL, NULL),
(1264, 'expense-category-view', 'Expense Category', 'View', 'web', NULL, NULL),
(1265, 'expense-category-create', 'Expense Category', 'Create', 'web', NULL, NULL),
(1266, 'expense-category-edit', 'Expense Category', 'Edit', 'web', NULL, NULL),
(1267, 'expense-category-delete', 'Expense Category', 'Delete', 'web', NULL, NULL),
(1268, 'outcome-view', 'Outcome Overview', 'View', 'web', NULL, NULL),
(1269, 'email-notify-view', 'Send Email', 'View', 'web', NULL, NULL),
(1270, 'email-notify-create', 'Send Email', 'Send', 'web', NULL, NULL),
(1271, 'email-notify-delete', 'Send Email', 'Delete', 'web', NULL, NULL),
(1272, 'sms-notify-view', 'Send SMS', 'View', 'web', NULL, NULL),
(1273, 'sms-notify-create', 'Send SMS', 'Send', 'web', NULL, NULL),
(1274, 'sms-notify-delete', 'Send SMS', 'Delete', 'web', NULL, NULL),
(1275, 'event-view', 'Event', 'View', 'web', NULL, NULL),
(1276, 'event-create', 'Event', 'Create', 'web', NULL, NULL),
(1277, 'event-edit', 'Event', 'Edit', 'web', NULL, NULL),
(1278, 'event-delete', 'Event', 'Delete', 'web', NULL, NULL),
(1279, 'event-calendar', 'Academic Calendar', 'View', 'web', NULL, NULL),
(1280, 'notice-view', 'Notice', 'View', 'web', NULL, NULL),
(1281, 'notice-create', 'Notice', 'Create', 'web', NULL, NULL),
(1282, 'notice-edit', 'Notice', 'Edit', 'web', NULL, NULL),
(1283, 'notice-delete', 'Notice', 'Delete', 'web', NULL, NULL),
(1284, 'notice-category-view', 'Notice Category', 'View', 'web', NULL, NULL),
(1285, 'notice-category-create', 'Notice Category', 'Create', 'web', NULL, NULL),
(1286, 'notice-category-edit', 'Notice Category', 'Edit', 'web', NULL, NULL),
(1287, 'notice-category-delete', 'Notice Category', 'Delete', 'web', NULL, NULL),
(1288, 'book-issue-return-view', 'Book Issue Return', 'View', 'web', NULL, NULL),
(1289, 'book-issue-return-action', 'Book Issue Return', 'Action', 'web', NULL, NULL),
(1290, 'book-issue-return-delete', 'Book Issue Return', 'Delete', 'web', NULL, NULL),
(1291, 'book-issue-return-over', 'Book Issue Return', 'Date Over', 'web', NULL, NULL),
(1292, 'library-member-view', 'Library Member', 'View', 'web', NULL, NULL),
(1293, 'library-member-create', 'Library Member', 'Create', 'web', NULL, NULL),
(1294, 'library-member-edit', 'Library Member', 'Edit', 'web', NULL, NULL),
(1295, 'library-member-delete', 'Library Member', 'Delete', 'web', NULL, NULL),
(1296, 'library-member-card', 'Library Member', 'Card Print', 'web', NULL, NULL),
(1297, 'library-card-setting-view', 'Library Card', 'Setting', 'web', NULL, NULL),
(1298, 'book-view', 'Book', 'View', 'web', NULL, NULL),
(1299, 'book-create', 'Book', 'Create', 'web', NULL, NULL),
(1300, 'book-edit', 'Book', 'Edit', 'web', NULL, NULL),
(1301, 'book-delete', 'Book', 'Delete', 'web', NULL, NULL),
(1302, 'book-import', 'Book', 'Import', 'web', NULL, NULL),
(1303, 'book-print', 'Book', 'Token Print', 'web', NULL, NULL),
(1304, 'book-request-view', 'Book Request', 'View', 'web', NULL, NULL),
(1305, 'book-request-create', 'Book Request', 'Create', 'web', NULL, NULL),
(1306, 'book-request-edit', 'Book Request', 'Edit', 'web', NULL, NULL),
(1307, 'book-request-delete', 'Book Request', 'Delete', 'web', NULL, NULL),
(1308, 'book-category-view', 'Book Category', 'View', 'web', NULL, NULL),
(1309, 'book-category-create', 'Book Category', 'Create', 'web', NULL, NULL),
(1310, 'book-category-edit', 'Book Category', 'Edit', 'web', NULL, NULL),
(1311, 'book-category-delete', 'Book Category', 'Delete', 'web', NULL, NULL),
(1312, 'item-issue-view', 'Item Issue', 'View', 'web', NULL, NULL),
(1313, 'item-issue-action', 'Item Issue', 'Action', 'web', NULL, NULL),
(1314, 'item-issue-delete', 'Item Issue', 'Delete', 'web', NULL, NULL),
(1315, 'item-stock-view', 'Item Stock', 'View', 'web', NULL, NULL),
(1316, 'item-stock-create', 'Item Stock', 'Create', 'web', NULL, NULL),
(1317, 'item-stock-edit', 'Item Stock', 'Edit', 'web', NULL, NULL),
(1318, 'item-stock-delete', 'Item Stock', 'Delete', 'web', NULL, NULL),
(1319, 'item-view', 'Item List', 'View', 'web', NULL, NULL),
(1320, 'item-create', 'Item List', 'Create', 'web', NULL, NULL),
(1321, 'item-edit', 'Item List', 'Edit', 'web', NULL, NULL),
(1322, 'item-delete', 'Item List', 'Delete', 'web', NULL, NULL),
(1323, 'item-store-view', 'Item Store', 'View', 'web', NULL, NULL),
(1324, 'item-store-create', 'Item Store', 'Create', 'web', NULL, NULL),
(1325, 'item-store-edit', 'Item Store', 'Edit', 'web', NULL, NULL),
(1326, 'item-store-delete', 'Item Store', 'Delete', 'web', NULL, NULL),
(1327, 'item-supplier-view', 'Item Supplier', 'View', 'web', NULL, NULL),
(1328, 'item-supplier-create', 'Item Supplier', 'Create', 'web', NULL, NULL),
(1329, 'item-supplier-edit', 'Item Supplier', 'Edit', 'web', NULL, NULL),
(1330, 'item-supplier-delete', 'Item Supplier', 'Delete', 'web', NULL, NULL),
(1331, 'item-category-view', 'Item Category', 'View', 'web', NULL, NULL),
(1332, 'item-category-create', 'Item Category', 'Create', 'web', NULL, NULL),
(1333, 'item-category-edit', 'Item Category', 'Edit', 'web', NULL, NULL),
(1334, 'item-category-delete', 'Item Category', 'Delete', 'web', NULL, NULL),
(1335, 'hostel-member-view', 'Hostel Member', 'View', 'web', NULL, NULL),
(1336, 'hostel-member-create', 'Hostel Member', 'Manage', 'web', NULL, NULL),
(1337, 'hostel-room-view', 'Hostel Room', 'View', 'web', NULL, NULL),
(1338, 'hostel-room-create', 'Hostel Room', 'Create', 'web', NULL, NULL),
(1339, 'hostel-room-edit', 'Hostel Room', 'Edit', 'web', NULL, NULL),
(1340, 'hostel-room-delete', 'Hostel Room', 'Delete', 'web', NULL, NULL),
(1341, 'hostel-view', 'Hostel', 'View', 'web', NULL, NULL),
(1342, 'hostel-create', 'Hostel', 'Create', 'web', NULL, NULL),
(1343, 'hostel-edit', 'Hostel', 'Edit', 'web', NULL, NULL),
(1344, 'hostel-delete', 'Hostel', 'Delete', 'web', NULL, NULL),
(1345, 'room-type-view', 'Room Type', 'View', 'web', NULL, NULL),
(1346, 'room-type-create', 'Room Type', 'Create', 'web', NULL, NULL),
(1347, 'room-type-edit', 'Room Type', 'Edit', 'web', NULL, NULL),
(1348, 'room-type-delete', 'Room Type', 'Delete', 'web', NULL, NULL),
(1349, 'transport-member-view', 'Transport Member', 'View', 'web', NULL, NULL),
(1350, 'transport-member-create', 'Transport Member', 'Manage', 'web', NULL, NULL),
(1351, 'transport-vehicle-view', 'Transport Vehicle', 'View', 'web', NULL, NULL),
(1352, 'transport-vehicle-create', 'Transport Vehicle', 'Create', 'web', NULL, NULL),
(1353, 'transport-vehicle-edit', 'Transport Vehicle', 'Edit', 'web', NULL, NULL),
(1354, 'transport-vehicle-delete', 'Transport Vehicle', 'Delete', 'web', NULL, NULL),
(1355, 'transport-route-view', 'Transport Route', 'View', 'web', NULL, NULL),
(1356, 'transport-route-create', 'Transport Route', 'Create', 'web', NULL, NULL),
(1357, 'transport-route-edit', 'Transport Route', 'Edit', 'web', NULL, NULL),
(1358, 'transport-route-delete', 'Transport Route', 'Delete', 'web', NULL, NULL),
(1359, 'visitor-view', 'Visitor', 'View', 'web', NULL, NULL),
(1360, 'visitor-create', 'Visitor', 'Create', 'web', NULL, NULL),
(1361, 'visitor-edit', 'Visitor', 'Edit', 'web', NULL, NULL),
(1362, 'visitor-delete', 'Visitor', 'Delete', 'web', NULL, NULL),
(1363, 'visitor-print', 'Visitor', 'Token Print', 'web', NULL, NULL),
(1364, 'visit-purpose-view', 'Visit Purpose', 'View', 'web', NULL, NULL),
(1365, 'visit-purpose-create', 'Visit Purpose', 'Create', 'web', NULL, NULL),
(1366, 'visit-purpose-edit', 'Visit Purpose', 'Edit', 'web', NULL, NULL),
(1367, 'visit-purpose-delete', 'Visit Purpose', 'Delete', 'web', NULL, NULL),
(1368, 'visitor-token-setting-view', 'Visitor Token', 'Setting', 'web', NULL, NULL),
(1369, 'phone-log-view', 'Phone Log', 'View', 'web', NULL, NULL),
(1370, 'phone-log-create', 'Phone Log', 'Create', 'web', NULL, NULL),
(1371, 'phone-log-edit', 'Phone Log', 'Edit', 'web', NULL, NULL),
(1372, 'phone-log-delete', 'Phone Log', 'Delete', 'web', NULL, NULL),
(1373, 'enquiry-view', 'Enquiry', 'View', 'web', NULL, NULL),
(1374, 'enquiry-create', 'Enquiry', 'Create', 'web', NULL, NULL),
(1375, 'enquiry-edit', 'Enquiry', 'Edit', 'web', NULL, NULL),
(1376, 'enquiry-delete', 'Enquiry', 'Delete', 'web', NULL, NULL),
(1377, 'enquiry-reference-view', 'Enquiry Reference', 'View', 'web', NULL, NULL),
(1378, 'enquiry-reference-create', 'Enquiry Reference', 'Create', 'web', NULL, NULL),
(1379, 'enquiry-reference-edit', 'Enquiry Reference', 'Edit', 'web', NULL, NULL),
(1380, 'enquiry-reference-delete', 'Enquiry Reference', 'Delete', 'web', NULL, NULL),
(1381, 'enquiry-source-view', 'Enquiry Source', 'View', 'web', NULL, NULL),
(1382, 'enquiry-source-create', 'Enquiry Source', 'Create', 'web', NULL, NULL),
(1383, 'enquiry-source-edit', 'Enquiry Source', 'Edit', 'web', NULL, NULL),
(1384, 'enquiry-source-delete', 'Enquiry Source', 'Delete', 'web', NULL, NULL),
(1385, 'complain-view', 'Complain', 'View', 'web', NULL, NULL),
(1386, 'complain-create', 'Complain', 'Create', 'web', NULL, NULL),
(1387, 'complain-edit', 'Complain', 'Edit', 'web', NULL, NULL),
(1388, 'complain-delete', 'Complain', 'Delete', 'web', NULL, NULL),
(1389, 'complain-type-view', 'Complain Type', 'View', 'web', NULL, NULL),
(1390, 'complain-type-create', 'Complain Type', 'Create', 'web', NULL, NULL),
(1391, 'complain-type-edit', 'Complain Type', 'Edit', 'web', NULL, NULL),
(1392, 'complain-type-delete', 'Complain Type', 'Delete', 'web', NULL, NULL),
(1393, 'complain-source-view', 'Complain Source', 'View', 'web', NULL, NULL),
(1394, 'complain-source-create', 'Complain Source', 'Create', 'web', NULL, NULL),
(1395, 'complain-source-edit', 'Complain Source', 'Edit', 'web', NULL, NULL),
(1396, 'complain-source-delete', 'Complain Source', 'Delete', 'web', NULL, NULL),
(1397, 'postal-exchange-view', 'Postal Exchange', 'View', 'web', NULL, NULL),
(1398, 'postal-exchange-create', 'Postal Exchange', 'Create', 'web', NULL, NULL),
(1399, 'postal-exchange-edit', 'Postal Exchange', 'Edit', 'web', NULL, NULL),
(1400, 'postal-exchange-delete', 'Postal Exchange', 'Delete', 'web', NULL, NULL),
(1401, 'postal-type-view', 'Postal Type', 'View', 'web', NULL, NULL),
(1402, 'postal-type-create', 'Postal Type', 'Create', 'web', NULL, NULL),
(1403, 'postal-type-edit', 'Postal Type', 'Edit', 'web', NULL, NULL),
(1404, 'postal-type-delete', 'Postal Type', 'Delete', 'web', NULL, NULL),
(1405, 'meeting-view', 'Meeting Schedule', 'View', 'web', NULL, NULL),
(1406, 'meeting-create', 'Meeting Schedule', 'Create', 'web', NULL, NULL),
(1407, 'meeting-edit', 'Meeting Schedule', 'Edit', 'web', NULL, NULL),
(1408, 'meeting-delete', 'Meeting Schedule', 'Delete', 'web', NULL, NULL),
(1409, 'meeting-type-view', 'Meeting Type', 'View', 'web', NULL, NULL),
(1410, 'meeting-type-create', 'Meeting Type', 'Create', 'web', NULL, NULL),
(1411, 'meeting-type-edit', 'Meeting Type', 'Edit', 'web', NULL, NULL),
(1412, 'meeting-type-delete', 'Meeting Type', 'Delete', 'web', NULL, NULL),
(1413, 'marksheet-view', 'Marksheet', 'View', 'web', NULL, NULL),
(1414, 'marksheet-print', 'Marksheet', 'Print', 'web', NULL, NULL),
(1415, 'marksheet-download', 'Marksheet', 'Download', 'web', NULL, NULL),
(1416, 'marksheet-setting-view', 'Marksheet', 'Setting', 'web', NULL, NULL),
(1417, 'certificate-view', 'Certificate', 'View', 'web', NULL, NULL),
(1418, 'certificate-create', 'Certificate', 'Genarate', 'web', NULL, NULL),
(1419, 'certificate-edit', 'Certificate', 'Edit', 'web', NULL, NULL),
(1420, 'certificate-print', 'Certificate', 'Print', 'web', NULL, NULL),
(1421, 'certificate-download', 'Certificate', 'Download', 'web', NULL, NULL),
(1422, 'certificate-template-view', 'Certificate Template', 'View', 'web', NULL, NULL),
(1423, 'certificate-template-create', 'Certificate Template', 'Create', 'web', NULL, NULL),
(1424, 'certificate-template-edit', 'Certificate Template', 'Edit', 'web', NULL, NULL),
(1425, 'certificate-template-delete', 'Certificate Template', 'Delete', 'web', NULL, NULL),
(1426, 'report-student', 'Reports', 'Student Progress', 'web', NULL, NULL),
(1427, 'report-subject', 'Reports', 'Course Students', 'web', NULL, NULL),
(1428, 'report-fees', 'Reports', 'Collected Fees', 'web', NULL, NULL),
(1429, 'report-payroll', 'Reports', 'Salary Paid', 'web', NULL, NULL),
(1430, 'report-leave', 'Reports', 'Staff Leaves', 'web', NULL, NULL),
(1431, 'report-income', 'Reports', 'Total Income', 'web', NULL, NULL),
(1432, 'report-expense', 'Reports', 'Total Expense', 'web', NULL, NULL),
(1433, 'report-library', 'Reports', 'Library History', 'web', NULL, NULL),
(1434, 'report-hostel', 'Reports', 'Hostel Members', 'web', NULL, NULL),
(1435, 'report-transport', 'Reports', 'Transport Members', 'web', NULL, NULL),
(1436, 'topbar-setting-view', 'Contact Setting', 'Manage', 'web', NULL, NULL),
(1437, 'social-setting-view', 'Social Setting', 'Manage', 'web', NULL, NULL),
(1438, 'slider-view', 'Slider', 'View', 'web', NULL, NULL),
(1439, 'slider-create', 'Slider', 'Create', 'web', NULL, NULL),
(1440, 'slider-edit', 'Slider', 'Edit', 'web', NULL, NULL),
(1441, 'slider-delete', 'Slider', 'Delete', 'web', NULL, NULL),
(1442, 'about-us-view', 'About Us', 'Manage', 'web', NULL, NULL),
(1443, 'feature-view', 'Feature', 'View', 'web', NULL, NULL),
(1444, 'feature-create', 'Feature', 'Create', 'web', NULL, NULL),
(1445, 'feature-edit', 'Feature', 'Edit', 'web', NULL, NULL),
(1446, 'feature-delete', 'Feature', 'Delete', 'web', NULL, NULL),
(1447, 'course-view', 'Course', 'View', 'web', NULL, NULL),
(1448, 'course-create', 'Course', 'Create', 'web', NULL, NULL),
(1449, 'course-edit', 'Course', 'Edit', 'web', NULL, NULL),
(1450, 'course-delete', 'Course', 'Delete', 'web', NULL, NULL),
(1451, 'web-event-view', 'Web Event', 'View', 'web', NULL, NULL),
(1452, 'web-event-create', 'Web Event', 'Create', 'web', NULL, NULL),
(1453, 'web-event-edit', 'Web Event', 'Edit', 'web', NULL, NULL),
(1454, 'web-event-delete', 'Web Event', 'Delete', 'web', NULL, NULL),
(1455, 'news-view', 'News', 'View', 'web', NULL, NULL),
(1456, 'news-create', 'News', 'Create', 'web', NULL, NULL),
(1457, 'news-edit', 'News', 'Edit', 'web', NULL, NULL),
(1458, 'news-delete', 'News', 'Delete', 'web', NULL, NULL),
(1459, 'gallery-view', 'Gallery', 'View', 'web', NULL, NULL),
(1460, 'gallery-create', 'Gallery', 'Create', 'web', NULL, NULL),
(1461, 'gallery-edit', 'Gallery', 'Edit', 'web', NULL, NULL),
(1462, 'gallery-delete', 'Gallery', 'Delete', 'web', NULL, NULL),
(1463, 'faq-view', 'Faq', 'View', 'web', NULL, NULL),
(1464, 'faq-create', 'Faq', 'Create', 'web', NULL, NULL),
(1465, 'faq-edit', 'Faq', 'Edit', 'web', NULL, NULL),
(1466, 'faq-delete', 'Faq', 'Delete', 'web', NULL, NULL),
(1467, 'testimonial-view', 'Testimonial', 'View', 'web', NULL, NULL),
(1468, 'testimonial-create', 'Testimonial', 'Create', 'web', NULL, NULL),
(1469, 'testimonial-edit', 'Testimonial', 'Edit', 'web', NULL, NULL),
(1470, 'testimonial-delete', 'Testimonial', 'Delete', 'web', NULL, NULL),
(1471, 'page-view', 'Footer Page', 'View', 'web', NULL, NULL),
(1472, 'page-create', 'Footer Page', 'Create', 'web', NULL, NULL),
(1473, 'page-edit', 'Footer Page', 'Edit', 'web', NULL, NULL),
(1474, 'page-delete', 'Footer Page', 'Delete', 'web', NULL, NULL),
(1475, 'call-to-action-view', 'Call To Action', 'Manage', 'web', NULL, NULL),
(1476, 'province-view', 'State', 'View', 'web', NULL, NULL),
(1477, 'province-create', 'State', 'Create', 'web', NULL, NULL),
(1478, 'province-edit', 'State', 'Edit', 'web', NULL, NULL),
(1479, 'province-delete', 'State', 'Delete', 'web', NULL, NULL),
(1480, 'district-view', 'District/City', 'View', 'web', NULL, NULL),
(1481, 'district-create', 'District/City', 'Create', 'web', NULL, NULL),
(1482, 'district-edit', 'District/City', 'Edit', 'web', NULL, NULL),
(1483, 'district-delete', 'District/City', 'Delete', 'web', NULL, NULL),
(1484, 'language-view', 'Language', 'View', 'web', NULL, NULL),
(1485, 'language-create', 'Language', 'Create', 'web', NULL, NULL),
(1486, 'language-edit', 'Language', 'Edit', 'web', NULL, NULL),
(1487, 'language-delete', 'Language', 'Delete', 'web', NULL, NULL),
(1488, 'translations-view', 'Translation', 'View', 'web', NULL, NULL),
(1489, 'translations-create', 'Translation', 'Create', 'web', NULL, NULL),
(1490, 'translations-delete', 'Translation', 'Delete', 'web', NULL, NULL),
(1491, 'setting-view', 'General Setting', 'Manage', 'web', NULL, NULL),
(1492, 'mail-setting-view', 'Mail Setting', 'Manage', 'web', NULL, NULL),
(1493, 'sms-setting-view', 'SMS Setting', 'Manage', 'web', NULL, NULL),
(1494, 'application-setting-view', 'Application Setting', 'Manage', 'web', NULL, NULL),
(1495, 'role-view', 'Role and Permissions', 'View', 'web', NULL, NULL),
(1496, 'role-create', 'Role and Permissions', 'Create', 'web', NULL, NULL),
(1497, 'role-edit', 'Role and Permissions', 'Edit', 'web', NULL, NULL),
(1498, 'role-delete', 'Role and Permissions', 'Delete', 'web', NULL, NULL),
(1499, 'field-staff', 'Field Setting', 'Staff', 'web', NULL, NULL),
(1500, 'field-student', 'Field Setting', 'Student', 'web', NULL, NULL),
(1501, 'field-application', 'Field Setting', 'Application', 'web', NULL, NULL),
(1502, 'student-panel-view', 'Student Panel', 'Manage', 'web', NULL, NULL),
(1503, 'profile-view', 'My Profile', 'View', 'web', NULL, NULL),
(1504, 'profile-edit', 'My Profile', 'Edit', 'web', NULL, NULL),
(1505, 'profile-account', 'My Profile', 'Account', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_logs`
--

CREATE TABLE `phone_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `follow_up_date` date DEFAULT NULL,
  `call_duration` varchar(191) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `call_type` int(11) NOT NULL COMMENT '1 Income & 2 Outgoing',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_logs`
--

INSERT INTO `phone_logs` (`id`, `name`, `phone`, `date`, `follow_up_date`, `call_duration`, `start_time`, `end_time`, `purpose`, `note`, `call_type`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Quon Sellers', '+1 (948) 556-2442', '2022-10-01', '2022-11-25', '2 min', NULL, NULL, 'Ratione excepturi qu', 'Minus maxime Nam mag', 1, 1, 1, NULL, '2022-10-01 12:17:13', '2022-10-01 12:17:13'),
(2, 'Tanya Grimes', '+1 (988) 107-4828', '2022-10-01', '2022-11-13', '3:50', NULL, NULL, 'Tempore sint est ne', 'Lorem omnis nostrum', 1, 1, 1, NULL, '2022-10-01 12:18:04', '2022-10-01 12:18:04'),
(3, 'Karyn Castillo', '+1 (923) 454-6055', '2021-12-18', '2022-10-09', '5 min', NULL, NULL, 'Et eos corrupti qui', 'Est eius doloremque', 1, 1, 1, NULL, '2022-10-01 12:18:59', '2022-10-01 12:18:59'),
(4, 'Quentin Alford', '+1 (628) 618-3668', '2022-07-20', '2022-11-18', '8:50', NULL, NULL, 'Velit omnis quas dis', 'Laboriosam et quide', 2, 1, 1, NULL, '2022-10-01 12:19:34', '2022-10-01 12:19:34'),
(5, 'Sasha Harper', '+1 (612) 725-1207', '2021-03-12', '2022-10-05', '6 min', NULL, NULL, 'Sint quas ullamco v', 'Architecto numquam q', 2, 1, 1, NULL, '2022-10-01 12:20:45', '2022-10-01 12:20:45'),
(6, 'Cleo Simpson', '+1 (305) 133-4681', '2022-05-28', NULL, NULL, NULL, NULL, 'Quos non maiores eos', 'Et obcaecati aut aut', 1, 1, 1, NULL, '2022-10-01 12:23:14', '2022-10-01 12:23:14'),
(7, 'Mukhtar Butt', '+92321434562', '2023-08-25', '2024-11-11', '3 minutes', '13:27:00', NULL, 'Information', 'Ut inventore error m', 2, 1, 1, 1, '2023-08-25 07:27:35', '2023-11-22 09:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchanges`
--

CREATE TABLE `postal_exchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 Import & 2 Export',
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `reference` text DEFAULT NULL,
  `from` text DEFAULT NULL,
  `to` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_exchanges`
--

INSERT INTO `postal_exchanges` (`id`, `type`, `category_id`, `title`, `reference`, `from`, `to`, `note`, `date`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Sed reprehenderit e', 'Academic Building', 'Officiis et laboris', 'Numquam placeat rat', 'Ut dignissimos illum', '2019-08-03', 'background-border_1664649226.png', 1, 1, 1, '2022-10-01 12:33:46', '2022-10-27 13:32:56'),
(2, 1, 3, 'Proident provident', 'Govt', 'Commodo qui aut quis', 'Hic aperiam hic aper', 'Sit velit nisi asp', '2020-01-19', 'book-covers_1664656202.jpg', 1, 1, 1, '2022-10-01 12:34:05', '2022-10-27 13:32:01'),
(3, 2, 2, 'Velit sunt modi nihi', 'Sundarbon', 'Voluptate est dolori', 'Et dolor assumenda n', 'Enim in vel ad liber', '2021-01-11', NULL, 1, 1, 1, '2022-10-01 12:34:17', '2022-10-27 13:31:10'),
(4, 2, 3, 'Quod velit aliqua E', 'Saif Transport', 'Aute sint exercitati', 'Vitae ipsa ipsa co', 'Enim consectetur pr', '2022-06-28', NULL, 1, 1, 1, '2022-10-01 12:35:37', '2022-10-27 13:30:58'),
(5, 1, 2, 'Sed ut aut accusamus', 'Habib Vai', 'Architecto et ex qui', 'Qui eos dolorum ut', 'Voluptates quo tempo', '2022-03-31', 'book-cover2_1664656189.jpg', 1, 1, 1, '2022-10-01 12:35:51', '2022-10-27 13:30:40'),
(6, 1, 5, 'Accusamus mollit fug', 'Non vel modi volupta', 'In dolor nulla ut au', 'Labore officiis nost', 'Omnis enim qui obcae', '2023-08-22', NULL, 2, 1, 1, '2023-08-25 07:35:24', '2023-08-25 07:36:22'),
(7, 2, 1, 'Veniam incididunt a', 'Hic ullam mollit bea', 'Provident dolores a', 'Excepturi excepteur', 'Labore alias non cor', '2023-06-28', NULL, 1, 1, NULL, '2023-08-25 07:36:18', '2023-08-25 07:36:18'),
(8, 1, 2, 'Enim eaque consequun', 'Eu ad ipsum quod ve', 'Est cillum nostrum', 'Placeat placeat pa', 'Tempora accusamus mo', '2023-07-31', NULL, 4, 1, NULL, '2023-08-25 07:37:18', '2023-08-25 07:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchange_types`
--

CREATE TABLE `postal_exchange_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_exchange_types`
--

INSERT INTO `postal_exchange_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Examination Papers', 'examination-papers', NULL, 1, '2022-10-01 03:58:48', '2022-10-01 03:58:48'),
(2, 'Library Books', 'library-books', NULL, 1, '2022-10-01 03:58:57', '2022-10-01 03:58:57'),
(3, 'Lab Instruments', 'lab-instruments', NULL, 1, '2022-10-01 04:01:27', '2022-10-01 04:01:27'),
(4, 'Office Documents', 'office-documents', NULL, 1, '2022-10-01 04:02:19', '2022-10-01 04:02:19'),
(5, 'Sports Equipment', 'sports-equipment', NULL, 1, '2022-10-01 04:03:56', '2022-10-01 04:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `print_settings`
--

CREATE TABLE `print_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `title` text DEFAULT NULL,
  `header_left` text DEFAULT NULL,
  `header_center` text DEFAULT NULL,
  `header_right` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `footer_left` text DEFAULT NULL,
  `footer_center` text DEFAULT NULL,
  `footer_right` text DEFAULT NULL,
  `logo_left` text DEFAULT NULL,
  `logo_right` text DEFAULT NULL,
  `background` text DEFAULT NULL,
  `width` varchar(191) NOT NULL DEFAULT 'auto',
  `height` varchar(191) NOT NULL DEFAULT 'auto',
  `student_photo` tinyint(1) NOT NULL DEFAULT 0,
  `barcode` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `print_settings`
--

INSERT INTO `print_settings` (`id`, `slug`, `title`, `header_left`, `header_center`, `header_right`, `body`, `footer_left`, `footer_center`, `footer_right`, `logo_left`, `logo_right`, `background`, `width`, `height`, `student_photo`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'class-routine', 'Our College Class Routine', NULL, NULL, NULL, '<p>The institution\'s commitment to academic excellence is reflected not only in its past results but also in the holistic development of its students.</p>', NULL, NULL, NULL, 'logoJPG_1700428797.png', 'logoJPG_1700428797.png', NULL, '1000px', 'auto', 0, 0, 1, '2022-09-30 13:44:31', '2023-11-19 21:21:26'),
(2, 'exam-routine', 'Our College Exam Routine', NULL, NULL, NULL, '<p>The institution\'s commitment to academic excellence is reflected not only in its past results but also in the holistic development of its students.</p>', NULL, NULL, NULL, 'logoJPG_1700428918.png', 'logoJPG_1700428918.png', NULL, '800px', 'auto', 0, 0, 1, '2022-09-30 13:45:22', '2023-11-19 21:22:13'),
(3, 'admit-card', 'Final Exam Admit Card', NULL, NULL, NULL, NULL, 'Exam Controller', NULL, 'Horizon College', 'logoJPG_1700641950.png', NULL, NULL, '600px', 'auto', 1, 0, 1, '2022-09-30 13:47:32', '2023-11-22 08:32:50'),
(4, 'fees-receipt', 'Our University Fees Receipt', NULL, NULL, NULL, NULL, 'Student Signature', NULL, 'Receiver Signature', 'logoJPG_1700642083.png', 'logoJPG_1700642083.png', NULL, '800px', 'auto', 0, 0, 1, '2022-09-30 13:56:47', '2023-11-22 08:34:43'),
(5, 'pay-slip', 'Our University Salary Pay Slip', NULL, NULL, NULL, NULL, 'Accountant', NULL, 'Receiver', NULL, 'logoJPG_1700642221.png', NULL, '800px', 'auto', 0, 0, 1, '2022-09-30 14:00:33', '2023-11-22 08:37:01'),
(6, 'visitor-token', 'Visitor Token', NULL, NULL, NULL, NULL, 'Authority', NULL, 'Issues By', NULL, 'logo_1664617034.jpg', NULL, '600px', 'auto', 0, 1, 1, '2022-10-01 03:37:14', '2022-10-01 12:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `shortcode` varchar(191) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `faculty_id`, `title`, `slug`, `shortcode`, `registration`, `status`, `created_at`, `updated_at`) VALUES
(8, 6, 'FSC Pre Medical', 'fsc-pre-medical', 'FSC-PM', 0, 1, '2023-11-19 21:08:26', '2023-11-19 21:08:26'),
(9, 7, 'FSC Pre Engineering', 'fsc-pre-engineering', 'FSC-PE', 0, 1, '2023-11-19 21:08:55', '2023-11-19 21:08:55'),
(10, 9, 'ICS', 'ics', 'ICS', 0, 1, '2023-11-19 21:09:07', '2023-11-19 21:09:07'),
(11, 9, 'BS CS', 'bs-cs', 'CS', 0, 1, '2023-11-19 21:09:26', '2023-11-19 21:09:26'),
(12, 9, 'BS IT', 'bs-it', 'IT', 0, 1, '2023-11-19 21:09:36', '2023-11-19 21:09:36'),
(13, 8, 'I.COM', 'icom', 'ICOM', 0, 1, '2023-11-19 21:10:10', '2023-11-19 21:10:10'),
(14, 8, 'B.COM', 'bcom', 'bcom', 0, 1, '2023-11-19 21:10:26', '2023-11-24 06:08:26'),
(15, 11, 'BS Physics', 'bs-physics', 'BS-Phy', 0, 1, '2023-11-19 21:11:01', '2023-11-19 21:11:01'),
(16, 11, 'BS Botany', 'bs-botany', 'bs-botany', 0, 1, '2023-11-19 21:11:34', '2023-11-24 06:08:46'),
(17, 11, 'BS Chemistry', 'bs-chemistry', 'BS-CHEM', 0, 1, '2023-11-19 21:11:49', '2023-11-19 21:11:49'),
(18, 11, 'BS Zoology', 'bs-zoology', 'BS-Zoology', 0, 1, '2023-11-19 21:12:06', '2023-11-19 21:12:06'),
(19, 11, 'BS Mathematics', 'bs-mathematics', 'BS-Math', 0, 1, '2023-11-19 21:12:29', '2023-11-19 21:12:29'),
(20, 11, 'BS Psychology', 'bs-psychology', 'BS-Psyc', 0, 1, '2023-11-19 21:12:51', '2023-11-19 21:12:51'),
(21, 11, 'BS English', 'bs-english', 'BS-Eng', 0, 1, '2023-11-19 21:13:05', '2023-11-19 21:13:05'),
(22, 11, 'Bachelor of Business Administration', 'bachelor-of-business-administration', 'bba', 0, 1, '2023-11-19 21:14:00', '2023-11-24 06:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `program_class_room`
--

CREATE TABLE `program_class_room` (
  `program_id` int(10) UNSIGNED NOT NULL,
  `class_room_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_semester`
--

CREATE TABLE `program_semester` (
  `program_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_semester_sections`
--

CREATE TABLE `program_semester_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_session`
--

CREATE TABLE `program_session` (
  `program_id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_subject`
--

CREATE TABLE `program_subject` (
  `program_id` int(10) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Punjab', 'punjab', NULL, 1, '2022-09-30 14:16:55', '2023-11-18 07:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `result_contributions`
--

CREATE TABLE `result_contributions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attendances` decimal(5,2) NOT NULL DEFAULT 0.00,
  `assignments` decimal(5,2) NOT NULL DEFAULT 0.00,
  `activities` decimal(5,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `result_contributions`
--

INSERT INTO `result_contributions` (`id`, `attendances`, `assignments`, `activities`, `status`, `created_at`, `updated_at`) VALUES
(1, 10.00, 10.00, 10.00, 1, NULL, '2023-02-13 11:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', 'web', '2022-09-30 12:00:46', '2022-09-30 12:00:46'),
(2, 'Admin', 'admin', 'web', NULL, NULL),
(3, 'Accountant', 'accountant', 'web', NULL, NULL),
(4, 'Librarian', 'librarian', 'web', NULL, NULL),
(5, 'Receptionist', 'receptionist', 'web', NULL, NULL),
(6, 'Teacher', 'teacher', 'web', NULL, NULL),
(7, 'Office Staff', 'office-staff', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1068, 1),
(1068, 2),
(1069, 1),
(1069, 2),
(1070, 1),
(1070, 2),
(1071, 1),
(1071, 2),
(1072, 1),
(1072, 2),
(1072, 3),
(1072, 4),
(1072, 6),
(1073, 1),
(1073, 2),
(1074, 1),
(1074, 2),
(1075, 1),
(1075, 2),
(1076, 1),
(1076, 2),
(1077, 1),
(1077, 2),
(1078, 1),
(1078, 2),
(1079, 1),
(1079, 2),
(1080, 1),
(1080, 2),
(1081, 1),
(1081, 2),
(1082, 1),
(1082, 2),
(1083, 1),
(1083, 2),
(1084, 1),
(1084, 2),
(1085, 1),
(1085, 2),
(1086, 1),
(1086, 2),
(1087, 1),
(1087, 2),
(1088, 1),
(1088, 2),
(1089, 1),
(1089, 2),
(1090, 1),
(1090, 2),
(1091, 1),
(1091, 6),
(1092, 1),
(1092, 6),
(1093, 1),
(1093, 6),
(1094, 1),
(1094, 6),
(1095, 1),
(1095, 6),
(1096, 1),
(1097, 1),
(1097, 2),
(1097, 6),
(1098, 1),
(1098, 2),
(1098, 6),
(1099, 1),
(1099, 2),
(1099, 6),
(1100, 1),
(1100, 2),
(1101, 1),
(1101, 2),
(1101, 6),
(1102, 1),
(1102, 2),
(1102, 6),
(1103, 1),
(1103, 2),
(1103, 6),
(1104, 1),
(1104, 2),
(1104, 6),
(1105, 1),
(1105, 2),
(1106, 1),
(1107, 1),
(1108, 1),
(1109, 1),
(1110, 1),
(1111, 1),
(1112, 1),
(1113, 1),
(1114, 1),
(1115, 1),
(1116, 1),
(1117, 1),
(1118, 1),
(1119, 1),
(1120, 1),
(1121, 1),
(1122, 1),
(1123, 1),
(1124, 1),
(1125, 1),
(1126, 1),
(1127, 1),
(1128, 1),
(1129, 1),
(1130, 1),
(1131, 1),
(1132, 1),
(1133, 1),
(1134, 1),
(1135, 1),
(1136, 1),
(1137, 1),
(1138, 1),
(1139, 1),
(1140, 1),
(1141, 1),
(1142, 1),
(1143, 1),
(1143, 2),
(1143, 6),
(1144, 1),
(1144, 2),
(1144, 6),
(1145, 1),
(1145, 2),
(1145, 6),
(1146, 1),
(1146, 2),
(1146, 6),
(1147, 1),
(1147, 2),
(1147, 6),
(1148, 1),
(1148, 2),
(1148, 6),
(1149, 1),
(1149, 2),
(1149, 6),
(1150, 1),
(1150, 2),
(1150, 6),
(1151, 1),
(1151, 2),
(1151, 6),
(1152, 1),
(1152, 2),
(1153, 1),
(1153, 2),
(1154, 1),
(1154, 6),
(1155, 1),
(1155, 6),
(1156, 1),
(1156, 6),
(1157, 1),
(1157, 6),
(1158, 1),
(1158, 6),
(1159, 1),
(1159, 6),
(1160, 1),
(1161, 1),
(1162, 1),
(1163, 1),
(1164, 1),
(1164, 2),
(1165, 1),
(1165, 2),
(1166, 1),
(1166, 2),
(1167, 1),
(1167, 2),
(1168, 1),
(1168, 2),
(1168, 6),
(1169, 1),
(1169, 2),
(1169, 6),
(1170, 1),
(1170, 2),
(1170, 6),
(1171, 1),
(1171, 2),
(1172, 1),
(1172, 2),
(1173, 1),
(1173, 6),
(1174, 1),
(1174, 6),
(1175, 1),
(1175, 6),
(1176, 1),
(1177, 1),
(1177, 6),
(1178, 1),
(1178, 6),
(1179, 1),
(1179, 6),
(1180, 1),
(1180, 6),
(1181, 1),
(1182, 1),
(1183, 1),
(1184, 1),
(1185, 1),
(1186, 1),
(1186, 3),
(1187, 1),
(1187, 3),
(1188, 1),
(1188, 3),
(1189, 1),
(1189, 3),
(1190, 1),
(1190, 3),
(1191, 1),
(1191, 3),
(1192, 1),
(1192, 2),
(1193, 1),
(1193, 3),
(1194, 1),
(1194, 3),
(1195, 1),
(1195, 3),
(1196, 1),
(1196, 3),
(1197, 1),
(1197, 3),
(1198, 1),
(1199, 1),
(1199, 3),
(1200, 1),
(1200, 3),
(1201, 1),
(1201, 3),
(1202, 1),
(1203, 1),
(1203, 3),
(1204, 1),
(1204, 3),
(1205, 1),
(1205, 3),
(1206, 1),
(1207, 1),
(1207, 2),
(1207, 3),
(1207, 4),
(1208, 1),
(1208, 2),
(1209, 1),
(1209, 2),
(1210, 1),
(1210, 2),
(1211, 1),
(1211, 2),
(1212, 1),
(1212, 2),
(1213, 1),
(1213, 3),
(1214, 1),
(1214, 3),
(1215, 1),
(1215, 3),
(1216, 1),
(1216, 3),
(1217, 1),
(1217, 2),
(1218, 1),
(1218, 2),
(1219, 1),
(1219, 2),
(1220, 1),
(1220, 2),
(1221, 1),
(1221, 3),
(1222, 1),
(1222, 3),
(1223, 1),
(1223, 3),
(1224, 1),
(1224, 3),
(1225, 1),
(1226, 1),
(1227, 1),
(1228, 1),
(1229, 1),
(1229, 2),
(1229, 3),
(1230, 1),
(1230, 2),
(1230, 3),
(1231, 1),
(1231, 2),
(1232, 1),
(1233, 1),
(1234, 1),
(1235, 1),
(1236, 1),
(1237, 1),
(1238, 1),
(1239, 1),
(1240, 1),
(1241, 1),
(1242, 1),
(1243, 1),
(1244, 1),
(1245, 1),
(1246, 1),
(1247, 1),
(1248, 1),
(1249, 1),
(1250, 1),
(1251, 1),
(1252, 1),
(1252, 3),
(1253, 1),
(1253, 3),
(1254, 1),
(1254, 3),
(1255, 1),
(1256, 1),
(1256, 2),
(1257, 1),
(1257, 2),
(1258, 1),
(1258, 2),
(1259, 1),
(1259, 2),
(1260, 1),
(1260, 3),
(1261, 1),
(1261, 3),
(1262, 1),
(1262, 3),
(1263, 1),
(1264, 1),
(1264, 2),
(1265, 1),
(1265, 2),
(1266, 1),
(1266, 2),
(1267, 1),
(1267, 2),
(1268, 1),
(1268, 2),
(1269, 1),
(1269, 2),
(1270, 1),
(1270, 2),
(1271, 1),
(1271, 2),
(1272, 1),
(1272, 2),
(1273, 1),
(1273, 2),
(1274, 1),
(1274, 2),
(1275, 1),
(1275, 2),
(1276, 1),
(1276, 2),
(1277, 1),
(1277, 2),
(1278, 1),
(1278, 2),
(1279, 1),
(1279, 2),
(1280, 1),
(1281, 1),
(1282, 1),
(1283, 1),
(1284, 1),
(1284, 2),
(1285, 1),
(1285, 2),
(1286, 1),
(1286, 2),
(1287, 1),
(1287, 2),
(1288, 1),
(1288, 4),
(1289, 1),
(1289, 4),
(1290, 1),
(1290, 4),
(1291, 1),
(1291, 4),
(1292, 1),
(1292, 4),
(1293, 1),
(1293, 4),
(1294, 1),
(1294, 4),
(1295, 1),
(1295, 4),
(1296, 1),
(1296, 4),
(1297, 1),
(1297, 2),
(1298, 1),
(1298, 4),
(1299, 1),
(1299, 4),
(1300, 1),
(1300, 4),
(1301, 1),
(1301, 4),
(1302, 1),
(1302, 4),
(1303, 1),
(1303, 4),
(1304, 1),
(1304, 4),
(1305, 1),
(1305, 4),
(1306, 1),
(1306, 4),
(1307, 1),
(1307, 4),
(1308, 1),
(1308, 4),
(1309, 1),
(1309, 4),
(1310, 1),
(1310, 4),
(1311, 1),
(1312, 1),
(1312, 5),
(1313, 1),
(1313, 5),
(1314, 1),
(1314, 5),
(1315, 1),
(1315, 5),
(1316, 1),
(1316, 5),
(1317, 1),
(1317, 5),
(1318, 1),
(1319, 1),
(1319, 5),
(1320, 1),
(1320, 5),
(1321, 1),
(1321, 5),
(1322, 1),
(1323, 1),
(1324, 1),
(1325, 1),
(1326, 1),
(1327, 1),
(1328, 1),
(1329, 1),
(1330, 1),
(1331, 1),
(1332, 1),
(1333, 1),
(1334, 1),
(1335, 1),
(1336, 1),
(1337, 1),
(1338, 1),
(1339, 1),
(1340, 1),
(1341, 1),
(1342, 1),
(1343, 1),
(1344, 1),
(1345, 1),
(1346, 1),
(1347, 1),
(1348, 1),
(1349, 1),
(1350, 1),
(1351, 1),
(1352, 1),
(1353, 1),
(1354, 1),
(1355, 1),
(1356, 1),
(1357, 1),
(1358, 1),
(1359, 1),
(1359, 5),
(1360, 1),
(1360, 5),
(1361, 1),
(1361, 5),
(1362, 1),
(1363, 1),
(1363, 5),
(1364, 1),
(1364, 5),
(1365, 1),
(1365, 5),
(1366, 1),
(1366, 5),
(1367, 1),
(1368, 1),
(1369, 1),
(1369, 5),
(1370, 1),
(1370, 5),
(1371, 1),
(1371, 5),
(1372, 1),
(1373, 1),
(1373, 5),
(1374, 1),
(1374, 5),
(1375, 1),
(1375, 5),
(1376, 1),
(1377, 1),
(1377, 5),
(1378, 1),
(1378, 5),
(1379, 1),
(1379, 5),
(1380, 1),
(1381, 1),
(1381, 5),
(1382, 1),
(1382, 5),
(1383, 1),
(1383, 5),
(1384, 1),
(1385, 1),
(1385, 5),
(1386, 1),
(1386, 5),
(1387, 1),
(1387, 5),
(1388, 1),
(1389, 1),
(1389, 5),
(1390, 1),
(1390, 5),
(1391, 1),
(1391, 5),
(1392, 1),
(1393, 1),
(1393, 5),
(1394, 1),
(1394, 5),
(1395, 1),
(1395, 5),
(1396, 1),
(1397, 1),
(1397, 5),
(1398, 1),
(1398, 5),
(1399, 1),
(1399, 5),
(1400, 1),
(1401, 1),
(1401, 5),
(1402, 1),
(1402, 5),
(1403, 1),
(1403, 5),
(1404, 1),
(1405, 1),
(1405, 5),
(1406, 1),
(1406, 5),
(1407, 1),
(1407, 5),
(1408, 1),
(1409, 1),
(1409, 5),
(1410, 1),
(1410, 5),
(1411, 1),
(1411, 5),
(1412, 1),
(1413, 1),
(1413, 2),
(1414, 1),
(1414, 2),
(1415, 1),
(1415, 2),
(1416, 1),
(1416, 2),
(1417, 1),
(1417, 2),
(1418, 1),
(1418, 2),
(1419, 1),
(1419, 2),
(1420, 1),
(1420, 2),
(1421, 1),
(1421, 2),
(1422, 1),
(1422, 2),
(1423, 1),
(1423, 2),
(1424, 1),
(1424, 2),
(1425, 1),
(1425, 2),
(1426, 1),
(1426, 2),
(1427, 1),
(1427, 2),
(1428, 1),
(1428, 2),
(1429, 1),
(1429, 2),
(1430, 1),
(1430, 2),
(1431, 1),
(1431, 2),
(1432, 1),
(1432, 2),
(1433, 1),
(1433, 2),
(1434, 1),
(1434, 2),
(1435, 1),
(1435, 2),
(1436, 1),
(1437, 1),
(1438, 1),
(1439, 1),
(1440, 1),
(1441, 1),
(1442, 1),
(1443, 1),
(1444, 1),
(1445, 1),
(1446, 1),
(1447, 1),
(1448, 1),
(1449, 1),
(1450, 1),
(1451, 1),
(1452, 1),
(1453, 1),
(1454, 1),
(1455, 1),
(1456, 1),
(1457, 1),
(1458, 1),
(1459, 1),
(1460, 1),
(1461, 1),
(1462, 1),
(1463, 1),
(1464, 1),
(1465, 1),
(1466, 1),
(1467, 1),
(1468, 1),
(1469, 1),
(1470, 1),
(1471, 1),
(1472, 1),
(1473, 1),
(1474, 1),
(1475, 1),
(1476, 1),
(1476, 2),
(1477, 1),
(1477, 2),
(1478, 1),
(1478, 2),
(1479, 1),
(1479, 2),
(1480, 1),
(1480, 2),
(1481, 1),
(1481, 2),
(1482, 1),
(1482, 2),
(1483, 1),
(1483, 2),
(1484, 1),
(1485, 1),
(1486, 1),
(1487, 1),
(1488, 1),
(1489, 1),
(1490, 1),
(1491, 1),
(1492, 1),
(1493, 1),
(1494, 1),
(1495, 1),
(1496, 1),
(1497, 1),
(1498, 1),
(1499, 1),
(1500, 1),
(1501, 1),
(1502, 1),
(1503, 1),
(1503, 2),
(1503, 3),
(1503, 4),
(1503, 5),
(1503, 6),
(1504, 1),
(1504, 2),
(1504, 3),
(1504, 4),
(1504, 5),
(1504, 6),
(1505, 1),
(1505, 2),
(1505, 3),
(1505, 4),
(1505, 5),
(1505, 6);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_settings`
--

CREATE TABLE `schedule_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `day` int(11) NOT NULL,
  `time` time NOT NULL,
  `email` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Inactive, 1 Active',
  `sms` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Inactive, 1 Active',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `seat` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `seat`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Section A', NULL, 1, '2022-09-30 13:27:34', '2022-09-30 13:28:09'),
(2, 'Section B', NULL, 1, '2022-09-30 13:29:15', '2022-09-30 13:29:15'),
(3, 'Section C', NULL, 1, '2022-09-30 13:30:12', '2022-09-30 13:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `year` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `title`, `year`, `status`, `created_at`, `updated_at`) VALUES
(1, '1st Semester', '1', 1, '2022-09-30 13:22:04', '2022-09-30 13:22:04'),
(2, '2nd Semester', '1', 1, '2022-09-30 13:22:18', '2022-09-30 13:22:18'),
(3, '3rd Semester', '2', 1, '2022-09-30 13:22:32', '2022-09-30 13:22:32'),
(4, '4th Semester', '2', 1, '2022-09-30 13:22:48', '2022-09-30 13:22:48'),
(5, '5th Semester', '3', 1, '2022-09-30 13:23:03', '2022-09-30 13:23:03'),
(6, '6th Semester', '3', 1, '2022-09-30 13:23:13', '2022-09-30 13:23:13'),
(7, '7th Semester', '4', 1, '2022-09-30 13:23:24', '2022-09-30 13:23:24'),
(8, '8th Semester', '4', 1, '2022-09-30 13:23:32', '2022-09-30 13:23:32'),
(9, '9th Semester', '5', 1, '2022-09-30 13:24:02', '2022-09-30 13:24:02'),
(10, '10th Semester', '5', 1, '2022-09-30 13:24:55', '2022-09-30 13:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `current` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `title`, `start_date`, `end_date`, `current`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fall-2021', '2021-01-01', '2021-06-30', 0, 1, '2022-09-30 12:00:47', '2022-09-30 13:18:44'),
(2, 'Spring-2021', '2021-07-01', '2021-12-31', 0, 1, '2022-09-30 13:17:39', '2022-09-30 13:18:44'),
(3, 'Fall-2022', '2022-01-01', '2022-07-30', 0, 1, '2022-09-30 13:18:14', '2022-09-30 13:18:44'),
(4, 'Spring-2022', '2022-07-01', '2022-12-01', 1, 1, '2022-09-30 13:18:44', '2022-09-30 13:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `academy_code` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `logo_path` text DEFAULT NULL,
  `favicon_path` text DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `fax` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `language` varchar(191) DEFAULT NULL,
  `date_format` varchar(191) DEFAULT NULL,
  `time_format` varchar(191) DEFAULT NULL,
  `week_start` varchar(191) DEFAULT NULL,
  `time_zone` varchar(191) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `currency_symbol` varchar(191) DEFAULT NULL,
  `decimal_place` int(11) NOT NULL DEFAULT 2,
  `copyright_text` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `academy_code`, `meta_title`, `meta_description`, `meta_keywords`, `logo_path`, `favicon_path`, `phone`, `email`, `fax`, `address`, `language`, `date_format`, `time_format`, `week_start`, `time_zone`, `currency`, `currency_symbol`, `decimal_place`, `copyright_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Horizon Degree & Commerce College', NULL, 'Horizon Degree & Commerce College', NULL, NULL, 'logoJPG_1700292583.png', 'logoJPG_1700292597.png', NULL, NULL, NULL, NULL, NULL, 'd-m-Y', 'h:i A', NULL, 'Asia/Dhaka', 'PKR', 'PKR', 2, '<p>2023 - FYP Horizon College.</p>', 1, '2022-09-30 12:00:47', '2023-11-19 20:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `sub_title` text DEFAULT NULL,
  `button_text` varchar(191) DEFAULT NULL,
  `button_link` varchar(191) DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `title`, `sub_title`, `button_text`, `button_link`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'We are providing quality education with dedicated , trained, passionate and highly qualified faculty', 'Our educators bring a wealth of knowledge and real-world experience to the classroom, creating a dynamic learning environment that fosters curiosity and critical thinking.', 'Read More', 'http://localhost/HorizonCollege/course', 'WhatsApp_Image_2023_11_18_at_10.15.16_AM_1700333992.jpeg', 1, '2023-08-24 16:10:47', '2023-11-25 04:46:52'),
(2, 1, 'Horizon College Chakwal stands out for its commitment to providing quality education.', 'Our commitment to excellence in education is reflected through the dedicated, trained, and passionate faculty members who ensure a high standard of learning.', 'Read More', 'http://localhost/HorizonCollege/course', 'Screenshot_2023_11_19_at_12.13.20_AM_1700334834.png', 1, '2023-08-24 16:11:53', '2023-11-25 04:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `social_settings`
--

CREATE TABLE `social_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `pinterest` varchar(191) DEFAULT NULL,
  `youtube` varchar(191) DEFAULT NULL,
  `tiktok` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `telegram` varchar(191) DEFAULT NULL,
  `whatsapp` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_settings`
--

INSERT INTO `social_settings` (`id`, `facebook`, `twitter`, `linkedin`, `instagram`, `pinterest`, `youtube`, `tiktok`, `skype`, `telegram`, `whatsapp`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/hcchakwal/', NULL, 'https://www.linkedin.com/', 'https://www.instagram.com/horizon_college_chakwal/?hl=en', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-24 15:50:31', '2023-11-18 18:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendances`
--

CREATE TABLE `staff_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date NOT NULL,
  `attendance` int(11) NOT NULL DEFAULT 0 COMMENT '1 Present, 2 Absent, 3 Leave, 4 Holiday',
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_attendances`
--

INSERT INTO `staff_attendances` (`id`, `user_id`, `start_time`, `end_time`, `date`, `attendance`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, 1, NULL, NULL, '2022-10-03', 1, '', 1, NULL, '2022-10-03 15:09:56', '2022-10-03 15:16:33'),
(14, 1, NULL, NULL, '2022-10-05', 1, '', 1, NULL, '2022-10-03 15:10:12', '2022-10-03 15:10:12'),
(21, 1, NULL, NULL, '2022-10-09', 4, '', 1, NULL, '2022-10-03 15:10:34', '2022-10-03 15:10:34'),
(28, 1, NULL, NULL, '2022-10-11', 1, '', 1, NULL, '2022-10-03 15:10:50', '2022-10-03 15:10:50'),
(35, 1, NULL, NULL, '2022-10-13', 1, '', 1, NULL, '2022-10-03 15:11:07', '2022-10-03 15:11:07'),
(42, 1, NULL, NULL, '2022-10-15', 3, '', 1, NULL, '2022-10-03 15:11:23', '2022-10-03 15:11:23'),
(49, 1, NULL, NULL, '2022-10-17', 1, '', 1, NULL, '2022-10-03 15:11:39', '2022-10-03 15:11:39'),
(56, 1, NULL, NULL, '2022-10-19', 1, '', 1, NULL, '2022-10-03 15:11:55', '2022-10-03 15:11:55'),
(63, 1, NULL, NULL, '2022-10-21', 1, '', 1, NULL, '2022-10-03 15:12:06', '2022-10-03 15:12:06'),
(70, 1, NULL, NULL, '2022-10-23', 1, '', 1, NULL, '2022-10-03 15:12:19', '2022-10-03 15:12:19'),
(77, 1, NULL, NULL, '2022-10-25', 4, '', 1, NULL, '2022-10-03 15:12:31', '2022-10-03 15:12:31'),
(84, 1, NULL, NULL, '2022-10-27', 1, '', 1, NULL, '2022-10-03 15:12:44', '2022-10-03 15:12:44'),
(91, 1, NULL, NULL, '2022-10-29', 1, '', 1, NULL, '2022-10-03 15:12:58', '2022-10-03 15:12:58'),
(98, 1, NULL, NULL, '2022-10-31', 1, '', 1, NULL, '2022-10-03 15:13:25', '2022-10-03 15:13:25'),
(105, 1, NULL, NULL, '2022-10-01', 1, '', 1, NULL, '2022-10-03 15:13:42', '2022-10-03 15:16:40'),
(112, 1, NULL, NULL, '2022-10-07', 1, '', 1, NULL, '2022-10-03 15:14:19', '2022-10-03 15:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `staff_hourly_attendances`
--

CREATE TABLE `staff_hourly_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date NOT NULL,
  `attendance` int(11) NOT NULL DEFAULT 0 COMMENT '1 Present, 2 Absent, 3 Leave, 4 Holiday',
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_types`
--

CREATE TABLE `status_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_types`
--

INSERT INTO `status_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Admission', 'new-admission', NULL, 1, NULL, NULL),
(2, 'Continue', 'continue', NULL, 1, NULL, NULL),
(3, 'Pass Out', 'pass-out', NULL, 1, NULL, NULL),
(4, 'Drop Out', 'drop-out', NULL, 1, NULL, NULL),
(5, 'Transfer In', 'transfer-in', NULL, 1, NULL, NULL),
(6, 'Transfer Out', 'transfer-out', NULL, 1, NULL, NULL),
(7, 'Disabled', 'disabled', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_type_student`
--

CREATE TABLE `status_type_student` (
  `status_type_id` int(10) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_type_student`
--

INSERT INTO `status_type_student` (`status_type_id`, `student_id`) VALUES
(7, 1),
(1, 1),
(2, 2),
(1, 2),
(2, 3),
(1, 3),
(2, 4),
(7, 6),
(2, 12),
(7, 12),
(1, 13),
(1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(191) NOT NULL,
  `registration_no` varchar(191) DEFAULT NULL,
  `batch_id` int(10) UNSIGNED DEFAULT NULL,
  `program_id` int(10) UNSIGNED DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `father_name` varchar(191) DEFAULT NULL,
  `mother_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `password_text` longtext DEFAULT NULL,
  `present_province` int(10) UNSIGNED DEFAULT NULL,
  `present_district` int(10) UNSIGNED DEFAULT NULL,
  `present_village` text DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `permanent_province` int(10) UNSIGNED DEFAULT NULL,
  `permanent_district` int(10) UNSIGNED DEFAULT NULL,
  `permanent_village` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `gender` int(11) NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `emergency_phone` varchar(191) DEFAULT NULL,
  `mother_tongue` varchar(191) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `blood_group` int(11) DEFAULT NULL,
  `nationality` varchar(191) DEFAULT NULL,
  `national_id` varchar(191) DEFAULT NULL,
  `passport_no` varchar(191) DEFAULT NULL,
  `school_name` text DEFAULT NULL,
  `school_exam_id` varchar(191) DEFAULT NULL,
  `school_graduation_year` varchar(191) DEFAULT NULL,
  `school_graduation_point` varchar(191) DEFAULT NULL,
  `collage_name` text DEFAULT NULL,
  `collage_exam_id` varchar(191) DEFAULT NULL,
  `collage_graduation_year` varchar(191) DEFAULT NULL,
  `collage_graduation_point` varchar(191) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `login` tinyint(1) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Inactive, 1 Active, 2 Passed Out, 3 Transfer Out',
  `is_transfer` int(11) DEFAULT 0 COMMENT '0 Not Transfer, 1 Transfer In & 2 Transfer Out',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `father_occupation` varchar(191) DEFAULT NULL,
  `mother_occupation` varchar(191) DEFAULT NULL,
  `father_photo` text DEFAULT NULL,
  `mother_photo` text DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `religion` varchar(191) DEFAULT NULL,
  `caste` varchar(191) DEFAULT NULL,
  `school_graduation_field` varchar(191) DEFAULT NULL,
  `collage_graduation_field` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `registration_no`, `batch_id`, `program_id`, `admission_date`, `first_name`, `last_name`, `father_name`, `mother_name`, `email`, `email_verified_at`, `password`, `password_text`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `gender`, `dob`, `phone`, `emergency_phone`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `school_name`, `school_exam_id`, `school_graduation_year`, `school_graduation_point`, `collage_name`, `collage_exam_id`, `collage_graduation_year`, `collage_graduation_point`, `photo`, `signature`, `login`, `status`, `is_transfer`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `father_occupation`, `mother_occupation`, `father_photo`, `mother_photo`, `country`, `religion`, `caste`, `school_graduation_field`, `collage_graduation_field`) VALUES
(1, '1001', NULL, 4, 3, '2022-10-02', 'Aliza ', 'Tahir ', 'Tahir Hussein ', 'Bushra Bibi', 'aliza865@mailinator.com', NULL, '$2y$10$gzar32PTg.Z2pAMIIYS8kuYj9lufoSLUyanQnIRjzWeyYucOl6J.W', 'eyJpdiI6Im9hRkp0bTVBbHhacnFKRE1qdmRuSmc9PSIsInZhbHVlIjoiTlRWbDg3REk3RFNBYlVXMzVZMXJTQT09IiwibWFjIjoiZjNiNWNlZWM3YThkNjU0ODdjZDc2ZmQ5MTc3YjEyZDEwYjFmNDFmNGRiYTNhNTExOTQzNjUzM2ZjZmYwMjg1NiIsInRhZyI6IiJ9', 1, 6, 'Dhudial chakwal ', 'Mirpur Azad Kashmir ', 4, 12, 'Mirpur azad kashmir ', 'Aut qui voluptas eli', 2, '2021-02-19', '+92344576766', NULL, NULL, 2, 6, NULL, '3720566985698', '48431521679', 'Al Muslim High School', '45889658', '1991', '88', 'Christan Public college', '987135268', '1982', '99', 'student_1664734514.jpg', NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:15:14', '2022-10-02 12:15:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1002', NULL, 4, 3, '2022-10-02', 'Lukman', 'Malik', 'Malik Shahwaiz', 'Bakhtawar ', 'hewawo@mailinator.com', NULL, '$2y$10$LxGbLSQwT7Oe4Qre2XcqBuBskapMYQkU3hBrAC3G1pB5lHyCS2U0W', 'eyJpdiI6IjQrZERMQzlmSTJVTGxSUlVQY3hpbUE9PSIsInZhbHVlIjoiRE9VY0ZPKzk2RDU0elB5bEpSQ0xJdz09IiwibWFjIjoiOTMzYWQ0ZjJlNmM0NTk5ZGFmYjJmYjQ3MmJiYWYxYmI0NWU2ZGVjMWVjOWZkNWZjMDFjZDdiY2UzMDE0MGJkMSIsInRhZyI6IiJ9', 4, 4, 'Bhown chakwal', 'Bhown chakwal ', 3, 8, 'Bhown chakwal', 'Village bhown chakwal ', 2, '2012-11-12', '+92345676874', NULL, NULL, 1, 7, NULL, '42346587687', '786876876', 'Rooney Public School ', '142424', '2007', '42', 'Daral Aman college ', '4242454', '1991', '77', NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:17:47', '2022-10-02 12:17:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1003', NULL, 4, 3, '2022-10-02', 'Haider ', 'Faiyaz ', 'Faiyaz Raja ', 'Saeeda Noureen ', 'saeeda152@mailinator.com', NULL, '$2y$10$uFgBIoBdiaip14.wLfyBvO9Tc9j6epfJjm9uEFlNZVEU1KYeNj1Oi', 'eyJpdiI6IlJqbUFUU0pqRGFEUUpOeVppY01LN1E9PSIsInZhbHVlIjoickt0VXFwelV0Z1NZQU03WWZ5dnVYZz09IiwibWFjIjoiMDhhMzY3MzNlNjhjODMyYzZiOWQ2ZmEyYWRhMWVmY2Q1ZTlhOWJlNDY0MWNiNWM0ZDRlMDQ1Mzg0NTc3ZDdmNCIsInRhZyI6IiJ9', 2, 7, 'Dhoke chakwal ', 'Dhoke chakwal ', 1, 1, 'Dhoke chakwal ', 'Dhoke chakwal ', 1, '1987-07-15', '+92333454567', NULL, NULL, 4, 1, NULL, '1245687979', '789876876', 'United school system ', '457578', '1971', '88', 'Punjab college chakwal ', '4654645', '1979', '77', NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:20:00', '2022-10-02 12:20:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '1004', NULL, 4, 3, '2022-10-02', 'Abeela ', 'Khan ', 'Khan Muhammad ', 'Khateeja zahra ', 'malik545@mailinator.com', NULL, '$2y$10$wg/Dys9rYeaqNUUkA.1WjO6lc1EvxaPEihHVn1gS7/LbXqnIKEm8i', 'eyJpdiI6IjVJYWdWVE1wd2xaQVFkcUNFcGxmUFE9PSIsInZhbHVlIjoicEt2REdnckhlbmg2TVhOUTBwaWNZUT09IiwibWFjIjoiYzI1YTVkZDcwYWU3Y2ZhMzgxYzM3N2I1ZGJlYmQ4NTg0YjUxMTY4YWM5OGFiM2Y3NGQyM2ZjMzQ5NTMwMWIyNSIsInRhZyI6IiJ9', 3, 9, 'Main chakwal city, talagang road chakwal ', 'Main chakwal city, talagang road chakwal ', 1, 1, 'Main chakwal city, talagang road chakwal ', 'Main chakwal city, talagang road chakwal ', 2, '2007-10-13', '+92333989767', NULL, NULL, 1, 3, NULL, '4687698', '8796879', 'Munir public school chakwal ', '45678676', '1981', '55', 'Munir public school and college chakwal ', '87687687', '1993', '78', NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:21:45', '2022-10-02 12:21:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '1006', NULL, 4, 2, '2022-10-02', 'Asmara ', 'Shahid ', 'Muhammad shahid ', 'Fatima naaz ', 'shahid78@mailinator.com', NULL, '$2y$10$Wp3G22i4x.Ow2AERJbrRke6Uzz6xOMIsxYLyiHSrHGpJc6/IWdA4e', 'eyJpdiI6IkdNNFFGSjlvSDFHM2JWMkVOUDhFcEE9PSIsInZhbHVlIjoiT0N2WkY3TTVPTC9SODJsRUt1WEkwZz09IiwibWFjIjoiYWJlMjlkZDNiM2FkOTJhYzc5MWU2Y2ZjMmU2MzBhYjM1NTZhZGI1OGVkZDczNTM0Zjg5ODA0MWY1M2IzNzY4MiIsInRhZyI6IiJ9', 3, 9, 'Bhakari kalan village chakwal ', 'Bhakari kalan village chakwal ', 2, 13, 'Bhakari kalan village chakwal ', 'Bhakari kalan village chakwal ', 1, '1979-06-03', '+923445567665', NULL, NULL, 3, 6, NULL, '44578787', '125787545', 'Govt number one school chakwal ', '34546565', '2010', '56', 'Horizon college mulhal mughlan ', '567878764', '1985', '87', NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-02 12:26:33', '2022-10-02 12:26:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '1012', NULL, 5, 3, '2022-10-04', 'Zulqarnain ', 'Gondal ', 'Muhammad Asghar ', 'Zahra bibi ', 'zulqarnain45@mailinator.com', NULL, '$2y$10$Q/sOqBj0v/y58tDJmJzxeeFy97hsIRjiqtDDSoILXkXLuxjY0567e', 'eyJpdiI6IjlHeG45dVNNWldTdjVUazlRUXZCS3c9PSIsInZhbHVlIjoidkJLaUhwT3J6NWh3eitJK2JXVXRzUT09IiwibWFjIjoiMDFlYWU1YWJjN2NjMzVmOTIxMzA4ODJlNzA1ZTJlOWQ5MTIyYzYzNzdlYmYzZDY1MjNkOTQxN2Y4N2Y1NzY3MSIsInRhZyI6IiJ9', 4, 3, 'Ratta shareef chawkal ', 'Ratta shareef chawkal ', 3, 8, 'Ratta shareef chawkal ', 'Ratta shareef chawkal ', 2, '1992-11-29', '+92313256524', NULL, NULL, 4, 4, NULL, '48754548784', '218754778784', 'Wapda public school, chakwal ', '24878854', '1987', '96', 'Kashmir public college ', '56978874', '1970', '47', NULL, NULL, 1, 1, 0, NULL, 1, 1, '2022-10-04 05:54:20', '2022-10-04 05:54:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '1013', NULL, 5, 2, '2022-10-04', 'Humaira ', 'Arshad ', 'Arshad ALi ', 'Alishba bibi ', 'humaira@mailinator.com', NULL, '$2y$10$hVWcWz8Gmkh4YG/3hVkYF.Ql1kcQ6OH5JL/HsAMMT2yIgvVUeVAD.', 'eyJpdiI6IlNxQk92RGtDMndoc0YvRDZrU1drOXc9PSIsInZhbHVlIjoiNWwvV3pjUUtlN1J4VUlLWVFwajhtUT09IiwibWFjIjoiOWZiOGMyMTI0NTA2OGU2YjA1ZTUyNDZjNjI3ZTczZDg4ZjJiMTc0MWY1YzlmMmU0YmJhYzRlYzRmYzIxODZjYyIsInRhZyI6IiJ9', 2, 7, 'Near habib madrissa, bhown road, chakwal ', 'Near habib madrissa, bhown road, chakwal ', 2, 13, 'Near habib madrissa, bhown road, chakwal ', 'Near habib madrissa, bhown road, chakwal ', 2, '1980-10-01', '+92566765578', NULL, NULL, 5, 8, NULL, '5478895457', '2156895548', 'Falah foundation bhown chowk ', '178454777', '1972', '97', 'Horizon college chakwal ', '2147483647', '2002', '63', 'student_1664884572.jpg', NULL, 1, 1, 0, NULL, 1, NULL, '2022-10-04 05:56:12', '2022-10-04 05:56:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '1014', NULL, 5, 3, '2022-10-04', 'Rizwan ', 'Butt ', 'Shakeeb ul hassan ', 'Rizwana Mehmood ', 'student@mail.com', NULL, '$2y$10$cyU517mZqL56JHlS7UGlxumTgb5lUmO4JVgqzYNG.taiW5.XToil6', 'eyJpdiI6IjNzekIrZlF4RWZ2Q2dPREFOZjhUVVE9PSIsInZhbHVlIjoiQW5aYmZrZStKR2F3Nm9uekM3MHhGQT09IiwibWFjIjoiMmFhNzc4ZjE0NTZmM2I5ZmViOTNlNjExMDdmZWJmNGE3YTkwYjljMDAxZmViZjI5NTU2MTVjMjg3ODkyYjE4NSIsInRhZyI6IiJ9', 3, 10, 'Bheen village chakwal, pindi road chakwal ', 'Bheen village chakwal, pindi road chakwal ', 4, 4, 'Bheen village chakwal, pindi road chakwal ', 'Bheen village chakwal, pindi road chakwal ', 3, '1972-03-25', '+923335441235', NULL, NULL, 3, 1, NULL, '2458787', '2156787', 'Govt high school, pinwal chakwal ', '78545487', '1995', '96', 'Govt college , pinwal chakwal ', '159887845', '2002', '78', 'staff1_1664884807.jpg', NULL, 1, 1, 0, 'tvrjauDmX93oS0SuAThU19ZCyv7E9gPByfxqF9qYomEnqp3K1ymRLesmf25J', 1, 1, '2022-10-04 06:00:07', '2022-10-04 06:35:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_assignments`
--

CREATE TABLE `student_assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_enroll_id` bigint(20) UNSIGNED NOT NULL,
  `assignment_id` bigint(20) UNSIGNED NOT NULL,
  `marks` decimal(5,2) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_enroll_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `attendance` int(11) NOT NULL DEFAULT 0 COMMENT '1 Present, 2 Absent, 3 Leave, 4 Holiday',
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_enrolls`
--

CREATE TABLE `student_enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_enroll_subject`
--

CREATE TABLE `student_enroll_subject` (
  `student_enroll_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_leaves`
--

CREATE TABLE `student_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `review_by` bigint(20) UNSIGNED DEFAULT NULL,
  `apply_date` date NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 Pending, 1 Approved and 2 Rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_leaves`
--

INSERT INTO `student_leaves` (`id`, `student_id`, `review_by`, `apply_date`, `from_date`, `to_date`, `subject`, `reason`, `attach`, `note`, `status`, `created_at`, `updated_at`) VALUES
(2, 14, NULL, '2023-11-24', '2023-11-23', '2023-11-27', 'Want leaves', 'i want leaves, my health isn\'t stable. Kindly grant me leave for 3 days. thanks', NULL, NULL, 0, '2023-11-24 01:11:22', '2023-11-24 01:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `student_relatives`
--

CREATE TABLE `student_relatives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `relation` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `occupation` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text DEFAULT NULL,
  `photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_relatives`
--

INSERT INTO `student_relatives` (`id`, `student_id`, `relation`, `name`, `occupation`, `email`, `phone`, `created_at`, `updated_at`, `address`, `photo`) VALUES
(1, 1, 'Father', 'Scarlett Walton', 'Omnis sed fugiat eum', 'Curry and Eaton Plc', '+2564854475414', '2022-10-02 12:15:14', '2022-10-02 12:15:14', NULL, NULL),
(2, 2, 'Brother', 'Vernon Long', 'Ipsa praesentium te', 'Klein Dale Traders', '+45246876586', '2022-10-02 12:17:47', '2022-10-02 12:17:47', NULL, NULL),
(3, 3, 'Father', 'Janna Hooper', 'Molestias aut distin', 'Quinn Ryan Trading', 'Est dolore sed labo', '2022-10-02 12:20:00', '2022-10-02 12:20:00', NULL, NULL),
(5, 6, 'Uncle', 'Shad Aguirre', 'Qui iure voluptas qu', 'Mills Reynolds Inc', '+48548786786', '2022-10-02 12:26:33', '2022-10-02 12:26:33', NULL, NULL),
(14, 12, 'Father', 'Timothy Fischer', 'Sed non eu voluptas', 'Kinney and Sanford Trading', 'Mollit autem fugiat', '2022-10-04 05:54:43', '2022-10-04 05:54:43', NULL, NULL),
(15, 13, 'Father', 'Aladdin Hahn', 'Temporibus est earum', 'Snow Morse Trading', 'Velit non ad eos qui', '2022-10-04 05:56:12', '2022-10-04 05:56:12', NULL, NULL),
(18, 14, 'Father', 'Noel Baxter', 'Voluptates suscipit', 'Moran and Mclaughlin Co', 'Dolorum velit labor', '2022-10-04 06:34:40', '2022-10-04 06:34:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_transfers`
--

CREATE TABLE `student_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` varchar(191) NOT NULL,
  `university_name` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `note` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Transfer In, 1 Transfer Out',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `credit_hour` varchar(191) NOT NULL,
  `subject_type` int(11) DEFAULT NULL,
  `class_type` int(11) DEFAULT NULL,
  `total_marks` decimal(5,2) DEFAULT NULL,
  `passing_marks` decimal(5,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `code`, `credit_hour`, `subject_type`, `class_type`, `total_marks`, `passing_marks`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Artificial Intelligence', 'CSE601', '3', 1, 3, NULL, NULL, NULL, 1, '2022-09-30 13:37:45', '2022-09-30 13:37:45'),
(2, 'Software Engineering', 'CSE503', '3', 1, 3, NULL, NULL, NULL, 1, '2022-09-30 13:38:55', '2022-09-30 13:38:55'),
(3, 'Freshman English', 'EN105', '2', 0, 1, NULL, NULL, NULL, 1, '2022-09-30 13:39:44', '2022-10-02 14:53:12'),
(4, 'Discrete Mathematics', 'MAT211', '2', 1, 1, NULL, NULL, NULL, 1, '2022-09-30 13:40:34', '2022-09-30 13:40:34'),
(5, 'Computer Aided Design', 'CE209', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 04:41:46', '2022-10-01 04:41:46'),
(6, 'Optical Physics', 'PH308', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 04:44:51', '2022-10-01 04:44:51'),
(7, 'Database Management System', 'CSE506', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:28:45', '2022-10-01 08:28:45'),
(8, 'Data Structures and Algorithms', 'CSE607', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:30:08', '2022-10-01 08:30:08'),
(9, 'Applied Chemistry', 'CM108', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:32:02', '2022-10-01 08:32:02'),
(10, 'Hydraulics and Pneumatics', 'CE208', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:53:47', '2022-10-01 08:53:47'),
(11, 'Measurement and Instrumentation', 'CE213', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:55:03', '2022-10-01 08:55:03'),
(12, 'Architecture Engineering', 'CE304', '3', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:57:24', '2022-10-01 08:57:24'),
(13, 'Structural Design', 'ME406', '6', 1, 3, NULL, NULL, NULL, 1, '2022-10-01 08:59:01', '2022-10-01 09:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `subject_markings`
--

CREATE TABLE `subject_markings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_enroll_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `exam_marks` decimal(5,2) DEFAULT NULL,
  `attendances` decimal(5,2) DEFAULT NULL,
  `assignments` decimal(5,2) DEFAULT NULL,
  `activities` decimal(5,2) DEFAULT NULL,
  `total_marks` decimal(5,2) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `publish_time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_m_s_notifies`
--

CREATE TABLE `s_m_s_notifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED DEFAULT NULL,
  `program_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `receive_count` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_m_s_notifies`
--

INSERT INTO `s_m_s_notifies` (`id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `message`, `receive_count`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 0, 0, 0, 0, 0, 'This depends on when you enrol. Your fees are due 30 days from your starting date. For more information, please see Fees due dates.', 8, 1, 1, NULL, '2022-10-03 12:28:07', '2022-10-03 12:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `s_m_s_settings`
--

CREATE TABLE `s_m_s_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `nexmo_key` text DEFAULT NULL,
  `nexmo_secret` text DEFAULT NULL,
  `nexmo_sender_name` text DEFAULT NULL,
  `twilio_sid` text DEFAULT NULL,
  `twilio_auth_token` text DEFAULT NULL,
  `twilio_number` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 Twilio, 2 Nexmo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_m_s_settings`
--

INSERT INTO `s_m_s_settings` (`id`, `nexmo_key`, `nexmo_secret`, `nexmo_sender_name`, `twilio_sid`, `twilio_auth_token`, `twilio_number`, `status`, `created_at`, `updated_at`) VALUES
(1, '7e29c3ce', '6gK9ve4soFO6RP5d', 'ABC', 'AC8f4bfd69c98ad28c8f3a1dc8a8cca836', '4c880b6a9061a145d5c2a92de7e51cdf', '+14154461617', 1, '2022-09-30 12:00:47', '2022-09-30 12:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

CREATE TABLE `tax_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `min_amount` decimal(10,2) NOT NULL,
  `max_amount` decimal(10,2) NOT NULL,
  `percentange` double(4,2) NOT NULL,
  `max_no_taxable_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_settings`
--

INSERT INTO `tax_settings` (`id`, `min_amount`, `max_amount`, `percentange`, `max_no_taxable_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 0.00, 5000.00, 0.00, 0.00, 1, NULL, NULL),
(2, 5001.00, 10000.00, 5.00, 5000.00, 1, NULL, NULL),
(3, 10001.00, 20000.00, 10.00, 5000.00, 1, NULL, '2022-10-01 05:22:30'),
(4, 20001.00, 50000.00, 15.00, 5000.00, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `designation` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `rating` double(2,2) NOT NULL DEFAULT 0.99,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `name`, `designation`, `description`, `rating`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Syed Hammad', 'Ex Student', 'One aspect that truly sets Horizon College apart is its emphasis on values and ethics. The college instills in its students a sense of responsibility, integrity, and social awareness, preparing them not only for successful careers but also for contributing positively to society.', 0.99, 'testi_avatar_02_1692915825.png', 1, '2023-08-24 16:23:45', '2023-11-22 17:47:27'),
(3, 1, 'Sultan Ahmad', 'Ex Student', 'Such a great & nice college , the staff is very nice, I wish I could study again, excellent education ❤️ I miss horizon chakwal everyday.😢', 0.99, 'testi_avatar_03_1692915872.png', 1, '2023-08-24 16:24:32', '2023-11-22 17:44:44'),
(4, 1, 'M. Imran', 'Ex Student', 'Very good place for education and to learn\r\nMuch appreciated educational institute of chakwal\r\nWell equipped labs and expert faculty', 0.99, 'testi_avatar_1692915924.png', 1, '2023-08-24 16:25:24', '2023-11-22 17:43:31'),
(5, 1, 'Muhammad Saqib', 'Ex Student', 'Awesome building we\'ll spread.huge campus..Full developed n built each every department..vision oriented faculty...inshaaALLAH a university soon...well done the people behind this', 0.99, 'testi_avatar_02_1692915972.png', 1, '2023-08-24 16:26:12', '2023-11-22 17:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `topbar_settings`
--

CREATE TABLE `topbar_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `address_title` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `working_hour` varchar(191) DEFAULT NULL,
  `about_title` varchar(191) DEFAULT NULL,
  `about_summery` text DEFAULT NULL,
  `social_title` varchar(191) DEFAULT NULL,
  `social_status` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topbar_settings`
--

INSERT INTO `topbar_settings` (`id`, `address_title`, `address`, `email`, `phone`, `working_hour`, `about_title`, `about_summery`, `social_title`, `social_status`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Chakwal, Pakistan', 'fyp@horizoncollege.com', '0543-607725', NULL, NULL, NULL, NULL, 1, 1, '2023-08-24 15:52:44', '2023-11-24 07:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactionable_id` bigint(20) NOT NULL,
  `transactionable_type` varchar(191) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 Creadit & 2 Debit',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transactionable_id`, `transactionable_type`, `transaction_id`, `amount`, `type`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'App\\Models\\Student', 'H9Cpqn51xGm7mVpE', 3150.00, 1, 1, NULL, '2022-10-03 13:35:39', '2022-10-03 13:35:39'),
(2, 4, 'App\\Models\\Student', 'f5JWnxrigm6KyHgY', 3150.00, 1, 1, NULL, '2022-10-03 13:35:58', '2022-10-03 13:35:58'),
(3, 7, 'App\\Models\\Student', 'yo1FhMZ8dS3UqA8M', 4000.00, 1, 1, NULL, '2022-10-03 13:38:36', '2022-10-03 13:38:36'),
(4, 7, 'App\\Models\\Student', '31iN1HVqCYzslNU8', 4000.00, 2, 1, NULL, '2022-10-03 13:38:52', '2022-10-03 13:38:52'),
(5, 7, 'App\\Models\\Student', 'VPpGpvTamxJ8KZA6', 4050.00, 1, 1, NULL, '2022-10-03 13:39:15', '2022-10-03 13:39:15'),
(6, 7, 'App\\User', 'AOzKLAvS6WgUjcWW', 14189.00, 2, 1, NULL, '2022-10-03 15:36:52', '2022-10-03 15:36:52'),
(7, 8, 'App\\User', 'Za0r26eRfMei4lQa', 16526.00, 2, 1, NULL, '2022-10-03 15:37:35', '2022-10-03 15:37:35'),
(8, 3, 'App\\User', '8aSusUqJhjdRysWJ', 3000.00, 2, 1, NULL, '2022-10-03 15:45:04', '2022-10-03 15:45:04'),
(9, 14, 'App\\Models\\Student', '2kChl0YGtKwZCI4I', 1800.00, 1, 1, NULL, '2022-10-04 09:21:36', '2022-10-04 09:21:36'),
(10, 2, 'App\\Models\\Student', '9hAdG9i38LTJ0aPR', 3150.00, 2, 1, NULL, '2022-10-04 09:22:16', '2022-10-04 09:22:16'),
(11, 4, 'App\\Models\\Student', 'cIMb0tMlA9o2te2Z', 3150.00, 2, 1, NULL, '2022-10-04 09:22:29', '2022-10-04 09:22:29'),
(12, 1, 'App\\Models\\Student', 'kog5hZw38tMToRkE', 3200.00, 1, 1, NULL, '2022-10-04 09:22:54', '2022-10-04 09:22:54'),
(13, 4, 'App\\Models\\Student', 'UlYXx4aja6Ak3Wly', 3200.00, 1, 1, NULL, '2022-10-04 09:23:56', '2022-10-04 09:23:56'),
(14, 10, 'App\\Models\\Student', 'xfXmn8WO7BhybnAv', 1800.00, 1, 1, NULL, '2022-10-04 09:24:08', '2022-10-04 09:24:08'),
(15, 10, 'App\\Models\\Student', 'BUUHGkNA9Fun4Ift', 1800.00, 2, 1, NULL, '2022-10-04 10:10:50', '2022-10-04 10:10:50'),
(16, 12, 'App\\Models\\Student', 'BTXkfv9esWhw1A4Q', 1800.00, 1, 1, NULL, '2022-10-04 10:11:18', '2022-10-04 10:11:18'),
(17, 10, 'App\\Models\\Student', '7z16Tht5q9Xei6xZ', 1800.00, 1, 1, NULL, '2022-10-04 10:11:26', '2022-10-04 10:11:26'),
(18, 7, 'App\\User', 'KiwXkDl0MD2rfckr', 14189.00, 1, 1, NULL, '2022-10-04 10:22:13', '2022-10-04 10:22:13'),
(19, 7, 'App\\User', 'cj4IjjdIolJTJ3uK', 14189.00, 2, 1, NULL, '2022-10-04 10:22:30', '2022-10-04 10:22:30'),
(20, 4, 'App\\Models\\Student', 'XbscZanSZVsUZYMx', 1800.00, 1, 1, NULL, '2022-10-04 10:23:58', '2022-10-04 10:23:58'),
(21, 8, 'App\\Models\\Student', 'jWgYEu9vXOvpRWgP', 1800.00, 1, 1, NULL, '2023-02-13 11:54:05', '2023-02-13 11:54:05'),
(22, 5, 'App\\Models\\Student', 't58UYubvOVytQ6I2', 1800.00, 1, 1, NULL, '2023-02-13 11:55:00', '2023-02-13 11:55:00'),
(23, 7, 'App\\User', 'uFzvvWcKEPZQo1sJ', 14189.00, 1, 1, NULL, '2023-02-13 11:59:32', '2023-02-13 11:59:32'),
(24, 8, 'App\\User', 'R10BvOK5v7XdkJdm', 16526.00, 1, 1, NULL, '2023-02-13 11:59:36', '2023-02-13 11:59:36'),
(25, 3, 'App\\User', 'P6cFuywfB0TxDbiQ', 3000.00, 1, 1, NULL, '2023-02-13 12:01:45', '2023-02-13 12:01:45'),
(26, 3, 'App\\User', 'cSHqT2rl213GWXdd', 4300.00, 2, 1, NULL, '2023-02-13 12:02:24', '2023-02-13 12:02:24'),
(27, 2, 'App\\User', 'R9kMSPcqDHBQOTCb', 14886.00, 2, 1, NULL, '2023-02-13 12:02:40', '2023-02-13 12:02:40'),
(28, 7, 'App\\User', '6qQ4EuW9m9Xuduqm', 17969.00, 2, 1, NULL, '2023-02-13 12:02:49', '2023-02-13 12:02:49'),
(29, 9, 'App\\Models\\Student', 'E5CT2yfO92tLOktz', 1800.00, 1, 1, NULL, '2023-08-25 06:29:24', '2023-08-25 06:29:24'),
(30, 1, 'App\\Models\\Student', 'fK6t6Dj6RoxwzF7a', 1800.00, 1, 1, NULL, '2023-08-25 06:29:56', '2023-08-25 06:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_creadits`
--

CREATE TABLE `transfer_creadits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `marks` decimal(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_members`
--

CREATE TABLE `transport_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transportable_type` varchar(191) NOT NULL,
  `transportable_id` bigint(20) UNSIGNED NOT NULL,
  `transport_route_id` int(10) UNSIGNED NOT NULL,
  `transport_vehicle_id` int(10) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Inactive, 1 Active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_members`
--

INSERT INTO `transport_members` (`id`, `transportable_type`, `transportable_id`, `transport_route_id`, `transport_vehicle_id`, `start_date`, `end_date`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Student', 11, 1, 1, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:00:43', '2023-02-13 13:00:43'),
(2, 'App\\Models\\Student', 8, 2, 1, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:00:52', '2023-02-13 13:00:52'),
(3, 'App\\Models\\Student', 14, 1, 3, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:01:03', '2023-02-13 13:01:03'),
(4, 'App\\Models\\Student', 10, 2, 2, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:01:11', '2023-02-13 13:01:11'),
(5, 'App\\User', 8, 1, 1, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:01:42', '2023-02-13 13:01:42'),
(6, 'App\\User', 7, 2, 2, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:01:48', '2023-02-13 13:01:48'),
(7, 'App\\User', 3, 1, 3, '2023-02-13', NULL, NULL, 1, 1, NULL, '2023-02-13 13:01:55', '2023-02-13 13:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `transport_routes`
--

CREATE TABLE `transport_routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `fee` double(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_routes`
--

INSERT INTO `transport_routes` (`id`, `title`, `fee`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chakwal to balkasar', 50.00, NULL, 1, '2023-02-13 12:59:12', '2023-11-22 09:47:05'),
(2, 'Chakwal to Dhudial', 30.00, NULL, 1, '2023-02-13 12:59:32', '2023-11-22 09:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `transport_route_transport_vehicle`
--

CREATE TABLE `transport_route_transport_vehicle` (
  `transport_route_id` int(10) UNSIGNED NOT NULL,
  `transport_vehicle_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_route_transport_vehicle`
--

INSERT INTO `transport_route_transport_vehicle` (`transport_route_id`, `transport_vehicle_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `transport_vehicles`
--

CREATE TABLE `transport_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `model` varchar(191) DEFAULT NULL,
  `capacity` varchar(191) DEFAULT NULL,
  `year_made` varchar(191) DEFAULT NULL,
  `driver_name` varchar(191) DEFAULT NULL,
  `driver_license` text DEFAULT NULL,
  `driver_contact` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_vehicles`
--

INSERT INTO `transport_vehicles` (`id`, `number`, `type`, `model`, `capacity`, `year_made`, `driver_name`, `driver_license`, `driver_contact`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, '635', 'Bus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-02-13 12:59:55', '2023-02-13 12:59:55'),
(2, '788', 'Bus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-02-13 13:00:10', '2023-02-13 13:00:10'),
(3, '856', 'Bus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-02-13 13:00:20', '2023-02-13 13:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` varchar(191) NOT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `designation_id` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `father_name` varchar(191) DEFAULT NULL,
  `mother_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `password_text` longtext DEFAULT NULL,
  `gender` int(11) NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `joining_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `emergency_phone` varchar(191) DEFAULT NULL,
  `mother_tongue` varchar(191) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `blood_group` int(11) DEFAULT NULL,
  `nationality` varchar(191) DEFAULT NULL,
  `national_id` varchar(191) DEFAULT NULL,
  `passport_no` varchar(191) DEFAULT NULL,
  `present_province` int(10) UNSIGNED DEFAULT NULL,
  `present_district` int(10) UNSIGNED DEFAULT NULL,
  `present_village` text DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `permanent_province` int(10) UNSIGNED DEFAULT NULL,
  `permanent_district` int(10) UNSIGNED DEFAULT NULL,
  `permanent_village` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `education_level` varchar(191) DEFAULT NULL,
  `graduation_academy` varchar(191) DEFAULT NULL,
  `year_of_graduation` varchar(191) DEFAULT NULL,
  `graduation_field` varchar(191) DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `basic_salary` double(10,2) NOT NULL DEFAULT 0.00,
  `contract_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 Full Time & 2 Part Time',
  `work_shift` int(10) UNSIGNED DEFAULT NULL,
  `salary_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 Fixed & 2 Hourly',
  `bank_account_name` varchar(191) DEFAULT NULL,
  `bank_account_no` varchar(191) DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `ifsc_code` varchar(191) DEFAULT NULL,
  `bank_brach` varchar(191) DEFAULT NULL,
  `tin_no` varchar(191) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `resume` text DEFAULT NULL,
  `joining_letter` text DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `login` tinyint(1) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 Inactive, 1 Active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `religion` varchar(191) DEFAULT NULL,
  `caste` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `epf_no` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `staff_id`, `department_id`, `designation_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `email`, `email_verified_at`, `password`, `password_text`, `gender`, `dob`, `joining_date`, `ending_date`, `phone`, `emergency_phone`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `education_level`, `graduation_academy`, `year_of_graduation`, `graduation_field`, `experience`, `note`, `basic_salary`, `contract_type`, `work_shift`, `salary_type`, `bank_account_name`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_brach`, `tin_no`, `photo`, `signature`, `resume`, `joining_letter`, `is_admin`, `login`, `status`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `religion`, `caste`, `country`, `epf_no`) VALUES
(1, '1001', 1, 2, 'Super', 'Admin', 'ABC', 'XYZ', 'admin@mail.com', NULL, '$2y$10$RdSog4xnJYQlAL8CfEkScu5fq6lAK6PAHhRLiWRqqm.5Vbx3tgLTG', 'eyJpdiI6ImdEZVpac0I1amdTOVF0VXFobjZDOVE9PSIsInZhbHVlIjoiTmNUOHRNb0ZGTTVKN2JrNnNGdDJZdz09IiwibWFjIjoiODMyZDI4NDQzOWI2NjFmZTY2Y2QyZjRmZmExNjRiN2MyZTBlN2NmMDE5NDcyNGMwMGEwNjkwMjFiYmE1NWU0NiIsInRhZyI6IiJ9', 2, '2000-01-15', '2018-10-02', NULL, '0123456789', NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 1, NULL, NULL, 'Minima voluptatem f', 'Et sunt esse non pro', '2001', 'Eum sed do omnis mai', 'Quo sunt hic except', 'Distinctio Esse do', 50000.00, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'IFAkBv0zZ5tGM2FSHLZ4PelW4kYWbdUPicL1SY0VPaq1PJPLqXdV25GHHnvE', NULL, 1, '2022-09-30 12:00:46', '2023-11-18 07:43:02', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_program`
--

CREATE TABLE `user_program` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purpose_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `father_name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `visit_from` text DEFAULT NULL,
  `id_no` varchar(191) DEFAULT NULL,
  `token` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `persons` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `purpose_id`, `department_id`, `name`, `father_name`, `phone`, `email`, `address`, `visit_from`, `id_no`, `token`, `date`, `in_time`, `out_time`, `persons`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'Yoko Payne', 'Griffith Shaw', '+1 (466) 696-7792', 'koty@mailinator.com', NULL, 'Qui quis perferendis', NULL, 'Pass-100001', '2021-02-16', '00:00:00', '11:34:00', '1', 'Rem eu numquam dolor', NULL, 1, 1, NULL, '2022-10-01 11:49:03', '2022-10-01 11:49:03'),
(2, 3, 4, 'Ria Hodges', 'Lester Weber', '+1 (864) 185-6339', 'vubypa@mailinator.com', NULL, 'Voluptas id voluptas', NULL, 'Pass-100002', '2020-12-01', '00:00:00', '23:23:00', '1', 'Consequatur repellen', NULL, 1, 1, 1, '2022-10-01 11:49:30', '2022-10-01 11:50:04'),
(3, 4, 4, 'Astra Good', 'Cora Garrison', '+1 (873) 471-3381', 'dovejyjo@mailinator.com', NULL, 'Reiciendis id dolore', NULL, 'Pass-100003', '2022-01-21', '00:00:00', '03:35:00', '1', 'Qui saepe fuga Faci', 'logo_1664646638.jpg', 1, 1, 1, '2022-10-01 11:50:38', '2022-10-01 11:51:10'),
(4, 3, 3, 'Maile Chavez', 'Macy Harper', '+1 (703) 918-4114', 'zyxisiw@mailinator.com', NULL, 'Reprehenderit odio q', NULL, 'Pass-100004', '2022-10-01', '17:51:00', '19:55:00', '4', 'Odio id corrupti h', NULL, 1, 1, NULL, '2022-10-01 11:51:56', '2022-10-01 11:51:56'),
(5, 2, 3, 'Winifred Poole', 'Linus Guzman', '+1 (477) 757-3411', 'fysel@mailinator.com', NULL, 'A facere aut consequ', NULL, 'Pass-100005', '2020-09-16', '00:00:00', '08:55:00', '2', 'Similique totam esse', NULL, 1, 1, 1, '2022-10-01 11:52:20', '2022-10-01 11:52:42'),
(6, 4, 5, 'Lacey Mitchell', 'Zane Jefferson', '+1 (936) 186-6298', 'nywac@mailinator.com', NULL, 'Quis aute culpa aut', NULL, 'Pass-100006', '2021-10-01', '17:53:00', '16:11:00', '2', 'Vitae minima maiores', NULL, 1, 1, NULL, '2022-10-01 11:53:27', '2022-10-01 11:53:27'),
(7, 4, 1, 'Kirk Kline', 'Coby Rivas', '+1 (423) 673-6386', 'tife@mailinator.com', NULL, 'Porro aliquam sunt e', NULL, 'Pass-100007', '2020-08-20', '17:53:00', '03:57:00', '1', 'Placeat eiusmod qui', NULL, 1, 1, NULL, '2022-10-01 11:54:12', '2022-10-01 11:54:12'),
(8, 3, 2, 'Stewart Padilla', 'Cairo Stanton', '+1 (691) 309-1928', 'bavoc@mailinator.com', NULL, 'Cupiditate dolor pro', NULL, 'Pass-100008', '2021-05-22', '00:00:00', '10:47:00', '1', 'Eu eos lorem ab eos', NULL, 1, 1, NULL, '2022-10-01 11:54:40', '2022-10-01 11:54:40'),
(9, 4, 6, 'Jayme Holder', 'Barrett Mckee', '+1 (393) 487-6252', 'hixuter@mailinator.com', NULL, 'Maxime anim qui iust', NULL, 'Pass-100009', '2021-09-05', '00:00:00', '10:26:00', '1', 'Ex deserunt ea tenet', NULL, 1, 1, NULL, '2022-10-01 11:55:21', '2022-10-01 11:55:21'),
(10, 1, 3, 'Alexander Santana', 'Todd Clayton', '+1 (876) 649-1515', 'lypuhava@mailinator.com', NULL, 'Ab Nam eaque distinc', NULL, 'Pass-100010', '2022-06-12', '00:00:00', NULL, '1', 'Culpa sequi ad in ar', 'background-border_1664646980.png', 1, 1, NULL, '2022-10-01 11:56:20', '2022-10-01 11:56:20'),
(11, 1, 2, 'Neville Golden', 'Dane Holloway', '+1 (131) 631-6741', 'rumahorus@mailinator.com', NULL, 'Recusandae Vero eiu', NULL, 'Pass-100011', '2022-06-13', '00:00:00', NULL, '2', 'Repudiandae eaque sa', 'background-border_1664647025.png', 1, 1, NULL, '2022-10-01 11:57:05', '2022-10-01 11:57:05'),
(12, 4, 6, 'Keegan Mosley', 'Hu Blanchard', '+1 (869) 255-5927', 'xuhylal@mailinator.com', NULL, 'Quia beatae quibusda', NULL, 'Pass-100012', '2022-08-01', '17:57:00', '18:15:28', '1', 'Placeat itaque volu', NULL, 1, 1, 1, '2022-10-01 11:58:15', '2022-10-01 12:15:28'),
(13, 4, 4, 'Nasreen Bibi', 'Shafqat Mehmood', '03135656765', 'kaqi@mailinator.com', NULL, 'Tehsil chowk', NULL, 'Pass-100013', '2023-11-06', '13:24:00', '14:36:00', '2', 'Was attending event with child...', NULL, 1, 1, 1, '2023-08-25 07:24:40', '2023-11-18 08:01:33'),
(14, 3, 1, 'Haji Maqsood', 'Mechelle Stein', '03335905906', 'kikalemufo@mailinator.com', NULL, 'Balkasar', NULL, 'Pass-100014', '2023-11-01', '00:00:00', '01:56:00', '1', 'No notes..', NULL, 1, 1, 1, '2023-08-25 07:26:47', '2023-11-18 07:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `visit_purposes`
--

CREATE TABLE `visit_purposes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visit_purposes`
--

INSERT INTO `visit_purposes` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Invigilation', 'invigilation', NULL, 1, '2022-10-01 03:39:14', '2022-10-01 03:39:14'),
(2, 'Parent Meeting', 'parent-meeting', NULL, 1, '2022-10-01 03:39:30', '2022-10-01 03:39:30'),
(3, 'Enquiry', 'enquiry', NULL, 1, '2022-10-01 03:39:51', '2022-10-01 03:39:51'),
(4, 'Attend Event', 'attend-event', NULL, 1, '2022-10-01 04:05:36', '2022-10-01 04:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `web_events`
--

CREATE TABLE `web_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_events`
--

INSERT INTO `web_events` (`id`, `language_id`, `title`, `slug`, `date`, `time`, `address`, `description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Seminar', 'seminar', '2023-04-19', '04:36:00', 'Chakwal Campus', '<p>The world of search engine optimization is complex and ever-changing, but you can easily understand the basics, and even a small amount of SEO knowledge can make a big difference. Free SEO education is also widely available on the web, including in guides like this! (Woohoo!) This guide is designed to describe all major aspects of SEO, from finding the terms and phrases (keywords) that can generate qualified traffic to your website, to making your site friendly to search engines, to building links and marketing the unique value of your site.Etiam pharetra erat sed fermentum feugiat velit mauris egestas quam ut erat justo.</p>\r\n<p>Fusce eleifend donec sapien sed phase lusa pellentesque lacus.Vivamus lorem arcu semper duiac. Cras ornare arcu avamus nda leo Etiam ind arcu. Morbi justo mauris tempus pharetra interdum at congue semper purus. Lorem ipsum dolor sit.The world of search engine optimization is complex and ever-changing, but you can easily understand the basics.</p>\r\n<p>Lorem ipsum is simply free text used by copytyping refreshing. Neque porro est qui dolorem ipsum quia quaed inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Aelltes port lacus quis enim var sed efficitur turpis gilla sed sit amet finibus eros. Lorem Ipsum is simply dummy text of the printing.</p>\r\n<p>&nbsp;</p>', 'Seminar_3_1700483535.png', 1, '2023-08-24 16:38:22', '2023-11-20 12:32:16'),
(2, 1, 'Independence Day', 'independence-day', '2024-08-14', '00:39:00', 'Chakwal Campus', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'Independence_Day_1700483445.png', 1, '2023-08-24 16:40:12', '2023-11-20 12:30:45'),
(3, 1, 'Annual Opening Cermony', 'annual-opening-cermony', '2022-09-24', '02:41:00', 'Buchal Campus', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>&nbsp;</p>', 'Annual_Opening_Ceremony_1700483267.png', 1, '2023-08-24 16:41:48', '2023-11-20 12:27:47'),
(4, 1, 'Kashmir Day', 'kashmir-day', '2024-02-05', '10:00:00', 'Chakwal Campus', '<p>Horizon College Chakwal campus observes Kashmir Solidarity Day on February 5, 2024. In a show of unity and support, we come together to raise awareness and express solidarity with the people of Kashmir. This event promises insightful discussions, cultural reflections, and a platform for voices to be heard. Let us stand together to advocate for peace and justice in the region. Mark your calendars for a day of awareness, empathy, and collective strength at Horizon College Chakwal.</p>', 'Kashmir_Solidarity_Day_780x434_1700565793.jpg', 1, '2023-11-21 11:23:13', '2023-11-21 11:23:13'),
(5, 1, 'National Science Day', 'national-science-day', '2024-02-28', '13:30:00', 'Chakwal Campus', '<p>Join us at Horizon College Chakwal on February 28, 2024, as we celebrate National Science Day&mdash;a day dedicated to the spirit of scientific inquiry and discovery. This special occasion provides a platform for students, faculty, and science enthusiasts to come together and explore the wonders of science.</p>\r\n<p>At Horizon College, we are committed to fostering a love for science and technology, and National Science Day is the perfect opportunity to showcase the exciting advancements in various fields. The event will feature engaging activities, interactive exhibits, and thought-provoking presentations by renowned scientists, encouraging participants to delve into the fascinating world of science.</p>\r\n<p>Come and be a part of this celebration of knowledge, innovation, and curiosity. National Science Day at Horizon College promises to inspire the next generation of scientists and instill a passion for learning that extends beyond the classroom. Don\'t miss out on this enriching experience that promises to be both educational and entertaining!</p>', 'national_science_day_1700673408.webp', 1, '2023-11-22 17:16:48', '2023-11-22 17:16:48'),
(6, 1, 'Annual Function', 'annual-function', '2023-12-26', '11:45:00', 'Chakwal Campus', '<p>Get ready for the most anticipated event of the year at Horizon College Chakwal&mdash;the Annual Function! Taking place in the last week of December 2023, this extravaganza is a celebration of talent, creativity, and the vibrant spirit of our student community.</p>\r\n<p>&nbsp;</p>\r\n<p>All students are cordially invited to join us for a night filled with dazzling performances, captivating displays, and unforgettable memories. The Annual Function is a showcase of the diverse talents that make Horizon College a dynamic and thriving academic community. From mesmerizing cultural performances to impressive academic achievements, this event is a reflection of the accomplishments and the collective spirit of our students.</p>\r\n<p>&nbsp;</p>\r\n<p>So mark your calendars and come prepared for an evening of excitement, entertainment, and celebration. The Annual Function at Horizon College promises to be a night to remember, as we applaud the achievements of the past year and look forward to a future filled with success and excellence. Don\'t miss out on this spectacular event that brings the entire Horizon College family together in the spirit of joy and camaraderie!</p>', 'annual_fun_1700673661.jpeg', 1, '2023-11-22 17:21:01', '2023-11-22 17:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `work_shift_types`
--

CREATE TABLE `work_shift_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_shift_types`
--

INSERT INTO `work_shift_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Morning', 'morning', NULL, 1, NULL, NULL),
(2, 'Evening', 'evening', NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applications_email_unique` (`email`);

--
-- Indexes for table `application_settings`
--
ALTER TABLE `application_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_settings_slug_unique` (`slug`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_subject_id_foreign` (`subject_id`),
  ADD KEY `assignments_assign_by_foreign` (`assign_by`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `batches_title_unique` (`title`);

--
-- Indexes for table `batch_program`
--
ALTER TABLE `batch_program`
  ADD KEY `batch_program_batch_id_foreign` (`batch_id`),
  ADD KEY `batch_program_program_id_foreign` (`program_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`isbn`),
  ADD UNIQUE KEY `books_code_unique` (`code`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_categories_title_unique` (`title`),
  ADD UNIQUE KEY `book_categories_slug_unique` (`slug`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_requests_category_id_foreign` (`category_id`);

--
-- Indexes for table `call_to_actions`
--
ALTER TABLE `call_to_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_template_id_foreign` (`template_id`),
  ADD KEY `certificates_student_id_foreign` (`student_id`);

--
-- Indexes for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_templates_title_unique` (`title`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_rooms_title_unique` (`title`),
  ADD UNIQUE KEY `class_rooms_slug_unique` (`slug`);

--
-- Indexes for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_routines_teacher_id_foreign` (`teacher_id`),
  ADD KEY `class_routines_subject_id_foreign` (`subject_id`),
  ADD KEY `class_routines_room_id_foreign` (`room_id`),
  ADD KEY `class_routines_session_id_foreign` (`session_id`),
  ADD KEY `class_routines_program_id_foreign` (`program_id`),
  ADD KEY `class_routines_semester_id_foreign` (`semester_id`),
  ADD KEY `class_routines_section_id_foreign` (`section_id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complains_type_id_foreign` (`type_id`),
  ADD KEY `complains_source_id_foreign` (`source_id`);

--
-- Indexes for table `complain_sources`
--
ALTER TABLE `complain_sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `complain_sources_title_unique` (`title`),
  ADD UNIQUE KEY `complain_sources_slug_unique` (`slug`);

--
-- Indexes for table `complain_types`
--
ALTER TABLE `complain_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `complain_types_title_unique` (`title`),
  ADD UNIQUE KEY `complain_types_slug_unique` (`slug`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_type_id_foreign` (`type_id`);

--
-- Indexes for table `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_types_title_unique` (`title`),
  ADD UNIQUE KEY `content_types_slug_unique` (`slug`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_title_unique` (`title`),
  ADD UNIQUE KEY `courses_slug_unique` (`slug`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_title_unique` (`title`),
  ADD UNIQUE KEY `departments_slug_unique` (`slug`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_title_unique` (`title`),
  ADD UNIQUE KEY `designations_slug_unique` (`slug`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_province_id_foreign` (`province_id`);

--
-- Indexes for table `docables`
--
ALTER TABLE `docables`
  ADD UNIQUE KEY `docables_document_id_docable_id_docable_type_unique` (`document_id`,`docable_id`,`docable_type`),
  ADD KEY `docables_docable_type_docable_id_index` (`docable_type`,`docable_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_notifies`
--
ALTER TABLE `email_notifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enquiries_reference_id_foreign` (`reference_id`),
  ADD KEY `enquiries_source_id_foreign` (`source_id`),
  ADD KEY `enquiries_program_id_foreign` (`program_id`);

--
-- Indexes for table `enquiry_references`
--
ALTER TABLE `enquiry_references`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enquiry_references_title_unique` (`title`),
  ADD UNIQUE KEY `enquiry_references_slug_unique` (`slug`);

--
-- Indexes for table `enquiry_sources`
--
ALTER TABLE `enquiry_sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enquiry_sources_title_unique` (`title`),
  ADD UNIQUE KEY `enquiry_sources_slug_unique` (`slug`);

--
-- Indexes for table `enroll_subjects`
--
ALTER TABLE `enroll_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enroll_subjects_program_id_foreign` (`program_id`),
  ADD KEY `enroll_subjects_semester_id_foreign` (`semester_id`),
  ADD KEY `enroll_subjects_section_id_foreign` (`section_id`);

--
-- Indexes for table `enroll_subject_subject`
--
ALTER TABLE `enroll_subject_subject`
  ADD KEY `enroll_subject_subject_enroll_subject_id_foreign` (`enroll_subject_id`),
  ADD KEY `enroll_subject_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_student_enroll_id_foreign` (`student_enroll_id`),
  ADD KEY `exams_subject_id_foreign` (`subject_id`),
  ADD KEY `exams_exam_type_id_foreign` (`exam_type_id`);

--
-- Indexes for table `exam_routines`
--
ALTER TABLE `exam_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_routines_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `exam_routines_session_id_foreign` (`session_id`),
  ADD KEY `exam_routines_program_id_foreign` (`program_id`),
  ADD KEY `exam_routines_semester_id_foreign` (`semester_id`),
  ADD KEY `exam_routines_section_id_foreign` (`section_id`),
  ADD KEY `exam_routines_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `exam_routine_room`
--
ALTER TABLE `exam_routine_room`
  ADD KEY `exam_routine_room_exam_routine_id_foreign` (`exam_routine_id`),
  ADD KEY `exam_routine_room_room_id_foreign` (`room_id`);

--
-- Indexes for table `exam_routine_user`
--
ALTER TABLE `exam_routine_user`
  ADD KEY `exam_routine_user_exam_routine_id_foreign` (`exam_routine_id`),
  ADD KEY `exam_routine_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_title_unique` (`title`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_category_id_foreign` (`category_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `expense_categories_title_unique` (`title`),
  ADD UNIQUE KEY `expense_categories_slug_unique` (`slug`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculties_title_unique` (`title`),
  ADD UNIQUE KEY `faculties_slug_unique` (`slug`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faqs_title_unique` (`title`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `features_title_unique` (`title`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_student_enroll_id_foreign` (`student_enroll_id`),
  ADD KEY `fees_category_id_foreign` (`category_id`);

--
-- Indexes for table `fees_categories`
--
ALTER TABLE `fees_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fees_categories_title_unique` (`title`),
  ADD UNIQUE KEY `fees_categories_slug_unique` (`slug`);

--
-- Indexes for table `fees_category_fees_discount`
--
ALTER TABLE `fees_category_fees_discount`
  ADD KEY `fees_category_fees_discount_fees_category_id_foreign` (`fees_category_id`),
  ADD KEY `fees_category_fees_discount_fees_discount_id_foreign` (`fees_discount_id`);

--
-- Indexes for table `fees_category_fees_fine`
--
ALTER TABLE `fees_category_fees_fine`
  ADD KEY `fees_category_fees_fine_fees_category_id_foreign` (`fees_category_id`),
  ADD KEY `fees_category_fees_fine_fees_fine_id_foreign` (`fees_fine_id`);

--
-- Indexes for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_discount_status_type`
--
ALTER TABLE `fees_discount_status_type`
  ADD KEY `fees_discount_status_type_fees_discount_id_foreign` (`fees_discount_id`),
  ADD KEY `fees_discount_status_type_status_type_id_foreign` (`status_type_id`);

--
-- Indexes for table `fees_fines`
--
ALTER TABLE `fees_fines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_masters`
--
ALTER TABLE `fees_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_masters_category_id_foreign` (`category_id`);

--
-- Indexes for table `fees_master_student_enroll`
--
ALTER TABLE `fees_master_student_enroll`
  ADD KEY `fees_master_student_enroll_fees_master_id_foreign` (`fees_master_id`),
  ADD KEY `fees_master_student_enroll_student_enroll_id_foreign` (`student_enroll_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fields_slug_unique` (`slug`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grades_title_unique` (`title`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hostels_name_unique` (`name`);

--
-- Indexes for table `hostel_members`
--
ALTER TABLE `hostel_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hostel_members_hostelable_type_hostelable_id_index` (`hostelable_type`,`hostelable_id`),
  ADD KEY `hostel_members_hostel_room_id_foreign` (`hostel_room_id`);

--
-- Indexes for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hostel_rooms_hostel_id_foreign` (`hostel_id`),
  ADD KEY `hostel_rooms_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `hostel_room_types`
--
ALTER TABLE `hostel_room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hostel_room_types_title_unique` (`title`);

--
-- Indexes for table `id_card_settings`
--
ALTER TABLE `id_card_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_card_settings_slug_unique` (`slug`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incomes_category_id_foreign` (`category_id`);

--
-- Indexes for table `income_categories`
--
ALTER TABLE `income_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `income_categories_title_unique` (`title`),
  ADD UNIQUE KEY `income_categories_slug_unique` (`slug`);

--
-- Indexes for table `issue_returns`
--
ALTER TABLE `issue_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_returns_member_id_foreign` (`member_id`),
  ADD KEY `issue_returns_book_id_foreign` (`book_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_name_unique` (`name`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_categories_title_unique` (`title`),
  ADD UNIQUE KEY `item_categories_slug_unique` (`slug`);

--
-- Indexes for table `item_issues`
--
ALTER TABLE `item_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_issues_item_id_foreign` (`item_id`),
  ADD KEY `item_issues_user_id_foreign` (`user_id`);

--
-- Indexes for table `item_stocks`
--
ALTER TABLE `item_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_stocks_item_id_foreign` (`item_id`),
  ADD KEY `item_stocks_store_id_foreign` (`store_id`);

--
-- Indexes for table `item_stores`
--
ALTER TABLE `item_stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_stores_title_unique` (`title`),
  ADD UNIQUE KEY `item_stores_store_no_unique` (`store_no`);

--
-- Indexes for table `item_suppliers`
--
ALTER TABLE `item_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_suppliers_title_unique` (`title`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_name_unique` (`name`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_type_id_foreign` (`type_id`),
  ADD KEY `leaves_user_id_foreign` (`user_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_types_title_unique` (`title`),
  ADD UNIQUE KEY `leave_types_slug_unique` (`slug`);

--
-- Indexes for table `library_members`
--
ALTER TABLE `library_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_members_memberable_type_memberable_id_index` (`memberable_type`,`memberable_id`);

--
-- Indexes for table `mail_settings`
--
ALTER TABLE `mail_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marksheet_settings`
--
ALTER TABLE `marksheet_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `marksheet_settings_title_unique` (`title`);

--
-- Indexes for table `meeting_schedules`
--
ALTER TABLE `meeting_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_schedules_type_id_foreign` (`type_id`);

--
-- Indexes for table `meeting_types`
--
ALTER TABLE `meeting_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meeting_types_title_unique` (`title`),
  ADD UNIQUE KEY `meeting_types_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_noteable_type_noteable_id_index` (`noteable_type`,`noteable_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notices_notice_no_unique` (`notice_no`),
  ADD KEY `notices_category_id_foreign` (`category_id`);

--
-- Indexes for table `notice_categories`
--
ALTER TABLE `notice_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notice_categories_title_unique` (`title`),
  ADD UNIQUE KEY `notice_categories_slug_unique` (`slug`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `outside_users`
--
ALTER TABLE `outside_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `outside_users_email_unique` (`email`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_title_unique` (`title`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_details`
--
ALTER TABLE `payroll_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_details_payroll_id_foreign` (`payroll_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phone_logs`
--
ALTER TABLE `phone_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postal_exchanges_category_id_foreign` (`category_id`);

--
-- Indexes for table `postal_exchange_types`
--
ALTER TABLE `postal_exchange_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_exchange_types_title_unique` (`title`),
  ADD UNIQUE KEY `postal_exchange_types_slug_unique` (`slug`);

--
-- Indexes for table `print_settings`
--
ALTER TABLE `print_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `print_settings_slug_unique` (`slug`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `programs_title_unique` (`title`),
  ADD UNIQUE KEY `programs_slug_unique` (`slug`),
  ADD KEY `programs_faculty_id_foreign` (`faculty_id`);

--
-- Indexes for table `program_class_room`
--
ALTER TABLE `program_class_room`
  ADD KEY `program_class_room_program_id_foreign` (`program_id`),
  ADD KEY `program_class_room_class_room_id_foreign` (`class_room_id`);

--
-- Indexes for table `program_semester`
--
ALTER TABLE `program_semester`
  ADD KEY `program_semester_program_id_foreign` (`program_id`),
  ADD KEY `program_semester_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `program_semester_sections`
--
ALTER TABLE `program_semester_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_semester_sections_program_id_foreign` (`program_id`),
  ADD KEY `program_semester_sections_semester_id_foreign` (`semester_id`),
  ADD KEY `program_semester_sections_section_id_foreign` (`section_id`);

--
-- Indexes for table `program_session`
--
ALTER TABLE `program_session`
  ADD KEY `program_session_program_id_foreign` (`program_id`),
  ADD KEY `program_session_session_id_foreign` (`session_id`);

--
-- Indexes for table `program_subject`
--
ALTER TABLE `program_subject`
  ADD KEY `program_subject_program_id_foreign` (`program_id`),
  ADD KEY `program_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `provinces_title_unique` (`title`),
  ADD UNIQUE KEY `provinces_slug_unique` (`slug`);

--
-- Indexes for table `result_contributions`
--
ALTER TABLE `result_contributions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedule_settings`
--
ALTER TABLE `schedule_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedule_settings_slug_unique` (`slug`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_title_unique` (`title`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `semesters_title_unique` (`title`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sessions_title_unique` (`title`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sliders_title_unique` (`title`);

--
-- Indexes for table `social_settings`
--
ALTER TABLE `social_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_attendances`
--
ALTER TABLE `staff_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_attendances_user_id_foreign` (`user_id`);

--
-- Indexes for table `staff_hourly_attendances`
--
ALTER TABLE `staff_hourly_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_hourly_attendances_user_id_foreign` (`user_id`),
  ADD KEY `staff_hourly_attendances_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `status_types`
--
ALTER TABLE `status_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_types_title_unique` (`title`),
  ADD UNIQUE KEY `status_types_slug_unique` (`slug`);

--
-- Indexes for table `status_type_student`
--
ALTER TABLE `status_type_student`
  ADD KEY `status_type_student_status_type_id_foreign` (`status_type_id`),
  ADD KEY `status_type_student_student_id_foreign` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_student_id_unique` (`student_id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `student_assignments`
--
ALTER TABLE `student_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_assignments_student_enroll_id_foreign` (`student_enroll_id`),
  ADD KEY `student_assignments_assignment_id_foreign` (`assignment_id`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_attendances_student_enroll_id_foreign` (`student_enroll_id`),
  ADD KEY `student_attendances_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `student_enrolls`
--
ALTER TABLE `student_enrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_enrolls_student_id_foreign` (`student_id`),
  ADD KEY `student_enrolls_program_id_foreign` (`program_id`),
  ADD KEY `student_enrolls_session_id_foreign` (`session_id`),
  ADD KEY `student_enrolls_semester_id_foreign` (`semester_id`),
  ADD KEY `student_enrolls_section_id_foreign` (`section_id`);

--
-- Indexes for table `student_enroll_subject`
--
ALTER TABLE `student_enroll_subject`
  ADD KEY `student_enroll_subject_student_enroll_id_foreign` (`student_enroll_id`),
  ADD KEY `student_enroll_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `student_leaves`
--
ALTER TABLE `student_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_leaves_student_id_foreign` (`student_id`);

--
-- Indexes for table `student_relatives`
--
ALTER TABLE `student_relatives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_relatives_student_id_foreign` (`student_id`);

--
-- Indexes for table `student_transfers`
--
ALTER TABLE `student_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_transfers_student_id_foreign` (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_title_unique` (`title`),
  ADD UNIQUE KEY `subjects_code_unique` (`code`);

--
-- Indexes for table `subject_markings`
--
ALTER TABLE `subject_markings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_markings_student_enroll_id_foreign` (`student_enroll_id`),
  ADD KEY `subject_markings_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `s_m_s_notifies`
--
ALTER TABLE `s_m_s_notifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_m_s_settings`
--
ALTER TABLE `s_m_s_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `testimonials_name_unique` (`name`);

--
-- Indexes for table `topbar_settings`
--
ALTER TABLE `topbar_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_transaction_id_unique` (`transaction_id`);

--
-- Indexes for table `transfer_creadits`
--
ALTER TABLE `transfer_creadits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_creadits_student_id_foreign` (`student_id`),
  ADD KEY `transfer_creadits_program_id_foreign` (`program_id`),
  ADD KEY `transfer_creadits_session_id_foreign` (`session_id`),
  ADD KEY `transfer_creadits_semester_id_foreign` (`semester_id`),
  ADD KEY `transfer_creadits_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `transport_members`
--
ALTER TABLE `transport_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_members_transportable_type_transportable_id_index` (`transportable_type`,`transportable_id`),
  ADD KEY `transport_members_transport_route_id_foreign` (`transport_route_id`),
  ADD KEY `transport_members_transport_vehicle_id_foreign` (`transport_vehicle_id`);

--
-- Indexes for table `transport_routes`
--
ALTER TABLE `transport_routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transport_routes_title_unique` (`title`);

--
-- Indexes for table `transport_route_transport_vehicle`
--
ALTER TABLE `transport_route_transport_vehicle`
  ADD KEY `transport_route_transport_vehicle_transport_route_id_foreign` (`transport_route_id`),
  ADD KEY `transport_route_transport_vehicle_transport_vehicle_id_foreign` (`transport_vehicle_id`);

--
-- Indexes for table `transport_vehicles`
--
ALTER TABLE `transport_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_staff_id_unique` (`staff_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_program`
--
ALTER TABLE `user_program`
  ADD KEY `user_program_user_id_foreign` (`user_id`),
  ADD KEY `user_program_program_id_foreign` (`program_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitors_purpose_id_foreign` (`purpose_id`),
  ADD KEY `visitors_department_id_foreign` (`department_id`);

--
-- Indexes for table `visit_purposes`
--
ALTER TABLE `visit_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visit_purposes_title_unique` (`title`),
  ADD UNIQUE KEY `visit_purposes_slug_unique` (`slug`);

--
-- Indexes for table `web_events`
--
ALTER TABLE `web_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_shift_types`
--
ALTER TABLE `work_shift_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `work_shift_types_title_unique` (`title`),
  ADD UNIQUE KEY `work_shift_types_slug_unique` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `application_settings`
--
ALTER TABLE `application_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `call_to_actions`
--
ALTER TABLE `call_to_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_routines`
--
ALTER TABLE `class_routines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complain_sources`
--
ALTER TABLE `complain_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complain_types`
--
ALTER TABLE `complain_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content_types`
--
ALTER TABLE `content_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_notifies`
--
ALTER TABLE `email_notifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `enquiry_references`
--
ALTER TABLE `enquiry_references`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enquiry_sources`
--
ALTER TABLE `enquiry_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enroll_subjects`
--
ALTER TABLE `enroll_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `exam_routines`
--
ALTER TABLE `exam_routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fees_categories`
--
ALTER TABLE `fees_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fees_fines`
--
ALTER TABLE `fees_fines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fees_masters`
--
ALTER TABLE `fees_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hostel_members`
--
ALTER TABLE `hostel_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostel_room_types`
--
ALTER TABLE `hostel_room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `id_card_settings`
--
ALTER TABLE `id_card_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `issue_returns`
--
ALTER TABLE `issue_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_issues`
--
ALTER TABLE `item_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_stocks`
--
ALTER TABLE `item_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_stores`
--
ALTER TABLE `item_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_suppliers`
--
ALTER TABLE `item_suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mail_settings`
--
ALTER TABLE `mail_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marksheet_settings`
--
ALTER TABLE `marksheet_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meeting_schedules`
--
ALTER TABLE `meeting_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meeting_types`
--
ALTER TABLE `meeting_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notice_categories`
--
ALTER TABLE `notice_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `outside_users`
--
ALTER TABLE `outside_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payroll_details`
--
ALTER TABLE `payroll_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1506;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_logs`
--
ALTER TABLE `phone_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `postal_exchange_types`
--
ALTER TABLE `postal_exchange_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `print_settings`
--
ALTER TABLE `print_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `program_semester_sections`
--
ALTER TABLE `program_semester_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `result_contributions`
--
ALTER TABLE `result_contributions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schedule_settings`
--
ALTER TABLE `schedule_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_settings`
--
ALTER TABLE `social_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_attendances`
--
ALTER TABLE `staff_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `staff_hourly_attendances`
--
ALTER TABLE `staff_hourly_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `status_types`
--
ALTER TABLE `status_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_assignments`
--
ALTER TABLE `student_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `student_enrolls`
--
ALTER TABLE `student_enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `student_leaves`
--
ALTER TABLE `student_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_relatives`
--
ALTER TABLE `student_relatives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `student_transfers`
--
ALTER TABLE `student_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subject_markings`
--
ALTER TABLE `subject_markings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `s_m_s_notifies`
--
ALTER TABLE `s_m_s_notifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `s_m_s_settings`
--
ALTER TABLE `s_m_s_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `topbar_settings`
--
ALTER TABLE `topbar_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transfer_creadits`
--
ALTER TABLE `transfer_creadits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transport_members`
--
ALTER TABLE `transport_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transport_routes`
--
ALTER TABLE `transport_routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transport_vehicles`
--
ALTER TABLE `transport_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `visit_purposes`
--
ALTER TABLE `visit_purposes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `web_events`
--
ALTER TABLE `web_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `work_shift_types`
--
ALTER TABLE `work_shift_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_assign_by_foreign` FOREIGN KEY (`assign_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `batch_program`
--
ALTER TABLE `batch_program`
  ADD CONSTRAINT `batch_program_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `batch_program_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `book_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD CONSTRAINT `book_requests_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `book_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `certificate_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD CONSTRAINT `class_routines_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complains`
--
ALTER TABLE `complains`
  ADD CONSTRAINT `complains_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `complain_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `content_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `docables`
--
ALTER TABLE `docables`
  ADD CONSTRAINT `docables_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enroll_subjects`
--
ALTER TABLE `enroll_subjects`
  ADD CONSTRAINT `enroll_subjects_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enroll_subjects_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enroll_subjects_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enroll_subject_subject`
--
ALTER TABLE `enroll_subject_subject`
  ADD CONSTRAINT `enroll_subject_subject_enroll_subject_id_foreign` FOREIGN KEY (`enroll_subject_id`) REFERENCES `enroll_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enroll_subject_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_routines`
--
ALTER TABLE `exam_routines`
  ADD CONSTRAINT `exam_routines_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_routine_room`
--
ALTER TABLE `exam_routine_room`
  ADD CONSTRAINT `exam_routine_room_exam_routine_id_foreign` FOREIGN KEY (`exam_routine_id`) REFERENCES `exam_routines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routine_room_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_routine_user`
--
ALTER TABLE `exam_routine_user`
  ADD CONSTRAINT `exam_routine_user_exam_routine_id_foreign` FOREIGN KEY (`exam_routine_id`) REFERENCES `exam_routines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routine_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_category_fees_discount`
--
ALTER TABLE `fees_category_fees_discount`
  ADD CONSTRAINT `fees_category_fees_discount_fees_category_id_foreign` FOREIGN KEY (`fees_category_id`) REFERENCES `fees_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_category_fees_discount_fees_discount_id_foreign` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_category_fees_fine`
--
ALTER TABLE `fees_category_fees_fine`
  ADD CONSTRAINT `fees_category_fees_fine_fees_category_id_foreign` FOREIGN KEY (`fees_category_id`) REFERENCES `fees_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_category_fees_fine_fees_fine_id_foreign` FOREIGN KEY (`fees_fine_id`) REFERENCES `fees_fines` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_discount_status_type`
--
ALTER TABLE `fees_discount_status_type`
  ADD CONSTRAINT `fees_discount_status_type_fees_discount_id_foreign` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_discount_status_type_status_type_id_foreign` FOREIGN KEY (`status_type_id`) REFERENCES `status_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_master_student_enroll`
--
ALTER TABLE `fees_master_student_enroll`
  ADD CONSTRAINT `fees_master_student_enroll_fees_master_id_foreign` FOREIGN KEY (`fees_master_id`) REFERENCES `fees_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_master_student_enroll_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hostel_members`
--
ALTER TABLE `hostel_members`
  ADD CONSTRAINT `hostel_members_hostel_room_id_foreign` FOREIGN KEY (`hostel_room_id`) REFERENCES `hostel_rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD CONSTRAINT `hostel_rooms_hostel_id_foreign` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hostel_rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `hostel_room_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `incomes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `income_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `issue_returns`
--
ALTER TABLE `issue_returns`
  ADD CONSTRAINT `issue_returns_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issue_returns_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `library_members` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `item_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issues`
--
ALTER TABLE `item_issues`
  ADD CONSTRAINT `item_issues_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issues_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stocks`
--
ALTER TABLE `item_stocks`
  ADD CONSTRAINT `item_stocks_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stocks_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `item_stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_schedules`
--
ALTER TABLE `meeting_schedules`
  ADD CONSTRAINT `meeting_schedules_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `meeting_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `notice_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payroll_details`
--
ALTER TABLE `payroll_details`
  ADD CONSTRAINT `payroll_details_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  ADD CONSTRAINT `postal_exchanges_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `postal_exchange_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_class_room`
--
ALTER TABLE `program_class_room`
  ADD CONSTRAINT `program_class_room_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_class_room_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_semester`
--
ALTER TABLE `program_semester`
  ADD CONSTRAINT `program_semester_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_semester_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_semester_sections`
--
ALTER TABLE `program_semester_sections`
  ADD CONSTRAINT `program_semester_sections_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_semester_sections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_semester_sections_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_session`
--
ALTER TABLE `program_session`
  ADD CONSTRAINT `program_session_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_session_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_subject`
--
ALTER TABLE `program_subject`
  ADD CONSTRAINT `program_subject_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_attendances`
--
ALTER TABLE `staff_attendances`
  ADD CONSTRAINT `staff_attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_hourly_attendances`
--
ALTER TABLE `staff_hourly_attendances`
  ADD CONSTRAINT `staff_hourly_attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_hourly_attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `status_type_student`
--
ALTER TABLE `status_type_student`
  ADD CONSTRAINT `status_type_student_status_type_id_foreign` FOREIGN KEY (`status_type_id`) REFERENCES `status_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `status_type_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_assignments`
--
ALTER TABLE `student_assignments`
  ADD CONSTRAINT `student_assignments_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_assignments_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD CONSTRAINT `student_attendances_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_enrolls`
--
ALTER TABLE `student_enrolls`
  ADD CONSTRAINT `student_enrolls_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_enrolls_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_enrolls_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_enrolls_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_enrolls_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_enroll_subject`
--
ALTER TABLE `student_enroll_subject`
  ADD CONSTRAINT `student_enroll_subject_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_enroll_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_leaves`
--
ALTER TABLE `student_leaves`
  ADD CONSTRAINT `student_leaves_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_relatives`
--
ALTER TABLE `student_relatives`
  ADD CONSTRAINT `student_relatives_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_transfers`
--
ALTER TABLE `student_transfers`
  ADD CONSTRAINT `student_transfers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_markings`
--
ALTER TABLE `subject_markings`
  ADD CONSTRAINT `subject_markings_student_enroll_id_foreign` FOREIGN KEY (`student_enroll_id`) REFERENCES `student_enrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_markings_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfer_creadits`
--
ALTER TABLE `transfer_creadits`
  ADD CONSTRAINT `transfer_creadits_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfer_creadits_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfer_creadits_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfer_creadits_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfer_creadits_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_members`
--
ALTER TABLE `transport_members`
  ADD CONSTRAINT `transport_members_transport_route_id_foreign` FOREIGN KEY (`transport_route_id`) REFERENCES `transport_routes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transport_members_transport_vehicle_id_foreign` FOREIGN KEY (`transport_vehicle_id`) REFERENCES `transport_vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_route_transport_vehicle`
--
ALTER TABLE `transport_route_transport_vehicle`
  ADD CONSTRAINT `transport_route_transport_vehicle_transport_route_id_foreign` FOREIGN KEY (`transport_route_id`) REFERENCES `transport_routes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transport_route_transport_vehicle_transport_vehicle_id_foreign` FOREIGN KEY (`transport_vehicle_id`) REFERENCES `transport_vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_program`
--
ALTER TABLE `user_program`
  ADD CONSTRAINT `user_program_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_program_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `visitors_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `visitors_purpose_id_foreign` FOREIGN KEY (`purpose_id`) REFERENCES `visit_purposes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
