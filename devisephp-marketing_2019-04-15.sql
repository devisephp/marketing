# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.24)
# Database: devisephp-marketing
# Generation Time: 2019-04-16 01:27:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table dvs_changes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_changes`;

CREATE TABLE `dvs_changes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `release_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `change` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table dvs_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_fields`;

CREATE TABLE `dvs_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slice_instance_id` int(10) unsigned DEFAULT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_requested` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slice_key_unique_index` (`slice_instance_id`,`key`),
  KEY `dvs_fields_slice_instance_id_index` (`slice_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_fields` WRITE;
/*!40000 ALTER TABLE `dvs_fields` DISABLE KEYS */;

INSERT INTO `dvs_fields` (`id`, `slice_instance_id`, `key`, `json_value`, `content_requested`, `created_at`, `updated_at`)
VALUES
	(1,1,'image','{\"text\":null,\"url\":\"\\/imgs\\/static-hero.jpg\",\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"mode\":\"media\",\"label\":\"Background Image\",\"type\":\"image\",\"default\":{\"url\":\"\\/imgs\\/static-hero.jpg\"}}',0,'2019-04-03 20:46:51','2019-04-03 20:49:28'),
	(2,1,'colorTop','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"rgba(34,41,47,0)\",\"checked\":null,\"enabled\":false,\"label\":\"Bottom Gradient Top Color\",\"type\":\"color\",\"default\":{\"color\":\"rgba(0,0,0,0)\"}}',0,'2019-04-03 20:46:51','2019-04-03 20:46:51'),
	(3,1,'colorBottom','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"rgba(34,41,47,1)\",\"checked\":null,\"enabled\":false,\"label\":\"Bottom Gradient Bottom Color\",\"type\":\"color\",\"default\":{\"color\":\"#000000\"}}',0,'2019-04-03 20:46:51','2019-04-03 20:46:51'),
	(4,2,'topImage','{\"text\":null,\"url\":\"\\/storage\\/styled\\/devisephp.test\\/logos\\/devise-logo-white-166-61-373be6a5465ed3b61530c30a38c7a2ea1554324565.png\",\"media\":{\"original\":\"\\/storage\\/media\\/logos\\/devise-logo-white.png\",\"orig_optimized\":\"\\/storage\\/styled\\/devisephp.test\\/logos\\/devise-logo-white-166-61-373be6a5465ed3b61530c30a38c7a2ea1554324565.png\"},\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"mode\":\"media\",\"alt\":null,\"settings\":{\"q\":80,\"fit\":\"crop\",\"sharp\":5,\"w\":166,\"h\":61},\"type\":\"image\",\"label\":\"Top Image\"}',0,'2019-04-03 20:49:28','2019-04-03 20:52:11'),
	(5,2,'title','{\"text\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"id\":5}',0,'2019-04-03 20:49:28','2019-04-03 20:55:54'),
	(6,2,'titleSize','{\"enabled\":null,\"value\":\"h1\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"id\":6}',0,'2019-04-03 20:49:28','2019-04-03 20:55:54'),
	(7,2,'introduction','{\"text\":\"Devise is a content management system that empowers developers, designers and customers like never before.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Introduction\",\"default\":{\"enabled\":true}}',0,'2019-04-03 20:49:28','2019-04-15 13:18:24'),
	(8,2,'link','{\"text\":\"Hey there\",\"url\":\"#\",\"media\":[],\"target\":\"_self\",\"color\":null,\"checked\":null,\"enabled\":false,\"enabler\":true,\"href\":\"#\",\"routeName\":null,\"mode\":\"url\",\"type\":\"link\",\"label\":\"Link\",\"default\":{\"enabled\":false}}',0,'2019-04-03 20:49:28','2019-04-15 13:18:35'),
	(9,2,'sideImage','{\"text\":null,\"url\":\"\\/imgs\\/sidebar-interface.png\",\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"mode\":\"media\",\"alt\":null,\"settings\":[],\"type\":\"image\",\"label\":\"Side Image\",\"default\":{\"url\":\"\\/imgs\\/sidebar-interface.png\"}}',0,'2019-04-03 20:52:11','2019-04-04 00:22:56'),
	(10,2,'introText','{\"text\":\"<p>Devise is a content managment system that empowers developers and customers like never before.<\\/p>\",\"enabled\":true,\"enabler\":true,\"id\":10}',0,'2019-04-03 20:53:07','2019-04-03 20:55:54'),
	(11,2,'introductionSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"value\":\"h1\",\"type\":\"select\",\"label\":\"Intro Size\",\"default\":{\"value\":\"h1\"}}',0,'2019-04-03 20:55:28','2019-04-03 20:55:54'),
	(12,2,'copy','{\"text\":\"<p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Welcome to Devise: A content management platform that allows for more flexibility for content managers, faster iteration, and an amazing toolset that will allow everyone on the web team to deliver initial projects and updates to their projects blazing fast. <\\/span><\\/p><br><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">The <strong>core missions<\\/strong> of this open source project is to:<\\/span><\\/p><br><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Make a more streamlined experience with in context editing of content.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Provide a <\\/span><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\"><em>very<\\/em><\\/span><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\"> quick way for developers to create new features and editable content.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Allow for greater flexibility for clients when managing their web project content, layouts and features.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Allow for robust customization of the system when needed for advanced sites and applications.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Outline best-in-class tools that allow for development to begin very quickly.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Provide methods to optimize performance for mobile including asset chunking, automatic media resizing, and incredible performance out of the box.<\\/span><\\/p><\\/li><\\/ul>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-04-03 20:55:28','2019-04-15 13:18:24'),
	(13,2,'smokeColor','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#22292f\",\"checked\":null,\"enabled\":false,\"type\":\"color\",\"label\":\"Smoke Color\",\"default\":{\"color\":\"#22292f\"}}',0,'2019-04-03 21:40:41','2019-04-03 23:50:32'),
	(14,1,'smokeColor','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#22292f\",\"checked\":null,\"enabled\":false,\"type\":\"color\",\"label\":\"Smoke Color\",\"default\":{\"color\":\"#22292f\"}}',0,'2019-04-03 23:50:32','2019-04-03 23:50:32'),
	(15,3,'titleHighlighted','{\"text\":\"In Context\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"label\":\"Title Highlighted\",\"type\":\"text\",\"default\":{\"text\":\"In Context\",\"enabled\":false}}',0,'2019-04-04 00:22:56','2019-04-15 13:51:34'),
	(16,3,'titleNotHighlighted','{\"text\":\"Edit.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Title Not Highlighted\",\"type\":\"text\",\"default\":{\"text\":\"Edit.\"}}',0,'2019-04-04 00:22:56','2019-04-04 00:22:56'),
	(17,3,'copy','{\"text\":\"<p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Many content management systems on the market today require the user to login to a \\u201cbackend\\u201d admin panel to manage their content. This separation makes editing content cumbersome requiring users to flip back and forth between the frontend and the backend of the system to see their changes. Conversely, Devise allows content managers to edit the content on the page they are viewing. They can see how a new piece of content effects the layout or how a color change looks in real time. Only when they are satisfied with the changes do they publish it for the world to see.<\\/span><\\/p><span id=\\\"docs-internal-guid-8b66e467-7fff-b879-f4fb-6e6660d955fb\\\"><br><\\/span><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">To make this happen we have built in editors that developers can utilize in their slices in just a couple lines of code.<\\/span><\\/p><img src=\\\"\\/storage\\/styled\\/devisephp.test\\/ui\\/field-491-459-ca71cff67bf93f45ad05179b49c029241555336281.png\\\" width=\\\"491\\\" height=\\\"459\\\">\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Primary Copy\",\"type\":\"wysiwyg\"}',0,'2019-04-04 00:22:56','2019-04-15 13:51:34'),
	(18,3,'backgroundColorLeft','{\"color\":\"#e8f9e8\",\"enabled\":null,\"id\":18}',0,'2019-04-04 00:22:56','2019-04-04 13:30:06'),
	(19,3,'backgroundColorRight','{\"color\":\"#f0f5b4\",\"enabled\":null,\"id\":19}',0,'2019-04-04 00:22:56','2019-04-04 13:30:06'),
	(20,3,'leftOrRight','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"md:flex-row-reverse\":\"Right\",\"md:flex-row\":\"Left\"},\"value\":\"md:flex-row-reverse\",\"label\":\"Copy on Left or Right?\",\"type\":\"select\",\"default\":{\"value\":\"md:flex-row-reverse\"}}',0,'2019-04-04 00:30:41','2019-04-04 00:32:32'),
	(42,11,'icon','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"check\",\"options\":{\"check\":\"Checkbox\",\"droplet\":\"droplet\",\"document\":\"Document\",\"images\":\"Images\",\"clock\":\"Clock\",\"link\":\"Link\",\"hash\":\"hash\",\"dropdown\":\"Dropdown\",\"type\":\"Type\"},\"label\":\"Icon\",\"type\":\"select\",\"default\":{\"value\":\"check\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:42:13'),
	(43,11,'title','{\"text\":\"Checkbox\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"label\":\"Title\",\"type\":\"text\",\"default\":{\"text\":\"Feature Title\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:43:59'),
	(44,11,'copy','{\"text\":\"Perfect for turning content on or off\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Copy\",\"type\":\"textarea\"}',0,'2019-04-04 01:22:53','2019-04-04 01:22:53'),
	(45,12,'icon','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"droplet\",\"options\":{\"check\":\"Checkbox\",\"droplet\":\"droplet\",\"document\":\"Document\",\"images\":\"Images\",\"clock\":\"Clock\",\"link\":\"Link\",\"hash\":\"hash\",\"dropdown\":\"Dropdown\",\"type\":\"Type\"},\"label\":\"Icon\",\"type\":\"select\",\"default\":{\"value\":\"check\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:42:13'),
	(46,12,'title','{\"text\":\"Color\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"label\":\"Title\",\"type\":\"text\",\"default\":{\"text\":\"Feature Title\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:43:59'),
	(47,12,'copy','{\"text\":\"Manipulate the colors of a background, text, 3d object. You name it.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Copy\",\"type\":\"textarea\"}',0,'2019-04-04 01:22:53','2019-04-04 01:42:13'),
	(48,13,'icon','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"link\",\"options\":{\"check\":\"Checkbox\",\"droplet\":\"droplet\",\"document\":\"Document\",\"images\":\"Images\",\"clock\":\"Clock\",\"link\":\"Link\",\"hash\":\"hash\",\"dropdown\":\"Dropdown\",\"type\":\"Type\"},\"label\":\"Icon\",\"type\":\"select\",\"default\":{\"value\":\"check\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:43:59'),
	(49,13,'title','{\"text\":\"Link\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"label\":\"Title\",\"type\":\"text\",\"default\":{\"text\":\"Feature Title\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:43:59'),
	(50,13,'copy','{\"text\":\"Link to outside URLs and internal pages.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Copy\",\"type\":\"textarea\"}',0,'2019-04-04 01:22:53','2019-04-04 01:43:59'),
	(51,14,'icon','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"hash\",\"options\":{\"check\":\"Checkbox\",\"droplet\":\"droplet\",\"document\":\"Document\",\"images\":\"Images\",\"clock\":\"Clock\",\"link\":\"Link\",\"hash\":\"hash\",\"dropdown\":\"Dropdown\",\"type\":\"Type\"},\"label\":\"Icon\",\"type\":\"select\",\"default\":{\"value\":\"check\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:43:59'),
	(52,14,'title','{\"text\":\"Numbers\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"label\":\"Title\",\"type\":\"text\",\"default\":{\"text\":\"Feature Title\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:43:59'),
	(53,14,'copy','{\"text\":\"Change \\u201cfriction\\u201d in your game, alter the discount percentage for the store, or just... display a number\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Copy\",\"type\":\"textarea\"}',0,'2019-04-04 01:22:53','2019-04-04 01:43:59'),
	(54,15,'icon','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"check\",\"options\":{\"check\":\"Checkbox\",\"droplet\":\"droplet\",\"document\":\"Document\",\"images\":\"Images\",\"clock\":\"Clock\",\"link\":\"Link\",\"hash\":\"hash\",\"dropdown\":\"Dropdown\",\"type\":\"Type\"},\"label\":\"Icon\",\"type\":\"select\",\"default\":{\"value\":\"check\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:42:13'),
	(55,15,'title','{\"text\":\"Files\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"label\":\"Title\",\"type\":\"text\",\"default\":{\"text\":\"Feature Title\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:47:11'),
	(56,15,'copy','{\"text\":\"Upload and serve files to end users.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Copy\",\"type\":\"textarea\"}',0,'2019-04-04 01:22:53','2019-04-04 01:47:11'),
	(57,16,'icon','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"check\",\"options\":{\"check\":\"Checkbox\",\"droplet\":\"droplet\",\"document\":\"Document\",\"images\":\"Images\",\"clock\":\"Clock\",\"link\":\"Link\",\"hash\":\"hash\",\"dropdown\":\"Dropdown\",\"type\":\"Type\"},\"label\":\"Icon\",\"type\":\"select\",\"default\":{\"value\":\"check\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:42:13'),
	(58,16,'title','{\"text\":\"Dropdown Select\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"label\":\"Title\",\"type\":\"text\",\"default\":{\"text\":\"Feature Title\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:47:11'),
	(59,16,'copy','{\"text\":\"Build a pre-selected list of options so your customer doesn\\u2019t screw it up.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Copy\",\"type\":\"textarea\"}',0,'2019-04-04 01:22:53','2019-04-04 01:47:11'),
	(60,17,'icon','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"images\",\"options\":{\"check\":\"Checkbox\",\"droplet\":\"droplet\",\"document\":\"Document\",\"images\":\"Images\",\"clock\":\"Clock\",\"link\":\"Link\",\"hash\":\"hash\",\"dropdown\":\"Dropdown\",\"type\":\"Type\"},\"label\":\"Icon\",\"type\":\"select\",\"default\":{\"value\":\"check\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:47:11'),
	(61,17,'title','{\"text\":\"Images\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"label\":\"Title\",\"type\":\"text\",\"default\":{\"text\":\"Feature Title\"}}',0,'2019-04-04 01:22:53','2019-04-04 01:47:11'),
	(62,17,'copy','{\"text\":\"Upload, manipulate and serve images. Let Devise automatically optimize and serve the appropriate size based on resolution.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Copy\",\"type\":\"textarea\"}',0,'2019-04-04 01:22:53','2019-04-04 01:47:11'),
	(63,18,'icon','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"images\",\"options\":{\"check\":\"Checkbox\",\"droplet\":\"droplet\",\"document\":\"Document\",\"images\":\"Images\",\"clock\":\"Clock\",\"link\":\"Link\",\"hash\":\"hash\",\"dropdown\":\"Dropdown\",\"type\":\"Type\"},\"label\":\"Icon\",\"type\":\"select\",\"default\":{\"value\":\"check\"}}',0,'2019-04-04 01:48:24','2019-04-04 01:48:24'),
	(64,18,'title','{\"text\":\"Text, Textarea and WYSIWYG\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"label\":\"Title\",\"type\":\"text\",\"default\":{\"text\":\"Feature Title\"}}',0,'2019-04-04 01:48:24','2019-04-04 01:48:24'),
	(65,18,'copy','{\"text\":\"Utilizing the amazing Trumbowyg library you text and wysiwyg until your heart\\u2019s content.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Copy\",\"type\":\"textarea\"}',0,'2019-04-04 01:48:24','2019-04-04 01:48:24'),
	(66,19,'icon','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"clock\",\"options\":{\"check\":\"Checkbox\",\"droplet\":\"droplet\",\"document\":\"Document\",\"images\":\"Images\",\"clock\":\"Clock\",\"link\":\"Link\",\"hash\":\"hash\",\"dropdown\":\"Dropdown\",\"type\":\"Type\"},\"label\":\"Icon\",\"type\":\"select\",\"default\":{\"value\":\"check\"}}',0,'2019-04-04 01:48:24','2019-04-04 01:48:24'),
	(67,19,'title','{\"text\":\"Date \\/ Time\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"label\":\"Title\",\"type\":\"text\",\"default\":{\"text\":\"Feature Title\"}}',0,'2019-04-04 01:48:24','2019-04-04 01:48:24'),
	(68,19,'copy','{\"text\":\"Allow content managers to set dates and times... or just dates.... or just times... all formatted the way you want.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Copy\",\"type\":\"textarea\"}',0,'2019-04-04 01:48:24','2019-04-04 01:48:24'),
	(73,22,'image','{\"text\":null,\"url\":\"\\/imgs\\/backgrounds\\/red-blur.jpg\",\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"mode\":\"media\",\"type\":\"image\",\"label\":\"Background Image\",\"default\":{\"url\":\"\\/imgs\\/backgrounds\\/red-blur.jpg\"}}',0,'2019-04-04 02:08:41','2019-04-04 13:18:13'),
	(85,26,'backgroundColorLeft','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#e8f9e8\",\"checked\":null,\"enabled\":null,\"label\":\"Background Color Left\",\"type\":\"color\",\"default\":{\"color\":\"#e8f9e8\"}}',0,'2019-04-04 13:24:46','2019-04-04 13:24:46'),
	(86,26,'backgroundColorRight','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#f0f5b4\",\"checked\":null,\"enabled\":null,\"label\":\"Background Color Right\",\"type\":\"color\",\"default\":{\"color\":\"#f0f5b4\"}}',0,'2019-04-04 13:24:46','2019-04-04 13:24:46'),
	(91,3,'copyColor','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#000000\",\"checked\":null,\"enabled\":false,\"label\":\"Copy Color\",\"type\":\"color\",\"default\":{\"color\":\"#000000\"}}',0,'2019-04-04 13:30:06','2019-04-04 13:30:06'),
	(97,32,'alignment','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"left\",\"options\":{\"left\":\"Left\",\"center\":\"Center\",\"right\":\"Right\"},\"type\":\"select\",\"label\":\"Alignment\",\"default\":{\"value\":\"left\"}}',0,'2019-04-04 13:56:38','2019-04-04 19:17:44'),
	(98,32,'title','{\"text\":\"Seamless responsive generation\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Title\",\"default\":{\"enabled\":true}}',0,'2019-04-04 13:56:38','2019-04-15 13:54:16'),
	(99,32,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"h2\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"h1\"}}',0,'2019-04-04 13:56:38','2019-04-04 19:17:44'),
	(100,32,'copy','{\"text\":\"<p><span id=\\\"docs-internal-guid-c9e5a9d9-7fff-fc75-db42-0fb96c487665\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">The built in media manager provides a way to organize and store all your high resolution image assets in one place. Organize however you see fit and when a content manager selects an image for a slice through the editor images are automatically sized as the developer and designer intended.<\\/span><\\/span><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-04-04 13:56:38','2019-04-15 13:54:16'),
	(109,35,'alignment','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"center\",\"options\":{\"left\":\"Left\",\"center\":\"Center\",\"right\":\"Right\"},\"type\":\"select\",\"label\":\"Alignment\",\"default\":{\"value\":\"left\"}}',0,'2019-04-04 13:59:04','2019-04-04 14:36:35'),
	(110,35,'title','{\"text\":\"Amazing Asset Management\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Title\",\"default\":{\"enabled\":true}}',0,'2019-04-04 13:59:04','2019-04-04 14:36:35'),
	(111,35,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"h1\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"h1\"}}',0,'2019-04-04 13:59:04','2019-04-04 14:36:35'),
	(112,35,'copy','{\"text\":\"<p><span id=\\\"docs-internal-guid-268498a5-7fff-295d-7eb1-379e8fe78781\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">One area that is particularly difficult to manage once a product has shipped to a client is asset management. How many of you have found yourself in this situation: You setup an area for a 600px x 500px image but the content manager, not knowing Photoshop or the importance of image size, uploads a 1600px x 1200px image? Or, the content manager does know but they have to upload three versions of the same image due to make the experience responsibly responsive? Now you have 30 versions of the same image\\u2026. yuck. Devise solves all of these problems.<\\/span><\\/span><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-04-04 13:59:04','2019-04-15 13:52:48'),
	(113,35,'desktopSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"md:w-1\\/2\":\"1\\/2\",\"md:w-2\\/3\":\"2\\/3\",\"md:w-4\\/5\":\"4\\/5\",\"md:w-full\":\"Full\"},\"value\":\"md:w-2\\/3\",\"type\":\"select\",\"label\":\"Desktop Size\",\"default\":{\"value\":\"md:w-2\\/3\"}}',0,'2019-04-04 14:38:54','2019-04-04 14:39:48'),
	(114,32,'desktopSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"md:w-1\\/2\":\"1\\/2\",\"md:w-2\\/3\":\"2\\/3\",\"md:w-4\\/5\":\"4\\/5\",\"md:w-full\":\"Full\"},\"value\":\"md:w-full\",\"type\":\"select\",\"label\":\"Desktop Size\",\"default\":{\"value\":\"md:w-2\\/3\"}}',0,'2019-04-04 14:38:54','2019-04-04 19:17:44'),
	(120,39,'lazy','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":true,\"enabled\":null,\"label\":\"Responsive?\",\"type\":\"checkbox\",\"default\":{\"checked\":true}}',0,'2019-04-04 14:42:39','2019-04-04 19:17:44'),
	(121,39,'image','{\"text\":null,\"url\":\"\\/storage\\/styled\\/devisephp.test\\/ui\\/media-editor-600-430-a66e5bbec68094476b7224faade75c811554390799.jpg\",\"media\":{\"original\":\"\\/storage\\/media\\/ui\\/media-editor.jpg\",\"orig_optimized\":\"\\/storage\\/styled\\/devisephp.test\\/ui\\/media-editor-600-430-a66e5bbec68094476b7224faade75c811554390799.jpg\",\"large\":\"\\/storage\\/styled\\/devisephp.test\\/ui\\/media-editor-800-400-0aba653457d71ae3a70649bac153cd041554390799.jpg\",\"small\":\"\\/storage\\/styled\\/devisephp.test\\/ui\\/media-editor-400-300-cc13a6f118289f489129e177e65fa4581554390799.jpg\"},\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"sizes\":{\"large\":{\"w\":800,\"h\":400,\"breakpoints\":[\"desktop\",\"largeDesktop\",\"ultraWideDesktop\"]},\"small\":{\"w\":400,\"h\":300,\"breakpoints\":[\"tablet\",\"mobile\"]}},\"mode\":\"media\",\"alt\":null,\"settings\":{\"q\":80,\"fit\":\"max\",\"sharp\":5,\"w\":600,\"h\":430},\"label\":\"The image\",\"type\":\"image\"}',0,'2019-04-04 14:42:39','2019-04-04 19:17:44'),
	(142,44,'alignment','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"left\",\"options\":{\"left\":\"Left\",\"center\":\"Center\",\"right\":\"Right\"},\"type\":\"select\",\"label\":\"Alignment\",\"default\":{\"value\":\"left\"}}',0,'2019-04-04 15:00:47','2019-04-04 19:17:44'),
	(143,44,'title','{\"text\":\"Built-in image manipulation\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Title\",\"default\":{\"enabled\":true}}',0,'2019-04-04 15:00:47','2019-04-15 13:54:16'),
	(144,44,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"h2\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"h1\"}}',0,'2019-04-04 15:00:47','2019-04-04 19:17:44'),
	(145,44,'copy','{\"text\":\"<p>Devise\'s Media Editor allows content managers to see, in real time, how the image they selected will be resized and cropped. We have built in several basic tools to do last minute edits to the image such as cropping, quality control, rotation, and even basic photo manipulation. All edits are non-destructive to the original source image so that content managers can reuse an asset anywhere else throughout their site<\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-04-04 15:00:47','2019-04-15 13:54:57'),
	(146,44,'desktopSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"md:w-1\\/2\":\"1\\/2\",\"md:w-2\\/3\":\"2\\/3\",\"md:w-4\\/5\":\"4\\/5\",\"md:w-full\":\"Full\"},\"value\":\"md:w-full\",\"type\":\"select\",\"label\":\"Desktop Size\",\"default\":{\"value\":\"md:w-2\\/3\"}}',0,'2019-04-04 15:00:47','2019-04-04 19:17:44'),
	(147,45,'alignment','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"left\",\"options\":{\"left\":\"Left\",\"center\":\"Center\",\"right\":\"Right\"},\"type\":\"select\",\"label\":\"Alignment\",\"default\":{\"value\":\"left\"}}',0,'2019-04-04 15:00:47','2019-04-04 19:17:44'),
	(148,45,'title','{\"text\":\"Optimization for maximum speed\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Title\",\"default\":{\"enabled\":true}}',0,'2019-04-04 15:00:47','2019-04-15 13:54:16'),
	(149,45,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"h2\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"h1\"}}',0,'2019-04-04 15:00:47','2019-04-04 19:17:44'),
	(150,45,'copy','{\"text\":\"<p><span id=\\\"docs-internal-guid-5f5575f5-7fff-bb32-d8ba-74a9e65f6b7c\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">You can optionally install jpegoptim, optipng, pngquant, svgo and gifsicle which will automatically optimize images for maximum efficiency. No longer will you see notifications from Google Pagespeed Insights on how images need to be optimized.<\\/span><\\/span><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-04-04 15:00:47','2019-04-15 13:54:16'),
	(151,45,'desktopSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"md:w-1\\/2\":\"1\\/2\",\"md:w-2\\/3\":\"2\\/3\",\"md:w-4\\/5\":\"4\\/5\",\"md:w-full\":\"Full\"},\"value\":\"md:w-full\",\"type\":\"select\",\"label\":\"Desktop Size\",\"default\":{\"value\":\"md:w-2\\/3\"}}',0,'2019-04-04 15:00:47','2019-04-04 19:17:44'),
	(152,46,'lazy','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":false,\"enabled\":null,\"label\":\"Responsive?\",\"type\":\"checkbox\",\"default\":{\"checked\":true}}',0,'2019-04-04 15:00:47','2019-04-04 19:17:44'),
	(153,46,'image','{\"text\":null,\"url\":\"\\/storage\\/styled\\/devisephp.test\\/ui\\/responsive-623-263-8acf2fa52a003966b0aa09dc248fc6e21554391061.png\",\"media\":{\"original\":\"\\/storage\\/media\\/ui\\/responsive.png\",\"orig_optimized\":\"\\/storage\\/styled\\/devisephp.test\\/ui\\/responsive-623-263-8acf2fa52a003966b0aa09dc248fc6e21554391061.png\",\"large\":\"\\/storage\\/styled\\/devisephp.test\\/ui\\/responsive-800-400-0aba653457d71ae3a70649bac153cd041554391061.png\",\"small\":\"\\/storage\\/styled\\/devisephp.test\\/ui\\/responsive-400-300-cc13a6f118289f489129e177e65fa4581554391061.png\"},\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"sizes\":{\"large\":{\"w\":800,\"h\":400,\"breakpoints\":[\"desktop\",\"largeDesktop\",\"ultraWideDesktop\"]},\"small\":{\"w\":400,\"h\":300,\"breakpoints\":[\"tablet\",\"mobile\"]}},\"mode\":\"media\",\"alt\":null,\"settings\":{\"q\":80,\"fit\":\"crop\",\"sharp\":5,\"w\":623,\"h\":263},\"label\":\"The image\",\"type\":\"image\"}',0,'2019-04-04 15:00:47','2019-04-04 19:17:44'),
	(154,47,'title','{\"text\":\"The Devise slice editor ensures total control\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"label\":\"Title\",\"type\":\"text\"}',0,'2019-04-04 19:17:44','2019-04-04 19:17:44'),
	(155,47,'copy','{\"text\":\"<p>Sites powered by Devise do not have large templates with a fixed structure. Instead, pages are fluid and created from a library of structures your team creates called slices. These slices which are smaller pieces of pages that can be used throughout a website (or websites). Here are a few facts about slices:&nbsp;<\\/p><p><ul><li><span style=\\\"font-family: Lato, system-ui, BlinkMacSystemFont, -apple-system, Roboto, &quot;Segoe UI&quot;, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\\\">Slices can be placed in any order.&nbsp;<\\/span><\\/li><li><span style=\\\"font-family: Lato, system-ui, BlinkMacSystemFont, -apple-system, Roboto, &quot;Segoe UI&quot;, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\\\">Their content and presentation can change in any way the developer sees fit.&nbsp;<\\/span><\\/li><li><span style=\\\"font-family: Lato, system-ui, BlinkMacSystemFont, -apple-system, Roboto, &quot;Segoe UI&quot;, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\\\">They can be nested and repeated.&nbsp;<\\/span><\\/li><li><span style=\\\"font-family: Lato, system-ui, BlinkMacSystemFont, -apple-system, Roboto, &quot;Segoe UI&quot;, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\\\">Slices can contain PHP, Laravel blade syntax, and VueJS syntax.<\\/span><\\/li><\\/ul><span style=\\\"font-family: Lato, system-ui, BlinkMacSystemFont, -apple-system, Roboto, &quot;Segoe UI&quot;, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\\\"><span style=\\\"font-family: Lato, system-ui, BlinkMacSystemFont, -apple-system, Roboto, &quot;Segoe UI&quot;, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\\\"><br><\\/span>Because slices are simply VueJS components when rendered on the page you can do all sorts of amazing dynamic things in your application. You can also embed VueJS single file components in slices with no additional setup. Check out this simple demo by clicking on the circles to the right. And if you login you can use dynamic fields to manipulate those VueJS components using simple props.<\\/span><br><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"label\":\"Copy\",\"type\":\"wysiwyg\"}',0,'2019-04-04 19:17:44','2019-04-15 13:56:22'),
	(156,47,'circleSize','{\"text\":50,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"label\":\"Circle Size\",\"type\":\"number\",\"default\":{\"text\":50}}',0,'2019-04-04 19:17:44','2019-04-04 19:25:21'),
	(164,51,'image','{\"text\":null,\"url\":\"\\/storage\\/styled\\/devisephp.test\\/ui\\/sunrise-1024-1024-5979a97afa4141db9bd8e3824d856f171555373265.png\",\"media\":{\"original\":\"\\/storage\\/media\\/ui\\/sunrise.png\",\"orig_optimized\":\"\\/storage\\/styled\\/devisephp.test\\/ui\\/sunrise-1024-1024-5979a97afa4141db9bd8e3824d856f171555373265.png\"},\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"mode\":\"media\",\"alt\":null,\"settings\":{\"q\":80,\"fit\":\"crop\",\"sharp\":5,\"w\":1024,\"h\":1024},\"type\":\"image\",\"label\":\"Background Image\",\"default\":{\"url\":\"\\/imgs\\/backgrounds\\/red-blur.jpg\"}}',0,'2019-04-04 19:27:20','2019-04-16 00:08:05'),
	(165,52,'alignment','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"center\",\"options\":{\"left\":\"Left\",\"center\":\"Center\",\"right\":\"Right\"},\"type\":\"select\",\"label\":\"Alignment\",\"default\":{\"value\":\"left\"}}',0,'2019-04-04 19:27:20','2019-04-06 15:04:37'),
	(166,52,'desktopSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"md:w-1\\/2\",\"options\":{\"md:w-1\\/2\":\"1\\/2\",\"md:w-2\\/3\":\"2\\/3\",\"md:w-4\\/5\":\"4\\/5\",\"md:w-full\":\"Full\"},\"type\":\"select\",\"label\":\"Desktop Size\",\"default\":{\"value\":\"md:w-2\\/3\"}}',0,'2019-04-04 19:27:20','2019-04-06 15:04:37'),
	(167,52,'title','{\"text\":\"Ready for a test drive?\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Title\",\"default\":{\"enabled\":true}}',0,'2019-04-04 19:27:20','2019-04-06 15:04:37'),
	(168,52,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"h1\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"h1\"}}',0,'2019-04-04 19:27:20','2019-04-06 15:04:37'),
	(169,52,'copy','{\"text\":\"<p>The best way for you to understand Devise is to just play with a demo? This page is built in Devise so what better way for you to play then by logging in and messing with the editor right here? You won\\u2019t be able to save, but you can reorder slices, insert new slices, and edit fields. This will give you a much better idea on the CMS\\u2019 end result. Additionally, check out this site\\u2019s <\\/span><a href=\\\"https:\\/\\/github.com\\/devise\\/marketing\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; text-decoration-skip-ink: none; vertical-align: baseline;\\\">source code<\\/span><\\/a><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">. You can even download it, install the database, and play with the full version in your development environment.<\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-04-04 19:27:20','2019-04-15 13:57:16'),
	(170,2,'newButton','{\"text\":null,\"url\":null,\"media\":[],\"target\":\"_self\",\"color\":null,\"checked\":null,\"enabled\":false,\"enabler\":true,\"href\":null,\"label\":\"New Button\",\"type\":\"link\"}',0,'2019-04-06 15:04:37','2019-04-15 13:18:24'),
	(174,55,'link','{\"text\":\"Start The Demo\",\"url\":\"#\",\"media\":[],\"target\":\"_self\",\"color\":null,\"checked\":null,\"enabled\":null,\"href\":\"#\",\"routeName\":null,\"mode\":\"url\",\"label\":\"Link\",\"type\":\"link\"}',0,'2019-04-08 12:46:15','2019-04-08 12:55:40'),
	(175,55,'backgroundColor','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"rgba(253,238,63,1)\",\"checked\":null,\"enabled\":null,\"label\":\"Background Color\",\"type\":\"color\"}',0,'2019-04-08 12:46:15','2019-04-08 12:46:15'),
	(176,55,'color','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"rgba(0,0,0,1)\",\"checked\":null,\"enabled\":null,\"label\":\"Text Color\",\"type\":\"color\"}',0,'2019-04-08 12:46:15','2019-04-08 12:46:15'),
	(177,31,'alignContentCenter','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"label\":\"Align Content Center\",\"type\":\"checkbox\"}',0,'2019-04-08 12:48:07','2019-04-08 12:48:07'),
	(178,38,'alignContentCenter','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"label\":\"Align Content Center\",\"type\":\"checkbox\"}',0,'2019-04-08 12:48:07','2019-04-08 12:48:07'),
	(179,54,'alignContentCenter','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":true,\"enabled\":false,\"label\":\"Align Content Center\",\"type\":\"checkbox\"}',0,'2019-04-08 12:48:07','2019-04-08 12:48:07'),
	(205,65,'alignContentCenter','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":false,\"enabled\":null,\"label\":\"Align Content Center\",\"type\":\"checkbox\"}',0,'2019-04-08 12:53:54','2019-04-08 12:53:54'),
	(206,66,'alignment','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"center\",\"options\":{\"left\":\"Left\",\"center\":\"Center\",\"right\":\"Right\"},\"type\":\"select\",\"label\":\"Alignment\",\"default\":{\"value\":\"left\"}}',0,'2019-04-08 12:53:54','2019-04-08 12:55:40'),
	(207,66,'desktopSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"md:w-2\\/3\",\"options\":{\"md:w-1\\/2\":\"1\\/2\",\"md:w-2\\/3\":\"2\\/3\",\"md:w-4\\/5\":\"4\\/5\",\"md:w-full\":\"Full\"},\"type\":\"select\",\"label\":\"Desktop Size\",\"default\":{\"value\":\"md:w-2\\/3\"}}',0,'2019-04-08 12:53:54','2019-04-08 12:55:40'),
	(208,66,'title','{\"text\":\"Open Source Now and Forever\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Title\",\"default\":{\"enabled\":true}}',0,'2019-04-08 12:53:54','2019-04-08 12:55:40'),
	(209,66,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"h1\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"h1\"}}',0,'2019-04-08 12:53:54','2019-04-08 12:55:40'),
	(210,66,'copy','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-04-08 12:53:54','2019-04-15 13:58:15'),
	(211,67,'alignment','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"center\",\"options\":{\"left\":\"Left\",\"center\":\"Center\",\"right\":\"Right\"},\"type\":\"select\",\"label\":\"Alignment\",\"default\":{\"value\":\"left\"}}',0,'2019-04-08 12:53:54','2019-04-08 12:55:40'),
	(212,67,'desktopSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"md:w-2\\/3\",\"options\":{\"md:w-1\\/2\":\"1\\/2\",\"md:w-2\\/3\":\"2\\/3\",\"md:w-4\\/5\":\"4\\/5\",\"md:w-full\":\"Full\"},\"type\":\"select\",\"label\":\"Desktop Size\",\"default\":{\"value\":\"md:w-2\\/3\"}}',0,'2019-04-08 12:53:54','2019-04-08 12:55:40'),
	(213,67,'title','{\"text\":\"Built on the Worlds Best Frameworks\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Title\",\"default\":{\"enabled\":true}}',0,'2019-04-08 12:53:54','2019-04-08 12:55:40'),
	(214,67,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"h3\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"h1\"}}',0,'2019-04-08 12:53:54','2019-04-08 12:55:40'),
	(215,67,'copy','{\"text\":\"<p>As hard as we have worked on Devise it is truly resting on the shoulders of giants. Both Laravel and VueJS have changed the way we have worked over the last 7+ years. Their contributors have been so generous to the community and in that vein we promise to keep the core of Devise free and open now and forever.<\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-04-08 12:53:54','2019-04-15 13:58:15'),
	(216,69,'alignContentCenter','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":true,\"enabled\":null,\"label\":\"Align Content Center\",\"type\":\"checkbox\"}',0,'2019-04-08 12:53:54','2019-04-08 12:53:54'),
	(217,70,'lazy','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":false,\"enabled\":null,\"label\":\"Responsive?\",\"type\":\"checkbox\",\"default\":{\"checked\":true}}',0,'2019-04-08 12:53:54','2019-04-08 12:53:54'),
	(218,70,'image','{\"text\":null,\"url\":\"\\/storage\\/styled\\/devisephp.test\\/logos\\/laravel-logo-258-187-994cde2f610205aa15296b2af8eda66f1554727988.jpg\",\"media\":{\"original\":\"\\/storage\\/media\\/logos\\/laravel-logo.jpg\",\"orig_optimized\":\"\\/storage\\/styled\\/devisephp.test\\/logos\\/laravel-logo-258-187-994cde2f610205aa15296b2af8eda66f1554727988.jpg\",\"large\":\"\\/storage\\/styled\\/devisephp.test\\/logos\\/laravel-logo-800-400-0aba653457d71ae3a70649bac153cd041554727988.jpg\",\"small\":\"\\/storage\\/styled\\/devisephp.test\\/logos\\/laravel-logo-400-300-cc13a6f118289f489129e177e65fa4581554727988.jpg\"},\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"sizes\":{\"large\":{\"w\":800,\"h\":400,\"breakpoints\":[\"desktop\",\"largeDesktop\",\"ultraWideDesktop\"]},\"small\":{\"w\":400,\"h\":300,\"breakpoints\":[\"tablet\",\"mobile\"]}},\"mode\":\"media\",\"alt\":null,\"settings\":{\"q\":80,\"fit\":\"crop\",\"sharp\":5,\"w\":258,\"h\":187},\"label\":\"The image\",\"type\":\"image\"}',0,'2019-04-08 12:53:54','2019-04-08 12:55:40'),
	(219,71,'alignment','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"center\",\"options\":{\"left\":\"Left\",\"center\":\"Center\",\"right\":\"Right\"},\"type\":\"select\",\"label\":\"Alignment\",\"default\":{\"value\":\"left\"}}',0,'2019-04-08 12:57:58','2019-04-15 13:18:24'),
	(220,71,'desktopSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"md:w-2\\/3\",\"options\":{\"md:w-1\\/2\":\"1\\/2\",\"md:w-2\\/3\":\"2\\/3\",\"md:w-4\\/5\":\"4\\/5\",\"md:w-full\":\"Full\"},\"type\":\"select\",\"label\":\"Desktop Size\",\"default\":{\"value\":\"md:w-2\\/3\"}}',0,'2019-04-08 12:57:58','2019-04-15 13:18:24'),
	(221,71,'title','{\"text\":\"Laravel\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Title\",\"default\":{\"enabled\":true}}',0,'2019-04-08 12:57:58','2019-04-15 13:18:24'),
	(222,71,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"h2\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"h1\"}}',0,'2019-04-08 12:57:58','2019-04-15 13:18:24'),
	(223,71,'copy','{\"text\":\"We have been using Laravel for many years (we believe our first version was version 2 in 2011) and it is a staple of nearly all the projects our team uses for the web. It is used in small to enterprise projects around the world and has become one of the world\\u2019s most popular open source frameworks.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-04-08 12:57:58','2019-04-15 13:58:15'),
	(232,75,'alignContentCenter','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":true,\"enabled\":null,\"label\":\"Align Content Center\",\"type\":\"checkbox\"}',0,'2019-04-15 14:00:44','2019-04-15 14:00:44'),
	(233,76,'lazy','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":false,\"enabled\":null,\"label\":\"Responsive?\",\"type\":\"checkbox\",\"default\":{\"checked\":true}}',0,'2019-04-15 14:00:44','2019-04-15 14:00:44'),
	(234,76,'image','{\"text\":null,\"url\":\"\\/storage\\/styled\\/devisephp.test\\/logos\\/vue-logo-258-187-994cde2f610205aa15296b2af8eda66f1555336722.jpg\",\"media\":{\"original\":\"\\/storage\\/media\\/logos\\/vue-logo.jpg\",\"orig_optimized\":\"\\/storage\\/styled\\/devisephp.test\\/logos\\/vue-logo-258-187-994cde2f610205aa15296b2af8eda66f1555336722.jpg\",\"large\":\"\\/storage\\/styled\\/devisephp.test\\/logos\\/vue-logo-800-400-0aba653457d71ae3a70649bac153cd041555336722.jpg\",\"small\":\"\\/storage\\/styled\\/devisephp.test\\/logos\\/vue-logo-400-300-cc13a6f118289f489129e177e65fa4581555336722.jpg\"},\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"sizes\":{\"large\":{\"w\":800,\"h\":400,\"breakpoints\":[\"desktop\",\"largeDesktop\",\"ultraWideDesktop\"]},\"small\":{\"w\":400,\"h\":300,\"breakpoints\":[\"tablet\",\"mobile\"]}},\"mode\":\"media\",\"alt\":null,\"settings\":{\"q\":80,\"fit\":\"crop\",\"sharp\":5,\"w\":258,\"h\":187},\"label\":\"The image\",\"type\":\"image\"}',0,'2019-04-15 14:00:44','2019-04-15 14:00:44'),
	(235,77,'alignment','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"center\",\"options\":{\"left\":\"Left\",\"center\":\"Center\",\"right\":\"Right\"},\"type\":\"select\",\"label\":\"Alignment\",\"default\":{\"value\":\"left\"}}',0,'2019-04-15 14:00:44','2019-04-15 14:00:44'),
	(236,77,'desktopSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"md:w-2\\/3\",\"options\":{\"md:w-1\\/2\":\"1\\/2\",\"md:w-2\\/3\":\"2\\/3\",\"md:w-4\\/5\":\"4\\/5\",\"md:w-full\":\"Full\"},\"type\":\"select\",\"label\":\"Desktop Size\",\"default\":{\"value\":\"md:w-2\\/3\"}}',0,'2019-04-15 14:00:44','2019-04-15 14:00:44'),
	(237,77,'title','{\"text\":\"VueJS\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Title\",\"default\":{\"enabled\":true}}',0,'2019-04-15 14:00:44','2019-04-15 14:00:44'),
	(238,77,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"h2\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"h1\"}}',0,'2019-04-15 14:00:44','2019-04-15 14:00:44'),
	(239,77,'copy','{\"text\":\"Although VueJS has only been available for about 5 years it has exploded in popularity and easily stands among the top 3 JavaScript frameworks. Though React and Angular are backed by major companies (Facebook and Google) Vue is backed by a strong community and an amazing pack of developers. It\\u2019s ease of use, low cost of entry to learn, and strong ties to the Laravel community make it the prime choice for Devise so that we can service the most number of developers.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-04-15 14:00:44','2019-04-15 14:00:44'),
	(240,28,'alignTop','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":false,\"enabled\":false,\"type\":\"checkbox\",\"label\":\"Align Top\",\"default\":{\"checked\":false}}',0,'2019-04-15 14:00:53','2019-04-15 14:00:53'),
	(241,68,'alignTop','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":true,\"enabled\":false,\"type\":\"checkbox\",\"label\":\"Align Top\",\"default\":{\"checked\":false}}',0,'2019-04-15 14:00:53','2019-04-15 14:00:53'),
	(242,78,'showModel','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"key\":\"Key\",\"dumpster\":\"Dumpster\",\"toolchest\":\"Tool Chest\"},\"value\":\"key\",\"type\":\"select\",\"label\":\"Show Model\",\"default\":{\"value\":\"key\"}}',0,'2019-04-16 00:08:05','2019-04-16 00:13:58'),
	(243,78,'showGrid','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":false,\"enabled\":false,\"type\":\"checkbox\",\"label\":\"Show Grid\",\"default\":{\"checked\":false}}',0,'2019-04-16 00:08:05','2019-04-16 00:08:05'),
	(244,78,'enableControls','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":false,\"enabled\":false,\"instructions\":\"Allows you to move around the model with your mouse\",\"type\":\"checkbox\",\"label\":\"Enable Controls\",\"default\":{\"checked\":false}}',0,'2019-04-16 00:08:05','2019-04-16 00:13:59'),
	(245,78,'showLightHelpers','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":false,\"enabled\":false,\"type\":\"checkbox\",\"label\":\"Show Light Helpers\",\"default\":{\"checked\":false}}',0,'2019-04-16 00:08:05','2019-04-16 00:08:05'),
	(246,78,'ambientLightColor','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#404040\",\"checked\":null,\"enabled\":false,\"type\":\"color\",\"label\":\"Ambient Lighting Color\",\"default\":{\"color\":\"#404040\"}}',0,'2019-04-16 00:08:05','2019-04-16 00:08:05');

/*!40000 ALTER TABLE `dvs_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_languages`;

CREATE TABLE `dvs_languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_languages` WRITE;
/*!40000 ALTER TABLE `dvs_languages` DISABLE KEYS */;

INSERT INTO `dvs_languages` (`id`, `code`, `created_at`, `updated_at`)
VALUES
	(1,'en','2019-04-01 13:49:38','2019-04-01 13:49:38');

/*!40000 ALTER TABLE `dvs_languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_page_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_page_meta`;

CREATE TABLE `dvs_page_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvs_page_meta_page_id_index` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table dvs_page_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_page_versions`;

CREATE TABLE `dvs_page_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starts_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `ab_testing_amount` int(11) NOT NULL DEFAULT '0',
  `preview_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvs_page_versions_page_id_index` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_page_versions` WRITE;
/*!40000 ALTER TABLE `dvs_page_versions` DISABLE KEYS */;

INSERT INTO `dvs_page_versions` (`id`, `page_id`, `name`, `layout`, `starts_at`, `ends_at`, `ab_testing_amount`, `preview_hash`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,'Default','main','2019-04-01 13:49:51',NULL,0,NULL,'2019-04-01 13:49:51','2019-04-16 00:13:59',NULL),
	(2,2,'Default','main','2019-04-04 20:13:24',NULL,0,NULL,'2019-04-04 20:13:24','2019-04-04 20:13:24',NULL);

/*!40000 ALTER TABLE `dvs_page_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_pages`;

CREATE TABLE `dvs_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `language_id` int(11) NOT NULL,
  `translated_from_page_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci,
  `middleware` text COLLATE utf8mb4_unicode_ci,
  `ab_testing_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `route_site_unique` (`route_name`,`site_id`),
  KEY `dvs_pages_site_id_index` (`site_id`),
  KEY `dvs_pages_language_id_index` (`language_id`),
  KEY `dvs_pages_translated_from_page_id_index` (`translated_from_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_pages` WRITE;
/*!40000 ALTER TABLE `dvs_pages` DISABLE KEYS */;

INSERT INTO `dvs_pages` (`id`, `site_id`, `language_id`, `translated_from_page_id`, `title`, `route_name`, `slug`, `meta_title`, `canonical`, `head`, `footer`, `middleware`, `ab_testing_enabled`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,1,0,'Homepage','homepage','/','DevisePHP | Content Management Solution',NULL,NULL,NULL,'web',0,'2019-04-03 10:03:05','2019-04-16 00:13:59',NULL),
	(2,1,1,0,'Demo Page','en-demo-page','/about-us','Demo Page',NULL,NULL,NULL,'web',0,'2019-04-04 20:13:24','2019-04-04 20:13:24',NULL);

/*!40000 ALTER TABLE `dvs_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_redirects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_redirects`;

CREATE TABLE `dvs_redirects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL DEFAULT '301',
  `from_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvs_redirects_site_id_index` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table dvs_releases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_releases`;

CREATE TABLE `dvs_releases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int(10) unsigned NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msh_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model_id_name` (`model_id`,`model_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table dvs_site_language
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_site_language`;

CREATE TABLE `dvs_site_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `language_id` bigint(20) unsigned NOT NULL,
  `default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvs_site_element_element_type_element_id_index` (`language_id`),
  KEY `dvs_site_element_site_id_index` (`site_id`),
  KEY `dvs_site_element_element_id_index` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_site_language` WRITE;
/*!40000 ALTER TABLE `dvs_site_language` DISABLE KEYS */;

INSERT INTO `dvs_site_language` (`id`, `site_id`, `language_id`, `default`, `created_at`, `updated_at`)
VALUES
	(1,1,1,1,'2019-04-01 13:49:38','2019-04-01 13:49:38');

/*!40000 ALTER TABLE `dvs_site_language` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_sites`;

CREATE TABLE `dvs_sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_queries` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_sites` WRITE;
/*!40000 ALTER TABLE `dvs_sites` DISABLE KEYS */;

INSERT INTO `dvs_sites` (`id`, `name`, `domain`, `settings`, `model_queries`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Devise Marketing','devisephp.test','','',NULL,NULL,NULL);

/*!40000 ALTER TABLE `dvs_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_slice_instances
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_slice_instances`;

CREATE TABLE `dvs_slice_instances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_version_id` int(11) NOT NULL,
  `parent_instance_id` int(11) NOT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_query` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvs_slice_instances_page_version_id_index` (`page_version_id`),
  KEY `dvs_slice_instances_parent_instance_id_index` (`parent_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_slice_instances` WRITE;
/*!40000 ALTER TABLE `dvs_slice_instances` DISABLE KEYS */;

INSERT INTO `dvs_slice_instances` (`id`, `page_version_id`, `parent_instance_id`, `view`, `label`, `position`, `settings`, `model_query`, `created_at`, `updated_at`)
VALUES
	(1,1,0,'slices.heroes.static-hero','Static Hero',0,'{\"enabled\":true}','','2019-04-03 15:27:05','2019-04-03 23:50:32'),
	(2,1,0,'slices.copy.page-introduction','Introduction',1,'{\"enabled\":true}','','2019-04-03 20:49:28','2019-04-15 13:18:35'),
	(3,1,26,'slices.copy.copy-with-child-slices','Copy With Child Slices',3,'{\"enabled\":true}','','2019-04-04 00:22:56','2019-04-15 13:51:34'),
	(11,1,3,'slices.features.feature-summary','Feature Summary',4,'{\"enabled\":true}','','2019-04-04 01:22:53','2019-04-04 13:22:56'),
	(12,1,3,'slices.features.feature-summary','Feature Summary',5,'{\"enabled\":true}','','2019-04-04 01:22:53','2019-04-04 13:22:56'),
	(13,1,3,'slices.features.feature-summary','Feature Summary',6,'{\"enabled\":true}','','2019-04-04 01:22:53','2019-04-04 13:22:56'),
	(14,1,3,'slices.features.feature-summary','Feature Summary',7,'{\"enabled\":true}','','2019-04-04 01:22:53','2019-04-04 13:22:56'),
	(15,1,3,'slices.features.feature-summary','Feature Summary',8,'{\"enabled\":true}','','2019-04-04 01:22:53','2019-04-04 13:22:56'),
	(16,1,3,'slices.features.feature-summary','Feature Summary',9,'{\"enabled\":true}','','2019-04-04 01:22:53','2019-04-04 13:22:56'),
	(17,1,3,'slices.features.feature-summary','Feature Summary',10,'{\"enabled\":true}','','2019-04-04 01:22:53','2019-04-04 13:22:56'),
	(18,1,3,'slices.features.feature-summary','Feature Summary',11,'{\"enabled\":true}','','2019-04-04 01:48:24','2019-04-04 13:22:56'),
	(19,1,3,'slices.features.feature-summary','Feature Summary',12,'{\"enabled\":true}','','2019-04-04 01:48:24','2019-04-04 13:22:56'),
	(22,1,0,'slices.backgrounds.background-image','Background Image',13,'{\"enabled\":true}','','2019-04-04 02:08:41','2019-04-04 13:22:56'),
	(26,1,0,'slices.backgrounds.background-gradient','Background Gradient',2,'{\"enabled\":true}','','2019-04-04 13:24:46','2019-04-04 13:24:46'),
	(28,1,22,'slices.layouts.two-columns','Two Columns',15,'{\"enabled\":true}','','2019-04-04 13:55:22','2019-04-15 14:00:53'),
	(31,1,28,'slices.layouts.slices-container','Slices Container',16,'{\"enabled\":true}','','2019-04-04 13:56:37','2019-04-08 12:48:07'),
	(32,1,31,'slices.copy.aligned-title-paragraph','Aligned Title Paragraph',17,'{\"enabled\":true}','','2019-04-04 13:56:38','2019-04-15 13:54:16'),
	(35,1,22,'slices.copy.aligned-title-paragraph','Aligned Title Paragraph',14,'{\"enabled\":true,\"margin\":[],\"padding\":{\"top\":\"100\"}}','','2019-04-04 13:59:04','2019-04-15 13:52:48'),
	(38,1,28,'slices.layouts.slices-container','Slices Container',20,'{\"enabled\":true}','','2019-04-04 14:42:39','2019-04-08 12:48:07'),
	(39,1,38,'slices.images.image','Image',21,'{\"enabled\":true,\"margin\":{\"bottom\":\"100\"},\"padding\":[]}','','2019-04-04 14:42:39','2019-04-04 19:17:44'),
	(44,1,31,'slices.copy.aligned-title-paragraph','Aligned Title Paragraph',18,'{\"enabled\":true}','','2019-04-04 15:00:47','2019-04-15 13:54:57'),
	(45,1,31,'slices.copy.aligned-title-paragraph','Aligned Title Paragraph',19,'{\"enabled\":true}','','2019-04-04 15:00:47','2019-04-15 13:54:16'),
	(46,1,38,'slices.images.image','Image',22,'{\"enabled\":true}','','2019-04-04 15:00:47','2019-04-04 19:17:44'),
	(47,1,0,'slices.toys.color-swapper-demo','Color Swapper Demo',23,'{\"enabled\":true}','','2019-04-04 19:11:20','2019-04-15 13:56:22'),
	(51,1,0,'slices.backgrounds.background-image','Background Image',24,'{\"enabled\":true,\"margin\":[],\"padding\":{\"bottom\":\"50\"}}','','2019-04-04 19:27:20','2019-04-16 00:08:05'),
	(52,1,51,'slices.copy.aligned-title-paragraph','Aligned Title Paragraph',26,'{\"margin\":[],\"padding\":{\"top\":\"0\"}}','','2019-04-04 19:27:20','2019-04-16 00:13:59'),
	(54,1,51,'slices.layouts.slices-container','Slices Container',27,'{\"enabled\":true}','','2019-04-08 12:46:15','2019-04-15 14:36:37'),
	(55,1,54,'slices.buttons.button','Button',28,'{\"enabled\":true}','','2019-04-08 12:46:15','2019-04-15 14:36:37'),
	(65,1,0,'slices.layouts.slices-container','Slices Container',29,'{\"enabled\":true,\"margin\":[],\"padding\":{\"top\":\"50\",\"bottom\":\"50\"},\"backgroundColor\":\"rgba(18,18,18,1)\"}','','2019-04-08 12:53:54','2019-04-15 14:36:37'),
	(66,1,65,'slices.copy.aligned-title-paragraph','Aligned Title Paragraph',30,'{\"enabled\":true,\"backgroundColor\":\"rgba(18,18,18,1)\"}','','2019-04-08 12:53:54','2019-04-15 14:36:37'),
	(67,1,65,'slices.copy.aligned-title-paragraph','Aligned Title Paragraph',31,'{\"enabled\":true,\"backgroundColor\":\"rgba(18,18,18,1)\"}','','2019-04-08 12:53:54','2019-04-15 14:36:37'),
	(68,1,65,'slices.layouts.two-columns','Two Columns',32,'{\"enabled\":true,\"backgroundColor\":\"rgba(18,18,18,1)\"}','','2019-04-08 12:53:54','2019-04-15 14:36:37'),
	(69,1,68,'slices.layouts.slices-container','Slices Container',33,'{\"enabled\":true}','','2019-04-08 12:53:54','2019-04-15 14:36:37'),
	(70,1,69,'slices.images.image','Image',34,'{\"enabled\":true,\"backgroundColor\":\"rgba(18,18,18,1)\"}','','2019-04-08 12:53:54','2019-04-15 14:36:37'),
	(71,1,69,'slices.copy.aligned-title-paragraph','Aligned Title Paragraph',35,'{\"enabled\":true}','','2019-04-08 12:57:58','2019-04-15 14:36:37'),
	(75,1,68,'slices.layouts.slices-container','Slices Container',36,'{\"enabled\":true}','','2019-04-15 14:00:44','2019-04-15 14:36:37'),
	(76,1,75,'slices.images.image','Image',37,'{\"enabled\":true,\"backgroundColor\":\"rgba(18,18,18,1)\"}','','2019-04-15 14:00:44','2019-04-15 14:36:37'),
	(77,1,75,'slices.copy.aligned-title-paragraph','Aligned Title Paragraph',38,'{\"enabled\":true}','','2019-04-15 14:00:44','2019-04-15 14:36:37'),
	(78,1,51,'slices.3d.key','Key',25,'{\"enabled\":true}','','2019-04-15 14:36:37','2019-04-16 00:13:59');

/*!40000 ALTER TABLE `dvs_slice_instances` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2018_02_02_042645_create_dvs_pages',1),
	(4,'2018_02_02_042652_create_dvs_page_versions',1),
	(5,'2018_02_02_044953_create_dvs_sites',1),
	(6,'2018_02_02_050341_create_dvs_languages',1),
	(7,'2018_02_02_185007_create_dvs_slice_instances',1),
	(8,'2018_02_05_185147_create_dvs_fields',1),
	(9,'2018_02_06_204752_create_dvs_media',1),
	(10,'2018_02_07_002928_create_dvs_site_elements',1),
	(11,'2018_02_07_160931_create_dvs_templates',1),
	(12,'2018_02_14_205443_create_dvs_meta',1),
	(13,'2018_03_06_153655_create_dvs_redirects',1),
	(14,'2018_03_08_121856_create_dvs_template_slices',1),
	(15,'2018_04_23_145714_create_dvs_releases',1),
	(16,'2018_05_29_103724_create_dvs_changes',1),
	(17,'2018_06_20_134103_drop_site_slug_unique_index',1),
	(18,'2018_07_24_162758_alter_dvs_slice_instances_add_settings_drop_enabled',1),
	(19,'2018_07_26_142430_alter_dvs_sites_add_model_queries',1),
	(20,'2018_08_15_190218_move_template_slices_to_slice_instances',1),
	(21,'2018_08_15_202349_drop_templates',1),
	(22,'2018_08_21_184509_alter_pages_unique_index',1),
	(23,'2018_08_21_225543_drop_dvs_media',1),
	(24,'2018_08_21_225617_change_site_elements_to_site_language',1),
	(25,'2018_09_12_135605_alter_dvs_slice_instances_drop_type',1),
	(26,'2019_01_09_123718_alter_dvs_pages_add_meta_title',1),
	(27,'2019_01_09_124031_alter_dvs_page_meta_add_site_id',1),
	(28,'2019_01_21_160034_create_permission_tables',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table model_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_permissions`;

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`)
VALUES
	(1,'App\\User',1);

/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table model_has_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_roles`;

CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`)
VALUES
	(1,'access admin','web','2019-04-03 14:13:13','2019-04-03 14:13:13'),
	(2,'manage pages','web','2019-04-03 14:13:13','2019-04-03 14:13:13'),
	(3,'manage slices','web','2019-04-03 14:13:13','2019-04-03 14:13:13'),
	(4,'manage users','web','2019-04-03 14:13:13','2019-04-03 14:13:13'),
	(5,'manage mothership','web','2019-04-03 14:13:13','2019-04-03 14:13:13'),
	(6,'manage settings','web','2019-04-03 14:13:13','2019-04-03 14:13:13'),
	(7,'manage meta','web','2019-04-03 14:13:13','2019-04-03 14:13:13'),
	(8,'manage sites','web','2019-04-03 14:13:13','2019-04-03 14:13:13'),
	(9,'manage languages','web','2019-04-03 14:13:13','2019-04-03 14:13:13'),
	(10,'manage redirects','web','2019-04-03 14:13:13','2019-04-03 14:13:13');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table role_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(1,2),
	(2,2),
	(3,2),
	(4,2),
	(5,2),
	(6,2),
	(7,2),
	(8,2),
	(9,2),
	(10,2),
	(1,3),
	(3,3);

/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`)
VALUES
	(1,'Developer','web','2019-04-03 14:13:13','2019-04-03 14:13:13'),
	(2,'Administrator','web','2019-04-03 14:13:14','2019-04-03 14:13:14'),
	(3,'Editor','web','2019-04-03 14:13:14','2019-04-03 14:13:14');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Gary','gary@lbm.co','2019-04-03 09:39:12','$2y$10$V0ongGkek/HzXyoDhMYl8eYuV3s6HWGVzj/o73dpkgCNCtomHaQDC','OcdmBMwa4vGmxRJsTlHOSk3qCzNgDZh4ikantXBLQ19VjzBRG84hs6EmmAbZ','2019-04-03 09:39:12','2019-04-03 09:39:12');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
