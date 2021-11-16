-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 05:11 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_portal_django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add customfield', 8, 'add_customfield'),
(30, 'Can change customfield', 8, 'change_customfield'),
(31, 'Can delete customfield', 8, 'delete_customfield'),
(32, 'Can view customfield', 8, 'view_customfield');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$hYo8dEFANzdAzO76LJMCe1$ePf2M1zI+fewZDsYqJUamXXrX/onAHioNpzkBcmWj8Y=', '2021-11-16 15:43:27.670248', 1, 'ruhul', '', '', 'ruhul@tbd.com', 1, 1, '2021-11-16 15:43:12.722288');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customfields_category`
--

CREATE TABLE `customfields_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customfields_category`
--

INSERT INTO `customfields_category` (`id`, `name`, `parent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Gym', 0, 'active', '2021-11-16 15:57:52.669414', '2021-11-16 15:57:52.669414'),
(2, 'Sensory Treatment', 0, 'active', '2021-11-16 15:58:18.421172', '2021-11-16 15:58:18.421172'),
(3, 'Chiropractic', 0, 'active', '2021-11-16 15:58:30.132393', '2021-11-16 15:58:30.132393'),
(4, 'Dental', 0, 'active', '2021-11-16 15:58:47.621568', '2021-11-16 15:58:47.621568'),
(5, 'Attorney', 0, 'active', '2021-11-16 15:59:00.692302', '2021-11-16 15:59:00.692302'),
(6, 'US - In-Person - In-Person', 1, 'active', '2021-11-16 16:00:30.028017', '2021-11-16 16:00:30.028017'),
(7, 'US - Phone - Remote', 1, 'active', '2021-11-16 16:00:45.989371', '2021-11-16 16:00:45.989371'),
(8, 'US - Adam L - In-Person - In-Person', 2, 'active', '2021-11-16 16:03:28.838638', '2021-11-16 16:03:28.838638'),
(9, 'US - Michael F Kids Martial Arts - Phone - Remote', 2, 'active', '2021-11-16 16:03:37.228434', '2021-11-16 16:03:37.228434'),
(10, 'US - Workout First - In-Person - In-Person', 3, 'active', '2021-11-16 16:03:44.573625', '2021-11-16 16:03:44.573625'),
(11, 'US - Zoom - Remote', 3, 'active', '2021-11-16 16:03:49.597165', '2021-11-16 16:03:49.597165'),
(12, 'US - Maximum Float - In-Person - In-Person', 4, 'active', '2021-11-16 16:03:55.796069', '2021-11-16 16:03:55.796069'),
(13, 'US - Booked Up Massage - In-Person - In-Person', 4, 'active', '2021-11-16 16:03:59.964097', '2021-11-16 16:03:59.964097'),
(14, 'US - Maximum Float - Phone - In-Person', 5, 'active', '2021-11-16 16:04:04.917127', '2021-11-16 16:04:04.917127'),
(15, 'US - Med Spa - Phone - In-Person', 5, 'active', '2021-11-16 16:04:12.989618', '2021-11-16 16:04:12.989618');

-- --------------------------------------------------------

--
-- Table structure for table `customfields_customfield`
--

CREATE TABLE `customfields_customfield` (
  `id` bigint(20) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `field_value` longtext DEFAULT NULL,
  `system_field` varchar(100) NOT NULL,
  `field_type` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customfields_customfield`
--

INSERT INTO `customfields_customfield` (`id`, `field_name`, `field_value`, `system_field`, `field_type`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'customer_first_name', 'Customer Name', 'yes', 'text', '2021-11-16 22:10:32.000000', '2021-11-16 22:10:35.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-11-16 15:57:52.670378', '1', 'Gym', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-11-16 15:58:18.422666', '2', 'Sensory Treatment', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-11-16 15:58:30.133389', '3', 'Chiropractic', 1, '[{\"added\": {}}]', 7, 1),
(4, '2021-11-16 15:58:47.621568', '4', 'Dental', 1, '[{\"added\": {}}]', 7, 1),
(5, '2021-11-16 15:59:00.693294', '5', 'Attorney', 1, '[{\"added\": {}}]', 7, 1),
(6, '2021-11-16 16:00:30.028977', '6', 'US - In-Person - In-Person', 1, '[{\"added\": {}}]', 7, 1),
(7, '2021-11-16 16:00:45.990906', '7', 'US - Phone - Remote', 1, '[{\"added\": {}}]', 7, 1),
(8, '2021-11-16 16:00:57.182176', '8', 'US - Adam L - In-Person - In-Person', 1, '[{\"added\": {}}]', 7, 1),
(9, '2021-11-16 16:01:08.836021', '9', 'US - Michael F Kids Martial Arts - Phone - Remote', 1, '[{\"added\": {}}]', 7, 1),
(10, '2021-11-16 16:01:21.709031', '10', 'US - Workout First - In-Person - In-Person', 1, '[{\"added\": {}}]', 7, 1),
(11, '2021-11-16 16:01:35.734130', '11', 'US - Zoom - Remote', 1, '[{\"added\": {}}]', 7, 1),
(12, '2021-11-16 16:02:13.799031', '12', 'US - Maximum Float - In-Person - In-Person', 1, '[{\"added\": {}}]', 7, 1),
(13, '2021-11-16 16:02:30.142005', '13', 'US - Booked Up Massage - In-Person - In-Person', 1, '[{\"added\": {}}]', 7, 1),
(14, '2021-11-16 16:02:39.502086', '14', 'US - Maximum Float - Phone - In-Person', 1, '[{\"added\": {}}]', 7, 1),
(15, '2021-11-16 16:02:51.229901', '15', 'US - Med Spa - Phone - In-Person', 1, '[{\"added\": {}}]', 7, 1),
(16, '2021-11-16 16:03:28.839950', '8', 'US - Adam L - In-Person - In-Person', 2, '[{\"changed\": {\"fields\": [\"Parent\"]}}]', 7, 1),
(17, '2021-11-16 16:03:37.230112', '9', 'US - Michael F Kids Martial Arts - Phone - Remote', 2, '[{\"changed\": {\"fields\": [\"Parent\"]}}]', 7, 1),
(18, '2021-11-16 16:03:44.575006', '10', 'US - Workout First - In-Person - In-Person', 2, '[{\"changed\": {\"fields\": [\"Parent\"]}}]', 7, 1),
(19, '2021-11-16 16:03:49.598450', '11', 'US - Zoom - Remote', 2, '[{\"changed\": {\"fields\": [\"Parent\"]}}]', 7, 1),
(20, '2021-11-16 16:03:55.797979', '12', 'US - Maximum Float - In-Person - In-Person', 2, '[{\"changed\": {\"fields\": [\"Parent\"]}}]', 7, 1),
(21, '2021-11-16 16:03:59.965157', '13', 'US - Booked Up Massage - In-Person - In-Person', 2, '[{\"changed\": {\"fields\": [\"Parent\"]}}]', 7, 1),
(22, '2021-11-16 16:04:04.918093', '14', 'US - Maximum Float - Phone - In-Person', 2, '[{\"changed\": {\"fields\": [\"Parent\"]}}]', 7, 1),
(23, '2021-11-16 16:04:12.991524', '15', 'US - Med Spa - Phone - In-Person', 2, '[{\"changed\": {\"fields\": [\"Parent\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'customfields', 'category'),
(8, 'customfields', 'customfield'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-16 15:42:43.719050'),
(2, 'auth', '0001_initial', '2021-11-16 15:42:44.255011'),
(3, 'admin', '0001_initial', '2021-11-16 15:42:44.369026'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-16 15:42:44.376006'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-16 15:42:44.382988'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-16 15:42:44.434689'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-16 15:42:44.487546'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-16 15:42:44.503505'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-16 15:42:44.511482'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-16 15:42:44.570325'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-16 15:42:44.573317'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-16 15:42:44.580327'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-16 15:42:44.595258'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-16 15:42:44.613210'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-16 15:42:44.628170'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-16 15:42:44.636149'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-16 15:42:44.653104'),
(18, 'customfields', '0001_initial', '2021-11-16 15:42:44.751840'),
(19, 'sessions', '0001_initial', '2021-11-16 15:42:44.787078');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('mi6w9b9bgxlpjr4osko5vxqmxsfzjopy', '.eJxVjDsOwjAQBe_iGln-b0xJzxmsXX9wANlSnFSIu0OkFNC-mXkvFnBba9hGXsKc2JlJdvrdCOMjtx2kO7Zb57G3dZmJ7wo_6ODXnvLzcrh_BxVH_daYVAQrlBEFvFJSewLSaKJwUPIkyVsLmLPwskzWKQmyIJnknCDQBdn7A8pnN2w:1mn0cJ:tETaKTxjWUzBO6UN7fwqdePn8LzlgtgIvPWTnJFw3F4', '2021-11-30 15:43:27.671760');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `customfields_category`
--
ALTER TABLE `customfields_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customfields_customfield`
--
ALTER TABLE `customfields_customfield`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customfields_customf_category_id_af027fad_fk_customfie` (`category_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customfields_category`
--
ALTER TABLE `customfields_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customfields_customfield`
--
ALTER TABLE `customfields_customfield`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `customfields_customfield`
--
ALTER TABLE `customfields_customfield`
  ADD CONSTRAINT `customfields_customf_category_id_af027fad_fk_customfie` FOREIGN KEY (`category_id`) REFERENCES `customfields_category` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
