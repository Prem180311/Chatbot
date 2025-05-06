-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 06, 2025 at 12:28 PM
-- Server version: 10.6.21-MariaDB-cll-lve
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `sb_articles`
--

CREATE TABLE `sb_articles` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `editor_js` text NOT NULL,
  `nav` text DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `category` varchar(191) DEFAULT NULL,
  `parent_category` varchar(191) DEFAULT NULL,
  `language` varchar(2) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `update_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_conversations`
--

CREATE TABLE `sb_conversations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `creation_time` datetime NOT NULL,
  `status_code` tinyint(4) DEFAULT 0,
  `department` tinyint(4) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `source` varchar(2) DEFAULT NULL,
  `extra` varchar(191) DEFAULT NULL,
  `extra_2` varchar(191) DEFAULT NULL,
  `extra_3` varchar(191) DEFAULT NULL,
  `tags` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_messages`
--

CREATE TABLE `sb_messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `creation_time` datetime NOT NULL,
  `status_code` tinyint(4) DEFAULT 0,
  `attachments` text DEFAULT NULL,
  `payload` text DEFAULT NULL,
  `conversation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sb_reports`
--

CREATE TABLE `sb_reports` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `creation_time` date NOT NULL,
  `external_id` int(11) DEFAULT NULL,
  `extra` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_settings`
--

CREATE TABLE `sb_settings` (
  `name` varchar(191) NOT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_settings`
--

INSERT INTO `sb_settings` (`name`, `value`) VALUES
('active_agents_conversations', '{\"1\":[0,1746550672]}'),
('cron', '\"19\"'),
('email-otp', '{\"email-otp\":[{\"email-otp-subject\":[\"\",\"text\"],\"email-otp-content\":[\"\",\"textarea\"]},\"multi-input\"]}'),
('emails', '{\"email-user\":[{\"email-user-subject\":[\"\",\"text\"],\"email-user-content\":[\"\",\"textarea\"]},\"multi-input\"],\"email-agent\":[{\"email-agent-subject\":[\"\",\"text\"],\"email-agent-content\":[\"\",\"textarea\"]},\"multi-input\"],\"email-signature\":[\"\",\"textarea\"],\"email-header\":[\"\",\"textarea\"],\"email-subscribe\":[{\"email-subscribe-subject\":[\"\",\"text\"],\"email-subscribe-content\":[\"\",\"textarea\"]},\"multi-input\"]}'),
('rich-messages', '{\"rich-messages\":[\"repeater\"]}'),
('settings', '{\"chat-login-init\":[false,\"checkbox\"],\"init-dashboard\":[false,\"checkbox\"],\"disable-dashboard\":[false,\"checkbox\"],\"force-one-conversation\":[false,\"checkbox\"],\"chat-timetable-disable\":[false,\"checkbox\"],\"chat-offline-disable\":[false,\"checkbox\"],\"front-auto-translations\":[\"\",\"select\"],\"rtl\":[false,\"checkbox\"],\"auto-open\":[false,\"checkbox\"],\"disable-uploads\":[false,\"checkbox\"],\"disable-voice-messages\":[false,\"checkbox\"],\"close-chat\":[false,\"checkbox\"],\"chat-manual-init\":[false,\"checkbox\"],\"agents-menu\":[{\"agents-menu-active\":[false,\"checkbox\"],\"agents-menu-force-one\":[false,\"checkbox\"],\"agents-menu-online-only\":[false,\"checkbox\"],\"agents-menu-title\":[\"\",\"text\"]},\"multi-input\"],\"messaging-channels\":[{\"messaging-channels-active\":[false,\"checkbox\"],\"messaging-channels-title\":[\"\",\"text\"],\"messaging-channels-wa\":[\"\",\"text\"],\"messaging-channels-fb\":[\"\",\"text\"],\"messaging-channels-ig\":[\"\",\"text\"],\"messaging-channels-tw\":[\"\",\"text\"],\"messaging-channels-tg\":[\"\",\"text\"],\"messaging-channels-vb\":[\"\",\"text\"],\"messaging-channels-za\":[\"\",\"text\"],\"messaging-channels-ln\":[\"\",\"text\"],\"messaging-channels-wc\":[\"\",\"text\"],\"messaging-channels-em\":[\"\",\"text\"],\"messaging-channels-tk\":[\"\",\"text\"]},\"multi-input\"],\"collapse\":[false,\"checkbox\"],\"hide-conversation-details\":[false,\"checkbox\"],\"admin-title\":[\"\",\"text\"],\"login-icon\":[\"\",\"upload-image\"],\"admin-icon\":[\"\",\"upload-image\"],\"login-message\":[\"\",\"text\"],\"admin-auto-translations\":[false,\"checkbox\"],\"admin-disable-settings-translations\":[false,\"checkbox\"],\"admin-auto-archive\":[false,\"checkbox\"],\"order-by-date\":[false,\"checkbox\"],\"agents\":[{\"agents-users-area\":[false,\"checkbox\"],\"agents-articles-area\":[false,\"checkbox\"],\"agents-edit-user\":[false,\"checkbox\"],\"agents-tab\":[false,\"checkbox\"],\"agents-delete-conversation\":[false,\"checkbox\"],\"agents-delete-message\":[false,\"checkbox\"],\"agents-update-department\":[false,\"checkbox\"]},\"multi-input\"],\"supervisors\":[[],\"repeater\"],\"rtl-admin\":[false,\"checkbox\"],\"show-profile-images-admin\":[false,\"checkbox\"],\"disable\":[{\"disable-channels-filter\":[false,\"checkbox\"],\"disable-filters\":[false,\"checkbox\"],\"disable-attachments\":[false,\"checkbox\"],\"disable-tags\":[false,\"checkbox\"],\"disable-notes\":[false,\"checkbox\"]},\"multi-input\"],\"notes-settings\":[{\"notes-hide-name\":[false,\"checkbox\"]},\"multi-input\"],\"tags-settings\":[{\"tags-show\":[false,\"checkbox\"],\"tags-starred\":[false,\"checkbox\"]},\"multi-input\"],\"tags\":[[],\"repeater\"],\"transcript\":[{\"transcript-type\":[\"csv\",\"select\"],\"transcript-action\":[\"download\",\"select\"],\"transcript-message\":[\"\",\"textarea\"]},\"multi-input\"],\"user-table-extra-columns\":[[],\"repeater\"],\"saved-replies\":[[],\"repeater\"],\"custom-js\":[\"\",\"text\"],\"custom-css\":[\"\",\"text\"],\"manifest-url\":[\"\",\"text\"],\"color-admin-1\":[\"\",\"color\"],\"color-admin-2\":[\"\",\"color\"],\"sound-settings\":[{\"sound-settings-active\":[false,\"checkbox\"],\"sound-settings-active-admin\":[false,\"checkbox\"],\"sound-settings-volume\":[\"\",\"select\"],\"sound-settings-volume-admin\":[\"\",\"select\"],\"sound-settings-repeat\":[\"\",\"select\"],\"sound-settings-repeat-admin\":[\"\",\"select\"],\"sound-settings-file-admin\":[\"\",\"text\"]},\"multi-input\"],\"online-users-notification\":[false,\"checkbox\"],\"away-mode\":[false,\"checkbox\"],\"desktop-notifications\":[\"\",\"select\"],\"flash-notifications\":[\"\",\"select\"],\"push-notifications\":[{\"push-notifications-provider\":[\"pusher\",\"select\"],\"push-notifications-active\":[false,\"checkbox\"],\"push-notifications-users-active\":[false,\"checkbox\"],\"push-notifications-id\":[\"\",\"text\"],\"push-notifications-key\":[\"\",\"password\"],\"push-notifications-sw-url\":[\"\",\"text\"],\"push-notifications-onesignal-app-id\":[\"\",\"text\"],\"push-notifications-onesignal-api-key\":[\"\",\"password\"]},\"multi-input\"],\"notify-agent-email\":[false,\"checkbox\"],\"notify-user-email\":[false,\"checkbox\"],\"stop-notify-admins\":[false,\"checkbox\"],\"notify-email-cron\":[false,\"checkbox\"],\"email-server\":[{\"email-server-host\":[\"\",\"text\"],\"email-server-user\":[\"\",\"text\"],\"email-server-password\":[\"\",\"password\"],\"email-server-port\":[\"\",\"number\"],\"email-server-from\":[\"\",\"text\"],\"email-sender-name\":[\"\",\"text\"]},\"multi-input\"],\"email-piping\":[[{\"email-piping-active\":false,\"email-piping-host\":\"\",\"email-piping-user\":\"\",\"email-piping-password\":\"\",\"email-piping-port\":\"993\",\"email-piping-delimiter\":false,\"email-piping-all\":false,\"email-piping-disable-cron\":false,\"email-piping-department\":\"\",\"email-piping-sync\":\"\"}],\"repeater\"],\"sms\":[{\"sms-active-agents\":[false,\"checkbox\"],\"sms-active-users\":[false,\"checkbox\"],\"sms-user\":[\"\",\"text\"],\"sms-token\":[\"\",\"password\"],\"sms-sender\":[\"\",\"text\"],\"sms-message-agent\":[\"\",\"textarea\"],\"sms-message-user\":[\"\",\"textarea\"]},\"multi-input\"],\"notifications-icon\":[\"\",\"upload-image\"],\"registration-required\":[\"\",\"select\"],\"registration-timetable\":[false,\"checkbox\"],\"registration-offline\":[false,\"checkbox\"],\"registration-link\":[\"\",\"text\"],\"login-verification-url\":[\"\",\"text\"],\"registration\":[{\"registration-title\":[\"\",\"text\"],\"registration-msg\":[\"\",\"textarea\"],\"registration-success\":[\"\",\"textarea\"],\"registration-btn-text\":[\"\",\"text\"],\"registration-terms-link\":[\"\",\"text\"],\"registration-privacy-link\":[\"\",\"text\"]},\"multi-input\"],\"login\":[{\"login-title\":[\"\",\"text\"],\"login-msg\":[\"\",\"textarea\"]},\"multi-input\"],\"registration-fields\":[{\"reg-email\":[false,\"checkbox\"],\"reg-required-email\":[false,\"checkbox\"],\"reg-phone\":[false,\"checkbox\"],\"reg-required-phone\":[false,\"checkbox\"],\"reg-last-name\":[false,\"checkbox\"],\"reg-required-last-name\":[false,\"checkbox\"],\"reg-profile-img\":[false,\"checkbox\"],\"reg-required-profile-img\":[false,\"checkbox\"],\"reg-city\":[false,\"checkbox\"],\"reg-required-city\":[false,\"checkbox\"],\"reg-country\":[false,\"checkbox\"],\"reg-required-country\":[false,\"checkbox\"],\"reg-language\":[false,\"checkbox\"],\"reg-required-language\":[false,\"checkbox\"],\"reg-birthday\":[false,\"checkbox\"],\"reg-required-birthday\":[false,\"checkbox\"],\"reg-company\":[false,\"checkbox\"],\"reg-required-company\":[false,\"checkbox\"],\"reg-website\":[false,\"checkbox\"],\"reg-required-website\":[false,\"checkbox\"]},\"multi-input\"],\"user-additional-fields\":[[],\"repeater\"],\"registration-extra\":[false,\"checkbox\"],\"registration-user-details-success\":[false,\"checkbox\"],\"registration-otp\":[false,\"checkbox\"],\"visitors-registration\":[false,\"checkbox\"],\"envato-validation\":[{\"envato-validation-active\":[false,\"checkbox\"],\"envato-validation-token\":[\"\",\"password\"],\"envato-validation-product-ids\":[\"\",\"text\"],\"envato-validation-extended-license-only\":[false,\"checkbox\"]},\"multi-input\"],\"phone-code\":[\"\",\"select\"],\"visitor-prefix\":[\"\",\"text\"],\"visitor-default-name\":[\"\",\"text\"],\"visitor-autodata\":[false,\"checkbox\"],\"display-users-thumb\":[false,\"checkbox\"],\"hide-agents-thumb\":[false,\"checkbox\"],\"sender-name\":[\"\",\"select\"],\"bot-name\":[\"\",\"text\"],\"bot-image\":[\"\",\"upload-image\"],\"color-1\":[\"\",\"color\"],\"color-2\":[\"\",\"color\"],\"color-3\":[\"\",\"color\"],\"chat-position\":[\"right\",\"select\"],\"header-headline\":[\"\",\"text\"],\"header-msg\":[\"\",\"text\"],\"header-type\":[\"agents\",\"select\"],\"header-name\":[false,\"checkbox\"],\"brand-img\":[\"\",\"upload-image\"],\"header-img\":[\"\",\"upload-image\"],\"chat-icon\":[\"\",\"upload-image\"],\"chat-sb-icons\":[null,\"select-images\"],\"chat-background\":[null,\"select-images\"],\"chat-button-offset\":[{\"chat-button-offset-top\":[\"\",\"number\"],\"chat-button-offset-bottom\":[\"\",\"number\"],\"chat-button-offset-right\":[\"\",\"number\"],\"chat-button-offset-left\":[\"\",\"number\"],\"chat-button-offset-mobile\":[\"all\",\"select\"]},\"multi-input\"],\"welcome-message\":[{\"welcome-active\":[false,\"checkbox\"],\"welcome-open\":[false,\"checkbox\"],\"welcome-sound\":[false,\"checkbox\"],\"welcome-disable-office-hours\":[false,\"checkbox\"],\"welcome-trigger\":[\"load\",\"select\"],\"welcome-delay\":[\"\",\"number\"],\"welcome-msg\":[\"\",\"textarea\"]},\"multi-input\"],\"follow-message\":[{\"follow-active\":[false,\"checkbox\"],\"follow-disable-office-hours\":[false,\"checkbox\"],\"follow-disable-channels\":[false,\"checkbox\"],\"follow-name\":[false,\"checkbox\"],\"follow-last-name\":[false,\"checkbox\"],\"follow-phone\":[false,\"checkbox\"],\"follow-phone-required\":[false,\"checkbox\"],\"follow-title\":[\"\",\"text\"],\"follow-delay\":[\"\",\"number\"],\"follow-sound\":[false,\"checkbox\"],\"follow-msg\":[\"\",\"textarea\"],\"follow-success\":[\"\",\"textarea\"],\"follow-placeholder\":[\"\",\"text\"]},\"multi-input\"],\"rating-message\":[{\"rating-active\":[false,\"checkbox\"],\"rating-message-area\":[false,\"checkbox\"]},\"multi-input\"],\"chat-timetable\":[{\"chat-timetable-active\":[false,\"checkbox\"],\"chat-timetable-hide\":[false,\"checkbox\"],\"chat-timetable-agents\":[false,\"checkbox\"],\"chat-timetable-type\":[\"\",\"select\"],\"chat-timetable-title\":[\"\",\"text\"],\"chat-timetable-msg\":[\"\",\"textarea\"]},\"multi-input\"],\"close-message\":[{\"close-active\":[false,\"checkbox\"],\"close-transcript\":[false,\"checkbox\"],\"close-msg\":[\"\",\"textarea\"]},\"multi-input\"],\"popup-message\":[{\"popup-active\":[false,\"checkbox\"],\"popup-mobile-hidden\":[false,\"checkbox\"],\"popup-image\":[\"\",\"upload-image\"],\"popup-title\":[\"\",\"text\"],\"popup-msg\":[\"\",\"textarea\"]},\"multi-input\"],\"privacy\":[{\"privacy-active\":[false,\"checkbox\"],\"privacy-disable-channels\":[false,\"checkbox\"],\"privacy-title\":[\"\",\"text\"],\"privacy-msg\":[\"\",\"textarea\"],\"privacy-msg-decline\":[\"\",\"textarea\"],\"privacy-link\":[\"\",\"text\"],\"privacy-link-text\":[\"\",\"text\"],\"privacy-btn-approve\":[\"\",\"text\"],\"privacy-btn-decline\":[\"\",\"text\"]},\"multi-input\"],\"webhooks\":[{\"webhooks-active\":[false,\"checkbox\"],\"webhooks-url\":[\"\",\"text\"],\"webhooks-key\":[\"\",\"password\"],\"webhooks-allowed\":[\"\",\"text\"]},\"multi-input\"],\"envato-purchase-code\":[\"1c2b6bb8-02dd-4a87-98cc-e8fd95b8e778\",\"password\"],\"auto-updates\":[true,\"checkbox\"],\"pusher\":[{\"pusher-active\":[false,\"checkbox\"],\"pusher-id\":[\"\",\"text\"],\"pusher-key\":[\"\",\"text\"],\"pusher-secret\":[\"\",\"password\"],\"pusher-cluster\":[\"\",\"text\"]},\"multi-input\"],\"newsletter\":[{\"newsletter-active\":[false,\"checkbox\"],\"newsletter-service\":[\"mailchimp\",\"select\"],\"newsletter-list-id\":[\"\",\"text\"],\"newsletter-key\":[\"\",\"password\"]},\"multi-input\"],\"timetable\":[{\"monday\":[[\"\",\"\"],[\"\",\"\"],[\"\",\"\"],[\"\",\"\"]],\"tuesday\":[[\"\",\"\"],[\"\",\"\"],[\"\",\"\"],[\"\",\"\"]],\"wednesday\":[[\"\",\"\"],[\"\",\"\"],[\"\",\"\"],[\"\",\"\"]],\"thursday\":[[\"\",\"\"],[\"\",\"\"],[\"\",\"\"],[\"\",\"\"]],\"friday\":[[\"\",\"\"],[\"\",\"\"],[\"\",\"\"],[\"\",\"\"]],\"saturday\":[[\"\",\"\"],[\"\",\"\"],[\"\",\"\"],[\"\",\"\"]],\"sunday\":[[\"\",\"\"],[\"\",\"\"],[\"\",\"\"],[\"\",\"\"]]},\"timetable\"],\"timetable-utc\":[\"\",\"number\"],\"departments-settings\":[{\"departments-dashboard\":[false,\"checkbox\"],\"departments-images\":[false,\"checkbox\"],\"departments-show-list\":[false,\"checkbox\"],\"departments-force-one\":[false,\"checkbox\"],\"departments-label\":[\"\",\"text\"],\"departments-single-label\":[\"\",\"text\"],\"departments-title\":[\"\",\"text\"]},\"multi-input\"],\"departments\":[[],\"repeater\"],\"queue\":[{\"queue-active\":[false,\"checkbox\"],\"queue-concurrent-chats\":[\"\",\"number\"],\"queue-response-time\":[\"\",\"number\"],\"queue-sound\":[false,\"checkbox\"],\"queue-message\":[\"\",\"textarea\"],\"queue-message-success\":[\"\",\"textarea\"]},\"multi-input\"],\"routing\":[{\"routing-active\":[false,\"checkbox\"],\"routing-disable-status-check\":[false,\"checkbox\"]},\"multi-input\"],\"agent-hide-conversations\":[{\"agent-hide-conversations-active\":[false,\"checkbox\"],\"agent-hide-conversations-menu\":[false,\"checkbox\"],\"agent-hide-conversations-routing\":[false,\"checkbox\"],\"agent-hide-conversations-view\":[false,\"checkbox\"]},\"multi-input\"],\"cookie-domain\":[\"\",\"text\"],\"performance\":[{\"performance-minify\":[false,\"checkbox\"],\"performance-reports\":[false,\"checkbox\"],\"performance-articles\":[false,\"checkbox\"]},\"multi-input\"],\"amazon-s3\":[{\"amazon-s3-active\":[false,\"checkbox\"],\"amazon-s3-access-key\":[\"\",\"password\"],\"amazon-s3-secret-access-key\":[\"\",\"password\"],\"amazon-s3-bucket-name\":[\"\",\"text\"],\"amazon-s3-region\":[\"\",\"text\"]},\"multi-input\"],\"logs\":[false,\"checkbox\"],\"ip-ban\":[\"\",\"text\"],\"articles-active\":[false,\"checkbox\"],\"articles-categories\":[false,\"checkbox\"],\"articles-title\":[\"\",\"text\"],\"articles-button-link\":[\"\",\"text\"],\"articles-page-url\":[\"\",\"text\"],\"articles-url-rewrite\":[false,\"checkbox\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `sb_users`
--

CREATE TABLE `sb_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `profile_image` varchar(191) DEFAULT NULL,
  `user_type` varchar(10) NOT NULL,
  `creation_time` datetime NOT NULL,
  `token` varchar(50) NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `typing` int(11) DEFAULT -1,
  `department` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_users`
--

INSERT INTO `sb_users` (`id`, `first_name`, `last_name`, `password`, `email`, `profile_image`, `user_type`, `creation_time`, `token`, `last_activity`, `typing`, `department`) VALUES
(1, 'admin', '5core', '$2y$10$4hhQlSHPhT8VZ2Jt.7/aJeVbgap5gdQSqithMEHGStqTXGS0Xe8/y', 'software2@5core.com', 'http://chat-support.5coremanagement.com/media/user.svg', 'admin', '2025-05-06 16:56:00', '2ce7571f84f23ee80d1d83f0a0e3166eccab3bd8', '2025-05-06 19:28:19', -1, NULL),
(2, 'Bot', '', '', NULL, 'http://chat-support.5coremanagement.com/media/user.svg', 'bot', '2025-05-06 16:56:52', 'c774c793536ce7988403ec8789c60bbb43388dea', '2025-05-06 16:56:52', -1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_users_data`
--

CREATE TABLE `sb_users_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sb_articles`
--
ALTER TABLE `sb_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `sb_conversations`
--
ALTER TABLE `sb_conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sb_messages`
--
ALTER TABLE `sb_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `conversation_id` (`conversation_id`);

--
-- Indexes for table `sb_reports`
--
ALTER TABLE `sb_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sb_settings`
--
ALTER TABLE `sb_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sb_users`
--
ALTER TABLE `sb_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sb_users_data`
--
ALTER TABLE `sb_users_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sb_users_data_index` (`user_id`,`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sb_articles`
--
ALTER TABLE `sb_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_conversations`
--
ALTER TABLE `sb_conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_messages`
--
ALTER TABLE `sb_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_reports`
--
ALTER TABLE `sb_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_users`
--
ALTER TABLE `sb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sb_users_data`
--
ALTER TABLE `sb_users_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sb_articles`
--
ALTER TABLE `sb_articles`
  ADD CONSTRAINT `sb_articles_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `sb_articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sb_conversations`
--
ALTER TABLE `sb_conversations`
  ADD CONSTRAINT `sb_conversations_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `sb_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sb_conversations_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `sb_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sb_messages`
--
ALTER TABLE `sb_messages`
  ADD CONSTRAINT `sb_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sb_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sb_messages_ibfk_2` FOREIGN KEY (`conversation_id`) REFERENCES `sb_conversations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sb_users_data`
--
ALTER TABLE `sb_users_data`
  ADD CONSTRAINT `sb_users_data_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sb_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
