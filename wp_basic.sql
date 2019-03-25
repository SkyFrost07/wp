-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2019 at 09:26 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_basic`
--

-- --------------------------------------------------------

--
-- Table structure for table `plbs_commentmeta`
--

CREATE TABLE `plbs_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_comments`
--

CREATE TABLE `plbs_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_itsec_distributed_storage`
--

CREATE TABLE `plbs_itsec_distributed_storage` (
  `storage_id` bigint(20) UNSIGNED NOT NULL,
  `storage_group` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `storage_key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `storage_chunk` int(11) NOT NULL DEFAULT '0',
  `storage_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `storage_updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_itsec_fingerprints`
--

CREATE TABLE `plbs_itsec_fingerprints` (
  `fingerprint_id` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_user` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_hash` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_created_at` datetime NOT NULL,
  `fingerprint_approved_at` datetime NOT NULL,
  `fingerprint_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_snapshot` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_last_seen` datetime NOT NULL,
  `fingerprint_uses` int(11) NOT NULL DEFAULT '0',
  `fingerprint_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_uuid` char(36) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_itsec_geolocation_cache`
--

CREATE TABLE `plbs_itsec_geolocation_cache` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_host` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_lat` decimal(10,8) NOT NULL,
  `location_long` decimal(11,8) NOT NULL,
  `location_label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_credit` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_itsec_lockouts`
--

CREATE TABLE `plbs_itsec_lockouts` (
  `lockout_id` bigint(20) UNSIGNED NOT NULL,
  `lockout_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lockout_user` bigint(20) UNSIGNED DEFAULT NULL,
  `lockout_username` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_itsec_log`
--

CREATE TABLE `plbs_itsec_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `log_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `log_function` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `log_priority` int(2) NOT NULL DEFAULT '1',
  `log_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `log_date_gmt` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `log_host` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `log_username` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `log_user` bigint(20) UNSIGNED DEFAULT NULL,
  `log_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `log_referrer` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `log_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_itsec_log`
--

INSERT INTO `plbs_itsec_log` (`log_id`, `log_type`, `log_function`, `log_priority`, `log_date`, `log_date_gmt`, `log_host`, `log_username`, `log_user`, `log_url`, `log_referrer`, `log_data`) VALUES
(3, 'backup', 'Database Backup Executed', 3, '2018-11-07 13:35:29', '2018-11-07 13:35:29', '', '', 0, '', '', 'a:1:{i:0;a:2:{s:6:"status";s:5:"Error";s:7:"details";s:45:"email to backup recipients could not be sent.";}}'),
(4, 'backup', 'Database Backup Executed', 3, '2018-11-07 13:35:36', '2018-11-07 13:35:36', '', '', 0, '', '', 'a:1:{i:0;a:2:{s:6:"status";s:5:"Error";s:7:"details";s:45:"email to backup recipients could not be sent.";}}');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_itsec_logs`
--

CREATE TABLE `plbs_itsec_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `code` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'notice',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `init_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memory_current` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `memory_peak` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `remote_ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_itsec_logs`
--

INSERT INTO `plbs_itsec_logs` (`id`, `parent_id`, `module`, `code`, `data`, `type`, `timestamp`, `init_timestamp`, `memory_current`, `memory_peak`, `url`, `blog_id`, `user_id`, `remote_ip`) VALUES
(11, 0, 'notification_center', 'send::backup', 'a:2:{s:10:"recipients";a:1:{i:0;s:21:"skyfrost.07@gmail.com";}s:7:"subject";s:35:"[localhost/googame] Database Backup";}', 'debug', '2019-03-25 01:59:28', '2019-03-25 01:59:25', 68316680, 68878408, 'http://localhost/wp/wp-admin/', 1, 0, '::1');
INSERT INTO `plbs_itsec_logs` (`id`, `parent_id`, `module`, `code`, `data`, `type`, `timestamp`, `init_timestamp`, `memory_current`, `memory_peak`, `url`, `blog_id`, `user_id`, `remote_ip`) VALUES
(12, 0, 'notification_center', 'send_failed::backup', 'a:1:{s:5:"error";O:8:"WP_Error":2:{s:6:"errors";a:1:{s:14:"wp_mail_failed";a:1:{i:0;s:36:"Could not instantiate mail function.";}}s:10:"error_data";a:1:{s:14:"wp_mail_failed";a:6:{s:2:"to";a:1:{i:0;s:21:"skyfrost.07@gmail.com";}s:7:"subject";s:35:"[localhost/googame] Database Backup";s:7:"message";s:50882:"\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" lang="vi">\n\n<head>\n	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">\n	<title>Database Backup</title>\n	<meta name="viewport" content="width=device-width">\n\n	<style type="text/css">\n		/* From: https://litmus.com/community/learning/13-foundations-email-coding-101 */\n\n		/* GENERAL STYLE RESETS */\n		body,#body-table,#body-cell{height:100%!important;width:100%!important;margin:0;padding:0;}\n		img,aimg{border:0;outline:none;text-decoration:none;}\n		.imageFix{display:block;}\n		table,td{border-collapse:collapse;border-spacing:0;}\n\n		/* CLIENT-SPECIFIC RESETS */\n		.ReadMsgBody{width:100%;}\n		.ExternalClass{width:100%;}\n		.ExternalClass,.ExternalClass p,.ExternalClass span,.ExternalClass font,.ExternalClass td,.ExternalClass div{line-height:100%;}\n		table,td{mso-table-lspace:0pt;mso-table-rspace:0pt;}\n		img{-ms-interpolation-mode:bicubic;}\n		body,table,td,p,a,li,blockquote{-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;}\n\n\n		h1,h2,h3,h4,h5,h6{color:#202020;font-family:Helvetica;font-size:20px;font-weight:bold;line-height:150%;margin:0;padding:0;text-align:center;}\n		p{font-family:Helvetica;font-size:16px;line-height:150%;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;padding:0;text-align:center;}\n		a{color:#0084CB;font-family:Helvetica;font-size:16px;line-height:150%;text-align:center;text-decoration:none;}\n		img{height:auto;}\n\n		body,#body-table{background-color:#FFFFFF;}\n		#body-cell{padding-bottom:20px;}\n		.section-padding{padding-top:20px;padding-right:20px;padding-left:20px;}\n		.section-padding-bottom{padding-bottom:20px;}\n		.container-cell{color:#808080;font-family:Helvetica;font-size:16px;line-height:150%;text-align:center;padding-bottom:20px;}\n		#top-banner{background-color:#FFCE08;}\n		#top-banner .container-cell{color:#413F39;font-size:13px;}\n		#top-logo .container-cell{padding-top:20px;}\n		#title-container h1{font-size:34px;}\n		.info-box{padding-top:20px;padding-bottom:20px;}\n		.info-box .container{border:1px solid #CDCECE;background-color:#F2F2F2;}\n		.info-box .section-padding{padding-top:40px;padding-right:40px;padding-left:40px;}\n		.info-box .container-cell{padding-bottom:40px;}\n		.info-box .info-icon{width:33px;height:23px;vertical-align:middle;}\n		.section-heading .container-cell{padding-bottom:0;}\n		.section-heading h4{color:#0084CB;font-size:16px;}\n		.section-heading h4 img{padding-top:2px;padding-right:5px;vertical-align:top;}\n		.lockouts-summary .container.left-column{margin-right:60px;}\n		.lockouts-summary h4{color:#ACAAAA;font-size:16px;font-weight:normal;}\n		.lockouts-summary p{color:#505050;font-size:30px;font-weight:bold;}\n		.table{border:1px solid #cdcece;color: #808080;font-family:Helvetica;font-size:14px;}\n		.table th,.table td{border:1px solid #cdcece;padding:10px;}\n		.table th{text-align:left;font-weight:bold;padding:5px 10px;}\n		.table .row-label{font-style:italic;}\n		.table a,.table b{font-size:14px;}\n		.large-text h4{color:#505050;margin-bottom:10px;}\n		.details-box-container{padding-top:20px;padding-bottom:20px;}\n		.details-box{background-color:#E4EEF7;border:1px solid #CDCECE;}\n		.details-box .container-cell{color:#6A6A6A;}\n		.divider .divider-border{border-top-width:1px;border-top-style:solid;border-top-color:#E8E8E8;}\n		.divider .container-cell{line-height:1px;padding-bottom:20px;width:450px;}\n		.module-button .border-radius{-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;}\n		.module-button a{background-color:#FFCD08;border:1px solid #FFCD08;color:#2E280E;display:inline-block;font-size:18px;font-weight:bold;line-height:100%;padding-top:20px;padding-right:30px;padding-bottom:20px;padding-left:30px;}\n		.pro-callout{padding-top:20px;}\n		.pro-callout-background{background-color:#0B1A23;}\n		.pro-callout .section-padding{padding-top:40px;}\n		.pro-callout .two-factor{color:#FFFFFF;margin-top:20px;margin-bottom:20px;}\n		.pro-callout .module-button a{font-size:30px;}\n		.pro-callout .why-pro{color:#999999;font-style:italic;margin-top:20px;margin-bottom:20px;}\n		.footer-heading h2{color:#002030;font-size:26px;}\n		.pro-flag{background-color:#FFCC00;color:#000000;font-size:10px;display:inline-block;padding:3px;line-height:1;position:relative;bottom:10px;text-transform:uppercase;}\n		#security-guide-container{border:1px solid #CDCECE;background-color:#D3E8E9;}\n		#security-guide .container-cell{color:#6C6C6C;text-align:left;}\n		#security-guide h4{color:#6C6C6C;font-size:18px;padding-bottom:10px;text-align:left;}\n		#security-guide a{font-weight:bold;}\n		#footer-source-details .container-cell{line-height:200%;padding-top:60px;padding-bottom:0;}\n		#footer-source-details a{font-size:11px;font-weight:bold;line-height:200%;}\n		.template-container {max-width: 600px !important;}\n\n		@media only screen and (max-width:600px){\n			body{width:100% !important;min-width:100% !important;}\n			#body-cell{padding:10px !important;}\n			#main-container, .container{width:100% !important;}\n			.preserve-ratio{height:auto !important;width:100% !important;}\n			.container-cell-bottom{padding-top:20px !important;}\n			.lockouts-summary .container{width:auto !important;}\n		}\n\n		@media only screen and (max-width:450px){\n			.divider .container-cell{width:auto !important;}\n		}\n	</style>\n</head>\n\n<body style="margin: 0;padding: 0;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;height: 100%!important;width: 100%!important;">\n	<center>\n		<table id="body-table" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;background-color: #FFFFFF;height: 100%!important;width: 100%!important;">\n			<tr>\n				<td id="body-cell" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;padding-bottom: 20px;height: 100%!important;width: 100%!important;">\n					<table id="main-container" border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n						<tr>\n							<td id="top-banner" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFCE08;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n											<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n												<tr>\n													<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n														<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n															<tr>\n																<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #413F39;font-family: Helvetica;font-size: 13px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n																	Site Database Backup for <b>25 Tháng Ba, 2019</b>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td id="top-logo" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n											<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n												<tr>\n													<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n														<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n															<tr>\n																<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;padding-top: 20px;">\n																	<img class="preserve-ratio" src="http://localhost/googame/wp-content/plugins/better-wp-security/core/img/mail/logo.png" style="max-width: 300px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;" alt="" align="center">\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td id="title-container" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n											<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n												<tr>\n													<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n														<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n															<tr>\n																<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n																	<h1 style="color: #202020;font-family: Helvetica;font-size: 34px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;">Database Backup</h1>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td class="info-box" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-bottom: 20px;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n											<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;border: 1px solid #CDCECE;background-color: #F2F2F2;">\n												<tr>\n													<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 40px;padding-right: 40px;padding-left: 40px;">\n														<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n															<tr>\n																<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 40px;">\n																	<img class="info-icon" src="http://localhost/googame/wp-content/plugins/better-wp-security/core/img/mail/attachment_icon.png" alt="" align="center" width="33" height="23" style="border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: 23px;width: 33px;vertical-align: middle;">\n																	Attached is the database backup file for your site.\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td class="section-heading" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n											<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n												<tr>\n													<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n														<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n															<tr>\n																<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 0;">\n																	<h4 style="color: #0084CB;font-family: Helvetica;font-size: 16px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;">\n																		Website\n																	</h4>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n											<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n												<tr>\n													<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n														<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n															<tr>\n																<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n																	localhost/googame\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td class="section-heading" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n											<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n												<tr>\n													<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n														<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n															<tr>\n																<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 0;">\n																	<h4 style="color: #0084CB;font-family: Helvetica;font-size: 16px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;">\n																		Date\n																	</h4>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n											<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n												<tr>\n													<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n														<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n															<tr>\n																<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n																	25 Tháng Ba, 2019\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td class="pro-callout" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;">\n								<table class="pro-callout-background" border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #0B1A23;">\n									<tr>\n										<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n											<table border="0" cellpadding="0" cellspacing="0" width="600" class="container" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n												<tr>\n													<td align="center" valign="top" width="600" class="section-padding" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 40px;padding-right: 20px;padding-left: 20px;">\n														<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n															<tr>\n																<td valign="top" class="container-cell" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n																	<img class="preserve-ratio" src="http://localhost/googame/wp-content/plugins/better-wp-security/core/img/mail/pro_logo_no_text.png" style="max-width: 100px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;" width="100" alt="" align="center">\n																	<p class="two-factor" style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 20px;margin-right: 0;margin-bottom: 20px;margin-left: 0;padding: 0;text-align: center;color: #FFFFFF;">Want two-factor authentication, scheduled malware scanning, ticketed support and more?</p>\n																	<table width="100%" border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n																		<tr>\n																			<td style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n																				<table class="module-button" border="0" cellspacing="0" cellpadding="0" align="center" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n																					<tr>\n																						<td class="border-radius" align="center" bgcolor="#FFCD08" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;">\n																							<a href="https://ithemes.com/security/#plugin-pricing" target="_blank" class="border-radius" style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #2E280E;font-family: Helvetica;font-size: 30px;line-height: 100%;text-align: center;text-decoration: none;background-color: #FFCD08;border: 1px solid #FFCD08;display: inline-block;font-weight: bold;padding-top: 20px;padding-right: 30px;padding-bottom: 20px;padding-left: 30px;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;">Get iThemes Security Pro</a>\n																						</td>\n																					</tr>\n																				</table>\n																			</td>\n																		</tr>\n																	</table>\n																	<p class="why-pro" style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 20px;margin-right: 0;margin-bottom: 20px;margin-left: 0;padding: 0;text-align: center;color: #999999;font-style: italic;">Why go Pro? <a href="https://ithemes.com/security/why-go-pro/">Check out the Free/Pro comparison chart.</a></p>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n<tr>\n	<td class="footer-heading" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n		<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n			<tr>\n				<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n					<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n						<tr>\n							<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n											<h2 style="color: #002030;font-family: Helvetica;font-size: 26px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;">Security Resources</h2>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n		<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n			<tr>\n				<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n					<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n						<tr>\n							<td class="section-padding" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n								<table class="container" align="left" border="0" cellpadding="0" cellspacing="0" width="260" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n											<img class="preserve-ratio" src="http://localhost/googame/wp-content/plugins/better-wp-security/core/img/mail/article_icon.png" style="max-width: 61px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;" width="61" alt="" align="center">\n											<br>\n											<h4 style="color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;">\n												<a href="https://ithemes.com/category/wordpress-security/" target="_blank" style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;">Articles</a>\n											</h4>\n											<br>\n											<p style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;">Read the latest in WordPress Security news, tips, and updates on <a href="https://ithemes.com/category/wordpress-security/">iThemes Blog</a>.</p>\n										</td>\n									</tr>\n								</table>\n								<table class="container" align="right" border="0" cellpadding="0" cellspacing="0" width="260" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td class="container-cell container-cell-bottom" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n											<img class="preserve-ratio" src="http://localhost/googame/wp-content/plugins/better-wp-security/core/img/mail/video_icon.png" style="max-width: 61px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;" width="61" alt="" align="center">\n											<br>\n											<h4 style="color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;">\n												<a href="https://ithemes.com/tutorial/category/ithemes-security/" target="_blank" style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;">Tutorials</a>\n											</h4>\n											<br>\n											<p style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;">Make the most of iThemes Security features with our <a href="https://ithemes.com/tutorial/category/ithemes-security/">free iThemes Security tutorials</a>.</p>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td class="divider" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n		<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n			<tr>\n				<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n					<table class="container" border="0" cellpadding="0" cellspacing="0" width="450" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n						<tr>\n							<td class="section-padding" align="center" valign="top" width="450" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n								<table class="divider-border" border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;border-top-width: 1px;border-top-style: solid;border-top-color: #E8E8E8;">\n									<tr>\n										<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 1px;text-align: center;padding-bottom: 20px;width: 450px;">\n											&nbsp;\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td class="footer-heading" align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n		<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n			<tr>\n				<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n					<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n						<tr>\n							<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n											<h2 style="color: #002030;font-family: Helvetica;font-size: 26px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;">Help &amp; Support</h2>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n		<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n			<tr>\n				<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n					<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n						<tr>\n							<td class="section-padding" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n								<table class="container" align="left" border="0" cellpadding="0" cellspacing="0" width="260" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n											<img class="preserve-ratio" src="http://localhost/googame/wp-content/plugins/better-wp-security/core/img/mail/documentation_icon.png" style="max-width: 62px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;" width="62" alt="" align="center">\n											<br>\n											<h4 style="color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;">\n												<a href="http://ithemes.com/codex/page/IThemes_Security" target="_blank" style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;">Documentation</a>\n											</h4>\n											<br>\n											<p style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;">Read iThemes Security documentation and Frequently Asked Questions on <a href="http://ithemes.com/codex/page/IThemes_Security">the Codex</a>.</p>\n										</td>\n									</tr>\n								</table>\n								<table class="container" align="right" border="0" cellpadding="0" cellspacing="0" width="260" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td class="container-cell container-cell-bottom" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;">\n											<img class="preserve-ratio" src="http://localhost/googame/wp-content/plugins/better-wp-security/core/img/mail/support_icon.png" style="max-width: 62px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;" width="62" alt="" align="center">\n											<br>\n											<h4 style="color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;">\n												<a href="https://members.ithemes.com/panel/helpdesk.php" target="_blank" style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;">Support</a>\n												<span class="pro-flag" style="background-color: #FFCC00;color: #000000;font-size: 10px;display: inline-block;padding: 3px;line-height: 1;position: relative;bottom: 10px;text-transform: uppercase;">Pro</span>\n											</h4>\n											<br>\n											<p style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;">Pro customers can contact <a href="https://members.ithemes.com/panel/helpdesk.php">iThemes Helpdesk</a> for help. Our support team answers questions Monday – Friday, 8am – 5pm (CST).</p>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td id="security-guide" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n		<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n			<tr>\n				<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n					<table id="security-guide-container" class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;border: 1px solid #CDCECE;background-color: #D3E8E9;">\n						<tr>\n							<td class="section-padding" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n								<table class="container" align="left" border="0" cellpadding="0" cellspacing="0" width="104" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td class="section-padding-bottom" align="left" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-bottom: 20px;">\n											<img class="preserve-ratio" src="http://localhost/googame/wp-content/plugins/better-wp-security/core/img/mail/wp_security_book.png" style="max-width: 84px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;" width="84" alt="" align="center">\n										</td>\n									</tr>\n								</table>\n								<table class="container" align="right" border="0" cellpadding="0" cellspacing="0" width="454" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #6C6C6C;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;padding-bottom: 20px;">\n											<h4 style="color: #6C6C6C;font-family: Helvetica;font-size: 18px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: left;padding-bottom: 10px;">Free WordPress Security Guide</h4>\n											Learn simple WordPress security tips — including 3 kinds of security your site needs and 4 best security practices for keeping your WordPress site safe with our <a href="https://ithemes.com/publishing/wordpress-security/">free guide</a>.\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td id="footer-source-details" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n		<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n			<tr>\n				<td align="center" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n					<table class="container" border="0" cellpadding="0" cellspacing="0" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n						<tr>\n							<td class="section-padding" align="center" valign="top" width="600" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;">\n								<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">\n									<tr>\n										<td class="container-cell" valign="top" style="border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 200%;text-align: center;padding-bottom: 0;padding-top: 60px;">\n											<img class="preserve-ratio" src="http://localhost/googame/wp-content/plugins/better-wp-security/core/img/mail/footer_logo.png" style="max-width: 50px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;" width="50" alt="" align="center"><br>\n											<br>\n											<span style="-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #666f72;font-family: Helvetica;font-size: 11px;line-height: 200%;text-align: center;text-decoration: none;font-weight: bold;">\n												This email was generated by the iThemes Security plugin.<br>To unsubscribe from these updates, visit the <a href="http://localhost/googame/wp-admin/admin.php?page=itsec&#038;itsec-hb-token=manage" style="color: #0084CB">Settings page</a> in the iThemes Security plugin menu.\n											</span>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>					</table>\n				</td>\n			</tr>\n		</table>\n	</center>\n</body>\n\n</html>\n";s:7:"headers";a:0:{}s:11:"attachments";a:1:{i:0;s:126:"E:\\wamp64\\www\\wp/wp-content/uploads/ithemes-security/backups/backup-googame-20190325-085927-y49a5nhTxCpexd2rS9tb9J7OfapCUJ.zip";}s:24:"phpmailer_exception_code";i:2;}}}}', 'error', '2019-03-25 01:59:29', '2019-03-25 01:59:25', 69312400, 69504408, 'http://localhost/wp/wp-admin/', 1, 0, '::1');
INSERT INTO `plbs_itsec_logs` (`id`, `parent_id`, `module`, `code`, `data`, `type`, `timestamp`, `init_timestamp`, `memory_current`, `memory_peak`, `url`, `blog_id`, `user_id`, `remote_ip`) VALUES
(13, 0, 'backup', 'email-failed', 'a:3:{s:8:"settings";a:9:{s:9:"all_sites";b:0;s:6:"method";i:1;s:8:"location";s:60:"E:\\wamp64\\www\\wp/wp-content/uploads/ithemes-security/backups";s:6:"retain";i:0;s:3:"zip";b:1;s:7:"exclude";a:3:{i:0;s:14:"itsec_lockouts";i:1;s:9:"itsec_log";i:2;s:10:"itsec_temp";}s:7:"enabled";b:1;s:8:"interval";i:15;s:8:"last_run";i:1544368639;}s:12:"mail_success";b:0;s:4:"file";s:126:"E:\\wamp64\\www\\wp/wp-content/uploads/ithemes-security/backups/backup-googame-20190325-085927-y49a5nhTxCpexd2rS9tb9J7OfapCUJ.sql";}', 'error', '2019-03-25 01:59:29', '2019-03-25 01:59:25', 69347704, 69589304, 'http://localhost/wp/wp-admin/', 1, 0, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_itsec_temp`
--

CREATE TABLE `plbs_itsec_temp` (
  `temp_id` bigint(20) UNSIGNED NOT NULL,
  `temp_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `temp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_username` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_links`
--

CREATE TABLE `plbs_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_options`
--

CREATE TABLE `plbs_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_options`
--

INSERT INTO `plbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wpdev.pt', 'yes'),
(2, 'home', 'http://wpdev.pt', 'yes'),
(3, 'blogname', 'WpDev', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'skyfrost.07@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:25:"option-tree/ot-loader.php";i:4;s:37:"tinymce-advanced/tinymce-advanced.php";i:6;s:24:"wordpress-seo/wp-seo.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mytheme', 'yes'),
(41, 'stylesheet', 'mytheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '80', 'yes'),
(59, 'thumbnail_size_h', '80', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '0', 'yes'),
(62, 'medium_size_h', '0', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '0', 'yes'),
(65, 'large_size_h', '0', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:16:"handle_uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '2', 'yes'),
(84, 'page_on_front', '28', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'plbs_user_roles', 'a:9:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:133:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:15:"wpseo_bulk_edit";b:1;s:20:"wpseo_manage_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:93:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', '', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:9:{i:1553482077;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1553493594;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1553493743;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1553521677;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1553521914;a:1:{s:19:"wpseo-reindex-links";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1553526682;a:1:{s:15:"itsec_cron_test";a:1:{s:32:"e132f07bbf76dea52dafb2effd822f61";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:1553526682;}}}}i:1553535537;a:1:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1553538612;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1497372259;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(137, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(147, 'recently_activated', 'a:1:{s:27:"woocommerce/woocommerce.php";i:1553480494;}', 'yes'),
(162, 'r_notice_data', '{"type":"redux-message","title":"<strong>The Ultimate Redux Extensions Bundle!<\\/strong><br\\/>\\r\\n\\r\\n","message":"Attention Redux Developers!  Due to popular demand, we are extending the availability of the Ultimate Redux Extension Bundle, which includes <strong>all<\\/strong> of our extensions at over 40% off!  Grab you\'re copy today at <a href=\\"https:\\/\\/reduxframework.com\\/extension\\/ultimate-bundle\\">https:\\/\\/reduxframework.com\\/extension\\/ultimate-bundle<\\/a>","color":"rgba(0,162,227,1)"}', 'yes'),
(163, 'redux_blast', '1497334563', 'yes'),
(164, 'redux_version_upgraded_from', '3.6.5', 'yes'),
(167, 'redux_demo', 'a:70:{s:12:"opt-checkbox";s:1:"1";s:15:"opt-multi-check";a:3:{i:1;s:1:"1";i:2;s:1:"0";i:3;s:1:"0";}s:9:"opt-radio";s:1:"2";s:12:"opt-sortable";a:3:{s:8:"Text One";s:6:"Item 1";s:8:"Text Two";s:6:"Item 2";s:10:"Text Three";s:6:"Item 3";}s:18:"opt-check-sortable";a:3:{s:3:"cb1";b:0;s:3:"cb2";b:1;s:3:"cb3";b:0;}s:12:"text-example";s:12:"Default Text";s:17:"text-example-hint";s:12:"Default Text";s:12:"opt-textarea";s:12:"Default Text";s:10:"opt-editor";s:27:"Powered by Redux Framework.";s:15:"opt-editor-tiny";s:27:"Powered by Redux Framework.";s:18:"opt-ace-editor-css";s:29:"#header{\n   margin: 0 auto;\n}";s:17:"opt-ace-editor-js";s:39:"jQuery(document).ready(function(){\n\n});";s:18:"opt-ace-editor-php";s:28:"<?php\n    echo "PHP String";";s:15:"opt-color-title";s:7:"#000000";s:16:"opt-color-footer";s:7:"#dd9933";s:16:"opt-color-header";a:2:{s:4:"from";s:7:"#1e73be";s:2:"to";s:7:"#00897e";}s:14:"opt-color-rgba";a:2:{s:5:"color";s:7:"#7e33dd";s:5:"alpha";s:2:".8";}s:14:"opt-link-color";a:3:{s:7:"regular";s:4:"#aaa";s:5:"hover";s:4:"#bbb";s:6:"active";s:4:"#ccc";}s:17:"opt-palette-color";s:3:"red";s:17:"opt-header-border";a:6:{s:12:"border-color";s:7:"#1e73be";s:12:"border-style";s:5:"solid";s:10:"border-top";s:3:"3px";s:12:"border-right";s:3:"3px";s:13:"border-bottom";s:3:"3px";s:11:"border-left";s:3:"3px";}s:26:"opt-header-border-expanded";a:6:{s:12:"border-color";s:7:"#1e73be";s:12:"border-style";s:5:"solid";s:10:"border-top";s:3:"3px";s:12:"border-right";s:3:"3px";s:13:"border-bottom";s:3:"3px";s:11:"border-left";s:3:"3px";}s:14:"opt-dimensions";a:2:{s:5:"width";i:200;s:6:"height";i:100;}s:20:"opt-dimensions-width";a:2:{s:5:"width";i:200;s:6:"height";i:100;}s:11:"opt-spacing";a:4:{s:10:"margin-top";s:3:"1px";s:12:"margin-right";s:3:"2px";s:13:"margin-bottom";s:3:"3px";s:11:"margin-left";s:3:"4px";}s:20:"opt-spacing-expanded";a:4:{s:10:"margin-top";s:3:"1px";s:12:"margin-right";s:3:"2px";s:13:"margin-bottom";s:3:"3px";s:11:"margin-left";s:3:"4px";}s:9:"opt-media";a:1:{s:3:"url";s:52:"http://s.wordpress.org/style/images/codeispoetry.png";}s:14:"opt-button-set";s:1:"2";s:20:"opt-button-set-multi";a:2:{i:0;s:1:"2";i:1;s:1:"3";}s:9:"switch-on";b:1;s:10:"switch-off";b:0;s:13:"switch-parent";i:0;s:13:"switch-child1";b:0;s:13:"switch-child2";b:0;s:10:"opt-select";s:1:"2";s:21:"opt-select-stylesheet";s:11:"default.css";s:19:"opt-select-optgroup";s:1:"2";s:16:"opt-multi-select";a:2:{i:0;s:1:"2";i:1;s:1:"3";}s:16:"opt-select-image";s:13:"tree_bark.png";s:23:"opt-image-select-layout";s:1:"2";s:12:"opt-patterns";i:0;s:16:"opt-image-select";s:1:"2";s:11:"opt-presets";i:0;s:16:"opt-select_image";i:0;s:16:"opt-slider-label";i:250;s:15:"opt-slider-text";i:75;s:17:"opt-slider-select";a:2:{i:1;i:100;i:2;i:300;}s:16:"opt-slider-float";d:0.5;s:11:"opt-spinner";s:2:"40";s:19:"opt-typography-body";a:4:{s:5:"color";s:7:"#dd9933";s:9:"font-size";s:4:"30px";s:11:"font-family";s:26:"Arial,Helvetica,sans-serif";s:11:"font-weight";s:6:"Normal";}s:14:"opt-typography";a:6:{s:5:"color";s:4:"#333";s:10:"font-style";s:3:"700";s:11:"font-family";s:4:"Abel";s:6:"google";b:1;s:9:"font-size";s:4:"33px";s:11:"line-height";s:4:"40px";}s:19:"opt-homepage-layout";a:3:{s:7:"enabled";a:4:{s:10:"highlights";s:10:"Highlights";s:6:"slider";s:6:"Slider";s:10:"staticpage";s:11:"Static Page";s:8:"services";s:8:"Services";}s:8:"disabled";a:0:{}s:6:"backup";a:0:{}}s:21:"opt-homepage-layout-2";a:2:{s:8:"disabled";a:2:{s:10:"highlights";s:10:"Highlights";s:6:"slider";s:6:"Slider";}s:7:"enabled";a:2:{s:10:"staticpage";s:11:"Static Page";s:8:"services";s:8:"Services";}}s:14:"opt-text-email";s:13:"test@test.com";s:12:"opt-text-url";s:25:"http://reduxframework.com";s:16:"opt-text-numeric";s:1:"0";s:22:"opt-text-comma-numeric";s:1:"0";s:25:"opt-text-no-special-chars";s:1:"0";s:20:"opt-text-str_replace";s:20:"This is the default.";s:21:"opt-text-preg_replace";s:1:"0";s:24:"opt-text-custom_validate";s:1:"0";s:20:"opt-textarea-no-html";s:27:"No HTML is allowed in here.";s:17:"opt-textarea-html";s:24:"HTML is allowed in here.";s:22:"opt-textarea-some-html";s:36:"<p>Some HTML is allowed in here.</p>";s:18:"opt-required-basic";b:0;s:19:"opt-required-nested";b:0;s:29:"opt-required-nested-buttonset";s:11:"button-text";s:19:"opt-required-select";s:10:"no-sidebar";s:32:"opt-required-select-left-sidebar";s:0:"";s:33:"opt-required-select-right-sidebar";s:0:"";s:19:"opt-customizer-only";s:1:"2";}', 'yes'),
(168, 'redux_demo-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1497334564;}', 'yes'),
(171, 'option_tree_settings', 'a:2:{s:8:"sections";a:1:{i:0;a:2:{s:5:"title";s:7:"General";s:2:"id";s:7:"general";}}s:15:"contextual_help";a:1:{s:7:"sidebar";s:0:"";}}', 'yes'),
(172, 'option_tree', 'a:1:{s:11:"sample_text";s:0:"";}', 'yes'),
(173, 'ot_media_post_ID', '4', 'yes'),
(191, 'current_theme', 'Pinla', 'yes'),
(192, 'theme_mods_mytheme', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:15;}}', 'yes'),
(193, 'theme_switched', '', 'yes'),
(202, 'category_children', 'a:0:{}', 'yes'),
(207, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:139:"formatselect,bold,italic,underline,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo,image,media,fullscreen";s:9:"toolbar_2";s:118:"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,backcolor,table,wp_help,code";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"options";s:7:"advlist";s:7:"plugins";s:18:"table,code,advlist";}', 'yes'),
(208, 'tadv_admin_settings', 'a:1:{s:16:"disabled_editors";s:0:"";}', 'yes'),
(209, 'tadv_version', '4000', 'yes'),
(220, 'itsec-storage', 'a:9:{s:6:"global";a:38:{s:15:"lockout_message";s:5:"error";s:20:"user_lockout_message";s:64:"You have been locked out due to too many invalid login attempts.";s:25:"community_lockout_message";s:77:"Your IP address has been flagged as a threat by the iThemes Security network.";s:9:"blacklist";b:1;s:15:"blacklist_count";i:3;s:16:"blacklist_period";i:7;s:14:"lockout_period";i:15;s:18:"lockout_white_list";a:0:{}s:12:"log_rotation";i:14;s:17:"file_log_rotation";i:180;s:8:"log_type";s:8:"database";s:12:"log_location";s:57:"E:\\wamp64\\www\\wp/wp-content/uploads/ithemes-security/logs";s:8:"log_info";s:39:"wp-basic-FzPg7cqk97BStopWB7cMcxeRjV0e1O";s:14:"allow_tracking";b:0;s:11:"write_files";b:1;s:10:"nginx_file";s:27:"E:\\wamp64\\www\\wp/nginx.conf";s:24:"infinitewp_compatibility";b:0;s:11:"did_upgrade";b:0;s:9:"lock_file";b:0;s:5:"proxy";s:9:"automatic";s:12:"proxy_header";s:20:"HTTP_X_FORWARDED_FOR";s:14:"hide_admin_bar";b:0;s:16:"show_error_codes";b:0;s:19:"show_security_check";b:0;s:5:"build";i:4108;s:20:"activation_timestamp";i:1541598708;s:11:"cron_status";i:0;s:8:"use_cron";b:0;s:14:"cron_test_time";i:1553526682;s:19:"enable_grade_report";b:0;s:18:"notification_email";a:1:{i:0;s:21:"skyfrost.07@gmail.com";}s:12:"backup_email";a:1:{i:0;s:21:"skyfrost.07@gmail.com";}s:12:"digest_email";b:0;s:19:"email_notifications";b:0;s:14:"proxy_override";b:0;s:25:"show_new_dashboard_notice";b:0;s:16:"digest_last_sent";i:1497375537;s:15:"digest_messages";a:0:{}}s:19:"network-brute-force";a:5:{s:7:"api_key";s:0:"";s:10:"api_secret";s:0:"";s:10:"enable_ban";b:1;s:13:"updates_optin";b:1;s:7:"api_nag";b:0;}s:16:"wordpress-tweaks";a:13:{s:18:"wlwmanifest_header";b:0;s:14:"edituri_header";b:0;s:12:"comment_spam";b:0;s:11:"file_editor";b:1;s:14:"disable_xmlrpc";i:0;s:22:"allow_xmlrpc_multiauth";b:0;s:8:"rest_api";s:15:"restrict-access";s:12:"login_errors";b:0;s:21:"force_unique_nicename";b:0;s:27:"disable_unused_author_pages";b:0;s:16:"block_tabnapping";b:0;s:21:"valid_user_login_type";s:4:"both";s:26:"patch_thumb_file_traversal";b:1;}s:11:"brute-force";a:4:{s:17:"max_attempts_host";i:5;s:17:"max_attempts_user";i:10;s:12:"check_period";i:15;s:14:"auto_ban_admin";b:0;}s:6:"backup";a:9:{s:9:"all_sites";b:0;s:6:"method";i:1;s:8:"location";s:60:"E:\\wamp64\\www\\wp/wp-content/uploads/ithemes-security/backups";s:6:"retain";i:0;s:3:"zip";b:1;s:7:"exclude";a:3:{i:0;s:14:"itsec_lockouts";i:1;s:9:"itsec_log";i:2;s:10:"itsec_temp";}s:7:"enabled";b:1;s:8:"interval";i:15;s:8:"last_run";i:1553479165;}s:13:"system-tweaks";a:10:{s:18:"directory_browsing";b:1;s:11:"uploads_php";b:1;s:13:"protect_files";b:0;s:15:"request_methods";b:0;s:24:"suspicious_query_strings";b:0;s:22:"non_english_characters";b:0;s:16:"long_url_strings";b:0;s:17:"write_permissions";b:0;s:11:"plugins_php";b:0;s:10:"themes_php";b:0;}s:12:"hide-backend";a:6:{s:7:"enabled";b:1;s:4:"slug";s:6:"manage";s:12:"theme_compat";b:1;s:17:"theme_compat_slug";s:9:"not_found";s:16:"post_logout_slug";s:0:"";s:8:"register";s:15:"wp-register-php";}s:19:"notification-center";a:8:{s:9:"last_sent";a:1:{s:6:"digest";i:1497375537;}s:9:"resend_at";a:0:{}s:4:"data";a:0:{}s:15:"last_mail_error";s:36:"Could not instantiate mail function.";s:13:"notifications";a:5:{s:6:"digest";a:6:{s:8:"schedule";s:5:"daily";s:7:"enabled";b:0;s:9:"user_list";a:1:{i:0;i:1;}s:14:"recipient_type";s:7:"default";s:7:"subject";N;s:15:"previous_emails";a:0:{}}s:7:"lockout";a:5:{s:7:"enabled";b:0;s:9:"user_list";a:1:{i:0;i:1;}s:14:"recipient_type";s:7:"default";s:7:"subject";N;s:15:"previous_emails";a:0:{}}s:6:"backup";a:2:{s:10:"email_list";a:1:{i:0;s:21:"skyfrost.07@gmail.com";}s:7:"subject";N;}s:11:"file-change";a:2:{s:7:"enabled";b:0;s:14:"recipient_type";s:6:"custom";}s:12:"hide-backend";a:4:{s:9:"user_list";a:1:{i:0;s:18:"role:administrator";}s:14:"recipient_type";s:7:"default";s:7:"subject";N;s:7:"message";s:0:"";}}s:12:"admin_emails";a:1:{i:0;s:21:"skyfrost.07@gmail.com";}s:10:"from_email";s:0:"";s:18:"default_recipients";a:1:{s:9:"user_list";a:1:{i:0;i:1;}}}s:21:"password-requirements";a:2:{s:20:"enabled_requirements";a:0:{}s:20:"requirement_settings";a:1:{s:8:"strength";a:1:{s:4:"role";s:13:"administrator";}}}}', 'yes'),
(221, 'itsec_temp_whitelist_ip', 'a:1:{s:3:"::1";i:1541687771;}', 'no'),
(223, 'itsec_active_modules', 'a:9:{s:9:"ban-users";b:1;s:11:"brute-force";b:1;s:6:"backup";b:1;s:19:"network-brute-force";b:1;s:16:"wordpress-tweaks";b:1;s:9:"away-mode";b:0;s:13:"system-tweaks";b:1;s:11:"file-change";b:0;s:3:"ssl";b:0;}', 'yes'),
(227, 'woocommerce_default_country', 'VN', 'yes'),
(228, 'woocommerce_allowed_countries', 'all', 'yes'),
(229, 'woocommerce_all_except_countries', '', 'yes'),
(230, 'woocommerce_specific_allowed_countries', '', 'yes'),
(231, 'woocommerce_ship_to_countries', '', 'yes'),
(232, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(233, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(234, 'woocommerce_calc_taxes', 'no', 'yes'),
(235, 'woocommerce_demo_store', 'no', 'yes'),
(236, 'woocommerce_demo_store_notice', 'Đây là cửa hàng demo nhằm mục đích thử nghiệm &mdash; các đơn hàng sẽ không có hiệu lực.', 'no'),
(237, 'woocommerce_currency', 'VND', 'yes'),
(238, 'woocommerce_currency_pos', 'right', 'yes'),
(239, 'woocommerce_price_thousand_sep', '.', 'yes'),
(240, 'woocommerce_price_decimal_sep', ',', 'yes'),
(241, 'woocommerce_price_num_decimals', '0', 'yes'),
(242, 'woocommerce_weight_unit', 'kg', 'yes'),
(243, 'woocommerce_dimension_unit', 'cm', 'yes'),
(244, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(245, 'woocommerce_review_rating_required', 'yes', 'no'),
(246, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(247, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(248, 'woocommerce_shop_page_id', '5', 'yes'),
(249, 'woocommerce_shop_page_display', '', 'yes'),
(250, 'woocommerce_category_archive_display', '', 'yes'),
(251, 'woocommerce_default_catalog_orderby', 'popularity', 'yes'),
(252, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(253, 'woocommerce_enable_ajax_add_to_cart', 'no', 'yes'),
(254, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(255, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(256, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:4:"crop";i:1;}', 'yes'),
(257, 'woocommerce_manage_stock', 'yes', 'yes'),
(258, 'woocommerce_hold_stock_minutes', '60', 'no'),
(259, 'woocommerce_notify_low_stock', 'yes', 'no'),
(260, 'woocommerce_notify_no_stock', 'yes', 'no'),
(261, 'woocommerce_stock_email_recipient', 'skyfrost.07@gmail.com', 'no'),
(262, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(263, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(264, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(265, 'woocommerce_stock_format', '', 'yes'),
(266, 'woocommerce_file_download_method', 'force', 'no'),
(267, 'woocommerce_downloads_require_login', 'no', 'no'),
(268, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(269, 'woocommerce_prices_include_tax', 'no', 'yes'),
(270, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(271, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(272, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(273, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(274, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(275, 'woocommerce_tax_display_cart', 'excl', 'no'),
(276, 'woocommerce_price_display_suffix', '', 'yes'),
(277, 'woocommerce_tax_total_display', 'itemized', 'no'),
(278, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(279, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(280, 'woocommerce_ship_to_destination', 'billing', 'no'),
(281, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(282, 'woocommerce_enable_coupons', 'yes', 'yes'),
(283, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(284, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(285, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(286, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(287, 'woocommerce_cart_page_id', '6', 'yes'),
(288, 'woocommerce_checkout_page_id', '7', 'yes'),
(289, 'woocommerce_terms_page_id', '', 'no'),
(290, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(291, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(292, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(293, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(294, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(295, 'woocommerce_myaccount_page_id', '8', 'yes'),
(296, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(297, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(298, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(299, 'woocommerce_registration_generate_username', 'yes', 'no'),
(300, 'woocommerce_registration_generate_password', 'no', 'no'),
(301, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(302, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(303, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(304, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(305, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(306, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(307, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(308, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(309, 'woocommerce_email_from_name', 'WP basic', 'no'),
(310, 'woocommerce_email_from_address', 'skyfrost.07@gmail.com', 'no'),
(311, 'woocommerce_email_header_image', '', 'no'),
(312, 'woocommerce_email_footer_text', 'WP basic - Powered by WooCommerce', 'no'),
(313, 'woocommerce_email_base_color', '#96588a', 'no'),
(314, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(315, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(316, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(317, 'woocommerce_api_enabled', 'yes', 'yes'),
(323, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(325, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(326, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(327, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(328, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(329, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(330, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(331, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(332, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(333, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(334, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(335, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(336, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(337, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(338, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(341, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(357, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(358, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(359, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:3:"yes";s:5:"email";s:21:"skyfrost.07@gmail.com";}', 'yes'),
(360, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(361, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(362, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(364, 'woocommerce_allow_tracking', 'no', 'yes'),
(365, 'wc_ppec_version', '1.4.0', 'yes'),
(367, '_transient_shipping-transient-version', '1497378372', 'yes'),
(381, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(399, 'cptui_new_install', 'false', 'yes'),
(400, 'acf_version', '5.7.7', 'yes'),
(401, 'wpseo', 'a:19:{s:15:"ms_defaults_set";b:0;s:7:"version";s:3:"9.1";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";b:0;s:16:"environment_type";s:11:"development";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:22:"show_onboarding_notice";b:0;s:18:"first_activated_on";i:1497765902;}', 'yes'),
(403, 'wpseo_titles', 'a:89:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:1;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:0;s:23:"is-media-purge-relevant";b:1;s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:12:"website_name";s:0:"";s:11:"person_name";s:5:"Pinla";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:6:"person";s:17:"stripcategorybase";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:23:"display-metabox-pt-post";b:1;s:23:"post_types-post-maintax";i:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:23:"display-metabox-pt-page";b:1;s:23:"post_types-page-maintax";i:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:29:"post_types-attachment-maintax";i:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:22:"noindex-subpages-wpseo";b:0;s:13:"title-product";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:16:"metadesc-product";s:0:"";s:15:"noindex-product";b:0;s:16:"showdate-product";b:0;s:23:"title-ptarchive-product";s:0:"";s:26:"metadesc-ptarchive-product";s:0:"";s:25:"bctitle-ptarchive-product";s:0:"";s:25:"noindex-ptarchive-product";b:0;s:21:"title-tax-product_cat";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-product_cat";s:0:"";s:23:"noindex-tax-product_cat";b:0;s:21:"title-tax-product_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-product_tag";s:0:"";s:23:"noindex-tax-product_tag";b:0;s:32:"title-tax-product_shipping_class";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:35:"metadesc-tax-product_shipping_class";s:0:"";s:34:"noindex-tax-product_shipping_class";b:0;s:26:"post_types-product-maintax";i:0;s:29:"taxonomy-product_cat-ptparent";i:0;s:29:"taxonomy-product_tag-ptparent";i:0;s:40:"taxonomy-product_shipping_class-ptparent";i:0;}', 'yes'),
(404, 'wpseo_social', 'a:20:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:19:"og_default_image_id";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:21:"og_frontpage_image_id";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(408, 'wpseo_flush_rewrite', '1', 'yes'),
(411, 'wpseo-gsc', 'a:1:{s:7:"profile";s:0:"";}', 'yes'),
(424, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=6";i:1;s:10:"/gio-hang/";i:2;s:3:"p=7";i:3;s:12:"/thanh-toan/";i:4;s:3:"p=8";i:5;s:11:"/tai-khoan/";}', 'yes'),
(461, '_transient_product_query-transient-version', '1539103510', 'yes'),
(462, '_transient_product-transient-version', '1539103510', 'yes'),
(465, '_transient_yoast_i18n_wordpress-seo_promo_hide', '1', 'yes'),
(486, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:0;s:3:"all";i:0;s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(504, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(505, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(528, 'wpseo_license_server_version', '2', 'yes'),
(529, '_transient_timeout_wpseo_link_table_inaccessible', '1573134714', 'no'),
(530, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(531, '_transient_timeout_wpseo_meta_table_inaccessible', '1573134714', 'no'),
(532, '_transient_wpseo_meta_table_inaccessible', '0', 'no');
INSERT INTO `plbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(551, 'rewrite_rules', 'a:158:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"san-pham/?$";s:27:"index.php?post_type=product";s:41:"san-pham/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:36:"san-pham/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:28:"san-pham/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:47:"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:42:"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:23:"danh-muc/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:35:"danh-muc/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:17:"danh-muc/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:48:"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:43:"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:24:"tu-khoa/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:36:"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:18:"tu-khoa/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:36:"san-pham/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"san-pham/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"san-pham/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"san-pham/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:29:"san-pham/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:49:"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:44:"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:37:"san-pham/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:44:"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:34:"san-pham/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:40:"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"san-pham/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:25:"san-pham/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"san-pham/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"san-pham/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=28&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(555, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:8:"san-pham";s:13:"category_base";s:8:"danh-muc";s:8:"tag_base";s:7:"tu-khoa";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(556, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(557, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(560, 'woocommerce_store_address', '', 'yes'),
(561, 'woocommerce_store_address_2', '', 'yes'),
(562, 'woocommerce_store_city', '', 'yes'),
(563, 'woocommerce_store_postcode', '', 'yes'),
(564, 'woocommerce_placeholder_image', '', 'yes'),
(565, 'woocommerce_enable_reviews', 'yes', 'yes'),
(566, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(567, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(568, 'wp_page_for_privacy_policy', '', 'yes'),
(569, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(570, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(571, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(572, 'woocommerce_trash_pending_orders', '', 'no'),
(573, 'woocommerce_trash_failed_orders', '', 'no'),
(574, 'woocommerce_trash_cancelled_orders', '', 'no'),
(575, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(576, 'woocommerce_single_image_width', '600', 'yes'),
(577, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(578, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(579, 'product_cat_children', 'a:0:{}', 'yes'),
(580, 'default_product_cat', '16', 'yes'),
(581, 'woocommerce_version', '3.5.1', 'yes'),
(592, '_transient_as_comment_count', 'O:8:"stdClass":7:{s:14:"total_comments";i:0;s:3:"all";i:0;s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(609, 'woocommerce_thumbnail_cropping', '1:1', 'yes'),
(616, 'woocommerce_db_version', '3.5.1', 'yes'),
(655, 'new_admin_email', 'skyfrost.07@gmail.com', 'yes'),
(665, 'itsec_scheduler_page_load', 'a:2:{s:6:"single";a:0:{}s:9:"recurring";a:4:{s:14:"purge-lockouts";a:3:{s:8:"schedule";s:5:"daily";s:10:"last_fired";i:1553479165;s:4:"data";a:0:{}}s:17:"purge-log-entries";a:3:{s:8:"schedule";s:5:"daily";s:10:"last_fired";i:1553479165;s:4:"data";a:0:{}}s:11:"clear-locks";a:3:{s:8:"schedule";s:5:"daily";s:10:"last_fired";i:1553479165;s:4:"data";a:0:{}}s:6:"backup";a:3:{s:8:"schedule";s:6:"backup";s:10:"last_fired";i:1553479165;s:4:"data";a:0:{}}}}', 'no'),
(672, '_site_transient_timeout_itsec_wp_upload_dir', '1553565557', 'no'),
(673, '_site_transient_itsec_wp_upload_dir', 'a:6:{s:4:"path";s:43:"E:\\wamp64\\www\\wp/wp-content/uploads/2019/03";s:3:"url";s:51:"http://localhost/googame/wp-content/uploads/2019/03";s:6:"subdir";s:8:"/2019/03";s:7:"basedir";s:35:"E:\\wamp64\\www\\wp/wp-content/uploads";s:7:"baseurl";s:43:"http://localhost/googame/wp-content/uploads";s:5:"error";b:0;}', 'no'),
(677, '_transient_timeout_external_ip_address_::1', '1554083997', 'no'),
(678, '_transient_external_ip_address_::1', '42.113.173.44', 'no'),
(682, '_site_transient_timeout_theme_roots', '1553482243', 'no'),
(683, '_site_transient_theme_roots', 'a:2:{s:7:"mytheme";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";}', 'no'),
(684, '_transient_timeout_external_ip_address_127.0.0.1', '1554084576', 'no'),
(685, '_transient_external_ip_address_127.0.0.1', '42.113.173.44', 'no'),
(694, '_site_transient_timeout_browser_60a9d8cff1295245efb3e528a2d7c526', '1554085017', 'no'),
(695, '_site_transient_browser_60a9d8cff1295245efb3e528a2d7c526', 'a:10:{s:4:"name";s:5:"Opera";s:7:"version";s:13:"58.0.3135.107";s:8:"platform";s:7:"Windows";s:10:"update_url";s:22:"https://www.opera.com/";s:7:"img_src";s:42:"http://s.w.org/images/browsers/opera.png?1";s:11:"img_src_ssl";s:43:"https://s.w.org/images/browsers/opera.png?1";s:15:"current_version";s:5:"12.18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(696, '_transient_timeout_wc_report_sales_by_date', '1553566618', 'no'),
(697, '_transient_wc_report_sales_by_date', 'a:8:{s:32:"17b9eebc1a7713ad8f442c15e6d0510c";a:0:{}s:32:"cdfd1cd3f058138be63c0f36f5b8ddaa";a:0:{}s:32:"fe43d997edd1c3a6086ba934f727722c";a:0:{}s:32:"344d4bed79a835a71329edf0c12d4f12";N;s:32:"5b5c5c791bc23786d108c32ab610de83";a:0:{}s:32:"44672e976f854613de2cfd871e5a2bff";a:0:{}s:32:"87735f5afcae37df86a01bb7c686fe08";a:0:{}s:32:"1559e00cb71e447790cbe2aefa61d5ac";a:0:{}}', 'no'),
(698, '_transient_timeout_wc_admin_report', '1553566618', 'no'),
(699, '_transient_wc_admin_report', 'a:1:{s:32:"c8cae1b8d32541fbfda7ee64bef9de33";a:0:{}}', 'no'),
(700, '_transient_timeout_wc_low_stock_count', '1556072218', 'no'),
(701, '_transient_wc_low_stock_count', '0', 'no'),
(702, '_transient_timeout_wc_outofstock_count', '1556072218', 'no'),
(703, '_transient_wc_outofstock_count', '0', 'no'),
(704, '_site_transient_timeout_available_translations', '1553491030', 'no');
INSERT INTO `plbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(705, '_site_transient_available_translations', 'a:113:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-01 06:22:57";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-08 00:58:53";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-04 08:43:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-05 11:37:23";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-10 08:54:40";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-29 21:28:23";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-28 17:08:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-14 19:51:46";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 08:46:24";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-25 12:30:09";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.8/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-25 13:19:31";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-07-28 11:48:22";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-07-28 11:47:36";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-27 15:33:27";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-10 07:51:56";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-13 05:42:05";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-13 03:45:55";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-13 03:45:44";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-28 16:14:01";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-09 14:53:42";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-15 15:46:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-13 05:08:30";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 15:03:42";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 23:17:08";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-01 17:54:52";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-15 16:32:57";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-28 16:20:18";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-10 17:20:09";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-19 14:11:29";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 21:12:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-04 08:05:41";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-05 07:24:22";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-08 18:24:55";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-01-31 11:16:06";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-28 16:02:42";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-02 09:10:15";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-14 12:33:48";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-09 10:32:06";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-06-17 09:33:44";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-06 18:14:24";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-08-03 10:29:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-07-28 13:16:13";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:6:"4.7.11";s:7:"updated";s:19:"2018-09-20 11:13:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-01 11:16:36";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-01 10:30:44";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-24 13:53:29";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Nerusaké";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-02 06:28:35";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-21 14:15:57";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-12 08:08:32";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-22 02:28:45";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-28 17:12:13";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.8/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-13 21:42:46";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-02-13 07:38:55";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-08-30 20:27:25";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-11 00:57:26";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-27 10:30:26";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-05 19:28:41";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-18 11:11:49";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-29 08:41:27";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-10 17:50:37";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-21 07:25:37";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-05 14:41:09";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 09:30:48";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-07 01:11:27";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-08 20:59:54";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-09 15:27:18";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-31 08:30:58";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 13:33:13";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-01 13:20:12";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-08-02 20:59:54";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-10 13:43:09";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-02 17:08:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-07 21:08:54";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 12:31:53";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:16:"ئۇيغۇرچە";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-01 10:24:13";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-03 09:18:37";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-11 06:46:15";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-06 02:26:39";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-10 23:11:47";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-09 00:56:52";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-19 20:31:12";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(710, '_transient_timeout__woocommerce_helper_subscriptions', '1553481177', 'no'),
(711, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(712, '_transient_timeout__woocommerce_helper_updates', '1553523477', 'no'),
(713, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1553480277;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no');
INSERT INTO `plbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(714, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1553480443;s:7:"checked";a:14:{s:30:"advanced-custom-fields/acf.php";s:5:"5.7.7";s:19:"akismet/akismet.php";s:5:"4.0.8";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.6.0";s:45:"ewww-image-optimizer/ewww-image-optimizer.php";s:5:"4.4.2";s:9:"hello.php";s:3:"1.6";s:41:"better-wp-security/better-wp-security.php";s:5:"7.2.0";s:25:"option-tree/ot-loader.php";s:5:"2.6.0";s:35:"redux-framework/redux-framework.php";s:6:"3.6.14";s:37:"tinymce-advanced/tinymce-advanced.php";s:5:"4.8.0";s:33:"w3-total-cache/w3-total-cache.php";s:5:"0.9.7";s:27:"woocommerce/woocommerce.php";s:5:"3.5.1";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:5:"1.6.5";s:40:"yith-woocommerce-zoom-magnifier/init.php";s:5:"1.3.5";s:24:"wordpress-seo/wp-seo.php";s:3:"9.1";}s:8:"response";a:9:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":12:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"5.7.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.9";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.1";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":12:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.6.1";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.1.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.2";s:12:"requires_php";s:3:"5.2";s:13:"compatibility";O:8:"stdClass":0:{}}s:45:"ewww-image-optimizer/ewww-image-optimizer.php";O:8:"stdClass":12:{s:2:"id";s:34:"w.org/plugins/ewww-image-optimizer";s:4:"slug";s:20:"ewww-image-optimizer";s:6:"plugin";s:45:"ewww-image-optimizer/ewww-image-optimizer.php";s:11:"new_version";s:5:"4.7.0";s:3:"url";s:51:"https://wordpress.org/plugins/ewww-image-optimizer/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/ewww-image-optimizer.4.7.0.zip";s:5:"icons";a:2:{s:2:"2x";s:73:"https://ps.w.org/ewww-image-optimizer/assets/icon-256x256.png?rev=1582276";s:2:"1x";s:73:"https://ps.w.org/ewww-image-optimizer/assets/icon-128x128.png?rev=1582276";}s:7:"banners";a:2:{s:2:"2x";s:76:"https://ps.w.org/ewww-image-optimizer/assets/banner-1544x500.jpg?rev=1582276";s:2:"1x";s:75:"https://ps.w.org/ewww-image-optimizer/assets/banner-772x250.jpg?rev=1582276";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.1.1";s:12:"requires_php";s:3:"5.6";s:13:"compatibility";O:8:"stdClass":0:{}}s:41:"better-wp-security/better-wp-security.php";O:8:"stdClass":13:{s:2:"id";s:32:"w.org/plugins/better-wp-security";s:4:"slug";s:18:"better-wp-security";s:6:"plugin";s:41:"better-wp-security/better-wp-security.php";s:11:"new_version";s:5:"7.3.2";s:3:"url";s:49:"https://wordpress.org/plugins/better-wp-security/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/better-wp-security.7.3.2.zip";s:5:"icons";a:3:{s:2:"2x";s:70:"https://ps.w.org/better-wp-security/assets/icon-256x256.jpg?rev=969999";s:2:"1x";s:62:"https://ps.w.org/better-wp-security/assets/icon.svg?rev=970042";s:3:"svg";s:62:"https://ps.w.org/better-wp-security/assets/icon.svg?rev=970042";}s:7:"banners";a:1:{s:2:"1x";s:72:"https://ps.w.org/better-wp-security/assets/banner-772x250.png?rev=881897";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:109:"<p>Version 7.3.2 contains important bug fixes and security improvements. It is recommended for all users.</p>";s:6:"tested";s:5:"5.1.0";s:12:"requires_php";s:3:"5.2";s:13:"compatibility";O:8:"stdClass":0:{}}s:35:"redux-framework/redux-framework.php";O:8:"stdClass":12:{s:2:"id";s:29:"w.org/plugins/redux-framework";s:4:"slug";s:15:"redux-framework";s:6:"plugin";s:35:"redux-framework/redux-framework.php";s:11:"new_version";s:6:"3.6.15";s:3:"url";s:46:"https://wordpress.org/plugins/redux-framework/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/redux-framework.3.6.15.zip";s:5:"icons";a:3:{s:2:"2x";s:67:"https://ps.w.org/redux-framework/assets/icon-256x256.png?rev=995554";s:2:"1x";s:59:"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554";s:3:"svg";s:59:"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554";}s:7:"banners";a:1:{s:2:"1x";s:69:"https://ps.w.org/redux-framework/assets/banner-772x250.png?rev=793165";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.0";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":12:{s:2:"id";s:30:"w.org/plugins/tinymce-advanced";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"5.1.0";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.5.1.0.zip";s:5:"icons";a:2:{s:2:"2x";s:68:"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511";s:2:"1x";s:68:"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511";}s:7:"banners";a:2:{s:2:"2x";s:72:"https://ps.w.org/tinymce-advanced/assets/banner-1544x500.png?rev=2011513";s:2:"1x";s:71:"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=2011513";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.1";s:12:"requires_php";s:3:"5.2";s:13:"compatibility";O:8:"stdClass":0:{}}s:33:"w3-total-cache/w3-total-cache.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/w3-total-cache";s:4:"slug";s:14:"w3-total-cache";s:6:"plugin";s:33:"w3-total-cache/w3-total-cache.php";s:11:"new_version";s:7:"0.9.7.2";s:3:"url";s:45:"https://wordpress.org/plugins/w3-total-cache/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/w3-total-cache.0.9.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/w3-total-cache/assets/icon-256x256.png?rev=1041806";s:2:"1x";s:67:"https://ps.w.org/w3-total-cache/assets/icon-128x128.png?rev=1041806";}s:7:"banners";a:1:{s:2:"1x";s:69:"https://ps.w.org/w3-total-cache/assets/banner-772x250.jpg?rev=1041806";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.3";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":12:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:6:"10.0.1";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wordpress-seo.10.0.1.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347";s:2:"1x";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435";}s:11:"banners_rtl";a:2:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435";}s:6:"tested";s:5:"5.1.1";s:12:"requires_php";s:5:"5.2.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:2:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"woocommerce";s:8:"language";s:2:"vi";s:7:"version";s:5:"3.5.0";s:7:"updated";s:19:"2019-02-22 01:56:12";s:7:"package";s:75:"https://downloads.wordpress.org/translation/plugin/woocommerce/3.5.0/vi.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:13:"wordpress-seo";s:8:"language";s:2:"vi";s:7:"version";s:3:"9.1";s:7:"updated";s:19:"2018-11-13 08:11:37";s:7:"package";s:75:"https://downloads.wordpress.org/translation/plugin/wordpress-seo/9.1/vi.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(715, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1553480418;s:7:"checked";a:1:{s:7:"mytheme";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(718, '_transient_timeout_plugin_slugs', '1553566925', 'no'),
(719, '_transient_plugin_slugs', 'a:12:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:45:"ewww-image-optimizer/ewww-image-optimizer.php";i:4;s:9:"hello.php";i:5;s:41:"better-wp-security/better-wp-security.php";i:6;s:25:"option-tree/ot-loader.php";i:7;s:35:"redux-framework/redux-framework.php";i:8;s:37:"tinymce-advanced/tinymce-advanced.php";i:9;s:33:"w3-total-cache/w3-total-cache.php";i:10;s:40:"yith-woocommerce-zoom-magnifier/init.php";i:11;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(720, '_transient_timeout_wc_upgrade_notice_3.5.7', '1553566702', 'no'),
(721, '_transient_wc_upgrade_notice_3.5.7', '', 'no'),
(724, 'show_comments_cookies_opt_in', '1', 'yes'),
(725, 'db_upgraded', '', 'yes'),
(727, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.1.1";s:7:"version";s:5:"5.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1553480419;s:15:"version_checked";s:5:"5.1.1";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:2:"vi";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-11 03:35:29";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/vi.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(728, '_site_transient_timeout_php_check_5cc86f05623c0c7aed403ca34b000981', '1554085222', 'no'),
(729, '_site_transient_php_check_5cc86f05623c0c7aed403ca34b000981', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:5:"5.2.4";s:12:"is_supported";b:0;s:9:"is_secure";b:0;s:13:"is_acceptable";b:1;}', 'no'),
(730, 'can_compress_scripts', '1', 'no'),
(731, '_site_transient_timeout_wordpress_credits_vi', '1553566837', 'no'),
(732, '_site_transient_wordpress_credits_vi', 'a:2:{s:6:"groups";a:6:{s:15:"core-developers";a:4:{s:4:"name";s:23:"Noteworthy Contributors";s:4:"type";s:6:"titles";s:7:"shuffle";b:0;s:4:"data";a:12:{s:4:"matt";a:4:{i:0;s:14:"Matt Mullenweg";i:1;s:32:"767fc9c115a1b989744c755db47feb60";i:2;s:4:"matt";i:3;s:12:"Release Lead";}s:5:"pento";a:4:{i:0;s:15:"Gary Pendergast";i:1;s:32:"1ad9e5c98d81c6815a65dab5b6e1f669";i:2;s:5:"pento";i:3;s:12:"Release Lead";}s:14:"SergeyBiryukov";a:4:{i:0;s:15:"Sergey Biryukov";i:1;s:32:"750b7b0fcd855389264c2b1294d61bd6";i:2;s:14:"SergeyBiryukov";i:3;s:14:"Core Developer";}s:6:"azaozz";a:4:{i:0;s:10:"Andrew Ozz";i:1;s:32:"4e84843ebff0918d72ade21c6ee7b1e4";i:2;s:6:"azaozz";i:3;s:14:"Core Developer";}s:8:"flixos90";a:4:{i:0;s:11:"Felix Arntz";i:1;s:32:"ffb3f8366528f83cfe4a5478f49effea";i:2;s:8:"flixos90";i:3;s:14:"Core Developer";}s:11:"johnbillion";a:4:{i:0;s:15:"John Blackbourn";i:1;s:32:"23e12888dcd87d07434b7621bc164958";i:2;s:11:"johnbillion";i:3;s:14:"Core Developer";}s:13:"peterwilsoncc";a:4:{i:0;s:12:"Peter Wilson";i:1;s:32:"1dd9fded718f9b344d48f37f9bfcb159";i:2;s:13:"peterwilsoncc";i:3;s:14:"Core Developer";}s:3:"jrf";a:4:{i:0;s:24:"Juliette Reinders Folmer";i:1;s:32:"cbbac3e529102364dc3b026af3cc2988";i:2;s:3:"jrf";i:3;s:14:"Core Developer";}s:7:"desrosj";a:4:{i:0;s:19:"Jonathan Desrosiers";i:1;s:32:"f22c0ec09eb5a6df4da4239a37dbdf9d";i:2;s:7:"desrosj";i:3;s:14:"Core Developer";}s:9:"melchoyce";a:4:{i:0;s:10:"Mel Choyce";i:1;s:32:"9ffb8027a6f8cb090148a2ea8310b64f";i:2;s:9:"melchoyce";i:3;s:0:"";}s:10:"schlessera";a:4:{i:0;s:15:"Alain Schlesser";i:1;s:32:"a686099e5d041a8825ef01d71513c2db";i:2;s:10:"schlessera";i:3;s:0:"";}s:10:"soulseekah";a:4:{i:0;s:17:"Gennady Kovshenin";i:1;s:32:"9ffc50d98e28398302c3a28040e8f63d";i:2;s:10:"soulseekah";i:3;s:0:"";}}}s:23:"contributing-developers";a:4:{s:4:"name";b:0;s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:30:{s:6:"ryelle";a:4:{i:0;s:10:"Kelly Dwan";i:1;s:32:"3edc6efd8d74663d6d9c159006fb115c";i:2;s:6:"ryelle";i:3;s:0:"";}s:12:"chetan200891";a:4:{i:0;s:16:"Chetan Prajapati";i:1;s:32:"d28f0d98adcac80aed75ae73fe3e3661";i:2;s:12:"chetan200891";i:3;s:0:"";}s:8:"mukesh27";a:4:{i:0;s:14:"Mukesh Panchal";i:1;s:32:"c419d36c6019043feff7d7da2ee44b64";i:2;s:8:"mukesh27";i:3;s:0:"";}s:7:"birgire";a:4:{i:0;s:17:"Birgir Erlendsson";i:1;s:32:"c52e94b32934ec08c573b1c850a7a8a3";i:2;s:7:"birgire";i:3;s:0:"";}s:6:"netweb";a:4:{i:0;s:13:"Stephen Edgar";i:1;s:32:"97e1620b501da675315ba7cfb740e80f";i:2;s:6:"netweb";i:3;s:0:"";}s:7:"afercia";a:4:{i:0;s:13:"Andrea Fercia";i:1;s:32:"074af62ea5ff218b6a6eeab89104f616";i:2;s:7:"afercia";i:3;s:0:"";}s:7:"atimmer";a:4:{i:0;s:16:"Anton Timmermans";i:1;s:32:"b3acbabfdd208ecbf950d864b86fe968";i:2;s:7:"atimmer";i:3;s:0:"";}s:10:"herregroen";a:4:{i:0;s:11:"Herre Groen";i:1;s:32:"ab9867578311ec01b36f20c1d0ca4151";i:2;s:10:"herregroen";i:3;s:0:"";}s:6:"jorbin";a:4:{i:0;s:12:"Aaron Jorbin";i:1;s:32:"b3e2b94eb305bf95a1bee11bc7705fb7";i:2;s:6:"jorbin";i:3;s:0:"";}s:10:"kadamwhite";a:4:{i:0;s:12:"K.Adam White";i:1;s:32:"6cd1cf6de05952505a165425efaf06b4";i:2;s:10:"kadamwhite";i:3;s:0:"";}s:7:"ocean90";a:4:{i:0;s:17:"Dominik Schilling";i:1;s:32:"616b56a9c5898a427304425af0966c07";i:2;s:7:"ocean90";i:3;s:0:"";}s:12:"DrewAPicture";a:4:{i:0;s:11:"Drew Jaynes";i:1;s:32:"95c934fa2c3362794bf62ff8c59ada08";i:2;s:12:"DrewAPicture";i:3;s:0:"";}s:12:"boonebgorges";a:4:{i:0;s:12:"Boone Gorges";i:1;s:32:"9cf7c4541a582729a5fc7ae484786c0c";i:2;s:12:"boonebgorges";i:3;s:0:"";}s:9:"joemcgill";a:4:{i:0;s:10:"Joe McGill";i:1;s:32:"7cef1c9108207ec24db7a40f142db676";i:2;s:9:"joemcgill";i:3;s:0:"";}s:16:"subrataemfluence";a:4:{i:0;s:14:"Subrata Sarkar";i:1;s:32:"4ca5416772e8f4fe1c80586e98393f27";i:2;s:16:"subrataemfluence";i:3;s:0:"";}s:10:"ireneyoast";a:4:{i:0;s:15:"Irene Strikkers";i:1;s:32:"074d67179d52561e36e57e8e9ea8f8cf";i:2;s:10:"ireneyoast";i:3;s:0:"";}s:8:"audrasjb";a:4:{i:0;s:9:"Jb Audras";i:1;s:32:"f5679c32509d3a0f9821da8ba4843a75";i:2;s:8:"audrasjb";i:3;s:0:"";}s:5:"Rarst";a:4:{i:0;s:16:"Andrey Savchenko";i:1;s:32:"ab89ce39f47b327f1c85e4019e865a71";i:2;s:5:"Rarst";i:3;s:0:"";}s:9:"omarreiss";a:4:{i:0;s:10:"Omar Reiss";i:1;s:32:"86aaa606a1904e7e0cf9857a663c376e";i:2;s:9:"omarreiss";i:3;s:0:"";}s:4:"mcsf";a:4:{i:0;s:14:"Miguel Fonseca";i:1;s:32:"7e89b8105f7e05afa2872e411d3f76ad";i:2;s:4:"mcsf";i:3;s:0:"";}s:6:"gziolo";a:4:{i:0;s:21:"Grzegorz Ziółkowski";i:1;s:32:"475d323ceec2e73597729eef1c5bf263";i:2;s:6:"gziolo";i:3;s:0:"";}s:11:"youknowriad";a:4:{i:0;s:14:"Riad Benguella";i:1;s:32:"9929daa7594d5afa910a777ccb9e88e4";i:2;s:11:"youknowriad";i:3;s:0:"";}s:7:"iseulde";a:4:{i:0;s:14:"Ella Van Durpe";i:1;s:32:"9e149207a0e0818abed0edbb1fb2d0bf";i:2;s:7:"iseulde";i:3;s:0:"";}s:5:"aduth";a:4:{i:0;s:13:"Andrew Duthie";i:1;s:32:"a7ce947b6c1e30a4857068628ada24e1";i:2;s:5:"aduth";i:3;s:0:"";}s:16:"jorgefilipecosta";a:4:{i:0;s:11:"Jorge Costa";i:1;s:32:"44d0cd19ecea711a6e2625b5858e268b";i:2;s:16:"jorgefilipecosta";i:3;s:0:"";}s:4:"mkaz";a:4:{i:0;s:18:"Marcus Kazmierczak";i:1;s:32:"560eddebcdf845e77003dacd11eec960";i:2;s:4:"mkaz";i:3;s:0:"";}s:6:"kjellr";a:4:{i:0;s:14:"Kjell Reigstad";i:1;s:32:"115aabd707fe985c79744d3e7df8fade";i:2;s:6:"kjellr";i:3;s:0:"";}s:8:"nosolosw";a:4:{i:0;s:15:"Andrés Maneiro";i:1;s:32:"9c6c8ec5f786df66d3559dbca38e5817";i:2;s:8:"nosolosw";i:3;s:0:"";}s:17:"TimothyBlynJacobs";a:4:{i:0;s:14:"Timothy Jacobs";i:1;s:32:"596003127e013031dd5299a3879827e9";i:2;s:17:"TimothyBlynJacobs";i:3;s:0:"";}s:6:"nerrad";a:4:{i:0;s:13:"Darren Ethier";i:1;s:32:"82c44d1ed35aec5d4a7252da502eb04b";i:2;s:6:"nerrad";i:3;s:0:"";}}}s:5:"props";a:4:{s:4:"name";s:33:"Core Contributors to WordPress %s";s:12:"placeholders";a:1:{i:0;s:3:"5.1";}s:4:"type";s:4:"list";s:4:"data";a:510:{s:5:"0x6f0";s:5:"0x6f0";s:11:"1naveengiri";s:11:"1naveengiri";s:6:"360zen";s:6:"360zen";s:12:"1265578519-1";s:10:"1265578519";s:8:"aardrian";s:8:"aardrian";s:14:"abdullahramzan";s:15:"Abdullah Ramzan";s:16:"abhayvishwakarma";s:17:"Abhay Vishwakarma";s:12:"abhijitrakas";s:13:"Abhijit Rakas";s:7:"ibachal";s:10:"Achal Jain";s:6:"achbed";s:6:"achbed";s:15:"adamsilverstein";s:16:"Adam Silverstein";s:9:"ajitbohra";s:10:"Ajit Bohra";s:10:"aldavigdis";s:10:"aldavigdis";s:15:"alejandroxlopez";s:15:"alejandroxlopez";s:9:"alexstine";s:4:"Alex";s:4:"xyfi";s:18:"Alexander Botteram";s:9:"alexvorn2";s:20:"Alexandru Vornicescu";s:6:"xknown";s:11:"Alex Concha";s:7:"alexgso";s:7:"alexgso";s:10:"tellyworth";s:11:"Alex Shiels";s:9:"allancole";s:9:"allancole";s:8:"allendav";s:11:"Allen Snook";s:10:"alvarogois";s:22:"Alvaro Gois dos Santos";s:9:"acirujano";s:12:"Ana Cirujano";s:11:"anantajitjg";s:12:"Anantajit JG";s:4:"andg";s:14:"Andrea Gandino";s:15:"andreamiddleton";s:16:"Andrea Middleton";s:11:"andrei0x309";s:11:"andrei0x309";s:15:"andreiglingeanu";s:15:"andreiglingeanu";s:8:"andrewza";s:11:"Andrew Lima";s:5:"nacin";s:12:"Andrew Nacin";s:7:"anevins";s:13:"Andrew Nevins";s:7:"afragen";s:11:"Andy Fragen";s:7:"andizer";s:14:"Andy Meerwaldt";s:7:"la-geek";s:17:"Angelika Reisiger";s:14:"antaltettinger";s:15:"Antal Tettinger";s:8:"antipole";s:8:"antipole";s:14:"antonioeatgoat";s:14:"antonioeatgoat";s:10:"avillegasn";s:16:"Antonio Villegas";s:8:"vanyukov";s:14:"Anton Vanyukov";s:10:"aranwer104";s:8:"Anwer AR";s:9:"aryamaaru";s:4:"Arun";s:12:"mrasharirfan";s:11:"Ashar Irfan";s:11:"ashokrd2013";s:11:"ashokrd2013";s:11:"ayeshrajans";s:17:"Ayesh Karunaratne";s:12:"ayubadiputra";s:13:"Ayub Adiputra";s:11:"barryceelen";s:12:"Barry Ceelen";s:6:"behzod";s:13:"Behzod Saidov";s:10:"drywallbmb";s:9:"Ben Byrne";s:11:"benhuberman";s:11:"benhuberman";s:13:"benoitchantre";s:14:"Benoit Chantre";s:10:"benvaassen";s:10:"benvaassen";s:12:"bhargavmehta";s:13:"Bhargav Mehta";s:10:"bikecrazyy";s:10:"bikecrazyy";s:6:"bjornw";s:6:"BjornW";s:13:"blair-jersyer";s:13:"Blair jersyer";s:9:"blobfolio";s:9:"Blobfolio";s:11:"bobbingwide";s:11:"bobbingwide";s:12:"boblinthorst";s:12:"boblinthorst";s:4:"bor0";s:16:"Boro Sitnikovski";s:8:"bradleyt";s:14:"Bradley Taylor";s:9:"bradparbs";s:10:"Brad Parbs";s:12:"bramheijmink";s:12:"bramheijmink";s:7:"kraftbj";s:13:"Brandon Kraft";s:7:"bpayton";s:14:"Brandon Payton";s:12:"brentswisher";s:13:"Brent Swisher";s:4:"rzen";s:14:"Brian Richards";s:14:"bridgetwillard";s:14:"bridgetwillard";s:12:"bandonrandon";s:7:"Brooke.";s:10:"bruceallen";s:10:"bruceallen";s:13:"bulletdigital";s:13:"bulletdigital";s:11:"burhandodhy";s:12:"Burhan Nasir";s:15:"burlingtonbytes";s:8:"Bytes.co";s:6:"icaleb";s:11:"Caleb Burks";s:5:"calin";s:9:"Calin Don";s:13:"campusboy1987";s:9:"campusboy";s:13:"carolinegeven";s:13:"carolinegeven";s:8:"ccismaru";s:8:"ccismaru";s:7:"chasewg";s:7:"chasewg";s:6:"chouby";s:6:"Chouby";s:6:"chrico";s:6:"ChriCo";s:9:"chriscct7";s:9:"chriscct7";s:8:"boda1982";s:18:"Christopher Spires";s:7:"claudiu";s:7:"claudiu";s:12:"cliffpaulick";s:16:"Clifford Paulick";s:10:"munklefish";s:11:"Code Clinic";s:8:"codegrau";s:8:"codegrau";s:5:"coleh";s:5:"coleh";s:9:"conner_bw";s:9:"conner_bw";s:12:"coreymckrill";s:13:"Corey McKrill";s:5:"croce";s:5:"croce";s:14:"littlebigthing";s:23:"Csaba (LittleBigThings)";s:12:"clarinetlord";s:13:"Cyrus Collier";s:15:"danielbachhuber";s:16:"Daniel Bachhuber";s:5:"mte90";s:21:"Daniele Scasciafratte";s:8:"danieltj";s:12:"Daniel James";s:15:"daniel-koskinen";s:15:"Daniel Koskinen";s:9:"talldanwp";s:15:"Daniel Richards";s:12:"danimalbrown";s:12:"danimalbrown";s:11:"dannycooper";s:12:"Danny Cooper";s:11:"dannydehaan";s:13:"Danny de Haan";s:8:"darko-a7";s:8:"Darko A7";s:10:"davepullig";s:11:"Dave Pullig";s:13:"davidakennedy";s:16:"David A. Kennedy";s:13:"davidanderson";s:14:"David Anderson";s:10:"davidbinda";s:13:"David Binovec";s:13:"desertsnowman";s:12:"David Cramer";s:3:"dlh";s:13:"David Herrera";s:9:"dglingren";s:13:"David Lingren";s:8:"dshanske";s:13:"David Shanske";s:10:"superdav42";s:11:"David Stone";s:8:"dekervit";s:8:"dekervit";s:7:"denisco";s:17:"Denis Yanchevskiy";s:7:"dmsnell";s:12:"Dennis Snell";s:12:"designsimply";s:12:"designsimply";s:10:"dfangstrom";s:10:"dfangstrom";s:10:"dhanendran";s:10:"Dhanendran";s:9:"dharm1025";s:14:"Dharmesh Patel";s:13:"dhavalkasvala";s:15:"Dhaval kasavala";s:7:"dhruvin";s:7:"Dhruvin";s:14:"diedeexterkate";s:14:"DiedeExterkate";s:10:"dilipbheda";s:11:"Dilip Bheda";s:7:"dingo_d";s:7:"dingo-d";s:4:"dd32";s:10:"Dion Hulse";s:14:"dipeshkakadiya";s:14:"dipeshkakadiya";s:7:"donncha";s:16:"Donncha O Caoimh";s:15:"dontstealmyfish";s:15:"dontstealmyfish";s:12:"drivingralle";s:12:"Drivingralle";s:7:"dschalk";s:7:"dschalk";s:8:"dsifford";s:8:"dsifford";s:5:"eamax";s:5:"eamax";s:9:"eartboard";s:9:"eArtboard";s:6:"edo888";s:6:"edo888";s:12:"electricfeet";s:12:"ElectricFeet";s:6:"edocev";s:11:"Emil Dotsev";s:9:"ericlewis";s:17:"Eric Andrew Lewis";s:9:"ericdaams";s:10:"Eric Daams";s:10:"erich_k4wp";s:10:"Erich Munz";s:8:"ethitter";s:12:"Erick Hitter";s:9:"ericmeyer";s:9:"ericmeyer";s:8:"etoledom";s:8:"etoledom";s:5:"dyrer";s:22:"Evangelos Athanasiadis";s:11:"evansolomon";s:12:"Evan Solomon";s:8:"faisal03";s:11:"Faisal Alvi";s:10:"felipeelia";s:11:"Felipe Elia";s:9:"fclaussen";s:17:"Fernando Claussen";s:11:"flipkeijzer";s:11:"flipkeijzer";s:9:"mista-flo";s:12:"Florian TIAR";s:9:"fpcsjames";s:9:"FPCSJames";s:11:"frank-klein";s:11:"Frank Klein";s:7:"fuchsws";s:7:"fuchsws";s:8:"fullyint";s:8:"fullyint";s:6:"gma992";s:17:"Gabriel Maldonado";s:12:"garetharnold";s:6:"Gareth";s:15:"garrett-eclipse";s:13:"Garrett Hyder";s:5:"garyj";s:10:"Gary Jones";s:5:"kloon";s:17:"Gerhard Potgieter";s:13:"girishpanchal";s:14:"Girish Panchal";s:7:"gm_alex";s:7:"GM_Alex";s:4:"gnif";s:4:"gnif";s:10:"graymouser";s:10:"graymouser";s:4:"greg";s:4:"greg";s:13:"guido07111975";s:5:"Guido";s:8:"gutendev";s:15:"GutenDev ❤️";s:5:"hafiz";s:12:"Hafiz Rahman";s:7:"hailite";s:16:"Hai@LiteSpeed⚡";s:14:"hansjovisyoast";s:21:"Hans-Christiaan Braun";s:13:"hardeepasrani";s:14:"Hardeep Asrani";s:14:"hardik-amipara";s:14:"Hardik Amipara";s:8:"harsh175";s:11:"Harsh Patel";s:14:"haruharuharuby";s:14:"haruharuharuby";s:6:"idea15";s:13:"Heather Burns";s:5:"helen";s:15:"Helen Hou-Sandi";s:11:"henrywright";s:12:"Henry Wright";s:15:"hitendra-chopda";s:15:"Hitendra Chopda";s:11:"ianbelanger";s:12:"Ian Belanger";s:7:"iandunn";s:8:"Ian Dunn";s:10:"ibantxillo";s:10:"ibantxillo";s:7:"igmoweb";s:19:"Ignacio Cruz Moreno";s:7:"igorsch";s:4:"Igor";s:6:"ibenic";s:10:"Igor Benic";s:5:"imath";s:5:"imath";s:5:"ionvv";s:5:"ionvv";s:9:"isabel104";s:9:"isabel104";s:8:"ishitaka";s:8:"ishitaka";s:11:"meatman89fs";s:11:"Ivan Mudrik";s:8:"jdgrimes";s:11:"J.D. Grimes";s:12:"jackreichert";s:13:"Jack Reichert";s:6:"jakept";s:13:"Jacob Peattie";s:9:"whyisjake";s:13:"Jake Spurlock";s:7:"jnylen0";s:11:"James Nylen";s:8:"janak007";s:14:"janak Kaneriya";s:8:"janalwin";s:8:"janalwin";s:13:"jankimoradiya";s:14:"Janki Moradiya";s:8:"janthiel";s:8:"janthiel";s:7:"jaswrks";s:14:"Jason Caldwell";s:9:"javorszky";s:9:"javorszky";s:12:"jaydeep-rami";s:11:"Jaydip Rami";s:12:"jaymanpandya";s:13:"Jayman Pandya";s:11:"jfarthing84";s:13:"Jeff Farthing";s:9:"cheffheid";s:14:"Jeffrey de Wit";s:8:"jeffpaul";s:12:"Jeffrey Paul";s:6:"jmdodd";s:16:"Jennifer M. Dodd";s:8:"miss_jwo";s:5:"Jenny";s:14:"jeremeylduvall";s:7:"Jeremey";s:10:"jeremyfelt";s:11:"Jeremy Felt";s:7:"jeherve";s:12:"Jeremy Herve";s:4:"jpry";s:10:"Jeremy Pry";s:12:"jeremyescott";s:12:"Jeremy Scott";s:9:"jesperher";s:16:"Jesper V Nielsen";s:11:"professor44";s:14:"Jesse Friedman";s:8:"jjcomack";s:12:"Jimmy Comack";s:8:"jipmoors";s:9:"Jip Moors";s:7:"jirihon";s:8:"Jiri Hon";s:15:"johnjamesjacoby";s:3:"JJJ";s:7:"joanrho";s:7:"joanrho";s:9:"jobthomas";s:3:"Job";s:9:"sephsekla";s:18:"Joe Bailey-Roberts";s:9:"joedolson";s:10:"Joe Dolson";s:8:"joehoyle";s:9:"Joe Hoyle";s:8:"joelcj91";s:17:"Joel James ❤️";s:4:"joen";s:13:"Joen Asmussen";s:6:"j-falk";s:10:"Johan Falk";s:11:"johnalarcon";s:11:"johnalarcon";s:7:"johnny5";s:11:"John Godley";s:10:"johnpgreen";s:10:"johnpgreen";s:10:"johnschulz";s:10:"johnschulz";s:7:"jrchamp";s:14:"Jonathan Champ";s:10:"joneiseman";s:10:"joneiseman";s:12:"spacedmonkey";s:12:"Jonny Harris";s:11:"joostdevalk";s:13:"Joost de Valk";s:11:"josephscott";s:12:"Joseph Scott";s:10:"joshuawold";s:10:"JoshuaWold";s:8:"joyously";s:3:"Joy";s:9:"jpurdy647";s:9:"jpurdy647";s:10:"jrdelarosa";s:10:"jrdelarosa";s:9:"jryancard";s:9:"jryancard";s:10:"juiiee8487";s:10:"Juhi Patel";s:8:"jamosova";s:13:"Julia Amosova";s:11:"juliemoynat";s:11:"juliemoynat";s:9:"junaidkbr";s:12:"Junaid Ahmed";s:13:"justinsainton";s:14:"Justin Sainton";s:11:"jtsternberg";s:16:"Justin Sternberg";s:10:"greenshady";s:14:"Justin Tadlock";s:11:"kapteinbluf";s:11:"kapteinbluf";s:12:"keesiemeijer";s:12:"keesiemeijer";s:7:"kelvink";s:7:"kelvink";s:8:"khaihong";s:8:"khaihong";s:13:"kiranpotphode";s:14:"Kiran Potphode";s:7:"ixkaito";s:4:"Kite";s:11:"kkarpieszuk";s:11:"kkarpieszuk";s:5:"kmeze";s:5:"kmeze";s:6:"knutsp";s:13:"Knut Sparhell";s:7:"konainm";s:7:"konainm";s:8:"obenland";s:19:"Konstantin Obenland";s:4:"xkon";s:18:"Konstantinos Xenos";s:13:"kristastevens";s:13:"kristastevens";s:11:"krutidugade";s:11:"krutidugade";s:6:"laghee";s:6:"laghee";s:6:"lakenh";s:12:"Laken Hafner";s:12:"lancewillett";s:13:"Lance Willett";s:13:"laurelfulford";s:13:"laurelfulford";s:8:"lbenicio";s:8:"lbenicio";s:14:"leanderiversen";s:15:"Leander Iversen";s:6:"leemon";s:6:"leemon";s:9:"lenasterg";s:9:"lenasterg";s:16:"lisannekluitmans";s:16:"lisannekluitmans";s:11:"lizkarkoski";s:11:"lizkarkoski";s:15:"lucagrandicelli";s:16:"Luca Grandicelli";s:10:"lucasrolff";s:10:"LucasRolff";s:13:"luciano-croce";s:13:"luciano-croce";s:10:"lukecarbis";s:11:"Luke Carbis";s:7:"luminus";s:7:"Luminus";s:11:"mariovalney";s:17:"M&#225;rio Valney";s:15:"maartenleenders";s:15:"maartenleenders";s:13:"macbookandrew";s:13:"macbookandrew";s:11:"travel_girl";s:10:"Maja Benke";s:6:"mako09";s:4:"Mako";s:6:"tomdxw";s:14:"mallorydxw-old";s:14:"manuelaugustin";s:15:"Manuel Augustin";s:9:"manuel_84";s:9:"manuel_84";s:11:"marcelo2605";s:11:"marcelo2605";s:6:"zottto";s:11:"Marc Nilius";s:12:"marcomarsala";s:13:"marco.marsala";s:12:"marcomartins";s:13:"Marco Martins";s:13:"marcwieland95";s:13:"marcwieland95";s:7:"clorith";s:12:"Marius L. J.";s:8:"mariusvw";s:8:"mariusvw";s:8:"mbelchev";s:15:"Mariyan Belchev";s:11:"markjaquith";s:12:"Mark Jaquith";s:11:"mathieuhays";s:11:"mathieuhays";s:7:"iceable";s:16:"Mathieu Sarrasin";s:14:"webdevmattcrom";s:13:"Matt Cromwell";s:9:"mgibbs189";s:10:"Matt Gibbs";s:7:"mboynes";s:14:"Matthew Boynes";s:11:"lonelyvegan";s:24:"Matthew Riley MacPherson";s:5:"sivel";s:10:"Matt Martz";s:8:"mattyrob";s:8:"mattyrob";s:9:"mcmwebsol";s:9:"mcmwebsol";s:11:"mensmaximus";s:11:"mensmaximus";s:6:"mermel";s:6:"mermel";s:14:"metalandcoffee";s:14:"metalandcoffee";s:9:"wpscholar";s:10:"Micah Wood";s:8:"mnelson4";s:14:"Michael Nelson";s:14:"michielatyoast";s:16:"Michiel Heijmans";s:20:"sebastienthivinfocom";s:27:"Migrated to @sebastienserre";s:6:"mmtr86";s:13:"Miguel Torres";s:11:"mihaiiceyro";s:11:"mihaiiceyro";s:6:"mihdan";s:6:"mihdan";s:12:"mikegillihan";s:13:"Mike Gillihan";s:10:"mikejolley";s:11:"Mike Jolley";s:12:"mikeschroder";s:13:"Mike Schroder";s:10:"milana_cap";s:10:"Milana Cap";s:7:"dimadin";s:12:"Milan Dinić";s:8:"lanche86";s:14:"Milan Ivanovic";s:12:"milindmore22";s:11:"Milind More";s:13:"mirkoschubert";s:13:"mirkoschubert";s:9:"monikarao";s:10:"Monika Rao";s:8:"boemedia";s:17:"Monique Dubbelman";s:6:"mt8biz";s:22:"moto hachi ( mt8.biz )";s:8:"mrmadhat";s:8:"mrmadhat";s:8:"xpertone";s:15:"Muhammad Kashif";s:11:"lorenzone92";s:17:"MultiformeIngegno";s:7:"mmaumio";s:15:"Muntasir Mahmud";s:7:"munyagu";s:7:"munyagu";s:11:"mythemeshop";s:11:"MyThemeShop";s:5:"mzorz";s:5:"mzorz";s:9:"nadim0988";s:9:"nadim0988";s:9:"nandorsky";s:9:"nandorsky";s:7:"naoki0h";s:12:"Naoki Ohashi";s:3:"nao";s:12:"Naoko Takano";s:14:"nataliashitova";s:14:"nataliashitova";s:9:"nateallen";s:10:"Nate Allen";s:11:"nathanatmoz";s:14:"Nathan Johnson";s:8:"ndavison";s:8:"ndavison";s:13:"greatislander";s:13:"Ned Zimmerman";s:10:"nextendweb";s:10:"Nextendweb";s:6:"ndiego";s:10:"Nick Diego";s:16:"celloexpressions";s:11:"Nick Halsey";s:10:"nickmomrik";s:11:"Nick Momrik";s:12:"nick_thegeek";s:13:"Nick the Geek";s:10:"nahuelmahe";s:16:"Nicolas Figueira";s:5:"nikeo";s:17:"Nicolas GUILLAUME";s:8:"nicollle";s:15:"Nicolle Helgers";s:9:"jainnidhi";s:10:"Nidhi Jain";s:10:"nielslange";s:11:"Niels Lange";s:10:"nikschavan";s:13:"Nikhil Chavan";s:8:"rabmalin";s:15:"Nilambar Sharma";s:8:"mrtortai";s:10:"Noam Eppel";s:11:"notnownikki";s:11:"notnownikki";s:11:"odysseygate";s:7:"odyssey";s:8:"codestor";s:12:"Omkar Bhagat";s:7:"ov3rfly";s:7:"Ov3rfly";s:11:"paaljoachim";s:20:"Paal Joachim Romdahl";s:7:"palmiak";s:7:"palmiak";s:7:"panchen";s:7:"panchen";s:8:"parbaugh";s:8:"parbaugh";s:7:"xparham";s:17:"Parham Ghaffarian";s:10:"swissspidy";s:15:"Pascal Birchler";s:7:"casiepa";s:13:"Pascal Casier";s:7:"pbearne";s:11:"Paul Bearne";s:6:"pbiron";s:10:"Paul Biron";s:8:"natacado";s:13:"Paul Paradise";s:13:"paulschreiber";s:14:"Paul Schreiber";s:5:"piewp";s:7:"Perdaan";s:7:"pputzer";s:12:"Peter Putzer";s:5:"walbo";s:32:"Petter Walb&#248; Johnsg&#229;rd";s:5:"pskli";s:19:"Pierre Sa&#239;kali";s:8:"wizzard_";s:14:"Pieter Daalder";s:10:"piyush9100";s:12:"Piyush Patel";s:5:"poena";s:5:"poena";s:5:"promz";s:14:"Pramod Jodhani";s:8:"pmbaldha";s:15:"Prashant Baldha";s:11:"pratikthink";s:6:"Pratik";s:9:"pratikkry";s:15:"Pratik K. Yadav";s:7:"precies";s:7:"precies";s:9:"presskopp";s:9:"Presskopp";s:9:"presslabs";s:9:"Presslabs";s:11:"presstigers";s:11:"PressTigers";s:10:"programmin";s:10:"programmin";s:9:"punit5658";s:11:"Punit Patel";s:8:"purnendu";s:13:"Purnendu Dash";s:6:"qcmiao";s:7:"Qucheng";s:11:"rachelbaker";s:12:"Rachel Baker";s:12:"bamadesigner";s:13:"Rachel Cherry";s:7:"larrach";s:12:"Rachel Peter";s:12:"rafsuntaskin";s:16:"Rafsun Chowdhury";s:15:"rahulsprajapati";s:15:"Rahul Prajapati";s:10:"cthreelabs";s:13:"Raja Mohammed";s:13:"superpoincare";s:7:"Ramanan";s:5:"ramiy";s:14:"Rami Yushuvaev";s:11:"ramizmanked";s:12:"Ramiz Manked";s:10:"ramonopoly";s:10:"ramonopoly";s:6:"ravanh";s:6:"RavanH";s:9:"redcastor";s:9:"redcastor";s:6:"remyvv";s:6:"remyvv";s:7:"rensw90";s:7:"rensw90";s:10:"rhetorical";s:10:"rhetorical";s:12:"rianrietveld";s:13:"Rian Rietveld";s:11:"iamfriendly";s:12:"Richard Tape";s:8:"rickalee";s:20:"Ricky Lee Whittemore";s:13:"rinkuyadav999";s:7:"Rinku Y";s:9:"rishishah";s:10:"Rishi Shah";s:9:"robbie505";s:6:"Robbie";s:6:"robdxw";s:6:"robdxw";s:10:"noisysocks";s:15:"Robert Anderson";s:14:"littlerchicken";s:13:"Robin Cornett";s:16:"robinvandervliet";s:19:"Robin van der Vliet";s:6:"rmccue";s:10:"Ryan McCue";s:12:"othellobloke";s:9:"Ryan Paul";s:7:"welcher";s:12:"Ryan Welcher";s:7:"ryotsun";s:7:"ryotsun";s:14:"sebastienserre";s:20:"S&#233;bastien SERRE";s:10:"stodorovic";s:9:"Sa&#353;a";s:10:"sagarnasit";s:10:"sagarnasit";s:10:"sasiddiqui";s:19:"Sami Ahmed Siddiqui";s:12:"samikeijonen";s:13:"Sami Keijonen";s:6:"otto42";s:18:"Samuel Wood (Otto)";s:11:"tinkerbelly";s:12:"sarah semark";s:7:"sayedwp";s:11:"Sayed Taqui";s:8:"scottlee";s:9:"Scott Lee";s:11:"coffee2code";s:12:"Scott Reilly";s:10:"seanchayes";s:10:"Sean Hayes";s:10:"sebakurzyn";s:21:"Sebastian Kurzynoswki";s:15:"sebastianpisula";s:16:"Sebastian Pisula";s:8:"shamim51";s:12:"Shamim Hasan";s:11:"shaneeckert";s:12:"Shane Eckert";s:6:"sharaz";s:13:"Sharaz Shahid";s:14:"shashwatmittal";s:15:"Shashwat Mittal";s:7:"shooper";s:12:"Shawn Hooper";s:8:"sherwood";s:8:"sherwood";s:12:"shital-patel";s:15:"Shital Marakana";s:11:"shivapoudel";s:12:"Shiva Poudel";s:5:"pross";s:13:"Simon Prosser";s:6:"sjardo";s:6:"Sjardo";s:7:"skoldin";s:7:"skoldin";s:7:"slilley";s:7:"slilley";s:8:"slushman";s:8:"slushman";s:9:"sonjaleix";s:10:"Sonja Leix";s:8:"sonjanyc";s:8:"sonjanyc";s:5:"soean";s:11:"Soren Wrede";s:8:"spartank";s:8:"spartank";s:11:"spyderbytes";s:11:"spyderbytes";s:8:"sstoqnov";s:17:"Stanimir Stoyanov";s:8:"metodiew";s:15:"Stanko Metodiev";s:9:"stazdotio";s:9:"stazdotio";s:13:"stephenharris";s:14:"Stephen Harris";s:10:"stevenlinx";s:10:"stevenlinx";s:13:"stormrockwell";s:14:"Storm Rockwell";s:11:"skostadinov";s:17:"Stoyan Kostadinov";s:9:"strategio";s:9:"strategio";s:11:"manikmist09";s:18:"Sultan Nasir Uddin";s:5:"swift";s:5:"swift";s:16:"takahashi_fumiki";s:16:"Takahashi Fumiki";s:8:"miyauchi";s:17:"Takayuki Miyauchi";s:10:"karmatosed";s:13:"Tammie Lister";s:8:"tlovett1";s:13:"Taylor Lovett";s:9:"teddytime";s:9:"teddytime";s:8:"terriann";s:9:"Terri Ann";s:7:"terwdan";s:7:"terwdan";s:12:"tharsheblows";s:12:"tharsheblows";s:8:"themezee";s:8:"ThemeZee";s:11:"thomasplevy";s:19:"Thomas Patrick Levy";s:13:"thomas-vitale";s:13:"Thomas Vitale";s:8:"thomaswm";s:8:"thomaswm";s:8:"tfrommen";s:16:"Thorsten Frommen";s:8:"thrijith";s:19:"Thrijith Thankachan";s:16:"tiagohillebrandt";s:17:"Tiago Hillebrandt";s:9:"tigertech";s:9:"tigertech";s:10:"timhavinga";s:11:"Tim Havinga";s:10:"hedgefield";s:13:"Tim Hengeveld";s:14:"timmydcrawford";s:14:"Timmy Crawford";s:10:"titodevera";s:10:"titodevera";s:5:"tkama";s:5:"Tkama";s:8:"tz-media";s:13:"Tobias Zimpel";s:11:"tomharrigan";s:11:"TomHarrigan";s:8:"tjnowell";s:12:"Tom J Nowell";s:6:"tferry";s:11:"Tommy Ferry";s:12:"tonybogdanov";s:12:"tonybogdanov";s:12:"tobifjellner";s:18:"Tor-Bjorn Fjellner";s:13:"torontodigits";s:13:"TorontoDigits";s:7:"mirucon";s:15:"Toshihiro Kanai";s:9:"itowhid06";s:14:"Towhidul Islam";s:9:"transl8or";s:9:"transl8or";s:14:"grapplerulrich";s:6:"Ulrich";s:12:"upadalavipul";s:12:"upadalavipul";s:11:"usmankhalid";s:12:"Usman Khalid";s:10:"utsav72640";s:12:"Utsav tilava";s:8:"uttam007";s:8:"uttam007";s:15:"vaishalipanchal";s:16:"Vaishali Panchal";s:7:"valer1e";s:20:"Val&#233;rie Galassi";s:10:"valchovski";s:10:"valchovski";s:12:"vishaldodiya";s:12:"vishaldodiya";s:8:"vnsavage";s:8:"vnsavage";s:6:"voneff";s:6:"voneff";s:6:"vortfu";s:6:"vortfu";s:11:"warmlaundry";s:11:"warmlaundry";s:9:"wbrubaker";s:9:"wbrubaker";s:11:"westonruter";s:12:"Weston Ruter";s:7:"earnjam";s:17:"William Earnhardt";s:13:"williampatton";s:13:"williampatton";s:6:"kwonye";s:9:"Will Kwon";s:6:"wpzinc";s:6:"wpzinc";s:8:"xhezairi";s:8:"xhezairi";s:5:"yahil";s:14:"Yahil Madakiya";s:5:"yoavf";s:10:"Yoav Farhi";s:9:"fierevere";s:3:"Yui";s:5:"yuriv";s:5:"YuriV";s:11:"zanematthew";s:12:"Zane Matthew";s:7:"zebulan";s:7:"zebulan";}}s:10:"validators";a:4:{s:4:"name";s:11:"Translators";s:4:"type";s:7:"compact";s:7:"shuffle";b:1;s:4:"data";a:12:{s:5:"htdat";a:3:{i:0;s:9:"Dat Hoang";i:1;s:32:"13dcfc284d916a2bfc735bf521943ed2";i:2;s:5:"htdat";}s:15:"nguyenvanduocit";a:3:{i:0;s:11:"Duoc Nguyen";i:1;s:32:"e8e44883053a46d4a9255c230fe78824";i:2;s:15:"nguyenvanduocit";}s:10:"huynetbase";a:3:{i:0;s:10:"huynetbase";i:1;s:32:"0ad158f76567fab398480c8645f7505f";i:2;s:10:"huynetbase";}s:7:"khoipro";a:3:{i:0;s:5:"Kevin";i:1;s:32:"c40392394d8c406cfb0bd88373c81ecf";i:2;s:7:"khoipro";}s:11:"thachpham92";a:3:{i:0;s:10:"Peter Pham";i:1;s:32:"7946a77f96c665fd1456bc39814711a3";i:2;s:11:"thachpham92";}s:17:"philiparthurmoore";a:3:{i:0;s:19:"Philip Arthur Moore";i:1;s:32:"1d7a2fad9876e20084e65c929c8bff00";i:2;s:17:"philiparthurmoore";}s:14:"tatthiennguyen";a:3:{i:0;s:12:"Thien Nguyen";i:1;s:32:"95f8eb6e66c910775ff3edbf543c2985";i:2;s:14:"tatthiennguyen";}s:6:"thup90";a:3:{i:0;s:6:"thup90";i:1;s:32:"1968c7404f0cfa6285318e6433f323ff";i:2;s:6:"thup90";}s:9:"tonybui-1";a:3:{i:0;s:15:"Tony WooRockets";i:1;s:32:"c9f8cb6da18358d57e26f90cb0440cf9";i:2;s:9:"tonybui-1";}s:6:"rilwis";a:3:{i:0;s:18:"Tran Ngoc Tuan Anh";i:1;s:32:"2e74a69db53e6992ac62944100d5309f";i:2;s:6:"rilwis";}s:4:"tucq";a:3:{i:0;s:4:"tucq";i:1;s:32:"547f6e8d42c67dbabe796a5162acd53e";i:2;s:4:"tucq";}s:10:"dinhtungdu";a:3:{i:0;s:7:"Tung Du";i:1;s:32:"256a636b71ef62a4a25b675e7df193cb";i:2;s:10:"dinhtungdu";}}}s:11:"translators";a:3:{s:4:"name";b:0;s:4:"type";s:4:"list";s:4:"data";a:0:{}}s:9:"libraries";a:3:{s:4:"name";s:18:"External Libraries";s:4:"type";s:9:"libraries";s:4:"data";a:41:{i:0;a:2:{i:0;s:14:"Babel Polyfill";i:1;s:41:"https://babeljs.io/docs/en/babel-polyfill";}i:1;a:2:{i:0;s:11:"Backbone.js";i:1;s:22:"http://backbonejs.org/";}i:2;a:2:{i:0;s:10:"Class POP3";i:1;s:25:"https://squirrelmail.org/";}i:3;a:2:{i:0;s:7:"Closest";i:1;s:40:"https://github.com/jonathantneal/closest";}i:4;a:2:{i:0;s:10:"CodeMirror";i:1;s:23:"https://codemirror.net/";}i:5;a:2:{i:0;s:16:"Color Animations";i:1;s:33:"https://plugins.jquery.com/color/";}i:6;a:2:{i:0;s:8:"getID3()";i:1;s:30:"http://getid3.sourceforge.net/";}i:7;a:2:{i:0;s:8:"FormData";i:1;s:40:"https://github.com/jimmywarting/FormData";}i:8;a:2:{i:0;s:15:"Horde Text Diff";i:1;s:23:"https://pear.horde.org/";}i:9;a:2:{i:0;s:11:"hoverIntent";i:1;s:57:"http://cherne.net/brian/resources/jquery.hoverIntent.html";}i:10;a:2:{i:0;s:13:"imgAreaSelect";i:1;s:42:"http://odyniec.net/projects/imgareaselect/";}i:11;a:2:{i:0;s:4:"Iris";i:1;s:34:"https://github.com/Automattic/Iris";}i:12;a:2:{i:0;s:6:"jQuery";i:1;s:19:"https://jquery.com/";}i:13;a:2:{i:0;s:9:"jQuery UI";i:1;s:21:"https://jqueryui.com/";}i:14;a:2:{i:0;s:14:"jQuery Hotkeys";i:1;s:41:"https://github.com/tzuryby/jquery.hotkeys";}i:15;a:2:{i:0;s:22:"jQuery serializeObject";i:1;s:49:"http://benalman.com/projects/jquery-misc-plugins/";}i:16;a:2:{i:0;s:12:"jQuery.query";i:1;s:40:"https://plugins.jquery.com/query-object/";}i:17;a:2:{i:0;s:14:"jQuery.suggest";i:1;s:43:"https://github.com/pvulgaris/jquery.suggest";}i:18;a:2:{i:0;s:21:"jQuery UI Touch Punch";i:1;s:27:"http://touchpunch.furf.com/";}i:19;a:2:{i:0;s:5:"json2";i:1;s:43:"https://github.com/douglascrockford/JSON-js";}i:20;a:2:{i:0;s:6:"Lodash";i:1;s:19:"https://lodash.com/";}i:21;a:2:{i:0;s:7:"Masonry";i:1;s:28:"http://masonry.desandro.com/";}i:22;a:2:{i:0;s:15:"MediaElement.js";i:1;s:26:"http://mediaelementjs.com/";}i:23;a:2:{i:0;s:6:"Moment";i:1;s:20:"http://momentjs.com/";}i:24;a:2:{i:0;s:6:"PclZip";i:1;s:33:"http://www.phpconcept.net/pclzip/";}i:25;a:2:{i:0;s:6:"PemFTP";i:1;s:71:"https://www.phpclasses.org/package/1743-PHP-FTP-client-in-pure-PHP.html";}i:26;a:2:{i:0;s:6:"phpass";i:1;s:31:"http://www.openwall.com/phpass/";}i:27;a:2:{i:0;s:9:"PHPMailer";i:1;s:38:"https://github.com/PHPMailer/PHPMailer";}i:28;a:2:{i:0;s:8:"Plupload";i:1;s:24:"http://www.plupload.com/";}i:29;a:2:{i:0;s:13:"random_compat";i:1;s:42:"https://github.com/paragonie/random_compat";}i:30;a:2:{i:0;s:5:"React";i:1;s:20:"https://reactjs.org/";}i:31;a:2:{i:0;s:5:"Redux";i:1;s:21:"https://redux.js.org/";}i:32;a:2:{i:0;s:8:"Requests";i:1;s:31:"http://requests.ryanmccue.info/";}i:33;a:2:{i:0;s:9:"SimplePie";i:1;s:21:"http://simplepie.org/";}i:34;a:2:{i:0;s:27:"The Incutio XML-RPC Library";i:1;s:34:"http://scripts.incutio.com/xmlrpc/";}i:35;a:2:{i:0;s:8:"Thickbox";i:1;s:32:"http://codylindley.com/thickbox/";}i:36;a:2:{i:0;s:7:"TinyMCE";i:1;s:24:"https://www.tinymce.com/";}i:37;a:2:{i:0;s:7:"Twemoji";i:1;s:34:"https://github.com/twitter/twemoji";}i:38;a:2:{i:0;s:13:"Underscore.js";i:1;s:24:"http://underscorejs.org/";}i:39;a:2:{i:0;s:12:"whatwg-fetch";i:1;s:31:"https://github.com/github/fetch";}i:40;a:2:{i:0;s:6:"zxcvbn";i:1;s:33:"https://github.com/dropbox/zxcvbn";}}}}s:4:"data";a:2:{s:8:"profiles";s:33:"https://profiles.wordpress.org/%s";s:7:"version";s:3:"5.1";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_postmeta`
--

CREATE TABLE `plbs_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_postmeta`
--

INSERT INTO `plbs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'index.php'),
(2, 2, '_edit_lock', '1497766457:1'),
(7, 10, '_menu_item_type', 'custom'),
(8, 10, '_menu_item_menu_item_parent', '0'),
(9, 10, '_menu_item_object_id', '10'),
(10, 10, '_menu_item_object', 'custom'),
(11, 10, '_menu_item_target', ''),
(12, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13, 10, '_menu_item_xfn', ''),
(14, 10, '_menu_item_url', 'http://localhost/wp/'),
(15, 10, '_menu_item_orphaned', '1497378802'),
(16, 11, '_menu_item_type', 'post_type'),
(17, 11, '_menu_item_menu_item_parent', '0'),
(18, 11, '_menu_item_object_id', '5'),
(19, 11, '_menu_item_object', 'page'),
(20, 11, '_menu_item_target', ''),
(21, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(22, 11, '_menu_item_xfn', ''),
(23, 11, '_menu_item_url', ''),
(24, 11, '_menu_item_orphaned', '1497378802'),
(25, 12, '_menu_item_type', 'post_type'),
(26, 12, '_menu_item_menu_item_parent', '0'),
(27, 12, '_menu_item_object_id', '6'),
(28, 12, '_menu_item_object', 'page'),
(29, 12, '_menu_item_target', ''),
(30, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(31, 12, '_menu_item_xfn', ''),
(32, 12, '_menu_item_url', ''),
(33, 12, '_menu_item_orphaned', '1497378802'),
(34, 13, '_menu_item_type', 'post_type'),
(35, 13, '_menu_item_menu_item_parent', '0'),
(36, 13, '_menu_item_object_id', '8'),
(37, 13, '_menu_item_object', 'page'),
(38, 13, '_menu_item_target', ''),
(39, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(40, 13, '_menu_item_xfn', ''),
(41, 13, '_menu_item_url', ''),
(42, 13, '_menu_item_orphaned', '1497378803'),
(43, 14, '_menu_item_type', 'post_type'),
(44, 14, '_menu_item_menu_item_parent', '0'),
(45, 14, '_menu_item_object_id', '7'),
(46, 14, '_menu_item_object', 'page'),
(47, 14, '_menu_item_target', ''),
(48, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 14, '_menu_item_xfn', ''),
(50, 14, '_menu_item_url', ''),
(51, 14, '_menu_item_orphaned', '1497378803'),
(52, 15, '_menu_item_type', 'post_type'),
(53, 15, '_menu_item_menu_item_parent', '0'),
(54, 15, '_menu_item_object_id', '2'),
(55, 15, '_menu_item_object', 'page'),
(56, 15, '_menu_item_target', ''),
(57, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 15, '_menu_item_xfn', ''),
(59, 15, '_menu_item_url', ''),
(60, 15, '_menu_item_orphaned', '1497378803'),
(61, 16, '_menu_item_type', 'custom'),
(62, 16, '_menu_item_menu_item_parent', '0'),
(63, 16, '_menu_item_object_id', '16'),
(64, 16, '_menu_item_object', 'custom'),
(65, 16, '_menu_item_target', ''),
(66, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(67, 16, '_menu_item_xfn', ''),
(68, 16, '_menu_item_url', 'http://localhost/wp/'),
(69, 16, '_menu_item_orphaned', '1497378808'),
(70, 17, '_menu_item_type', 'post_type'),
(71, 17, '_menu_item_menu_item_parent', '0'),
(72, 17, '_menu_item_object_id', '5'),
(73, 17, '_menu_item_object', 'page'),
(74, 17, '_menu_item_target', ''),
(75, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(76, 17, '_menu_item_xfn', ''),
(77, 17, '_menu_item_url', ''),
(78, 17, '_menu_item_orphaned', '1497378808'),
(79, 18, '_menu_item_type', 'post_type'),
(80, 18, '_menu_item_menu_item_parent', '0'),
(81, 18, '_menu_item_object_id', '6'),
(82, 18, '_menu_item_object', 'page'),
(83, 18, '_menu_item_target', ''),
(84, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 18, '_menu_item_xfn', ''),
(86, 18, '_menu_item_url', ''),
(87, 18, '_menu_item_orphaned', '1497378809'),
(88, 19, '_menu_item_type', 'post_type'),
(89, 19, '_menu_item_menu_item_parent', '0'),
(90, 19, '_menu_item_object_id', '8'),
(91, 19, '_menu_item_object', 'page'),
(92, 19, '_menu_item_target', ''),
(93, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 19, '_menu_item_xfn', ''),
(95, 19, '_menu_item_url', ''),
(96, 19, '_menu_item_orphaned', '1497378809'),
(97, 20, '_menu_item_type', 'post_type'),
(98, 20, '_menu_item_menu_item_parent', '0'),
(99, 20, '_menu_item_object_id', '7'),
(100, 20, '_menu_item_object', 'page'),
(101, 20, '_menu_item_target', ''),
(102, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(103, 20, '_menu_item_xfn', ''),
(104, 20, '_menu_item_url', ''),
(105, 20, '_menu_item_orphaned', '1497378809'),
(106, 21, '_menu_item_type', 'post_type'),
(107, 21, '_menu_item_menu_item_parent', '0'),
(108, 21, '_menu_item_object_id', '2'),
(109, 21, '_menu_item_object', 'page'),
(110, 21, '_menu_item_target', ''),
(111, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(112, 21, '_menu_item_xfn', ''),
(113, 21, '_menu_item_url', ''),
(114, 21, '_menu_item_orphaned', '1497378809'),
(115, 22, '_menu_item_type', 'custom'),
(116, 22, '_menu_item_menu_item_parent', '0'),
(117, 22, '_menu_item_object_id', '22'),
(118, 22, '_menu_item_object', 'custom'),
(119, 22, '_menu_item_target', ''),
(120, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(121, 22, '_menu_item_xfn', ''),
(122, 22, '_menu_item_url', 'http://localhost/wp/'),
(124, 23, '_menu_item_type', 'post_type'),
(125, 23, '_menu_item_menu_item_parent', '0'),
(126, 23, '_menu_item_object_id', '5'),
(127, 23, '_menu_item_object', 'page'),
(128, 23, '_menu_item_target', ''),
(129, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(130, 23, '_menu_item_xfn', ''),
(131, 23, '_menu_item_url', ''),
(133, 24, '_menu_item_type', 'post_type'),
(134, 24, '_menu_item_menu_item_parent', '0'),
(135, 24, '_menu_item_object_id', '6'),
(136, 24, '_menu_item_object', 'page'),
(137, 24, '_menu_item_target', ''),
(138, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(139, 24, '_menu_item_xfn', ''),
(140, 24, '_menu_item_url', ''),
(142, 25, '_menu_item_type', 'post_type'),
(143, 25, '_menu_item_menu_item_parent', '0'),
(144, 25, '_menu_item_object_id', '8'),
(145, 25, '_menu_item_object', 'page'),
(146, 25, '_menu_item_target', ''),
(147, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(148, 25, '_menu_item_xfn', ''),
(149, 25, '_menu_item_url', ''),
(151, 26, '_menu_item_type', 'post_type'),
(152, 26, '_menu_item_menu_item_parent', '0'),
(153, 26, '_menu_item_object_id', '7'),
(154, 26, '_menu_item_object', 'page'),
(155, 26, '_menu_item_target', ''),
(156, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(157, 26, '_menu_item_xfn', ''),
(158, 26, '_menu_item_url', ''),
(160, 27, '_menu_item_type', 'post_type'),
(161, 27, '_menu_item_menu_item_parent', '22'),
(162, 27, '_menu_item_object_id', '2'),
(163, 27, '_menu_item_object', 'page'),
(164, 27, '_menu_item_target', ''),
(165, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(166, 27, '_menu_item_xfn', ''),
(167, 27, '_menu_item_url', ''),
(168, 5, '_edit_last', '1'),
(169, 5, '_edit_lock', '1497766233:1'),
(170, 8, '_edit_last', '1'),
(171, 8, '_edit_lock', '1497766246:1'),
(172, 28, '_edit_last', '1'),
(173, 28, '_edit_lock', '1497766250:1'),
(174, 28, '_wp_page_template', 'home.php'),
(175, 28, '_yoast_wpseo_content_score', '30'),
(176, 2, '_edit_last', '1'),
(177, 2, '_yoast_wpseo_content_score', '30'),
(178, 30, '_wc_review_count', '0'),
(179, 30, '_wc_rating_count', 'a:0:{}'),
(180, 30, '_wc_average_rating', '0'),
(181, 30, '_edit_last', '1'),
(182, 30, '_sku', ''),
(183, 30, '_regular_price', ''),
(184, 30, '_sale_price', ''),
(185, 30, '_sale_price_dates_from', ''),
(186, 30, '_sale_price_dates_to', ''),
(187, 30, 'total_sales', '0'),
(188, 30, '_tax_status', 'taxable'),
(189, 30, '_tax_class', ''),
(190, 30, '_manage_stock', 'no'),
(191, 30, '_backorders', 'no'),
(192, 30, '_sold_individually', 'no'),
(193, 30, '_weight', ''),
(194, 30, '_length', ''),
(195, 30, '_width', ''),
(196, 30, '_height', ''),
(197, 30, '_upsell_ids', 'a:0:{}'),
(198, 30, '_crosssell_ids', 'a:0:{}'),
(199, 30, '_purchase_note', ''),
(200, 30, '_default_attributes', 'a:0:{}'),
(201, 30, '_virtual', 'no'),
(202, 30, '_downloadable', 'no'),
(203, 30, '_product_image_gallery', ''),
(204, 30, '_download_limit', '-1'),
(205, 30, '_download_expiry', '-1'),
(206, 30, '_stock', NULL),
(207, 30, '_stock_status', 'instock'),
(208, 30, '_product_version', '3.0.8'),
(209, 30, '_price', ''),
(210, 30, '_yoast_wpseo_primary_product_cat', ''),
(211, 30, '_yoast_wpseo_content_score', '30'),
(212, 30, '_edit_lock', '1539103403:1'),
(213, 5, '_yoast_wpseo_title', '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%'),
(214, 5, '_yoast_wpseo_meta-robots-noindex', '');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_posts`
--

CREATE TABLE `plbs_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_posts`
--

INSERT INTO `plbs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2017-06-13 05:59:54', '2017-06-13 05:59:54', 'Đây là một trang tĩnh mẫu. Nó khác với một bài viết ở chỗ nó sẽ luôn ở một vị trí và sẽ được hiển thị tại thực đơn điều hướng trên trang mạng của bạn (với hầu hết các giao diện). Hầu hết mọi người bắt đầu với trang Giới Thiệu kể về họ với người đọc. Nó có thể được viết như sau:\r\n<blockquote>Xin chào! tôi là người chuyển hàng bằng xe đạp vào ban ngày, diễn viên luôn nỗ lực tiến bộ vào buổi tối, và đây là trang nhật ký trực tuyến của tôi. Tôi sống ở Los Angeles, tôi nuôi một con chó tuyệt vời tên là Jack, và tôi thích piña coladas. (Và có thể gặp trong mưa.)</blockquote>\r\n...hoặc tương tự như:\r\n<blockquote>Công ty Đồ dùng XYZ được thành lập năm 1971, và đã cung cấp đồ dùng chất lượng cho cộng đồng từ thời điểm đó. Tại thành phố Gotham, XYZ tạo ra việc làm cho hơn 2,000 người và làm ra những đồ dùng tuyệt vời phục vụ mọi nhu cầu cho người dân Gotham.</blockquote>\r\nLà một người sử dụng WordPress mới, bạn nên truy cập <a href="http://localhost/wp/wp-admin/">bảng thống kê</a> để xóa trang tĩnh này và tạo trang tĩnh mới cho nội dung của bạn. Hãy tận hưởng!', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-06-18 06:14:17', '2017-06-18 06:14:17', '', 0, 'http://localhost/wp/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-06-13 06:18:55', '2017-06-13 06:18:55', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2017-06-13 06:18:55', '2017-06-13 06:18:55', '', 0, 'http://localhost/wp/?option-tree=media', 0, 'option-tree', '', 0),
(5, 1, '2017-06-13 18:24:01', '2017-06-13 18:24:01', '', 'Sản phẩm', '', 'publish', 'closed', 'closed', '', 'san-pham', '', '', '2017-06-18 06:10:33', '2017-06-18 06:10:33', '', 0, 'http://localhost/wp/cua-hang/', 0, 'page', '', 0),
(6, 1, '2017-06-13 18:24:02', '2017-06-13 18:24:02', '[woocommerce_cart]', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2017-06-13 18:24:02', '2017-06-13 18:24:02', '', 0, 'http://localhost/wp/gio-hang/', 0, 'page', '', 0),
(7, 1, '2017-06-13 18:24:02', '2017-06-13 18:24:02', '[woocommerce_checkout]', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2017-06-13 18:24:02', '2017-06-13 18:24:02', '', 0, 'http://localhost/wp/thanh-toan/', 0, 'page', '', 0),
(8, 1, '2017-06-13 18:24:02', '2017-06-13 18:24:02', '[woocommerce_my_account]', 'Tài khoản', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2017-06-18 06:10:46', '2017-06-18 06:10:46', '', 0, 'http://localhost/wp/tai-khoan/', 0, 'page', '', 0),
(10, 1, '2017-06-13 18:33:22', '0000-00-00 00:00:00', '', 'Trang chủ', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2017-06-13 18:33:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2017-06-13 18:33:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2017-06-13 18:33:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2017-06-13 18:33:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2017-06-13 18:33:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-06-13 18:33:28', '0000-00-00 00:00:00', '', 'Trang chủ', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2017-06-13 18:33:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2017-06-13 18:33:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2017-06-13 18:33:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2017-06-13 18:33:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2017-06-13 18:33:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-13 18:33:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2017-06-14 15:39:11', '2017-06-14 15:39:11', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2017-06-14 15:49:43', '2017-06-14 15:49:43', '', 0, 'http://localhost/wp/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2017-06-14 15:39:12', '2017-06-14 15:39:12', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-06-14 15:49:43', '2017-06-14 15:49:43', '', 0, 'http://localhost/wp/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2017-06-14 15:39:12', '2017-06-14 15:39:12', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-06-14 15:49:43', '2017-06-14 15:49:43', '', 0, 'http://localhost/wp/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2017-06-14 15:39:12', '2017-06-14 15:39:12', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-06-14 15:49:43', '2017-06-14 15:49:43', '', 0, 'http://localhost/wp/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2017-06-14 15:39:12', '2017-06-14 15:39:12', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2017-06-14 15:49:43', '2017-06-14 15:49:43', '', 0, 'http://localhost/wp/?p=26', 6, 'nav_menu_item', '', 0),
(27, 1, '2017-06-14 15:39:12', '2017-06-14 15:39:12', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2017-06-14 15:49:43', '2017-06-14 15:49:43', '', 0, 'http://localhost/wp/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2017-06-18 06:13:07', '2017-06-18 06:13:07', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2017-06-18 06:13:07', '2017-06-18 06:13:07', '', 0, 'http://localhost/wp/?page_id=28', 0, 'page', '', 0),
(30, 1, '2018-10-09 16:45:09', '2018-10-09 16:45:09', '', 'new product', '', 'publish', 'open', 'closed', '', 'new-product', '', '', '2018-10-09 16:45:09', '2018-10-09 16:45:09', '', 0, 'http://localhost/wp/?post_type=product&#038;p=30', 0, 'product', '', 0),
(31, 1, '2019-03-25 09:16:57', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-25 09:16:57', '0000-00-00 00:00:00', '', 0, 'http://wpdev.pt/?p=31', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_termmeta`
--

CREATE TABLE `plbs_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_termmeta`
--

INSERT INTO `plbs_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_terms`
--

CREATE TABLE `plbs_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_terms`
--

INSERT INTO `plbs_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Blog', 'blog', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Menu 1', 'menu-1', 0),
(16, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_term_relationships`
--

CREATE TABLE `plbs_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_term_relationships`
--

INSERT INTO `plbs_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(22, 15, 0),
(23, 15, 0),
(24, 15, 0),
(25, 15, 0),
(26, 15, 0),
(27, 15, 0),
(30, 2, 0),
(30, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_term_taxonomy`
--

CREATE TABLE `plbs_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_term_taxonomy`
--

INSERT INTO `plbs_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'nav_menu', '', 0, 6),
(16, 16, 'product_cat', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plbs_usermeta`
--

CREATE TABLE `plbs_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_usermeta`
--

INSERT INTO `plbs_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', 'vi'),
(11, 1, 'plbs_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'plbs_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'plbs_dashboard_quick_press_last_post_id', '31'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(18, 1, 'plbs_user-settings', 'editor=tinymce&libraryContent=upload&posts_list_mode=list'),
(19, 1, 'plbs_user-settings-time', '1497766206'),
(20, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:55:"dashboard_activity,woocommerce_dashboard_recent_reviews";s:4:"side";s:19:"dashboard_right_now";s:7:"column3";s:21:"dashboard_quick_press";s:7:"column4";s:28:"woocommerce_dashboard_status";}'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(23, 1, 'itsec_user_activity_last_seen', '1541601373'),
(24, 1, 'itsec-settings-view', 'grid'),
(25, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(27, 1, 'plbs_yoast_notifications', 'a:4:{i:0;a:2:{s:7:"message";s:478:"Yoast SEO và WooCommerce có thể làm việc chung tốt hơn nhiều bằng cách thêm gói mở rộng giúp đỡ. Vui lòng cài đặt Yoast WooCommerce SEO để cuộc đời tốt hơn. <a href="https://yoa.st/1o0?php_version=7.0.10&platform=wordpress&platform_version=5.1.1&software=free&software_version=9.1&role=administrator&days_active=645" aria-label="Thông tin thêm về Yoast WooCommerce SEO" target="_blank" rel="noopener noreferrer">Thông tin thêm</a>.";s:7:"options";a:9:{s:4:"type";s:7:"warning";s:2:"id";s:44:"wpseo-suggested-plugin-yoast-woocommerce-seo";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";a:1:{i:0;s:15:"install_plugins";}s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}i:1;a:2:{s:7:"message";s:1240:"Chúng tôi nhận thấy bạn đã sử dụng Yoast SEO được một thời gian; chúng tôi mong bạn yêu thích nó! Chúng tôi sẽ vô cùng cảm động nếu bạn có thể <a href="https://yoa.st/rate-yoast-seo?php_version=7.0.10&platform=wordpress&platform_version=5.1.1&software=free&software_version=9.1&role=administrator&days_active=645">cho chúng tôi một đánh giá 5 sao trên WordPress.org</a>!\n\nNếu bạn gặp phải sự cố, <a href="https://yoa.st/bugreport?php_version=7.0.10&platform=wordpress&platform_version=5.1.1&software=free&software_version=9.1&role=administrator&days_active=645">vui lòng gửi báo cáo lỗi</a> và chúng tôi sẽ cố hết sức để giúp bạn.\n\nBy the way, did you know we also have a <a href=\'https://yoa.st/premium-notification?php_version=7.0.10&platform=wordpress&platform_version=5.1.1&software=free&software_version=9.1&role=administrator&days_active=645\'>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keyphrases. It also comes with 24/7 personal support.\n\n<a class="button" href="http://wpdev.pt/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell">Không hiển thị những thông báo này nữa</a>";s:7:"options";a:9:{s:4:"type";s:7:"warning";s:2:"id";s:19:"wpseo-upsell-notice";s:5:"nonce";N;s:8:"priority";d:0.80000000000000004;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}i:2;a:2:{s:7:"message";s:573:"Yoast SEO và Advanced Custom Fields có thể làm việc chung tốt hơn nhiều bằng cách thêm gói mở rộng giúp đỡ. Vui lòng cài đặt <a href="http://wpdev.pt/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=1544e71347">ACF Content Analysis for Yoast SEO</a> để cuộc đời tốt hơn. <a href="https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/" aria-label="Thông tin thêm về ACF Content Analysis for Yoast SEO" target="_blank" rel="noopener noreferrer">Thông tin thêm</a>.";s:7:"options";a:9:{s:4:"type";s:7:"warning";s:2:"id";s:41:"wpseo-suggested-plugin-yoast-acf-analysis";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";a:1:{i:0;s:15:"install_plugins";}s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}i:3;a:2:{s:7:"message";s:226:"Đừng bỏ qua lỗi máy tìm kiếm thu thập thông tin trang web của bạn:  <a href="http://wpdev.pt/wp-admin/admin.php?page=wpseo_search_console&tab=settings"> kết nối với Google Search Console ở đây </a>.";s:7:"options";a:9:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}}'),
(30, 1, 'manageedit-postcolumnshidden', 'a:4:{i:0;s:23:"wpseo-score-readability";i:1;s:11:"wpseo-title";i:2;s:14:"wpseo-metadesc";i:3;s:13:"wpseo-focuskw";}'),
(31, 1, 'edit_post_per_page', '20'),
(32, 1, 'closedpostboxes_product', 'a:0:{}'),
(33, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";}'),
(35, 1, 'plbs_wpseo-upsell-notice', 'seen'),
(36, 1, 'plbs_wpseo-dismiss-gsc', 'seen'),
(37, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(38, 1, 'plbs_wpseo-suggested-plugin-yoast-woocommerce-seo', 'seen'),
(39, 1, 'plbs_wpseo-suggested-plugin-yoast-acf-analysis', 'seen'),
(40, 1, 'wc_last_active', '1553472000'),
(41, 1, 'dismissed_no_secure_connection_notice', '1'),
(42, 1, 'dismissed_update_notice', '1'),
(43, 1, 'show_try_gutenberg_panel', '1'),
(44, 1, 'itsec-password-strength', '3'),
(45, 1, '_itsec_password_requirements', 'a:1:{s:16:"evaluation_times";a:1:{s:8:"strength";i:1541601562;}}'),
(47, 1, '_itsec_has_logged_in', '1541601199'),
(50, 1, '_yoast_wpseo_profile_updated', '1541601518'),
(51, 1, 'wpseo_title', ''),
(52, 1, 'wpseo_metadesc', ''),
(53, 1, 'wpseo_noindex_author', ''),
(54, 1, 'wpseo_content_analysis_disable', ''),
(55, 1, 'wpseo_keyword_analysis_disable', ''),
(56, 1, 'billing_first_name', ''),
(57, 1, 'billing_last_name', ''),
(58, 1, 'billing_company', ''),
(59, 1, 'billing_address_1', ''),
(60, 1, 'billing_address_2', ''),
(61, 1, 'billing_city', ''),
(62, 1, 'billing_postcode', ''),
(63, 1, 'billing_country', ''),
(64, 1, 'billing_state', ''),
(65, 1, 'billing_phone', ''),
(66, 1, 'billing_email', 'skyfrost.07@gmail.com'),
(67, 1, 'shipping_first_name', ''),
(68, 1, 'shipping_last_name', ''),
(69, 1, 'shipping_company', ''),
(70, 1, 'shipping_address_1', ''),
(71, 1, 'shipping_address_2', ''),
(72, 1, 'shipping_city', ''),
(73, 1, 'shipping_postcode', ''),
(74, 1, 'shipping_country', ''),
(75, 1, 'shipping_state', ''),
(76, 1, 'syntax_highlighting', 'true'),
(77, 1, 'googleplus', ''),
(78, 1, 'twitter', ''),
(79, 1, 'facebook', ''),
(80, 1, 'last_update', '1541601518'),
(81, 1, 'itsec_last_password_change', '1541601516'),
(84, 1, 'session_tokens', 'a:1:{s:64:"403ceb90511e1e9d823d7bd8f96a7ad3b7d2690d75550daeafa20eb554c34e5e";a:4:{s:10:"expiration";i:1553653406;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:132:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58.0.3135.107";s:5:"login";i:1553480606;}}');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_users`
--

CREATE TABLE `plbs_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_users`
--

INSERT INTO `plbs_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B1Iiv9aKeKpPsLtOk0JpGvqj9Mu.831', 'admin', 'skyfrost.07@gmail.com', '', '2017-06-13 05:59:53', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `plbs_yoast_seo_links`
--

CREATE TABLE `plbs_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plbs_yoast_seo_meta`
--

CREATE TABLE `plbs_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plbs_yoast_seo_meta`
--

INSERT INTO `plbs_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(31, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plbs_commentmeta`
--
ALTER TABLE `plbs_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `plbs_comments`
--
ALTER TABLE `plbs_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `plbs_itsec_distributed_storage`
--
ALTER TABLE `plbs_itsec_distributed_storage`
  ADD PRIMARY KEY (`storage_id`),
  ADD UNIQUE KEY `storage_group__key__chunk` (`storage_group`,`storage_key`,`storage_chunk`);

--
-- Indexes for table `plbs_itsec_fingerprints`
--
ALTER TABLE `plbs_itsec_fingerprints`
  ADD PRIMARY KEY (`fingerprint_id`),
  ADD UNIQUE KEY `fingerprint_user__hash` (`fingerprint_user`,`fingerprint_hash`),
  ADD UNIQUE KEY `fingerprint_uuid` (`fingerprint_uuid`);

--
-- Indexes for table `plbs_itsec_geolocation_cache`
--
ALTER TABLE `plbs_itsec_geolocation_cache`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_host` (`location_host`),
  ADD KEY `location_time` (`location_time`);

--
-- Indexes for table `plbs_itsec_lockouts`
--
ALTER TABLE `plbs_itsec_lockouts`
  ADD PRIMARY KEY (`lockout_id`),
  ADD KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  ADD KEY `lockout_host` (`lockout_host`),
  ADD KEY `lockout_user` (`lockout_user`),
  ADD KEY `lockout_username` (`lockout_username`),
  ADD KEY `lockout_active` (`lockout_active`);

--
-- Indexes for table `plbs_itsec_log`
--
ALTER TABLE `plbs_itsec_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `plbs_itsec_logs`
--
ALTER TABLE `plbs_itsec_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`),
  ADD KEY `code` (`code`),
  ADD KEY `type` (`type`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `plbs_itsec_temp`
--
ALTER TABLE `plbs_itsec_temp`
  ADD PRIMARY KEY (`temp_id`),
  ADD KEY `temp_date_gmt` (`temp_date_gmt`),
  ADD KEY `temp_host` (`temp_host`),
  ADD KEY `temp_user` (`temp_user`),
  ADD KEY `temp_username` (`temp_username`);

--
-- Indexes for table `plbs_links`
--
ALTER TABLE `plbs_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `plbs_options`
--
ALTER TABLE `plbs_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `plbs_postmeta`
--
ALTER TABLE `plbs_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `plbs_posts`
--
ALTER TABLE `plbs_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `plbs_termmeta`
--
ALTER TABLE `plbs_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `plbs_terms`
--
ALTER TABLE `plbs_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `plbs_term_relationships`
--
ALTER TABLE `plbs_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `plbs_term_taxonomy`
--
ALTER TABLE `plbs_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `plbs_usermeta`
--
ALTER TABLE `plbs_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `plbs_users`
--
ALTER TABLE `plbs_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `plbs_yoast_seo_links`
--
ALTER TABLE `plbs_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `plbs_yoast_seo_meta`
--
ALTER TABLE `plbs_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plbs_commentmeta`
--
ALTER TABLE `plbs_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_comments`
--
ALTER TABLE `plbs_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_itsec_distributed_storage`
--
ALTER TABLE `plbs_itsec_distributed_storage`
  MODIFY `storage_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_itsec_fingerprints`
--
ALTER TABLE `plbs_itsec_fingerprints`
  MODIFY `fingerprint_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_itsec_geolocation_cache`
--
ALTER TABLE `plbs_itsec_geolocation_cache`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_itsec_lockouts`
--
ALTER TABLE `plbs_itsec_lockouts`
  MODIFY `lockout_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_itsec_log`
--
ALTER TABLE `plbs_itsec_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `plbs_itsec_logs`
--
ALTER TABLE `plbs_itsec_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `plbs_itsec_temp`
--
ALTER TABLE `plbs_itsec_temp`
  MODIFY `temp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `plbs_links`
--
ALTER TABLE `plbs_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plbs_options`
--
ALTER TABLE `plbs_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;
--
-- AUTO_INCREMENT for table `plbs_postmeta`
--
ALTER TABLE `plbs_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT for table `plbs_posts`
--
ALTER TABLE `plbs_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `plbs_termmeta`
--
ALTER TABLE `plbs_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `plbs_terms`
--
ALTER TABLE `plbs_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `plbs_term_taxonomy`
--
ALTER TABLE `plbs_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `plbs_usermeta`
--
ALTER TABLE `plbs_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `plbs_users`
--
ALTER TABLE `plbs_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `plbs_yoast_seo_links`
--
ALTER TABLE `plbs_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
