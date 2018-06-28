# --- WireDatabaseBackup {"time":"2018-06-28 12:01:05","user":"","dbName":"155391-guideklm","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '160');

DROP TABLE IF EXISTS `field_audiofiles`;
CREATE TABLE `field_audiofiles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `tags` varchar(250) NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`),
  FULLTEXT KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1020', 'kalltkrig-ty-5.mp3', '2', '[\"\"]', '2018-06-01 12:23:46', '2018-06-01 12:23:46', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1021', 'kalla-kriget-6_copy.mp3', '1', '[\"\"]', '2018-05-22 14:07:41', '2018-05-22 14:07:41', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1031', 'kronan-ty-1.mp3', '2', '[\"\"]', '2018-06-01 13:39:50', '2018-06-01 13:39:50', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1035', 'kronan-ty-2.mp3', '2', '[\"\"]', '2018-06-01 13:40:03', '2018-06-01 13:40:03', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1036', 'kronan-ty-3.mp3', '2', '[\"\"]', '2018-06-01 13:40:13', '2018-06-01 13:40:13', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1037', 'kronan-ty-4.mp3', '2', '[\"\"]', '2018-06-01 13:40:24', '2018-06-01 13:40:24', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1020', 'kalla-kriget-5_copy.mp3', '1', '[\"\"]', '2018-05-22 14:07:30', '2018-05-22 14:07:30', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1017', 'kalla-kriget-2_copy.mp3', '1', '[\"\"]', '2018-05-22 14:06:52', '2018-05-22 14:06:52', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1016', 'kalla-kriget-1_copy.mp3', '1', '[\"\"]', '2018-05-22 14:06:39', '2018-05-22 14:06:39', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1022', 'kalltkrig-ty-7.mp3', '2', '[\"\"]', '2018-06-01 12:24:09', '2018-06-01 12:24:09', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1018', 'kalla-kriget-3_copy.mp3', '1', '[\"\"]', '2018-05-22 14:07:06', '2018-05-22 14:07:06', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1018', 'kalltkrig-ty-3.mp3', '2', '[\"\"]', '2018-06-01 12:23:23', '2018-06-01 12:23:23', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1019', 'kalla-kriget-4_copy.mp3', '1', '[\"\"]', '2018-05-22 14:07:20', '2018-05-22 14:07:20', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1019', 'kalltkrig-ty-4.mp3', '2', '[\"\"]', '2018-06-01 12:23:33', '2018-06-01 12:23:33', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1022', 'kalla-kriget-7_copy.mp3', '1', '[\"\"]', '2018-05-22 14:07:51', '2018-05-22 14:07:51', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1038', 'kronan-ty-5.mp3', '2', '[\"\"]', '2018-06-01 13:40:33', '2018-06-01 13:40:33', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1034', 'kalla-kriget-8_copy.mp3', '1', '[\"\"]', '2018-05-22 14:08:01', '2018-05-22 14:08:01', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1039', 'kronan-ty-6.mp3', '2', '[\"\"]', '2018-06-01 13:40:45', '2018-06-01 13:40:45', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1040', 'kronan-ty-7.mp3', '2', '[\"\"]', '2018-06-01 13:40:56', '2018-06-01 13:40:56', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1041', 'kronan-ty-8.mp3', '2', '[\"\"]', '2018-06-01 13:41:10', '2018-06-01 13:41:10', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1016', 'cold-war-1_copy.mp3', '0', '[\"\"]', '2018-05-22 13:10:07', '2018-05-22 13:10:07', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1016', 'kalltkrig-ty-1.mp3', '2', '[\"\"]', '2018-06-01 12:22:55', '2018-06-01 12:22:55', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1017', 'cold-war-2_copy.mp3', '0', '[\"\"]', '2018-05-22 13:10:35', '2018-05-22 13:10:35', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1017', 'kalltkrig-ty-2.mp3', '2', '[\"\"]', '2018-06-01 12:23:09', '2018-06-01 12:23:09', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1018', 'cold-war-3_copy.mp3', '0', '[\"\"]', '2018-05-22 13:10:48', '2018-05-22 13:10:48', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1019', 'cold-war-4_copy.mp3', '0', '[\"\"]', '2018-05-22 13:11:04', '2018-05-22 13:11:04', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1020', 'cold-war-5_copy.mp3', '0', '[\"\"]', '2018-05-22 13:11:16', '2018-05-22 13:11:16', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1021', 'cold-war-6_copy.mp3', '0', '[\"\"]', '2018-05-22 13:11:30', '2018-05-22 13:11:30', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1021', 'kalltkrig-ty-6.mp3', '2', '[\"\"]', '2018-06-01 12:23:58', '2018-06-01 12:23:58', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1022', 'cold-war-7_copy.mp3', '0', '[\"\"]', '2018-05-22 13:11:42', '2018-05-22 13:11:42', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1034', 'cold-war-8_copy.mp3', '0', '[\"\"]', '2018-05-22 13:11:54', '2018-05-22 13:11:54', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1034', 'kalltkrig-ty-8.mp3', '2', '[\"\"]', '2018-06-01 12:24:21', '2018-06-01 12:24:21', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1031', 'kronan-sv-1.mp3', '1', '[\"\"]', '2018-05-30 15:31:12', '2018-05-30 15:31:12', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1031', 'crown-1.mp3', '0', '[\"\"]', '2018-05-24 07:44:42', '2018-05-24 07:44:42', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1035', 'kronan-sv-2.mp3', '1', '[\"\"]', '2018-05-30 15:31:26', '2018-05-30 15:31:26', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1035', 'crown-2.mp3', '0', '[\"\"]', '2018-05-24 07:44:51', '2018-05-24 07:44:51', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1036', 'kronan-sv-3.mp3', '1', '[\"\"]', '2018-05-30 15:31:35', '2018-05-30 15:31:35', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1036', 'crown-3.mp3', '0', '[\"\"]', '2018-05-24 07:45:03', '2018-05-24 07:45:03', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1037', 'kronan-sv-4.mp3', '1', '[\"\"]', '2018-05-30 15:31:45', '2018-05-30 15:31:45', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1037', 'crown-4.mp3', '0', '[\"\"]', '2018-05-24 07:45:15', '2018-05-24 07:45:15', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1038', 'kronan-sv-5.mp3', '1', '[\"\"]', '2018-05-30 15:31:56', '2018-05-30 15:31:56', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1038', 'crown-5.mp3', '0', '[\"\"]', '2018-05-24 07:45:27', '2018-05-24 07:45:27', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1039', 'kronan-sv-6.mp3', '1', '[\"\"]', '2018-05-30 15:32:05', '2018-05-30 15:32:05', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1039', 'crown-6.mp3', '0', '[\"\"]', '2018-05-24 07:45:39', '2018-05-24 07:45:39', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1040', 'kronan-sv-7.mp3', '1', '[\"\"]', '2018-05-30 15:32:13', '2018-05-30 15:32:13', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1040', 'crown-7.mp3', '0', '[\"\"]', '2018-05-24 07:45:49', '2018-05-24 07:45:49', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1041', 'kronan-sv-8.mp3', '1', '[\"\"]', '2018-05-30 15:32:24', '2018-05-30 15:32:24', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1041', 'crown-8.mp3', '0', '[\"\"]', '2018-05-24 07:45:59', '2018-05-24 07:45:59', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1054', 'sandby-en-1.mp3', '2', '[\"\"]', '2018-06-13 12:40:37', '2018-06-13 12:40:37', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1055', 'sandby-en-2.mp3', '2', '[\"\"]', '2018-06-13 12:40:49', '2018-06-13 12:40:49', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1056', 'sandby-en-3.mp3', '2', '[\"\"]', '2018-06-13 12:41:01', '2018-06-13 12:41:01', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1057', 'sandby-en-4.mp3', '2', '[\"\"]', '2018-06-13 12:41:12', '2018-06-13 12:41:12', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1058', 'sandby-en-5.mp3', '2', '[\"\"]', '2018-06-13 12:41:23', '2018-06-13 12:41:23', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1059', 'sandby-en-6.mp3', '2', '[\"\"]', '2018-06-13 12:41:33', '2018-06-13 12:41:33', '', 'english');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1054', 'sandby-ty-1.mp3', '1', '[\"\"]', '2018-06-12 12:29:45', '2018-06-12 12:29:45', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1055', 'sandby-ty-2.mp3', '1', '[\"\"]', '2018-06-12 12:30:00', '2018-06-12 12:30:00', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1056', 'sandby-ty-3.mp3', '1', '[\"\"]', '2018-06-12 12:31:16', '2018-06-12 12:31:16', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1057', 'sandby-ty-4.mp3', '1', '[\"\"]', '2018-06-12 12:31:28', '2018-06-12 12:31:28', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1058', 'sandby-ty-5.mp3', '1', '[\"\"]', '2018-06-12 12:31:40', '2018-06-12 12:31:40', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1059', 'sandby-ty-6.mp3', '1', '[\"\"]', '2018-06-12 12:31:52', '2018-06-12 12:31:52', '', 'deutsch');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1054', 'sandby-sv-1.mp3', '0', '[\"\"]', '2018-06-07 13:32:25', '2018-06-07 13:32:25', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1055', 'sandby-sv-2.mp3', '0', '[\"\"]', '2018-06-07 13:33:29', '2018-06-07 13:33:29', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1056', 'sandby-sv-3.mp3', '0', '[\"\"]', '2018-06-07 13:34:19', '2018-06-07 13:34:19', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1057', 'sandby-sv-4.mp3', '0', '[\"\"]', '2018-06-07 13:35:04', '2018-06-07 13:35:04', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1058', 'sandby-sv-5.mp3', '0', '[\"\"]', '2018-06-07 13:35:49', '2018-06-07 13:35:49', '', 'default');
INSERT INTO `field_audiofiles` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1059', 'sandby-sv-6.mp3', '0', '[\"\"]', '2018-06-07 13:37:59', '2018-06-07 13:37:59', '', 'default');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1027` mediumtext,
  `data1028` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1027` (`data1027`),
  FULLTEXT KEY `data1028` (`data1028`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1016', '<p style=\"margin-left:0cm;margin-right:0cm;\">Välkommen till <em>På vakt mot supermakt – Kallt krig och varmt vardagsliv i Kalmar län 1946-1991. </em></p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Under kalla kriget befann vi oss mittemellan två kapprustande supermakter. Atomvapenhotet svävade över oss, liksom rädslan för ryssen. Samtidigt pågick ett vanligt vardagsliv i det framväxande folkhemmet. Här besöker du olika, tidstypiska miljöer där du tar del av länsbors minnen och erfarenheter från den här perioden. Vi berättar också om totalförsvarets verksamhet i länet – om sambandscentraler och minstationer, stora förråd och hemliga krigsplaner. Välkommen in, slå dig gärna ner i de olika rummen och upplev en tid som var här för inte så väldigt länge sedan. Börja gärna med att titta på filmen som tar dig med på en kronologisk tillbakablick till viktiga händelser under kalla krigets dagar.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Welcome to <em>In the Shadow of a Superpower – Cold War and Everyday Life in Kalmar County 1946–1991.</em></p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">During the Cold War, Sweden found itself between two rival superpowers. The threat of nuclear war loomed large, along with the fear of the Soviet army. But everyday life in post-Second World War Sweden carried on as normal. In this guide you’ll visit places typical of the time and share the memories and experiences of local residents from the period. You’ll also find out about the activities of Sweden’s defence forces in Kalmar County; about command and control centres, mine control stations, large military stores and secret war plans. Welcome. Feel free to take a seat in the different rooms and experience a time from not so very long ago. It’s best to start by watching the film, which takes a chronological look back at key events of the Cold War.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Willkommen in der Ausstellung <em>Auf Wacht vor der Supermacht – kalter Krieg und Alltagsleben in der Provinz Kalmar von 1946 bis 1991. </em></p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Im Kalten Krieg stand Schweden zwischen zwei wettrüstenden Supermächten. Die Bedrohung durch Kernwaffen war allgegenwärtig, wie auch die Angst vor den Russen. Gleichzeitig ging im florierenden Volksheim der Alltag seinen Gang. Hier sehen Sie zeittypische Räume mit Erinnerungen und Erfahrungen der Schweden aus diesen Jahren. Wir erzählen auch über den Einsatz der Verteidigungskräfte in unserer Provinz - über Operationszentralen und Minenstationen, große Vorratslager und heimliche Kriegspläne. Treten Sie ein, lassen Sie sich in den verschiedenen Räumen nieder und erleben Sie eine Zeit, die gar nicht so weit zurückliegt! Sehen Sie zunächst den Film, der einen chronologischen Rückblick auf wichtige Ereignisse aus der Zeit des kalten Krieges vermittelt.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1017', '<p style=\"margin-left:0cm;margin-right:0cm;\">Kalla kriget startade efter andra världskrigets slut och pågick fram till 1991. Då hade kommunismen i Östeuropa fallit, Berlinmuren rivits och Öst- och Västtyskland hade åter blivit ett land. Kalla krigets drivkraft var de stora ideologiska skillnaderna mellan de båda samhällssystemen i USA och Sovjetunionen; mellan kapitalism och kommunism. Båda länderna rustade i kapp, tävlade med varandra på olika områden och byggde upp arsenaler av kärnvapen.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Sverige behöll och förstärkte sitt unikt starka försvar under hela kalla kriget. Det skulle kosta fienden för mycket att ta oss. Alla svenskar skulle veta vad de skulle göra om det blev krig och övade regelbundet. Och i det svenska urberget anlades underjordiska förråd, hangarer, verkstäder, stridsledningscentraler och skyddsrum, dit vi skulle söka oss – om det värsta - ett atomvapenkrig – skulle bryta ut.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">The Cold War began after the end of the Second World War and continued until 1991. By then, communism had collapsed in Eastern Europe, the Berlin Wall had been torn down and East and West Germany had reunified. The Cold War was driven by the major ideological differences between the social systems of the United States and the Soviet Union; between capitalism and communism. The two countries began an arms race, they were rivals in a number of areas and developed nuclear arsenals.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Sweden maintained and bolstered its unique strong defence forces throughout the Cold War. The idea was to make it too costly for enemies to invade Sweden. All Swedes would know what to do in the event of war, and regular exercises were conducted. Across Sweden, underground stores, hangars, workshops and military command and control centres were constructed, as well as bomb shelters. This is where Swedes were to go if the worst should happen and nuclear war broke out.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Der Kalte Krieg begann nach dem Ende des Zweiten Weltkrieges und dauerte bis 1991. Zu diesem Zeitpunkt war der Kommunismus in Osteuropa gescheitert, die Berliner Mauer war gefallen, und Deutschland hatte sich wiedervereinigt. Der Kalte Krieg wurde durch die großen ideologischen Unterschiede befeuert, die zwischen den Gesellschaftssystemen in den USA und der Sowjetunion herrschten, zwischen Kapitalismus und Kommunismus. Beide Länder rüsteten um die Wette, sie konkurrierten auf verschiedenen Gebieten und legten große Kernwaffenarsenale an.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Während des gesamten Kalten Krieges unterhielt Schweden einmalig starke Verteidigungskräfte, die ständig ausgebaut wurden. Es sollte für den Feind zu aufwendig werden, das Land einzunehmen. Alle Schweden mussten jederzeit wissen, was sie im Falle des Krieges zu tun hatten. Es wurde regelmäßig geübt. Man legte unterirdische Vorratsräume im schwedischen Urgestein an - Hangars, Werkstätten, Gefechtsstände und Schutzräume. Dort sollten die Schweden Zuflucht suchen - im schlimmsten Fall, falls ein Atomkrieg ausbrach.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1018', '<p>Under kalla kriget tog de svenska kvinnorna på allvar steget in i det svenska försvaret. Tidigare hade kvinnor kunnat engagera sig på frivillig basis – som lottor och bilkårister. Det dröjde dock till 1989 innan samtliga officersyrken stod öppna för kvinnor – då fick de både tjänstgöra på u-båt och som stridspiloter. Tidigare hade man befarat att djupdykningar och g-krafter kunde vara skadliga för kvinnors kroppar.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">It was during the Cold War that Swedish women entered the armed forces in earnest. Women had previously only been involved on a voluntary basis, as members of the women\'s voluntary defence service and drivers of military transport and ambulances. But it wasn’t until 1989 that all officer posts were opened to women, allowing them to become submariners and fighter pilots. It was previously feared that G-forces and deep submarine diving could be harmful to women’s bodies.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Im Kalten Krieg nahmen die schwedischen Frauen mit Nachdruck in den Streitkräften Platz. Vorher hatten sie sich freiwillig organisiert, in der Lotta-Bewegung und anderen zivilen Verteidigungsorganisationen. Allerdings wurden Frauen erst ab 1989 in sämtlichen Offiziersberufen zugelassen. Seitdem dürfen sie auch auf U-Booten und als Kampfpilotinnen dienen. Vorher hatte man befürchtet, dass Tauchgänge in großer Tiefe und g-Kräfte schädlich auf den weiblichen Körper einwirken könnten.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1019', '<p style=\"margin-left:0cm;margin-right:0cm;\">I hundratals olika förråd, förvarades allt som skulle behövas i krig. Allt från vardagliga saker som tvål, tandborstar och rakhyvlar till robotar, radioutrustning och kanoner. Förråden spreds ut på den svenska landsbygden; soldaterna skulle ha nära till dem. Utspridda förråd skulle också göra det svårare för fienden att lägga beslag på eller att förstöra innehållet i dem.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Den andliga vården ansågs viktig. Försvarsmakten hade tagit fram ett särskilt set för nattvardsgång i fält som förvarades i de svenska mobiliseringsförråden. Kyrkan, tron och de heliga sakramenten sågs som sammanhållande faktorer och starka symbolvärlden i ofred. Det kunde vara enande och stärkande för en pluton att fira nattvard tillsammans – där man just då befann sig. Och i strid kunde det förstås uppstå tillfällen då nattvard skulle ges till döende.</p>\n\n<p>Rakt framför dig ser du tolv skåp. Skåpen innehåller modeller av anläggning från kalla krigets dagar från Kalmar läns alla kommuner. Välkommen att öppna, titta och lyssna!</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Everything that might be needed during wartime was stored at hundreds of different depots. Everything from day-to-day items like soap, toothbrushes and razors, to missiles, radio equipment and artillery guns. The depots were spread across the Swedish countryside to make them accessible to soldiers. These dispersed depots would also make it harder for enemies to seize or destroy their contents.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Spiritual life was considered important. The Swedish Armed Forces developed a special Holy Communion field kit, which was kept in Swedish mobilisation depots. The Church, religious faith and the holy sacraments were regarded as cohesive factors and strong symbols during wartime. For a platoon to be able to take Holy Communion together wherever they happened to be could have a unifying and galvanising effect. And in battle there may be occasions where the Eucharist could be given to the dying.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Straight ahead you’ll see twelve cabinets. These cabinets contain models of facilities from the time of the Cold War from across Kalmar County. Feel free to open the cabinets, look and listen.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">In Hunderten von Vorratslagern wurde alles gebunkert, was man im Krieg gebrauchen konnte. Von Alltagsgegenständen wie Seife, Zahnbürsten und Rasierern bis zu Robotern, Funkausrüstung und Kanonen. Die Vorratslager wurden auf dem schwedischen Lande verteilt, so dass sie für die Soldaten schnell zu erreichen waren. Indem man die Lager streute, machte man es dem Feind auch schwerer, sie zu beschlagnahmen oder zu vernichten.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Auch die Seelsorge galt als wichtig. Die Streitkräfte entwickelten eigens ein Abendmahl-Set für den Einsatz im Feld, das in den schwedischen Mobilmachungslagern bereit lag. Kirche, Glaube und die heiligen Sakramente wurden als verbindende Elemente und als starke Symbole in Kriegszeiten gewertet. Eine militärische Einheit ließ sich zusammenschweißen, indem sie das Abendmahl gemeinsam am jeweiligen Standort feierte. Im Krieg konnte es natürlich auch vorkommen, dass man einem Sterbenden das Abendmahl verabreichte.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Vor sich haben Sie nun zwölf Schränke. Sie enthalten Modelle von Anlagen aus dem kalten Krieg, aus allen Kommunen unserer Provinz. Sie können sie öffnen, hineinschauen und reinhören!</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1020', '<p>En titt på den här väggen ger en insikt om hur mycket tid, kraft och ekonomiska resurser som satsades på att planera för krig. Förberedelserna var mycket detaljerade. Här ser du till exempel exakt hur människor skulle evakueras till länet om det blev nödvändigt och hur skolor skulle användas som sjukhus och förlossningsavdelningar. I det öländska landskapet låg radiomaster på marken, dolda av grönskan, redo att resas vid ett krigsutbrott.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">A look at this wall will give you an idea of how much time, energy and economic resources went into planning for war. The preparations were highly detailed. Here, for example, you can see precisely how people would have been evacuated to the county if this became necessary and how schools would be used as hospitals and maternity units. Out across the island of Öland were radio masts on the ground, hidden by foliage, ready to be raised at the outbreak of war.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Diese Wand veranschaulicht, wie viel Zeit, Kraft und finanzielle Mittel eingesetzt wurden, um sich auf den Krieg vorzubereiten. Die Planungen waren sehr detailliert. Hier sehen Sie zum Beispiel genau, wie Menschen bei Bedarf in unsere Provinz evakuiert werden sollten, und welche Schulen als Krankenhäuser und Entbindungsstationen vorgesehen waren. Auf der Insel Öland lagen Funkmasten in der Landschaft. Sie waren im Grün am Erdboden versteckt und konnten bei einem Kriegsausbruch schnell aufgerichtet werden.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1034', '<p style=\"margin-left:0cm;margin-right:0cm;\">Under kalla kriget var kärnvapenhotet ständigt närvarande. Vilka hot och risker finns det idag? Enligt Länsstyrelsen finns det i jord- och skogsbrukslänet Kalmar risk för naturkatastrofer som skogsbränder, stormar och översvämningar. Då det finns ett kärnkraftverk i länet, har vi också en krisberedskap för en olycka där. Hur stora är de militära hoten mot oss då? Svaret beror på vem du frågar. Men klart är att vi nu åter lägger stora resurser på att rusta upp det som monterades ner för bara några decennier sedan. Den allmänna värnplikten återinförs, stora, internationella militärövningar genomförs och en myndighet för psykologiskt försvar har nyligen inrättats. Nu är den här audioguidningen slut.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Tack för ditt besök och för att du lyssnade!</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">The nuclear threat was ever present throughout the Cold War. What threats and risks exist today? According to Kalmar County Council, farming and forestry in Kalmar face the risk of natural disasters such as forest fires, gales and floods. And as there is a nuclear power station in the county, we also have emergency planning for an accident there. But how significant are military threats to Sweden? It depends who you ask. But it’s clear that Sweden is now once again allocating significant resources to military capabilities following a reduction in capacity only a few decades ago. National service is being reintroduced, large international military manoeuvres are conducted and a psychological defence authority has recently been established. You have now reached the end of this audio guide. Thank you for your visit and thanks for listening.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Im Kalten Krieg war die Bedrohung durch Kernwaffen ständig vorhanden. Welche Bedrohungen und Gefahren gibt es heute? Die Provinz Kalmar ist von Land- und Forstwirtschaft geprägt. Nach Einschätzung der Provinzialregierung könnten Naturkatastrophen wie Waldbrand, Sturm und Hochwasser über die Region hereinbrechen. Da es in der Provinz ein Kernkraftwerk gibt, besteht auch eine Krisenbereitschaft für ein eventuelles Unglück dort. Und wie groß ist die militärische Bedrohung? Das kommt darauf an, wen man fragt. Fakt ist jedoch, dass Schweden wieder umfangreich investiert, um die Abrüstung von vor wenigen Jahrzehnten rückgängig zu machen. Die allgemeine Wehrpflicht wird wieder eingeführt, es finden große, internationale Militärübungen statt, und vor kurzem wurde eine Behörde für psychologische Verteidigung eingerichtet.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Hier endet diese Audioführung. Vielen Dank für Ihren Besuch und Ihre Aufmerksamkeit!</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1021', '<p>1980-tal. På andra sidan Östersjön, i vårt grannland Polen, råder oroliga tider. Lech Walesa har grundat den oberoende, antikommunistiska fackföreningen Solidaritet på varvet i Gdansk. Den kommunistiska regimen känner sig hotad av arbetarnas krav på frihet och reformer. I december 1981 tar general Jaruzelski makten i Polen vid en militärkupp. Solidaritet förbjuds, fackligt aktiva fängslas, demonstranter dödas och stridsvagnar rullar på gatorna. Jozef Fluder är en av dem som grips, torteras och sätts i fängelse för sitt fackliga engagemang. Jozef erbjuds att skriva under ett papper där han lovar att vara lojal mot den kommunistiska regimen – då kommer han att släppas. Han svarar: ”Jag är född antikommunist och jag kommer att dö som antikommunist.”</p>\n\n<p>Familjen utvisas från Polen och slår sig så småningom ner i Kalmar. Än idag bär dottern Izabella på traumat från sin barndom – hon var sex år när hon såg sin pappa bryskt bli bortförd av militär och polis. ”När jag var liten, var mina föräldrar ofta ledsna. Det är tufft för ett barn när ens föräldrar gråter utan att man riktigt förstår varför.”</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">It’s the 1980s. Across the Baltic Sea, in neighbouring Poland, there are troubling times. Lech Walesa has founded the independent anti-communist trade union Solidarity at Gdansk Shipyard. The communist regime feels threatened by the workers’ demands for freedom and reforms. In December 1981, General Jaruzelski seizes power in Poland in a military coup. Solidarity is banned, union activists are jailed, demonstrators are killed and tanks are on the streets. Jozef Fluder is one of those arrested, tortured and imprisoned for his union activities. Jozef is told he’ll be released if he signs a document promising to be loyal to the communist regime. His reply? “I was born an anti-communist and I’ll die an anti-communist.” The family is deported from Poland and eventually settles in Kalmar. His daughter Izabella is still affected by her experiences in childhood. She was six when she saw her father bundled away by soldiers and police. “My parents were often sad when I was little. It’s difficult for a child when your parents are crying and you don’t really understand why.”</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Die 1980er Jahre. Auf der anderen Seite der Ostsee, in Schwedens Nachbarland Polen, sind unruhige Zeiten angebrochen. Lech Walesa hat auf der Danziger Werft die unabhängige, antikommunistische Gewerkschaft Solidarität gegründet. Das kommunistische Regime fühlt sich durch die Forderungen der Arbeiter nach Freiheit und Reformen bedroht. Im Dezember 1981 ergreift General Jaruzelski durch einen Militärputsch die Macht in Polen. Die Solidarität wird verboten, Gewerkschafter werden inhaftiert und Demonstranten getötet. Auf den Straßen rollen Panzer. Josef Fluder ist einer derjenigen, die wegen ihres gewerkschaftlichen Engagements verhaftet, gefoltert und ins Gefängnis geworfen werden. Man bietet Jozef an, eine Erklärung zu unterschreiben. Darin soll er dem kommunistischen Regime die Treue geloben, als Gegenleistung würde man ihn freilassen. Er antwortet: \"Ich bin als Antikommunist geboren, und ich werde als Antikommunist sterben.\" Die Familie wird aus Polen ausgewiesen und lässt sich einige Zeit später in Kalmar nieder. Noch heute trägt Tochter Izabella an diesem Kindheitstrauma. Sie war sechs Jahre alt, als sie miterleben musste, wie ihr Vater unsanft von Militär und Polizei abgeführt wurde. \"Als ich klein war, waren meine Eltern oft traurig. Für ein Kind ist es schwer, wenn die Eltern weinen, und man versteht nicht, warum.\"</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1022', '<p style=\"margin-left:0cm;margin-right:0cm;\">Det psykologiska försvaret var viktigt; att hålla moralen och stridsviljan uppe hos svenskarna. Vi hade ett väl utbyggt civilförsvar och i mobiliseringsförråden fanns allt som medborgarna skulle behöva för att uthärda krigets påfrestningar. Det fanns till exempel ett exemplar av folkskyddsmasken, som du ser i montern, till varje svensk medborgare. För mindre barn fanns gula skyddsjackor, som den du ser till höger. Även spädbarn skulle skyddas mot radioaktivt nedfall och andra gifter. I montern ser du ett skydd i plast med batteridriven fläkt som skulle träs ovanpå liggvagnsinsatsen.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Broschyren <em>Om kriget kommer </em>delades ut till alla svenska hushåll och innehöll livsviktig information om det värsta skulle hända. Att visa att vi var väl förberedda var en del i processen att förmedla en övertygelse om att vi minsann skulle klara både kärnvapenkrig och väpnad konflikt.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Psychological defence was important in maintaining Swedes’ morale and willingness to fight. Sweden had a well-developed civil defence and its mobilisation stores had everything citizens would need to endure the difficulties of war. For instance, there was one gas mask, like the one in the display case, for every Swedish citizen. For young children, there were yellow protective jackets, like the one on the right. Infants also had to be protected against radioactive fallout and other toxins. In the display case you can see a plastic protective cover with a battery-powered fan that would be placed over a pram.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">The leaflet entitled <em>If War Should Happen</em> was distributed to all Swedish households and contained vital information about what to do if the worst should happen. Showing Sweden was well prepared was part of the process of convincing Swedes that the country would cope with both nuclear war and armed conflict.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Auch die psychologische Verteidigung war wichtig, Moral und Kampfeswille der Schweden mussten aufrechterhalten werden. Das Land hatte eine gut ausgebaute Zivilverteidigung, und in den Vorratslagern für die Mobilmachung gab es alles, was die Bürger brauchten, um die Strapazen des Krieges auszuhalten. Zum Beispiel war für jeden schwedischen Bürger ein Exemplar der Volksschutzmaske vorhanden, die Sie im Wandschaukasten sehen können. Für kleine Kinder gab es gelbe Schutzjacken, diese sehen Sie zur Rechten. Auch Säuglinge sollten gegen radioaktiven Niederschlag und andere Gifte geschützt werden. Ganz unten im Schaukasten sehen Sie einen Kunststoffschutz mit einem batteriebetriebenen Lüfter, den man über den Kinderwagen ziehen konnte. Die Broschüre \"Wenn der Krieg kommt\" wurde an alle schwedischen Haushalte verteilt. Sie enthielt lebenswichtige Informationen für den Fall, dass das Schlimmste eintrat. Indem man demonstrierte, dass Schweden gut vorbereitet war, vermittelte man die Gewissheit, dass das Land bewaffnete Konflikte und sogar einen Atomkrieg überstehen konnte.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1029', '', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1030', '', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1031', '<p style=\"margin-left:0cm;margin-right:0cm;\">Välkommen till regalskeppet Kronans vrakplats, belägen på 26 meters djup, 6 kilometer öster om byn Hulterstad på sydöstra Öland. Då det inte finns någon skeppsmask i Östersjöns bräckta vatten, är vrakdelar och föremål ovanligt välbevarade. Den fina leran i området har också fungerat som ett skydd genom seklen. Av själva skeppet återstår två tredjedelar av babords skeppssida från akter föröver. Det sammanhängande, bevarade skrovpartiet är ca 40x20 meter stort. Babordssidan ligger plant mot botten, i samma läge som skeppet kantrade. Innanför skrovet har tusentals föremål vilat och senare bärgats. Kalmar läns museum påbörjade de marinarkeologiska undersökningarna av vraket 1981. I år återstår mindre än 10 % procent av vrakplatsens yta att gräva ut. Mer än 30 000 föremål har bärgats genom åren. Inom de närmaste 5 åren kommer undersökningarna att avslutas.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Welcome to the resting place of the Royal Swedish ship Kronan – The Crown – situated at a depth of 26 meters 3,2 nautical miles due east of the village Hulterstad on the south east part of Öland. Due to the low amount of salinity in the Baltic Sea, the wood boring shipworm – Teredo Navalis – cannot exist in the brackish water. Therefore the conditions for preservation of ship´s structure and artifacts of organic material are extremely favorable in the Baltic. The fine clay on the bottom also helps to preserve embedded artefacts and structure. Two thirds of the port side of the ship, from stern forward, is preserved. It measures 40 times 20 meters. The port side rests flat on the sea floor, in the same position that preceded the sinking June 1st 1676. Inside the hull thousands and thousands of artifacts have been recovered since the start of the marine archaeological investigations in 1981. Today, less than 10 % of the area remain to be excavated. More than 30 000 artefacts have been recovered so far. Within the next five years the investigations at sea are planned to be concluded.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Das Wrack der Kronan befindet sich in einer Tiefe von 26 Metern, 6 km östlich des Dorfes Hulterstad im Südosten Ölands. Da das Wasser der Ostsee weniger salzhaltig ist, als das des offenen Meeres, kommt dort der Schiffswurm Teredo Navalis, der Löcher in Holz bohrt und gesunkene Holzschiffe zerstört, nicht vor. Dank dieser natürlichen Gegebenheiten, können dort hölzerne und andere organische Materialien Hunderte von Jahren überleben.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Von der Kronan sind hauptsächlich die zusammenhängenden 2/3 der Backbordseite des Rumpfes übrig, vom Heck in Richtung Bug misst sie 40 x 20 Meter. Die Backbordseite liegt seit dem Untergang der Kronan flach auf dem Sand des Meeresgrundes. An der Innenseite des Rumpfes liegen Tausende von Artefakten.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">1981 begann das Provinzialmuseum Kalmar mit den meeresarchäologischen Untersuchungen der Kronan. Bisher sind ¾ des Rumpfbereichs untersucht worden, was über 25 000 separate Artefakte zu Tage gebracht hat.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1032', '', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1015', '', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1035', '<p style=\"margin-left:0cm;margin-right:0cm;\">Majoren Claes Ankarfjell från Funbo uanför Uppsala och båtsmannen Per Elofsson Blank, en ölänning från den lilla byn Skärlöv på öns östra kust, var två av de 800 män som omkom när Kronan förliste. Kaptenen Rosenberg som överlevde, vittnade om att skeppet skulle ha varit rankt, men även att orsaken till katastrofen skulle ha varit att det förekommit osämja ombord mellan major Ankarfjell och hans kollega amirallöjtnant Arvid Björnram. Den ene ville att skeppet skulle föra små segel medan den andre ville ha stora segel. Dispyten gjorde att man förlorade värdefull tid. Man hann inte ta ner nog med segel, vilket ledde till att skeppet till slut kantrade. Om Ankarfjell och Björnram sade överste Stegman, chefen för knektarna från Västerbottens regemente ombord: ’Gud förlåte dem båda, som oss idag så har kommenderat och utsatt.’ Skeppets styrman hade inte vågat gå nära den grunda Ölandskusten, utan höll sig längre ut till havs då en kraftig vindby fick det stora skeppet att lägga sig på sidan. Kort därefter skakades skeppet av en kraftig explosion. Av den 842 man starka besättning omkom 800 i den näst största fartygskatastrofen i svensk historia. Bland dem fanns Claes Ankarfjell och Per Elofsson Blank.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Major Claes Ankarfjell from Funbo near Uppsala and boatswain Per Elofsson Blank from Skärlöv parish on east Öland, were two of altogether 800 men who lost their lives when Kronan sank. One of the 42 survivors, Captain Rosenberg, testified that Kronan was crank but also expresses the opinion that the cause of Kronan´s fate was envy between major Ankarfjell, and vice admiral Björnram: one wished Kronan to carry small sails, the other that they should be large. Their dispute led to a loss of valuable time. The immediate reason why Kronan was overset was, probably, that her sails had been insufficiently reefed. Colonel Stegman, yet another victim of the catastrophe, is known to have uttered this words: God forgive them both, those who today have commanded us in such a disastrous way!</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Major Claes Ankarfjell aus Funbo außerhalb von Uppsala und der Bootsmann Per Elofsson Blank, ein Öländer aus dem kleinen Dorf Skärlöv an der Ostküste der Insel, waren zwei der insgesamt 800 Männer, die umkamen, als die Kronan gesunken ist. Kapitän Rosenberg, der überlebte, berichtete, dass das Schiff instabil war, jedoch auch, dass die Ursache für die Katastrophe Uneinigkeiten an Bord zwischen Major Ankarfjell und seinem Kollegen Major Arvid Björnram waren. Der eine wollte, dass das Schiff kleine Segel führte, während der andere große Segel wollte. Durch den Disput ging kostbare Zeit verloren. Es gelang nicht, genug Segel einzuholen, was dazu geführt hat, dass das Schiff schließlich gekentert ist. Über Ankarfjell und Björnram sagte Oberst Stegman, der Chef der Soldaten aus dem Regiment Västerbotten an Bord: „Gott vergebe ihnen beiden, die uns heute so kommandiert und der Gefahr ausgesetzt haben.“ Der Steuermann des Schiffs traute sich nicht näher an die flache Küste Ölands heran, sondern blieb weiter draußen auf dem Meer, als ein kräftiger Windstoß dazu geführt hat, dass das Schiff sich auf die Seite legte. Kurz darauf wurde das Schiff durch eine starke Explosion beschädigt. Von der 842 Mann starken Besatzung sind 800 in der zweitgrößten Schiffskatastrophe der schwedischen Geschichte umgekommen. Darunter befanden sich Claes Ankarfjell und Per Elofsson Blank.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1036', '<p style=\"margin-left:0cm;margin-right:0cm;\">1600-talet är tennets sekel. Under århundradet fulländades den konstnärliga utformningen av tennföremålen och hantverket nådde en större räckvidd än någonsin tidigare. Stora mängder tennföremål har bärgats från Kronan. Förutom hundratals knappar och lock som tillhört glasflaskor, består de flesta tennföremålen av fat, burkar, kannor och flaskor. Just faten intar en särställning bland tennföremålen från Kronan, eftersom de ofta är noggrant stämplade av tenngjutaren och även har ägarens initialer ingraverade. De flesta av faten har tillhört den ombordvarande riksamiralen Lorentz Creutz. Många av faten bär han och hans maka Elsa Duwalls initialer. Faten av den högsta kvaliteten var fyrstämplade. Stämplarna visar att faten tillverkats på platser som London, Riga, Stettin, Åbo, Göteborg, Norrköping och Stockholm. </p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">The 17th century, is the century of pewter. During this era pewter-making was accomplished to perfection, and the range of the craftsmanship was greater than ever. A large amount of artefacts of pewter have been recovered from Kronan. In addition to hundreds of buttons and pewtercorks that originally sealed glass-flasks, the most pewter finds consist of plates, cans, tankards and flasks. The plates are especially interesting since they wear stamps and marks of both the maker and the owner. Most of the pewter plates recovered from the wreck have belonged to the general admiral Lorentz Creutz onboard. Many of them also wear the initials of his wife Elsa Duwall. The pewter of the highest quality wore four stamps. The stamps show that the pewter-plates from Kronan were made by craftsmen from various places like London, Riga, Stettin, Turku, as well as in the Swedish cities of Stockholm, Gothenburg and Norrköping.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Das 17. Jahrhundert ist das Jahrhundert des Zinns. In diesem Jahrhundert wurde die künstlerische Bearbeitung von Zinngegenständen vollendet und das Handwerk hatte eine größere Reichweite als je zuvor. Große Mengen Zinngegenstände wurden aus der Kronan geborgen. Außer Hunderten von Knöpfen und Deckeln von Glasflaschen, bestehen die meisten Zinngegenstände aus Schalen, Dosen, Kannen und Flaschen. Die Schalen nehmen eine Sonderstellung unter den Zinngegenständen von der Kronan ein, da der Zinngießer sie meistens sorgfältig mit einem Stempel versehen hat und außerdem Initialen des Besitzers eingraviert wurden. Der Großteil der Schalen gehörte Reichsadmiral Lorentz Creutz, der sich an Bord befand. Viele der Schalen tragen seine Initialen und die Initialen seiner Frau, Elsa Duwall. Die hochwertigsten Schalen waren feuergestempelt. Die Stempel zeigen, dass die Schalen an Orten wie London, Riga, Stettin, Åbo, Göteborg, Norrköping und Stockholm hergestellt wurden.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1037', '<p style=\"margin-left:0cm;margin-right:0cm;\">Här på det mellersta däcket var 36 av skeppets närmare 120 kanoner placerade. Samtliga av dem var s k 24-pundare. De väger 1 200 kg/styck. Mellersta batteridäcket var det kanondäck som användes mest i sjöstriderna. I däckets akter var officersmässen – det s k gunrummet – belägen. Där har utförligt snidade skulpturer hittats, i enlighet med den standard som de höga officerarnas sociala och militära ställning krävde. Snidade pilastrar med växtdekor prydde den vertikala panelen mellan kanonportarna i mässen. I likhet med utsmyckningarna på det övre däcket upphör dekorationerna så snart man kommer utanför den tio meter långa officersmässen. Då är man ute i det enkla kanon-manskapets utrymme på däcket. Det är där du befinner dig just nu. I akterdelen inne på det mellersta däcket, stod rorgängaren. Han styrde skeppet med hjälp av den långa kollerstocken, en vertikal trästör som via ett lager i däcket var förbunden med den horisontella rorkulten, som i sin tur var förbunden med fartygets roder. Däckshöjden på det övre och mellersta kanondäcket har beräknats till 160–180 centimeter. På det undre däcket våningen nedanför, är den något lägre.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Here on the middle gun deck 36 out of a total of close to 120 guns, all bronze, were placed. All of them were 24-pounders and weighed 1 200 kgs each. Kronan was a full three decker built with three flush tiers of guns. The middle gun deck was used most frequently during sea-battles. In the aft part of the deck, the officers mess – the s c gunroom – was situated. Elaborate decorations in the shape of wooden sculptures have been recovered from the gun room. They embellished the mess in accordance with the standards of the officer´s elite. The simple gunners did not enjoy a similar environment. They worked, fought, ate and slept by their guns while at sea. The height on the middle deck is estimated to 160-180 cm in the aft part of the middle deck. The height is a little bit less in the forward part.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Hier auf dem mittleren Deck standen 36 der fast 120 Kanonen des Schiffes. Sämtliche waren so genannte 24-Pfünder. Sie wiegen 1 200 kg/Stück. Das mittlere Batteriedeck war das Kanonendeck, das bei Seeschlachten am meisten verwendet wurde. Im Heck des Decks befand sich die Offiziersmesse. Dort wurden detailliert geschnitzte Skulpturen gefunden, was dem Standard entspricht, den die soziale und militärische Stellung der höheren Offiziere erforderte. Geschnitzte Pfeiler mit Pflanzendekor schmückten die vertikalen Paneele zwischen den Kanonenluken in der Messe. Genau wie bei den Ausschmückungen auf dem Oberdeck, hören die Dekorationen auf, sobald man sich außerhalb der ungefähr zehn Meter langen Offiziersmesse befindet. Dann steht man draußen in dem einfachen Raum der Mannschaft, die die Kanonen bediente. Genau dort befinden Sie sich gerade. Im Heck drinnen auf dem mittleren Deck stand der Steuermann. Er hat das Schiff mit Hilfe des langen Kolderstocks gesteuert, einem vertikalen Holzhebel, der über ein Lager im Deck mit der horizontalen Pinne verbunden war, die wiederum mit dem Ruder des Schiffs verbunden war. Die Deckshöhe des oberen und mittleren Kanonendecks wurde auf 160–180 Zentimeter berechnet. Auf dem unteren Deck, dem Stockwerk darunter, war sie etwas flacher.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1038', '<p style=\"margin-left:0cm;margin-right:0cm;\">I akterdelen av det övre däcket är amiralskajutan belägen. Där har den mest magnifika inredningen i vraket påträffats. Vackert skulpterade, symmetriska skulpturuppsättningar klär riksamiralens personliga utrymme, precis som i ett palats. Den arton meter långa kajutan var rikt utsmyckad med paneler, listverk och träskulpturer i barockstil. När skulpturerna grävdes fram i mitten av 1980-talet, satt de fortfarande kvar i sina ursprungliga lägen mot fartygssidan, trots att de spikarna som de en gång sattes fast med sedan länge rostat bort. Man kunde på så sätt få en exakt bild av hur kajutan från början dekorerats, och man förstod också att fartygssidan vilat i ett plant läge ända sedan förlisningen. Detta innebär i sin tur att skeppets utvändiga utsmyckning finns bevarad i leran under babordssidan. En unik konsthistorisk skatt slumrar i Östersjöns djup. Ovanför de fyra aktersta kanonportarna i amiralskajutan, återfinns rektangulära öppningar i skrovsidan. Öppningarna har sannolikt fyllt en kombinerad funktion av ljusinsläpp, ventilation och skyttevärn för amiralens personliga livvakt. Att till och med amiralskajutan var försedd med kanoner, var typiskt för de stora linjeskeppen under senare hälften av 1600-talet. Det ökade antalet kanoner var prioriterat och tog stora utrymmen i anspråk.</p>', '<p>The admiral´s cabin on Kronan is located in the aft part of the upper deck. The most elaborate embellishment in the wreck has been recovered from the inside of the admiral´s cabin. Beautifully sculptured masks and shields have decorated this luxury compartment in the ship. Most of the sculptures found inside the ship were recovered from their original positions, which has contributed to obtaining a clearer understanding of the ship´s appearance, as well as the knowledge of that the wreck must have rested in this stationary position since the time of the sinking. This has been proved by the discovery of a great number of well preserved external sculptures found underneath the flat lying port side. However, they still rest in their safe environment on the bottom. Rectangular apertures are found above the gunports in the admiral´s cabin. Most likely, they have served a multipurpose as inlets for light, ventilation as well as possible ramparts for the admiral´s body guard during the battle.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Im Heck des Oberdecks liegt die Admiralskajüte. Dort wurde die prächtigste Einrichtung des Wracks angetroffen. Hübsch skulpturierte, symmetrische Plastiken zieren den persönlichen Raum des Reichsadmirals, genau wie in einem Palast. Die 18 Meter lange Kajüte war reich mit Paneelen, Leisten und Holzskulpturen in Barockstil verziert. Als die Plastiken Mitte der 80er Jahre ausgegraben wurde, standen sie immer noch in ihrer ursprünglichen Stellung zur Schiffsseite, obwohl die Nägel, mit denen sie einst befestigt wurden, schon lange weggerostet waren. So konnte man sich ein genaues Bild davon machen, wie die Kajüte anfänglich dekoriert war, und man begriff außerdem, dass die Schiffsseite bereits seit dem Schiffbruch in einer ebenen Lage gelegen hatte. Das bedeutete wiederum, dass der Schmuck an der Außenseite des Schiffes im Schlamm unter der Backbordseite erhalten geblieben war. Ein einzigartiger kunsthistorischer Schatz schlummert in den Tiefen der Ostsee.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Oberhalb der vier hintersten Kanonenluken in der Admiralskajüte, befinden sich rechteckige Öffnungen in der Rumpfseite. Diese Öffnungen erfüllten wahrscheinlich eine kombinierte Funktion aus Lichteinlass, Belüftung und Schießscharte für die persönliche Leibwacht des Admirals. Dass selbst die Admiralskajüte mit Kanonen ausgestattet war, war typisch für große Linienschiffe in der zweiten Hälfte des 17. Jahrhunderts. Die höhere Anzahl Kanonen hatte Vorrang und nahm viel Platz in Anspruch.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1039', '<p style=\"margin-left:0cm;margin-right:0cm;\">De många myntskatterna från vraket är en spännande fyndkategori, eftersom de kan knytas till speci-fika individer ombord. Myntskatterna verkar inte ha förvarats eller hanterats som en gemensam kassa avsedd för flera personer. Istället verkar de ha tillhört enskilda individer vars ställning och uppgifter ombord bestämts av militär rang och samhällsställning. Mynten spelade också en symbolisk roll. De har inte bara använts för att handla med, utan också varit ett bevis för att ägaren tillhör en social elit och haft en hög position i samhället. Vissa mynt som påträffats kan ha överlämnats till ägaren av kungen personligen. Det symboliska värdet för ett sådant mynt var avsevärt högre än handelsvärdet. …. Det totala antalet mynt som hittills hittats på vrakplatsen uppgår till närmare 18 000. De flesta är svenska. Guldmynten utgör ett undantag, även om andelen svenska guldmynt ändå är anmärkningsvärt stor. De flesta av mynten, omkring 16 000, är av silver och koncentrerade till två samlade skatter på 6 500 respektive cirka 7 000 mynt. Fler än 300 av mynten från Kronan är av guld. De kommer i huvudsak från två skatter. De övriga drygt 1 000 mynten är av koppar. Kopparmynten var det enklare folkets mynt och representerade därför de lägsta valörerna. Den slutsats man kan dra kring silver- och guldmynten från vraket, är att de i motsats till kopparmynten är koncentrerade till några få ägare och brukare, och avsedda för specifika ändamål. Det rör sig om möjligheter till internationell handel, men också om mynten som förmögenhetssymboler, statusmarkörer och samlarobjekt.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">The coin treasures from Kronan are an exciting category of finds, since they can be traced to specific individuals onboard. The treasures don´t seem to have been handled as collective goods, meant for several people. Instead they seem to have belonged to high ranked individuals on the ship. The coins also play a symbolic role and are not just meant for trading. They are concrete proof of the owners’ connection to a social elite. The total number of recovered coins from Kronan so far, amount to close to 18 000. Most of them are Swedish. An exception to this are the gold coins. Most of them are Dutch and German. Over 16 000 coins are of silver, and over 1 000 of copper. The remaining are of gold.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Die vielen Münzschätze aus dem Wrack sind eine spannende Fundkategorie, da sie mit bestimmten Personen an Bord in Zusammenhang gebracht werden können. Die Münzschätze wurden anscheinend nicht wie eine gemeinsame Kasse aufbewahrt oder hantiert, die für mehrere Personen bestimmt war. Stattdessen gehörten sie wohl einzelnen Personen, deren Stellung und Aufgaben an Bord von ihrem militärischen Rang und der gesellschaftlichen Stellung abhängig waren. Die Münzen haben auch eine wichtige symbolische Funktion erfüllt. Sie wurden nicht nur verwendet, um damit zu handeln, sondern waren außerdem ein Beweis, dass der Besitzer einer sozialen Elite angehörte und eine höhere Stellung in der Gesellschaft hatte. Es kann sein, dass bestimmte Münzen, die gefunden wurden, dem Besitzer vom König höchstpersönlich überreicht wurden. Der symbolische Wert einer solchen Münze war bedeutend höher als ihr Handelswert ... Insgesamt wurden bis jetzt fast 18 000 Münzen an der Fundstelle gefunden. Die meisten sind schwedisch. Die wenigsten davon sind Goldmünzen, obwohl der Anteil schwedischer Goldmünzen dennoch beachtenswert hoch ist. Die meisten der Münzen, ca. 16 000, sind aus Silber und konzentrierten sich auf zwei Schätze, bestehend aus 6 500 bzw. ungefähr 7 000 Münzen. Mehr als 300 Münzen von der Kronan sind aus Gold. Sie stammen hauptsächlich aus zwei Schätzen. Die restlichen 1 000 Münzen sind aus Kupfer. Kupfermünzen waren die Münzen des einfachen Volkes und repräsentierten daher die niedrigsten Werte. Aus den Silber- und Goldmünzen aus dem Wrack kann man die Schlussfolgerung ziehen, dass sie sich, im Gegensatz zu den Kupfermünzen, auf einige wenige Besitzer und Benutzer konzentrierten und für bestimmte Zwecke bestimmt waren. Es geht um Möglichkeiten für einen internationalen Handel, jedoch auch um Münzen als Symbol von Vermögen, Statussymbole und Sammlerobjekte.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1040', '<p style=\"margin-left:0cm;margin-right:0cm;\">Välkommen till ”Amiralernas salong”. Här visas den miljö som de höga officerarna normalt vistades i då de befann sig på sina gods och herresäten på land. Från sina tavelramar blickar slagets högsta amiraler ned på oss. Segrarna, den holländske överamiralen Cornelis Tromp och hans danske kollega Niels Juel överlevdeslaget och vann vida berömmelse. Riksamiralen Lorentz Creutz följde sitt skepp Kronan i djupet. ….. De flesta av föremålen i rummet har tillhört riksamiralen Lorentz Creutz. Rygglädret till stolen bär han och hans makas adelsvapen och initialer, tennfatet likaså. Guldskeden och fickuret med guldkedja, tillverkad av urmakaren Pierre Duhamel i Geneve under 1650-talet, kan också knytas till riksamiralen ombord.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Welcome to the admiral´s room. Here we want to give you an impression of what a high officer´s home in Sweden would have looked like in the 17th century. The grim faces of the admirals from battle of Öland 1676 are looking down on us from their frames on the walls. The victors, the Dutch general admiral Cornelis Tromp and his Danish colleague Niels Juel survived the battle and won fame and fortune. Others were not as lucky. The general admiral of the Swedish fleet onboard Kronan, Lorentz Creutz, met his fate in the cold waters outside Öland. ….. Most of the artifacts in this room have originally belonged to admiral Creutz. The backrest of the chair as well as the pewter plate, wear the initials of Creutz and his wife Elsa Duwall. The golden spoon and the pocket watch with the golden chain, can also be linked to admiral Creutz.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Willkommen im „Salon der Admirale“. Hier wird das Umfeld gezeigt, in dem die hohen Offiziere sich normalerweise bewegten, wenn sie sich auf ihren Landgütern und Herrenhöfen auf dem Land aufhielten. Aus ihren Bilderrahmen schauen die höchsten Admirale der Schlacht auf uns hinab. Die Sieger, der niederländische Großadmiral Cornelis Trom und sein dänischer Kollege Niels Juel, haben die Schlacht überlebt und weiten Ruhm geerntet. Reichsadmiral Lorentz Creutz ist seinem Schiff Kronan in die Tiefe gefolgt. ….. Der Großteil der Gegenstände in diesem Raum gehörte Reichsadmiral Lorentz Creutz. Das Rückenleder des Stuhls trug das Adelswappen und die Initialen von Creutz und seiner Ehegattin, genau wie der Zinnteller. Auch den Goldlöffel und die Taschenuhr mit Goldkette, gefertigt von dem Uhrmacher Pierre Duhamel in Genf in den 1650er Jahren, können in Zusammenhang mit dem Reichsadmiral gebracht werden.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1041', '<p style=\"margin-left:0cm;margin-right:0cm;\">Här i den stora väggmontern visas klädfynd från Kronan. De är exklusiva kläder som i de flesta fall tillhört officerarna ombord. Flera av dem låg packade i särskilda kistor när de påträffades i vraket. Huvudbonaderna som bärgats är både enkla tygmössor som tillhört båtsmännen såväl som fina hattar som varit befälens tillhörigheter. I akterdelen av vraket av Kronan påträffades under 1980-talet kvarlevorna av en besättningsman, sannolikt en officer, med en rik föremålsuppsättning. I anslutning till kroppen hittades mer än femtio förgyllda mässingknappar, som tyder på att mannen burit en <em>juste au corps</em>-rock (<em>tätt mot kroppen</em>) av samma typ som återfinns i väggmontern intill. Av själva rocken återfanns dock inga rester. Ett fickur med vev, en snusdosa av sköldpaddskal, ett förgyllt värjfäste och sidenrosetter visar att mannen är en officer som tillhört samhällets toppskikt. På hans underben satt stickade strumpor och läderskor med höga klackar. Fingrar och krås var prydda med ringar, knappar och berlocker. Föremålen kan du se i montrarna I rummet.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">The large showcase by the wall, show finds of clothes from Kronan. They are mostly exclusive articles that have belonged to officers onboard. Most of the clothes were stored in special chests, in which they also were found during the excavation. The headgear from the wreck are both simply knitted caps as well as more sophisticated felt hats. In the 1980´s the remains of most likely an officer, were found together with spectacular belongings; a clock with a small crank, a turned snuffbox made of turtle shell, a gilded sword handle and silk ribbons. More than 50 gilded brass buttons, indicate that the man once wore a French fashion style just au corps-coat, sadly disintegrated during more than 300 years on the bottom of the sea.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Hier in der großen Wandvitrine werden Kleiderfunde aus der Kronan gezeigt. Es handelt sich um exklusive Kleidung, die in den meisten Fällen den Offizieren an Bord gehörte. Mehrere waren in besonderen Kisten verpackt, als sie gefunden wurden. Bei den geborgenen Kopfbedeckungen handelt es sich sowohl um einfache Stoffmützen, die den Soldaten gehörten, als auch feine Hüte, die Eigentum der Befehlshaber waren. Im Heck des Wracks der Kronan wurde in den 1980er Jahren die Überreste eines Besatzungsmitglieds gefunden, wahrscheinlich eines Offiziers, der reich bestückt war. Gleich neben dem Körper wurden über 50 Messingknöpfe gefunden, die darauf hinweisen, dass der Mann einen Just-au-Corps-Rock derselben Sorte trug, die in dieser Wandvitrine ausgestellt ist. Von dem Rock selbst wurden jedoch keine Reste gefunden. Eine Taschenuhr mit Kurbel, eine Snusdose aus Schildkrötenschild, ein vergoldeter Degenhalter und Seitenrosetten zeigen, dass der Mann ein Offizier war, der der gesellschaftlichen Oberschicht angehörte. An seinem Unterschenkel befanden sich gestrickte Strümpfe und Lederschuhe mit hohen Absätzen. Finger und Krause waren mit Ringen, Knöpfen und Anhängern verziert. Diese Gegenstände finden Sie in Vitrine I in diesem Raum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1042', '<p>Webbapputveckling och design: Mats Neander</p>\n\n<p>Ljudinspelning och ljudproduktion: Mats Neander</p>\n\n<p>Formgivning och kommunikation: Mats Neander</p>\n\n<p> </p>', '<p>Web development and design: Mats Neander</p>\n\n<p>Sound recording and sound production: Mats Neander</p>\n\n<p>Design and Communication: Mats Neander</p>', '<p>Web-Entwicklung und Design: Mats Neander</p>\n\n<p>Tonaufnahme und Tonproduktion: Mats Neander</p>\n\n<p>Design und Kommunikation: Mats Neander</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1047', '<p>Varje utställning har åtta stationer. Guidningen tar cirka 20 minuter. </p>', '<p>Each exhibition has eight stations. The guide takes about 20 minutes.</p>', '<p>Jede Ausstellung hat acht Stationen. Die Führung dauert ca. 20 Minuten.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1048', '<p>Håll utkik efter audioguideskylten.</p>', '<p>Keep an eye out for the audioguide sign.</p>', '<p>Achten Sie auf das Audioguide-Zeichen.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1049', '<p>Klicka på stoppet du befinner dig vid. </p>', '<p>Click on the stop you are at.</p>', '<p>Klicken Sie auf die Haltestelle, an der Sie sich befinden.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1050', '<p>Använd pilarna längst ner för att stega framåt eller bakåt. </p>', '<p>Use the arrows at the bottom to step forward or backward.</p>', '<p>Verwenden Sie die Pfeile unten, um vorwärts oder rückwärts zu gehen.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1051', '<p><a	data-pwid=1	href=\"/\">Nu börjar vi! </a></p>', '<p><a	data-pwid=1-1027	href=\"/en/\">Let\'s go!</a></p>', '<p><a	data-pwid=1-1028	href=\"/de/\">Jetzt fangen wir an!</a></p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1052', '<p>Börja med att välja utställning.</p>', '<p>Start by choosing an exhibition.</p>', '<p>Beginnen Sie mit der Auswahl einer Ausstellung.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1054', '<p style=\"margin-left:0cm;margin-right:0cm;\">En sensommarnatt för 1500 år sedan, dräptes invånarna i Sandby borg på sydöstra Öland i en våldsam massaker. De döda lämnades utan att begravas och borgen övergavs. Händelsen föll i glömska och århundradena gick. Först 2011 uppdagades tragedin. De arkeologiska undersökningarna av platsen ger oss ny kunskap både om vardagsliv i en öländsk fornborg under järnåldern och om själva massakern. </p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">On a late-summer night 1500 years ago, the inhabitants of Sandby Borg in south-eastern Öland were killed in a violent massacre. The dead were left unburied and the fort was abandoned. Centuries passed, and what had happened was forgotten. It was not until 2011 that the tragedy came to light. Archaeological excavations of the site are providing us with new knowledge both of everyday life in one of Öland’s Iron Age ringforts and of the massacre itself.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">In einer Spätsommernacht vor 1500 Jahren wurden die Einwohner der Burg Sandby im Südosten der Insel Öland grausam massakriert. Man ließ die Toten zurück, ohne sie zu begraben, und die Burg wurde aufgegeben. Das Ereignis geriet in Vergessenheit, die Jahrhunderte vergingen.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Erst 2011 wurde die Tragödie aufgedeckt. Dank der archäologischen Untersuchungen am Ort wissen wir heute mehr über den Alltag in einer frühgeschichtlichen Burg auf Öland in der Eisenzeit, und über das Massaker.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1055', '<p>Perioden mellan år 400 och 550 e Kr kallas folkvandringstid. Det var en orolig tid med folkomflyttningar, krig och plundringar i hela Europa. Ölänningarna hade täta kontakter med romarriket. De tjänstgjorde som soldater i den romerska hären och återvände till Öland med guld i form av solidi – den typ av mynt som soldater fick i lön. Under den här perioden byggdes mellan 10 och 15 fornborgar på Öland där befolkningen kunde söka skydd i orostider. Sandby borg är den enda borgen som ligger precis vid havet. Här bredvid kan du se olika vardagsföremål från den här tiden. </p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">The period from AD 400 to 550 is known as “the Era of the Great Migration”. This was a turbulent time with people moving from one place to another, and war and pillaging rife across Europe. The people of Öland had close connections with the Roman Empire. They served as soldiers in the Roman army and returned to Öland with gold in the form of <em>solidi,</em> the type of coin in which soldiers were paid. This period saw between 10 and 15 ringforts built on Öland, places where the local people could take refuge in troubled times. Sandby Borg is the only fort located right by the sea. In the display cases here, you can see various everyday items from this period.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Die Epoche von 400 bis 550 Jahren vor Christus nennt man Völkerwanderungszeit. Damals herrschte Unruhe mit Völkerverschiebungen, Kriegen und Plünderungen in ganz Europa.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Die Bewohner der Insel Öland hatten enge Kontakte zum Römischen Reich. Sie dienten als Soldaten in den römischen Heeren und kehrten mit Gold in Form von Solidi zurück. So hießen die Münzen, mit denen man die Soldaten entlohnte.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">In diesem Zeitraum wurden auf Öland 10 bis 15 frühgeschichtliche Burgen gebaut, in denen die Bevölkerung in unruhigen Zeiten Schutz suchen konnte. Sandby ist die einzige Burg, die direkt am Meer liegt. Hier nebenan können Sie verschiedene Alltagsgegenstände aus dieser Zeit sehen.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1056', '<p>2010 upptäcktes att någon eller några hade grävt plundringsgropar i Sandby borg och en arkeologisk räddningsaktion utfördes. Arkeologerna gjorde flera oväntade fynd – bland annat fem smyckesgömmor innehållande magnifika reliefspännen, pärlor och ringar. Gömmorna var alla placerade precis till höger innanför dörren i olika hus – som om kvinnorna kommit överens om ett gemensamt gömställe. Vid undersökningarna som följde hittades också mänskliga skelettdelar. Keramik, pilspetsar, bjällror, kammar och andra föremål är andra fynd som gjorts. Rester från glaspärlstillverkning visar att hantverket behärskades i Sverige redan på 400-talet, vilket är 200 år tidigare än man hittills trott. 2016 hittades en tillagad lök som också den visar på tidiga kontakter med romarriket. I rummet härintill kan du se och beundra de olika fynden. </p>', '<p>In 2010, it was discovered that looting pits had been dug in Sandby Borg, and an archaeological rescue action was carried out. The archaeologists made several unexpected discoveries, including five jewellery stashes containing magnificent embossed clasps, pearls and rings. The stashes were all located just to the right of the door in different houses, as if the women had agreed a common hiding place. The excavations that followed also unearthed parts of male skeletons. Other finds include ceramics, arrowheads, decorative bells, combs and other items. Remnants of glass-bead manufacture show that the craft had been mastered in Sweden as early as the 5th century, which is 200 years earlier than was thought previously.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">2010 entdeckte man, dass jemand Plünderungsgruben in der Burg Sandby gegraben hatte, was zu einer archäologischen Rettungsaktion führte. Die Archäologen machten mehrere unerwartete Funde - unter anderem entdeckten sie fünf Schmuckverstecke mit wundervollen Reliefbroschen, Perlen und Ringen. </p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Alle Verstecke befanden sich gleich rechts neben der Tür in den verschiedenen Häusern - als hätten sich die Frauen auf ein gemeinsames Versteck geeinigt. Bei den nachfolgenden Untersuchungen fand man Teile von menschlichen Skeletten.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Auch Keramik, Pfeilspitzen, Glocken, Kämme und andere Gegenstände gehören zu den Funden. Überreste einer Glasperlenherstellung zeigen, dass man dieses Handwerk in Schweden bereits im 5. Jahrhundert beherrschte - 200 Jahre früher als bisher angenommen.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">2016 fand man eine zubereitete Zwiebel, sie ist ebenfalls ein Zeichen für frühe Kontakte mit dem Römischen Reich. Im Raum nebenan können Sie diese Funde bestaunen.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1057', '<p style=\"margin-left:0cm;margin-right:0cm;\">Trots att bara en liten del av ytan i borgen har grävts ut, har arkeologerna fram tills nu, våren 2018, funnit skelettrester från minst 26 mänskliga individer. En uppskattning är att det ligger mellan 150 och 250 döda i borgen. Den yngsta individen som påträffats är ett spädbarn, drygt en månad gammal, den äldsta i 65-årsåldern. Analyser av DNA och olika isotoper pågår och kommer förhoppningsvis att visa om de döda var infödda ölänningar eller ej. Flera av benen bär olika skador som tyder på att personerna utsatts för brutalt, dödligt våld utfört med vapen som svärd och yxor. Hittills har enbart manliga kvarlevor grävts fram. Var är kvinnorna? Har de förts iväg eller avrättats och lämnats på annan plats i närheten, kanske utanför borgen? Den frågan hoppas arkeologerna att finna svaret på i framtiden.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Although only a small part of the area of the ringfort has been excavated, as of spring 2018 the archaeologists have already found the remains of at least 26 male skeletons. It is estimated that the ringfort may contain the remains of between 150 and 250 people. The youngest individual to have been found is an infant of just over a month old, and the oldest is a man of around 65. DNA and isotope analyses are ongoing and will hopefully reveal whether those killed were native Ölanders. Several of the bones found show evidence of various injuries that suggest the victims met with brutal and fatal violence, inflicted using weapons such as swords and axes. So far, only male remains have been unearthed. Where were the women? Were they taken away, or killed and left somewhere else in the vicinity, perhaps outside the ringfort? This is a question the archaeologists hope to find the answer to in the future.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Obwohl nur ein kleiner Teil der Burgfläche ausgegraben ist, haben die Archäologen bis zum Frühjahr 2018 bereits Skelettreste von mindestens 26 menschlichen Individuen gefunden.  Man nimmt an, dass in der Burg 150 bis 250 Tote liegen. Das jüngste Individuum war ein gut vier Wochen alter Säugling. Der älteste Mensch war etwa 65 Jahre alt.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Gegenwärtig laufen verschiedene  DNA- und Isotopenanalysen. Sie werden hoffentlich zeigen, ob die Toten eingeborene Öländer waren oder nicht. Mehrere der Knochen tragen Verletzungsspuren. Sie deuten darauf hin, dass den Personen brutale, tödliche Gewalt zugefügt wurde, mit Waffen wie Schwertern und Äxten.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Bisher wurden nur männliche Überreste ausgegraben. Wo sind die Frauen? Hat man sie entführt oder hingerichtet und an einem anderen Ort in der Nähe zurückgelassen, vielleicht außerhalb der Burg? Die Archäologen hoffen, später eine Antwort darauf zu finden.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1058', '<p style=\"margin-left:0cm;margin-right:0cm;\">I alla tider har människor begravt sina döda – även sina fiender. Varför måste invånarna i Sandby borg dö – och varför skulle de skymfas ytterligare genom att inte ens bli begravda? Svaret kan finnas i en av de arkeologiska upptäckterna; under golvet i ett av husen finns nämligen en avbruten, rest sten och spår av brandgravar. Huset – och borgen – har alltså byggts på ett redan existerande gravfält. Kanske är massakern en blodshämnd för detta? Kanske beboddes borgen av bland annat hemvändande ölänningar som skröt och glänste med sina nyvunna rikedomar vilket väckte avund hos andra på ön? Förmodligen bodde förövarna också på Öland – kanske vid Gråborg ett par mil bort – eftersom de kunde vakta borgen och hindra närboende från att begrava sina döda. Fortsatta undersökningar av brottsplatsen Sandby borg kommer förhoppningsvis att ge oss fler ledtrådar.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Through the ages, people have always buried their dead – even their enemies. Why were the people of Sandby Borg put to death – and why were they further insulted by not even being buried? The answer may lie in one of the archaeological discoveries: under the floor in one of the houses are a broken-off raised stone and traces of cremation graves. In other words, the house – and the ringfort – were built on an existing grave field. Perhaps the massacre was the result of a blood feud? Perhaps some of the people living in the ringfort were returning Ölanders who bragged and showed off their new-won riches, and this aroused envy in others on the island? Given that the perpetrators were able to guard the ringfort and stop the people from burying their dead, it is likely that they too lived on Öland, perhaps at Gråborg some 20 kilometres away. Further investigations of the Sandby Borg crime scene will hopefully provide us with more clues.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">Zu allen Zeiten haben Menschen ihre Toten begraben - auch ihre Feinde. Warum mussten die Bewohner der Burg Sandby sterben, und warum schändete man sie, indem man sie nicht einmal bestattete? Die Antwort kann in einer der archäologischen Entdeckungen stecken.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Unter dem Fußboden in einem der Häuser fand man nämlich einen abgebrochenen, aufgerichteten Stein und Spuren von Brandgräbern. Das Haus - und die Burg - wurden also auf einem vorhandenen Gräberfeld erbaut. Vielleicht war das Massaker die Blutrache hierfür?</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Vielleicht wurde die Burg unter anderem von heimgekehrten Öländern bewohnt, die mit ihren frisch erworbenen Reichtümern prahlten und damit den Neid der anderen Inselbewohner weckten? Vermutlich lebten die Täter auch auf der Insel - vielleicht in der Burg Gråborg nur wenige Kilometer entfernt. So konnten sie die Burg bewachen und die Anwohner daran hindern, ihre Toten zu begraben. Die weiteren Untersuchungen des Tatorts in der Burg Sandby werden uns hoffentlich weitere Anhaltspunkte liefern.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1059', '<p style=\"margin-left:0cm;margin-right:0cm;\">Här i rummet visas alla de sju reliefspännen som hittats i borgen. Välbärgade kvinnor använde spännena för att hålla ihop sina dräkter. Två av dem är trasiga och den andra halvan saknas ännu. Spännena är verkliga konstverk med bilder och symboler som berättar om dåtidens myter och sagor. De är troligen lokalt tillverkade av mycket skickliga smeder.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Tack för ditt besök! Vill du veta mer? På <a href=\"http://www.sandbyborg.se\">www.sandbyborg.se</a> hittar du alltid aktuell information om borgen; om fynd, föremål och utgrävningar. Här hittar du också information om hur du kan stötta projektet ekonomiskt. Vill du se hur Sandby borg kan ha sett ut när den var bebodd? Gör då ett besök på <a href=\"http://eketorp.se/\">Eketorp</a>, den rekonstruerade fornborgen på sydöstra Öland. De båda borgarna är nämligen närmast identiska till sin karaktär. Du kan också gå med i den ideella föreningen Sandby borgs vänner. Du hittar oss på Facebook.</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">All seven of the embossed clasps that have been found in the ringfort are displayed in this room. Well-to-do women used such clasps to fasten their clothing. Two of the clasps are broken, with half still missing. The clasps are true works of art, with images and symbols that tell of the myths and sagas of the time. They were probably made locally by highly gifted metalsmiths.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Thank you for your visit! Want to know more? Go to <a href=\"http://www.sandbyborg.se\">www.sandbyborg.se/en/home</a> for all the latest information about the ringfort: finds, objects and excavations. You can also find out how to make a donation to the project. If you’d like to see how Sandby Borg may have looked when it was inhabited, visit <a href=\"http://eketorp.se/\">Eketorp</a>, the reconstructed Iron Age fort in south-eastern Öland. The two ringforts are virtually identically in character. You can also become a member of the non-profit association “Friends of Sandby Borg” – find us on Facebook!</p>', '<p style=\"margin-left:0cm;margin-right:0cm;\">In diesem Raum werden alle sieben Reliefbroschen ausgestellt, die man in der Burg gefunden hat. Wohlhabende Frauen verwendeten diese Broschen, um ihre Kleidung zusammenzuhalten. Zwei der Broschen sind beschädigt, und ihre andere Hälfte fehlt noch.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Die Broschen sind richtige Kunstwerke mit Bildern und Symbolen, die von den damaligen Mythen und Sagen erzählen. Sie wurden wahrscheinlich von sehr geschickten Schmieden aus der Gegend hergestellt.</p>\n\n<p style=\"margin-left:0cm;margin-right:0cm;\">Vielen Dank für Ihren Besuch! Möchten Sie mehr wissen? Auf der Webseite <a href=\"http://www.sandbyborg.se/\">www.sandbyborg.se</a> gibt es immer aktuelle Informationen zur Burg - über Funde, Gegenstände und Ausgrabungen. Hier erfahren Sie auch, wie Sie das Projekt finanziell unterstützen können.<br />\nMöchten Sie wissen, wie die Burg Sandby ausgesehen haben könnte, als sie bewohnt war? Besuchen Sie <a href=\"http://eketorp.se/\">Eketorp</a>, die rekonstruierte frühgeschichtliche Burg im Südosten der Insel Öland! Die beiden Burgen sind vom Charakter her nahezu identisch. Sie können auch Mitglied im Freundeskreis von Sandby Borg werden. Sie finden uns auf Facebook.</p>');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_floor`;
CREATE TABLE `field_floor` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_floor` (`pages_id`, `data`) VALUES('1015', '2');
INSERT INTO `field_floor` (`pages_id`, `data`) VALUES('1030', '3');
INSERT INTO `field_floor` (`pages_id`, `data`) VALUES('1029', '2');
INSERT INTO `field_floor` (`pages_id`, `data`) VALUES('1060', '4');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `tags` varchar(250) NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`),
  FULLTEXT KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1041', 'voet-duque_de_medinacelli-prado-1.jpg', '1', '[\"\"]', '2018-05-18 10:48:10', '2018-05-18 10:48:10', '{\"focus\":{\"top\":20.5,\"left\":73,\"zoom\":0}}', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1', 'headphones.svg', '0', '[\"Hörlurar\"]', '2018-05-17 12:12:57', '2018-05-17 12:12:57', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1041', 'rock.jpg', '0', '{\"0\":\"Juste au corps-rock\",\"1027\":\"Juste au corps-coat\"}', '2018-05-18 10:45:09', '2018-05-18 10:44:42', '{\"focus\":{\"top\":23.10000000000000142108547152020037174224853515625,\"left\":52.5,\"zoom\":0}}', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1031', 'vrakscenen-kronan.jpg', '0', '{\"0\":\"\",\"1027\":\"The wreck site\",\"1028\":\"Der Fundort des Wracks\"}', '2018-04-18 11:34:57', '2018-04-18 11:34:57', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1032', 'flygforare-framfor-draken-stridsplan-vid-f12-i-kalmar.jpg', '0', '[\"\"]', '2018-05-07 15:21:09', '1970-01-01 01:00:10', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1029', 'sandby-borg-clara-alfsdotter-rekonstruerar-skalle.jpg', '0', '[\"\"]', '2018-05-21 10:31:56', '2018-05-21 10:31:56', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1015', 'flygforare-framfor-draken-stridsplan-vid-f12-i-kalmar.jpg', '0', '[\"\"]', '2018-05-21 10:32:17', '2018-05-21 10:32:17', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1030', 'rock.jpg', '0', '[\"\"]', '2018-05-21 10:32:35', '2018-05-21 10:32:35', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1048', 'audioguidesign.png', '0', '[\"\"]', '2018-05-29 09:32:50', '2018-05-29 09:32:50', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1047', 'audioguidemultiplesigns.png', '0', '[\"\"]', '2018-05-29 09:44:29', '2018-05-29 09:44:29', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1049', 'menu-de.png', '2', '[\"\"]', '2018-05-29 10:36:30', '2018-05-29 10:36:30', '', 'deutsch');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1050', 'for-en.png', '1', '[\"\"]', '2018-05-29 09:56:26', '2018-05-29 09:55:44', '', 'english');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1050', 'for-de.png', '2', '[\"\"]', '2018-05-29 09:56:26', '2018-05-29 09:55:44', '', 'deutsch');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1050', 'for-se.png', '0', '[\"\"]', '2018-05-29 09:56:26', '2018-05-29 09:55:44', '', 'default');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1049', 'menu-se.png', '1', '[\"\"]', '2018-05-29 10:36:30', '2018-05-29 10:36:30', '', 'default');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1049', 'menu-en.png', '0', '[\"\"]', '2018-05-29 10:36:30', '2018-05-29 10:36:30', '', 'english');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1052', 'exhib-sv.png', '0', '[\"\"]', '2018-06-04 13:14:13', '2018-06-04 13:14:13', '', 'default');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1025', 'sv-flag.png', '0', '[\"\"]', '2018-06-04 11:01:48', '2018-06-04 11:01:48', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1027', 'eng-flag.png', '0', '[\"\"]', '2018-06-04 11:02:11', '2018-06-04 11:02:11', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1028', 'german-flag.png', '0', '[\"\"]', '2018-06-04 11:02:30', '2018-06-04 11:02:30', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1051', 'start.png', '0', '[\"\"]', '2018-06-04 13:35:49', '2018-06-04 13:35:49', '', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1052', 'exhib-en.png', '2', '[\"\"]', '2018-06-04 13:14:13', '2018-06-04 13:14:13', '', 'english');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `tags`) VALUES('1052', 'exhib-de.png', '1', '[\"\"]', '2018-06-04 13:14:13', '2018-06-04 13:14:13', '', 'deutsch');

DROP TABLE IF EXISTS `field_langcode`;
CREATE TABLE `field_langcode` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_langcode` (`pages_id`, `data`) VALUES('1025', 'sv');
INSERT INTO `field_langcode` (`pages_id`, `data`) VALUES('1027', 'en');
INSERT INTO `field_langcode` (`pages_id`, `data`) VALUES('1028', 'de');

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1025', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1025', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1027', 'wire--modules--languagesupport--languagesupport-module.json', '0', '[\"\"]', '2018-02-26 14:04:35', '2018-02-26 14:04:35', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1028', 'wire--modules--languagesupport--languagesupport-module.json', '0', '[\"\"]', '2018-02-26 14:04:53', '2018-02-26 14:04:53', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1025', 'wire--modules--languagesupport--languagesupport-module.json', '0', '[\"\"]', '2018-06-05 07:20:02', '2018-06-05 07:20:02', '');

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1025', 'site--templates--main-php.json', '0', '[\"\"]', '2018-02-20 08:46:42', '2018-02-20 08:46:42', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1027', 'site--templates--home-php.json', '2', '[\"\"]', '2018-05-21 10:43:42', '2018-05-21 10:43:42', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1028', 'site--templates--home-php.json', '2', '[\"\"]', '2018-05-21 10:45:00', '2018-05-21 10:45:00', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1027', 'site--templates--basic-page-php.json', '1', '[\"\"]', '2018-03-12 10:26:57', '2018-03-12 10:26:57', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1028', 'site--templates--basic-page-php.json', '1', '[\"\"]', '2018-03-12 10:27:14', '2018-03-12 10:27:14', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1027', 'site--templates--welcome-php.json', '3', '[\"\"]', '2018-05-29 10:18:22', '2018-05-29 10:18:22', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1028', 'site--templates--welcome-php.json', '3', '[\"\"]', '2018-05-29 10:19:07', '2018-05-29 10:19:07', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1027', 'site--templates--main-php.json', '0', '[\"\"]', '2018-02-20 08:47:07', '2018-02-20 08:47:07', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1028', 'site--templates--main-php.json', '0', '[\"\"]', '2018-02-20 08:47:30', '2018-02-20 08:47:30', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1027', 'site--templates--about-php.json', '4', '[\"\"]', '2018-06-05 07:35:05', '2018-06-05 07:35:05', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1028', 'site--templates--about-php.json', '4', '[\"\"]', '2018-06-05 07:35:48', '2018-06-05 07:35:48', '');

DROP TABLE IF EXISTS `field_messages`;
CREATE TABLE `field_messages` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_messages` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1045', '1052,1047,1048,1049,1050,1051', '6', '1046');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1024', '164');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1026', '165');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1033', '174');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1061', '179');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_script`;
CREATE TABLE `field_script` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_script` (`pages_id`, `data`) VALUES('1015', 'Maria Kanje');
INSERT INTO `field_script` (`pages_id`, `data`) VALUES('1030', 'Lars Einarsson');
INSERT INTO `field_script` (`pages_id`, `data`) VALUES('1029', 'Maria Kanje');
INSERT INTO `field_script` (`pages_id`, `data`) VALUES('1060', 'Maria Kanje');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1027` text,
  `data1028` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1027` (`data1027`(250)),
  KEY `data_exact1028` (`data1028`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1027` (`data1027`),
  FULLTEXT KEY `data1028` (`data1028`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('11', 'Templates', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('16', 'Fields', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('22', 'Setup', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('3', 'Pages', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('6', 'Add Page', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('8', 'Tree', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('9', 'Save Sort', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('10', 'Edit', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('21', 'Modules', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('29', 'Users', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('30', 'Roles', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('2', 'Admin', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('7', 'Trash', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('27', '404 Not Found', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('302', 'Insert Link', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('23', 'Login', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('304', 'Profile', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('301', 'Empty Trash', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('300', 'Search', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('303', 'Insert Image', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('28', 'Access', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('31', 'Permissions', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('32', 'Edit pages', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('34', 'Delete pages', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('35', 'Move pages (change parent)', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('36', 'View pages', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('50', 'Sort child pages', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('51', 'Change templates on pages', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('52', 'Administer users', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('53', 'User can update profile/password', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('54', 'Lock or unlock a page', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1', 'Guide', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1006', 'Use Page Lister', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1007', 'Find', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1010', 'Recent', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1011', 'Can see recently edited pages', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1012', 'Logs', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1013', 'Can view system logs', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1014', 'Can manage system logs', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1015', 'På vakt mot supermakt. Kallt krig och varmt vardagsliv i Kalmar län 1946-1991', 'In the Shadow of a Superpower – Cold War and Everyday Life in Kalmar County 1946–1991', 'Auf der Hut vor der Supermacht - Kalter Krieg und warmes Alltagsleben in Kalmar 1946-1991');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1016', 'Introduktion', 'Introduction', 'Willkommen!');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1017', 'Kalla kriget', 'The Cold War', 'Der kalte Krieg');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1018', 'Kvinnorna', 'Women', 'Die Frauen');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1019', 'Utrustning och själ', 'Equipment and soul', 'Ausrüstung und Seele');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1020', 'Förberedelser', 'Preparations', 'Vorbereitungen');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1021', 'På andra sidan Östersjön', 'Across the Baltic', 'Über die Ostsee');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1022', 'Om kriget kommer', 'If War Should Happen', 'Wenn der Krieg kommt');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1023', 'Administer languages and static translation files', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1024', 'Languages', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1025', 'Svenska', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1026', 'Language Translator', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1027', 'English', NULL, NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1028', 'Deutsch', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1029', 'Sandby borg', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1030', 'Regalskeppet Kronan', 'The Crown', 'Die Kronan');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1031', 'Vrakmodellen', 'The wreck site', 'Der Fundort des Wracks');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1032', 'Testguide', 'Guide test', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1033', 'Upgrades', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1044', 'messages', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1034', 'Nutid', 'Present day', 'Vorhanden');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1045', 'Välkommen', 'Welcome!', 'Willkommen!');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1043', 'Repeaters', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1035', 'Ankarfjäll och Blank', 'Ankarfjäll and Blank', 'Ankarfjäll und Blank');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1036', 'Tennet', 'Pewter', 'Zinn');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1037', 'Batteridäcket', 'The Middle Gun Deck', 'Das Batteriedeck');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1038', 'Creutz kajuta', 'The Admiral´s Cabin', 'Creutz Kajüte');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1039', 'Skatterna', 'The Coin Treasures', 'Die Schätze');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1040', 'Amiralernas rum', 'The Admiral´s Room', 'Der Raum der Admirale');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1041', 'Skelettmontern', 'The Clothes Showcase', 'Skelettvitrine');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1042', 'Om audioguiden', 'About', 'Über den Audioguide');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1046', 'valkommen', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1053', 'Välj språk', 'Select your language', 'Wähle deine Sprache');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1054', 'Introduktion', 'Introduction', 'Einführung');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1055', 'Folkvandringstid och fornborgar', 'The Great Migration and ringforts', 'Völkerwanderungszeit und frühgeschichtliche Burgen');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1056', 'Upptäckten, utgrävningarna och fynden', 'The discovery, the excavations and the finds', 'Die Entdeckung, die Ausgrabungen und die Funde');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1057', 'De döda', 'The dead', 'Die Toten');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1058', 'Motivet', 'The motive', 'Das Motiv');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1059', 'Spännen', 'Buckle', 'Reliefbroschen');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1060', 'Jenny Nyström', 'Jenny Nyström', 'Jenny Nyström');
INSERT INTO `field_title` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1061', 'Export Site Profile', '', '');

DROP TABLE IF EXISTS `field_voice`;
CREATE TABLE `field_voice` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1027` text,
  `data1028` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1027` (`data1027`(250)),
  KEY `data_exact1028` (`data1028`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1027` (`data1027`),
  FULLTEXT KEY `data1028` (`data1028`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_voice` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1015', 'Maria Kanje', 'Jonathan Ramsden', 'Christina Schöning');
INSERT INTO `field_voice` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1030', 'Lars Einarsson', 'Jonathan Ramsden', 'Christina Schöning');
INSERT INTO `field_voice` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1029', 'Maria Kanje', '', '');
INSERT INTO `field_voice` (`pages_id`, `data`, `data1027`, `data1028`) VALUES('1060', 'Maria Kanje', '', '');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'language');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'exhibition');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'about');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'welcome');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'repeater_messages');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'selectlang');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', '{\"label\":\"Guidefil\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '100', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '106', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '102', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '104', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '98', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '105', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '101', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '99', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '107', '4', '{\"maxlength\":2048}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '108', '5', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitleLanguage', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeTextareaLanguage', 'body', '0', 'Brödtext', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4,8,16],\"minlength\":0,\"maxlength\":0,\"showCount\":2,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"langBlankInherit\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeImage', 'images', '0', 'Bilder', '{\"extensions\":\"gif jpg jpeg png svg\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":8,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":7,\"tagsList\":\"default english deutsch\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1024,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeFile', 'audiofiles', '0', 'Ljudfiler', '{\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png mp3 wav\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":8,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"fileSchema\":7,\"tagsList\":\"default english deutsch\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeInteger', 'floor', '0', 'Våning', '{\"description\":\"Ange vilken v\\u00e5ning utst\\u00e4llningen finns p\\u00e5.\",\"zeroNotEmpty\":0,\"collapsed\":0,\"inputType\":\"text\",\"size\":10}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeRepeater', 'messages', '0', 'Meddelanden', '{\"template_id\":47,\"parent_id\":1044,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"rememberOpen\":1,\"collapsed\":0,\"repeaterFields\":[98,99]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeText', 'langcode', '0', 'Språk kod', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeText', 'script', '0', 'Manus', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeTextLanguage', 'voice', '0', 'Röst', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.103\"}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2018-02-19 15:23:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2018-02-19 15:23:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2018-02-19 15:23:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2018-02-19 15:23:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2018-02-19 15:23:53');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'LanguageSupport', '35', '{\"languagesPageID\":1024,\"defaultLanguagePageID\":1025,\"otherLanguagePageIDs\":[1027,1028],\"languageTranslatorPageID\":1026}', '2018-02-20 07:55:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'ProcessLanguage', '1', '', '2018-02-20 07:55:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'ProcessLanguageTranslator', '1', '', '2018-02-20 07:55:38');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'LanguageSupportFields', '3', '', '2018-02-20 07:55:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'FieldtypeTextLanguage', '1', '', '2018-02-20 07:55:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'FieldtypePageTitleLanguage', '1', '', '2018-02-20 07:55:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'FieldtypeTextareaLanguage', '1', '', '2018-02-20 07:55:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":9,\"pageNumUrlPrefix1025\":\"sida\",\"useHomeSegment\":\"0\"}', '2018-02-20 07:56:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'LanguageTabs', '11', '{\"tabField\":\"title\"}', '2018-02-20 07:56:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'AllInOneMinify', '3', '{\"stylesheet_prefix\":\"css_\",\"javascript_prefix\":\"js_\",\"max_cache_lifetime\":\"2419200\",\"html_minify\":1,\"development_mode\":\"\",\"directory_traversal\":\"\",\"empty_cache\":\"Empty cache\",\"domain_sharding\":\"\",\"domain_sharding_ssl\":\"\"}', '2018-02-20 08:23:21');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'MarkupSimpleNavigation', '0', '', '2018-02-20 09:05:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'ProcessWireUpgrade', '1', '', '2018-05-09 07:27:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'ProcessWireUpgradeCheck', '11', '', '2018-05-09 07:27:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1043}', '2018-05-29 08:37:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'InputfieldRepeater', '0', '', '2018-05-29 08:37:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'InputfieldPageAutocomplete', '0', '', '2018-05-29 10:54:02');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name1027` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1027` int(10) unsigned NOT NULL DEFAULT '1',
  `name1028` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1028` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name1027_parent_id` (`name1027`,`parent_id`),
  UNIQUE KEY `name1028_parent_id` (`name1028`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1062 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1', '0', '1', 'home', '9', '2018-05-17 12:12:57', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '0', 'en', '1', 'de', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('2', '1', '2', 'admin', '1035', '2018-02-19 15:23:49', '40', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '5', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('3', '2', '2', 'page', '21', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('6', '3', '2', 'add', '21', '2018-02-19 15:24:00', '40', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('7', '1', '2', 'trash', '1039', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '6', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('8', '3', '2', 'list', '21', '2018-02-19 15:24:04', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('9', '3', '2', 'sort', '1047', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '3', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('10', '3', '2', 'edit', '1045', '2018-02-19 15:24:02', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '4', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('11', '22', '2', 'template', '21', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('16', '22', '2', 'field', '21', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('21', '2', '2', 'module', '21', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('22', '2', '2', 'setup', '21', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('23', '2', '2', 'login', '1035', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '4', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('27', '1', '29', 'http404', '1035', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '3', '2018-02-19 15:23:30', '4', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('28', '2', '2', 'access', '13', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '3', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('29', '28', '2', 'users', '29', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('30', '28', '2', 'roles', '29', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('31', '28', '2', 'permissions', '29', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('32', '31', '5', 'page-edit', '25', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('34', '31', '5', 'page-delete', '25', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '3', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('35', '31', '5', 'page-move', '25', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '4', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('36', '31', '5', 'page-view', '25', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('37', '30', '4', 'guest', '25', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('38', '30', '4', 'superuser', '25', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('41', '29', '3', 'admin', '1', '2018-05-09 07:25:54', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('40', '29', '3', 'guest', '25', '2018-02-20 07:55:39', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('50', '31', '5', 'page-sort', '25', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '5', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('51', '31', '5', 'page-template', '25', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '6', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('52', '31', '5', 'user-admin', '25', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '10', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('53', '31', '5', 'profile-edit', '1', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '13', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('54', '31', '5', 'page-lock', '1', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '8', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('300', '3', '2', 'search', '1045', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '6', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('301', '3', '2', 'trash', '1047', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '6', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('302', '3', '2', 'link', '1041', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '7', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('303', '3', '2', 'image', '1041', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '2', '2018-02-19 15:23:30', '8', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('304', '2', '2', 'profile', '1025', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '41', '2018-02-19 15:23:30', '5', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1006', '31', '5', 'page-lister', '1', '2018-02-19 15:23:30', '40', '2018-02-19 15:23:30', '40', '2018-02-19 15:23:30', '9', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1007', '3', '2', 'lister', '1', '2018-02-19 15:23:30', '40', '2018-02-19 15:23:30', '40', '2018-02-19 15:23:30', '9', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1010', '3', '2', 'recent-pages', '1', '2018-02-19 15:23:46', '40', '2018-02-19 15:23:46', '40', '2018-02-19 15:23:46', '10', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2018-02-19 15:23:47', '40', '2018-02-19 15:23:47', '40', '2018-02-19 15:23:47', '10', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1012', '22', '2', 'logs', '1', '2018-02-19 15:23:52', '40', '2018-02-19 15:23:52', '40', '2018-02-19 15:23:52', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1013', '31', '5', 'logs-view', '1', '2018-02-19 15:23:52', '40', '2018-02-19 15:23:52', '40', '2018-02-19 15:23:52', '11', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1014', '31', '5', 'logs-edit', '1', '2018-02-19 15:23:52', '40', '2018-02-19 15:23:52', '40', '2018-02-19 15:23:52', '12', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1015', '1', '44', 'pa-vakt-mot-supermakt-kallt-krig-och-varmt-vardagsliv-i-kalmar-lan-1946-1991', '1', '2018-06-05 07:24:14', '41', '2018-02-19 15:30:29', '41', '2018-02-19 15:34:40', '3', 'in-the-shadow-of-a-superpower-cold-war-and-everyday-life-in-kalmar-county-1946-1991', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1016', '1015', '29', 'introduktion', '1', '2018-06-20 15:13:16', '41', '2018-02-19 15:31:19', '41', '2018-02-19 15:32:14', '0', 'introduction', '1', 'einfuhrung', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1017', '1015', '29', 'kalla-kriget', '1', '2018-06-20 15:13:29', '41', '2018-02-19 15:32:20', '41', '2018-02-19 15:32:28', '1', 'the-cold-war', '1', 'der-kalte-krieg', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1018', '1015', '29', 'kvinnorna', '1', '2018-06-20 15:14:27', '41', '2018-02-19 15:32:47', '41', '2018-02-19 15:32:55', '2', 'women', '1', 'die-frauen', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1019', '1015', '29', 'utrustning-och-sjal', '1', '2018-06-20 15:14:50', '41', '2018-02-19 15:33:05', '41', '2018-02-19 15:33:12', '3', 'equipment-and-soul', '1', 'ausrustung-und-seele', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1020', '1015', '29', 'forberedelser', '1', '2018-06-20 15:16:00', '41', '2018-02-19 15:33:20', '41', '2018-02-19 15:33:28', '4', 'preparations', '1', 'vorbereitungen', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1021', '1015', '29', 'pa-andra-sidan-ostersjon', '1', '2018-06-01 12:29:02', '41', '2018-02-19 15:33:36', '41', '2018-02-19 15:34:04', '5', 'across-the-baltic', '1', 'uber-die-ostsee', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1022', '1015', '29', 'om-kriget-kommer', '1', '2018-06-01 12:29:41', '41', '2018-02-19 15:34:13', '41', '2018-02-19 15:34:23', '6', 'if-war-should-happen', '1', 'wenn-der-krieg-kommt', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1023', '31', '5', 'lang-edit', '1', '2018-02-20 07:55:37', '41', '2018-02-20 07:55:37', '41', '2018-02-20 07:55:37', '13', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1024', '22', '2', 'languages', '16', '2018-02-20 07:55:38', '41', '2018-02-20 07:55:38', '41', '2018-02-20 07:55:38', '3', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1025', '1024', '43', 'default', '16', '2018-06-05 07:20:02', '41', '2018-02-20 07:55:38', '41', '2018-02-20 07:55:38', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1026', '22', '2', 'language-translator', '1040', '2018-02-20 07:55:39', '41', '2018-02-20 07:55:39', '41', '2018-02-20 07:55:39', '4', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1027', '1024', '43', 'english', '1', '2018-06-05 07:35:05', '41', '2018-02-20 08:00:38', '41', '2018-02-20 08:00:38', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1028', '1024', '43', 'deutsch', '1', '2018-06-05 07:35:48', '41', '2018-02-20 08:00:57', '41', '2018-02-20 08:00:57', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1029', '1', '44', 'sandby-borg', '1', '2018-06-07 13:26:22', '41', '2018-02-20 08:24:45', '41', '2018-06-07 13:26:22', '4', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1030', '1', '44', 'regalskeppet-kronan', '1', '2018-06-18 10:08:25', '41', '2018-04-18 09:39:27', '41', '2018-06-18 10:08:25', '5', 'the-crown', '1', 'die-kronan', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1031', '1030', '29', 'vrakmodellen', '1', '2018-06-01 13:56:20', '41', '2018-04-18 09:40:50', '41', '2018-04-18 09:41:17', '0', 'the-wreck-site', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1032', '7', '29', '1032.1.6_testguide', '10241', '2018-05-07 15:22:22', '41', '2018-05-07 15:20:32', '41', NULL, '6', '1032.1.6_guide-test', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1033', '22', '2', 'upgrades', '1', '2018-05-09 07:27:49', '41', '2018-05-09 07:27:49', '41', '2018-05-09 07:27:49', '5', NULL, '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1034', '1015', '29', 'nutid', '1', '2018-06-01 12:29:32', '41', '2018-05-14 10:36:37', '41', '2018-05-14 10:36:47', '7', 'present-day', '1', 'vorhanden', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1035', '1030', '29', 'ankarfjall-och-blank', '1', '2018-06-01 13:56:48', '41', '2018-05-18 07:50:55', '41', '2018-05-18 07:51:17', '1', 'ankarfjall-and-blank', '1', 'ankarfjall-und-blank', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1036', '1030', '29', 'tennet', '1', '2018-06-01 13:57:08', '41', '2018-05-18 07:51:44', '41', '2018-05-18 07:52:03', '2', 'pewter', '1', 'zinn', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1037', '1030', '29', 'batteridacket', '1', '2018-06-01 13:57:30', '41', '2018-05-18 07:52:28', '41', '2018-05-18 07:52:48', '3', 'the-middle-gun-deck', '1', 'das-batteriedeck', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1038', '1030', '29', 'creutz-kajuta', '1', '2018-06-01 13:57:37', '41', '2018-05-18 07:53:15', '41', '2018-05-18 07:53:32', '4', 'the-admiral-s-cabin', '1', 'creutz-kajute', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1039', '1030', '29', 'skatterna', '1', '2018-06-01 13:57:54', '41', '2018-05-18 07:53:51', '41', '2018-05-18 07:54:05', '5', 'the-coin-treasures', '1', 'die-schatze', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1040', '1030', '29', 'amiralerna-rum', '1', '2018-06-01 13:58:12', '41', '2018-05-18 07:54:34', '41', '2018-05-18 07:54:46', '6', 'the-admiral-s-room', '1', 'der-raum-der-admirale', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1041', '1030', '29', 'skelettmontern', '1', '2018-06-01 13:58:28', '41', '2018-05-18 07:55:24', '41', '2018-05-18 07:55:36', '7', 'the-clothes-showcase', '1', 'skelettvitrine', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1042', '1', '45', 'om-audioguiden', '1025', '2018-06-04 13:22:30', '41', '2018-05-18 14:08:11', '41', '2018-05-18 14:08:11', '6', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1043', '2', '2', 'repeaters', '1036', '2018-05-29 08:37:19', '41', '2018-05-29 08:37:19', '41', '2018-05-29 08:37:19', '6', NULL, '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1044', '1043', '2', 'for-field-105', '17', '2018-05-29 08:37:47', '41', '2018-05-29 08:37:47', '41', '2018-05-29 08:37:47', '0', NULL, '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1045', '1', '46', 'valkommen', '1025', '2018-06-04 13:35:49', '41', '2018-05-29 08:41:43', '41', '2018-05-29 08:41:54', '7', 'welcome', '1', 'willkommen', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1046', '1044', '2', 'for-page-1045', '17', '2018-05-29 08:41:57', '41', '2018-05-29 08:41:57', '41', '2018-05-29 08:41:57', '0', NULL, '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1047', '1046', '47', '1527576123-5768-1', '1', '2018-05-29 10:27:34', '41', '2018-05-29 08:42:03', '41', '2018-05-29 08:46:05', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1048', '1046', '47', '1527576335-6834-1', '1', '2018-05-29 10:52:12', '41', '2018-05-29 08:45:35', '41', '2018-05-29 08:46:05', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1049', '1046', '47', '1527576343-3256-1', '1', '2018-05-29 10:36:30', '41', '2018-05-29 08:45:43', '41', '2018-05-29 08:46:05', '3', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1050', '1046', '47', '1527576351-7778-1', '1', '2018-05-29 10:27:34', '41', '2018-05-29 08:45:51', '41', '2018-05-29 08:46:05', '4', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1051', '1046', '47', '1527576358-5878-1', '1', '2018-06-04 13:35:49', '41', '2018-05-29 08:45:58', '41', '2018-05-29 08:46:05', '5', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1052', '1046', '47', '1527582362-1072-1', '1', '2018-06-04 13:14:13', '41', '2018-05-29 10:26:02', '41', '2018-05-29 10:27:10', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1053', '1', '48', 'valj-sprak', '1025', '2018-06-04 10:31:33', '41', '2018-06-04 10:31:27', '41', '2018-06-04 10:31:33', '8', 'select-your-language', '1', 'wahle-deine-sprache', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1054', '1029', '29', 'introduktion', '1', '2018-06-13 12:40:37', '41', '2018-06-07 13:27:54', '41', '2018-06-07 13:32:25', '0', 'introduction', '1', 'einfuhrung', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1055', '1029', '29', 'folkvandringstid-och-fornborgar', '1', '2018-06-13 12:40:49', '41', '2018-06-07 13:32:44', '41', '2018-06-07 13:33:29', '1', 'the-great-migration-and-ringforts', '1', 'volkerwanderungszeit-und-fruhgeschichtliche-burgen', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1056', '1029', '29', 'upptackten-utgravningarna-och-fynden', '1', '2018-06-13 12:41:01', '41', '2018-06-07 13:33:49', '41', '2018-06-07 13:34:19', '2', 'the-discovery-the-excavations-and-the-finds', '1', 'die-entdeckung-die-ausgrabungen-und-die-funde', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1057', '1029', '29', 'de-doda', '1', '2018-06-13 12:41:12', '41', '2018-06-07 13:34:37', '41', '2018-06-07 13:35:04', '3', 'the-dead', '1', 'die-toten', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1058', '1029', '29', 'motivet', '1', '2018-06-13 12:41:23', '41', '2018-06-07 13:35:21', '41', '2018-06-07 13:35:49', '4', 'the-motive', '1', 'das-motiv', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1059', '1029', '29', 'spannen', '1', '2018-06-13 12:41:33', '41', '2018-06-07 13:36:57', '41', '2018-06-07 13:37:59', '5', 'buckle', '1', 'reliefbroschen', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1027`, `status1027`, `name1028`, `status1028`) VALUES('1060', '1', '44', 'jenny-nystrom', '2049', '2018-06-18 10:13:02', '41', '2018-06-18 10:12:35', '41', NULL, '9', NULL, '1', NULL, '1');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2018-02-19 15:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2018-02-19 15:23:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2018-02-19 15:23:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2018-02-19 15:23:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '1', '2018-02-19 15:30:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '1', '2018-06-04 10:31:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1052', '2', '2018-05-29 10:26:02');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1051', '2', '2018-05-29 08:45:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '2', '2018-05-29 08:45:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1049', '2', '2018-05-29 08:45:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1048', '2', '2018-05-29 08:45:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1047', '2', '2018-05-29 08:42:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '2', '2018-02-20 07:55:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '2', '2018-02-20 07:55:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '2', '2018-02-20 08:00:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '2', '2018-02-20 08:00:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '1', '2018-02-20 08:24:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '1', '2018-04-18 09:39:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1045', '1', '2018-05-29 08:41:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '2', '2018-05-07 15:22:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1042', '1', '2018-05-18 14:08:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '1', '2018-06-07 13:27:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1055', '1', '2018-06-07 13:32:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1056', '1', '2018-06-07 13:33:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1057', '1', '2018-06-07 13:34:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1058', '1', '2018-06-07 13:35:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1059', '1', '2018-06-07 13:36:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1060', '1', '2018-06-18 10:12:35');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1024', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1024', '22');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1043', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1043');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1046', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1046', '1043');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1046', '1044');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1519049229,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1529309518,\"ns\":\"\\\\\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '2419200', '{\"slashUrls\":1,\"compile\":3,\"modified\":1529499581,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'language', '97', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1528102893}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'exhibition', '98', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1528176117,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'about', '99', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1528177067,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'welcome', '100', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1528112320,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'repeater_messages', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1527575867}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'selectlang', '102', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1528119280,\"ns\":\"\\\\\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":23,"numCreateTables":29,"numInserts":595,"numSeconds":1}