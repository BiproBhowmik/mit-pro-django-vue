-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 29, 2023 at 03:39 PM
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
-- Database: `child_dises`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add Token', 7, 'add_token'),
(26, 'Can change Token', 7, 'change_token'),
(27, 'Can delete Token', 7, 'delete_token'),
(28, 'Can view Token', 7, 'view_token'),
(29, 'Can add token', 8, 'add_tokenproxy'),
(30, 'Can change token', 8, 'change_tokenproxy'),
(31, 'Can delete token', 8, 'delete_tokenproxy'),
(32, 'Can view token', 8, 'view_tokenproxy');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$pHWMb6mm40mRQLDiLu7P5A$46w3moLP8Fm1vuBrKH0PpBgC/EZuDtih+Fx31/hEbPg=', '2023-10-20 11:07:32.060437', 0, 'joy0005', '', '', 'joy@gmail.com', 0, 1, '2023-10-17 18:08:29.712055'),
(2, 'pbkdf2_sha256$600000$LN0CJs2EIszvt5dbmF58Rb$NY5+wQChPjkK7tTH/J17eKNjW1Z1kQmzgoG65XzYx1c=', '2023-10-20 12:06:23.461401', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-10-20 12:04:46.701040'),
(3, 'pbkdf2_sha256$600000$pv3t68OxQNHrfHrPqmwf0P$K2VsRZXENaJyMnw1F+gOEQ+Ss4nGRO8fEzJDsVLQV6w=', NULL, 0, 'bipro', '', '', 'bipro@gmail.com', 0, 1, '2023-10-21 12:52:27.625972'),
(4, 'pbkdf2_sha256$600000$IXKhnCfj7W2lE3G7T386Q0$4u1MPLeThnDJoIt5voc95V+IHKTMx902mwvT3mvYQqs=', NULL, 0, 'nafiul', '', '', 'nafiul@gmail.com', 0, 1, '2023-10-21 13:19:09.772218'),
(5, 'pbkdf2_sha256$600000$dmF44wTtUjzTURsvAeqdS1$eobCW8W2ZJUvOTPsSbtpnBe/RtDI9O0tzzt7xOMm5uk=', NULL, 0, 'xyz', '', '', 'xyz@gmail.com', 0, 1, '2023-10-21 15:30:10.153529'),
(6, 'pbkdf2_sha256$600000$jolPXsVLWj28VOYztIDbrk$5CC38JAPM9IaJMpFKCYkvcy/c5xAz1+LxpZ2ruTIu/I=', NULL, 0, 'xyzx', '', '', 'xyzx@gmail.com', 0, 1, '2023-10-28 11:06:41.165993');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'authtoken', 'token'),
(8, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-16 17:13:14.234123'),
(2, 'auth', '0001_initial', '2023-10-16 17:13:20.633961'),
(3, 'admin', '0001_initial', '2023-10-16 17:13:22.100806'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-16 17:13:22.156451'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-16 17:13:22.213385'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-16 17:13:22.820885'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-16 17:13:23.413051'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-16 17:13:23.590594'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-16 17:13:23.640105'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-16 17:13:24.361561'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-16 17:13:24.400551'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-16 17:13:24.458772'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-16 17:13:24.594468'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-16 17:13:24.832923'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-16 17:13:25.172461'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-16 17:13:25.259371'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-16 17:13:25.447029'),
(18, 'sessions', '0001_initial', '2023-10-16 17:13:25.865717'),
(19, 'authtoken', '0001_initial', '2023-10-20 07:42:46.172672'),
(20, 'authtoken', '0002_auto_20160226_1747', '2023-10-20 07:42:46.246475'),
(21, 'authtoken', '0003_tokenproxy', '2023-10-20 07:42:46.289667');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2p554z88ny7mss0iy6klgls16gkzba3y', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXA3:2KWK6s4PpYTGw_NRIfQ7WcMQregnQqiO02s0ozbVVZk', '2023-11-02 17:50:19.546333'),
('59g8dhx5uds1jeqbs9zupfus12jjt923', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtYfl:VksHr6Dan5IKFnKir27_9JRdTsE1-GliyTpwsShv0nw', '2023-11-02 19:27:09.583965'),
('6j0z8yytznheb5jowjb2mzpncjqvw2pm', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXhz:g6QOQMDpRQBz1PPwVUNf5Fj4zasHDmanmvbnwF_hgU4', '2023-11-02 18:25:23.248329'),
('8ms3t5l14glvu3axd6ldioni24oulw4e', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXd5:KPlb7sdsW-7OlXe-ih0lr25SUqH5F-bO_t9YHf63AZY', '2023-11-02 18:20:19.707990'),
('a8swjkqpbxfhwjr71enaadc2tmjpy7mp', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXb8:yaPa2tl57DPtLg0LLssP0Iiv4xGf8jKOgfkkEOh5pTk', '2023-11-02 18:18:18.374260'),
('aailnyaaq8i27068icuutx2ufocpwm3x', '.eJxVjMsOgjAQRf-la9P03erSPd9ApsyMgIYmFBbG-O-CYaHbe849L9HCuvTtWmluBxQXocXpd8vQ3WnaAY4w3YrsyrTMQ5a7Ig9aZVOQHtfD_Qv0UPvtbX3nmdA4BZSi46Cjx8wxsNPOkE1ktAHgABgihJwMJ4cuKmNTOlveot8cwgJbbixPpZQX7w8BhD5w:1qtY9d:VSRXJLI1T8eNtVLO1hzmkTZkxySi5Jzz6Wkxr8Kel0E', '2023-11-02 18:53:57.897831'),
('ab6s85r9qalh8m13tun7ft0ymdcg5401', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtYUZ:tQ-FNzamAtG59o98RxhWwGM-qf4h6iWqq6WZFDxFkdM', '2023-10-19 19:35:35.712996'),
('c73tbj36jx8gl9q5ijp24a8g4uvwr95j', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtYXY:F9AGD1nFAeA76JAUH9OMnjTVF5HDUCWNAKqCqVSx0Oc', '2023-11-02 19:18:40.588726'),
('c7n9bh3umonw45da7sjjd6dxt96x55x0', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtY3m:ueQRVVy62JTsAG0T26ZlDIWoCmsSCoHVQeSmm_4D748', '2023-11-02 18:47:54.736278'),
('ci57vji77mj64javkhx6xlxkt5wsegmr', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtX8n:2JKFynCW2o1jffuPnl0vwWViuyX7Qiqazx4SdADns3I', '2023-11-02 17:49:01.437186'),
('ckyhcefq01sbwn7fw8s1xr95bew0twqy', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtnLo:8FFut_xWE4_ut-GtHckKcaxW9ssXfwXGMak8f4XGzM8', '2023-11-03 11:07:32.323152'),
('dr4m2tb8tk9fc0i8i4h9ylhsgpfwmoyb', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtY68:ZSnUkVFKJiU5aDyWLSthQj9x86d8ehJvchTw4JCSxTE', '2023-11-02 18:50:20.251994'),
('h2y5ln8nqc23cu96v9oq0aqxjbny3ne2', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtjYu:Sf_AwKO7c13db0kzlOP542tM6NH27INllgKdVo-AGiI', '2023-11-03 07:04:48.707227'),
('hsosvvndl0x0nfvi1cc38ruobchhfjxf', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXm1:YQE14t_cWAmc6lpb9rV7AlUqB5aFBw6DF-j2URXLZCA', '2023-11-02 18:29:33.059077'),
('jd94ic4yvuwapjdrsjcuwppkgkex3qrg', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtYJC:MCUyH0bHK3G7n_0cqcLKJT8ZTqVALoCZZEyhyiQ4964', '2023-11-02 19:03:50.422303'),
('jfhcld9pt0tj3r2zho1su15aqdgv5fn8', '.eJxVjMsOgjAQRf-la9P03erSPd9ApsyMgIYmFBbG-O-CYaHbe849L9HCuvTtWmluBxQXocXpd8vQ3WnaAY4w3YrsyrTMQ5a7Ig9aZVOQHtfD_Qv0UPvtbX3nmdA4BZSi46Cjx8wxsNPOkE1ktAHgABgihJwMJ4cuKmNTOlveot8cwgJbbixPpZQX7w8BhD5w:1qtYAU:hxu6ElEQerNvnwqRSeds0mgpngN4wimT4fq94OTrAW0', '2023-11-02 18:54:50.138094'),
('k8iye5yylzgpr5tusoqu70ik85jy161z', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXWO:_Ix--1xKLMcN3xWr2GszkkkJdtcsl7_UztO3lK4y3E0', '2023-11-02 18:13:24.378352'),
('kabc3bozl8ralcs7wwc52cr7vrb1ig6e', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXpV:QwvyKU7Dj7kwAgCwuvLQD7jcRkbSL2ogHcNuv4Nrid0', '2023-11-02 18:33:09.235506'),
('m26qc1zpnkvmbi8y7zrt5kkfudj50a81', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtYK8:5dbv6YiF9lYz_ZDDYTLRsXGrFyIO6ijgowsw-Lcbg3I', '2023-11-02 19:04:48.570168'),
('m4ce2zsgl84yccb5l5biow9ecu9oe6lc', '.eJxVjMsOgjAQRf-la9P03erSPd9ApsyMgIYmFBbG-O-CYaHbe849L9HCuvTtWmluBxQXocXpd8vQ3WnaAY4w3YrsyrTMQ5a7Ig9aZVOQHtfD_Qv0UPvtbX3nmdA4BZSi46Cjx8wxsNPOkE1ktAHgABgihJwMJ4cuKmNTOlveot8cwgJbbixPpZQX7w8BhD5w:1qtYB1:mQbA3tfV7_sbxITuVlstNZio-XfzRwIfGffJ-JdrOF0', '2023-11-02 18:55:23.212349'),
('o11ulphjgae3cavvbotav7aan0mft0uf', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXkp:nlO6c5OVkmMG51aBdBoxv9YsX0tOXDQQrGWiec3fbBs', '2023-11-02 18:28:19.297763'),
('okircf8m5cm3yoe7uunasisb8xjomvq0', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtYHI:vaowT3OGxWve_qpZBI0NSbsWFhAeFMd2b1rkDr0pPUU', '2023-11-02 19:01:52.464563'),
('ovcgrfh4autcp0p0nvr72k21adtzqmmm', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXnm:LoY2tJrRNCQuKZsu3DvumAlhW0bSqVellDyEGN0hiw8', '2023-11-02 18:31:22.977742'),
('p78xedopeny7ha6u2onjrcgvgsqt48mw', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXiu:zhBoF-M7XNzG6MDLpLRWlf_rfJ8Prfo6AumEfoBf4fg', '2023-11-02 18:26:20.205344'),
('q82ncv1fbq7gherzg2kwzfr3unf9lsmu', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtYIG:PqCMdYYLTyN2bVA2ewE_CLNe6ez5dPbbdKpP4CEOYc0', '2023-11-02 19:02:52.513219'),
('qmymc8fuzw1wa7b37kwvh4m99miuf27f', 'eyJ1c2VyX2RhdGEiOiJqb3kwMDA1In0:1qtYic:Jj9cIxpMAdowbsbO89LLUkJamwIpRc80MUbBdd9OgWs', '2023-11-02 19:30:06.522634'),
('qqkafen7y6g1kteo37gthrvhhutyind9', '.eJxVjEsOwjAMBe-SNYoaN2kMS_Y9Q-XENi2gROpnhbg7VOoCtm9m3ssMtK3jsC0yDxObiwFz-t0S5YeUHfCdyq3aXMs6T8nuij3oYvvK8rwe7t_BSMv4rb133GDnOyRHiq2mnAJAAw1BCB4lKsQsTK2eU2jZOQBFkYjEqDGb9wfTRjgC:1qtoGl:-AYwxeFo5oPFoGXlAynEqUrxQm8F1haxyrvP8UCePrQ', '2023-11-03 12:06:23.520141'),
('rer6v81rv5m0ha0vqcg2mmin2jx6ylsc', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtY4L:AkEjbNO0takBZHcjK-fqeJ1B1lJ5GOjJHMdeKVhWzqE', '2023-11-02 18:48:29.248309'),
('uhr44gp34vxa34hmufxrhkwxwvh6xw1a', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXeC:IWH6B1OXnuSbvZIiSrSQLcHID8j-zu7i17yCKXrV4Hk', '2023-11-02 18:21:28.958695'),
('w54fui5kebeiucucslfowpj38h1g8ibf', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtjoz:Nxd9DU25YsgAMytXa4NG7a_Zbq9GOy3Eko59f0sOHDY', '2023-11-03 07:21:25.370813'),
('y87t3gp3cj6zagwxc0evbrhlcmaqc3fu', '.eJxVjDsOwjAQBe_iGlnx31DS5wzW2ruLA8iR4qRC3B0ipYD2zcx7iQTbWtPWaUkTiotQ4vS7ZSgPajvAO7TbLMvc1mXKclfkQbscZ6Tn9XD_Dir0-q2NK44JtR2AYrDsVXCYOXi2ymoykbTSAOwBfQCfo-Zo0YZBmxjPhsX7A-htN7M:1qtXyI:peGCxoPa9OgW8q2XRWE4L4hWsE3RHlCpdTXAGKp4JVs', '2023-11-02 18:42:14.673590');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
