CREATE TABLE `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_item` int(20) NOT NULL DEFAULT '0',
  `the_date` date NOT NULL DEFAULT '0000-00-00',
  `id_state` int(11) NOT NULL DEFAULT '0',
  `id_booking` int(10) NOT NULL DEFAULT '0',
  `PropId` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_item` (`id_item`),
  KEY `id_state` (`id_state`)
) ENGINE=MyISAM AUTO_INCREMENT=932 DEFAULT CHARSET=utf8;INSERT INTO bookings VALUES("1","1","2014-11-05","1","0","1","0.00");INSERT INTO bookings VALUES("2","1","2014-11-06","1","0","1","0.00");INSERT INTO bookings VALUES("3","1","2014-11-07","1","0","1","0.00");INSERT INTO bookings VALUES("4","1","2014-11-08","1","0","1","0.00");INSERT INTO bookings VALUES("5","1","2014-11-09","1","0","1","0.00");INSERT INTO bookings VALUES("6","1","2014-11-10","1","0","1","0.00");INSERT INTO bookings VALUES("7","1","2014-11-11","1","0","1","0.00");INSERT INTO bookings VALUES("8","1","2014-11-20","1","0","1","0.00");INSERT INTO bookings VALUES("9","1","2014-11-21","1","0","1","0.00");INSERT INTO bookings VALUES("10","1","2014-11-22","1","0","1","0.00");INSERT INTO bookings VALUES("11","1","2014-11-23","1","0","1","0.00");INSERT INTO bookings VALUES("12","1","2014-11-24","1","0","1","0.00");INSERT INTO bookings VALUES("13","1","2014-11-25","1","0","1","0.00");INSERT INTO bookings VALUES("14","1","2014-11-26","1","0","1","0.00");INSERT INTO bookings VALUES("15","1","2014-11-14","1","0","17","0.00");INSERT INTO bookings VALUES("16","1","2014-11-11","1","0","32","0.00");INSERT INTO bookings VALUES("17","1","2014-11-12","1","0","32","0.00");INSERT INTO bookings VALUES("18","1","2014-11-19","1","0","16","0.00");INSERT INTO bookings VALUES("19","1","2014-11-20","1","0","16","0.00");INSERT INTO bookings VALUES("20","1","2014-11-21","1","0","16","0.00");INSERT INTO bookings VALUES("21","1","2014-11-22","1","0","16","0.00");INSERT INTO bookings VALUES("22","1","2014-11-23","1","0","16","0.00");INSERT INTO bookings VALUES("23","1","2014-11-24","1","0","16","0.00");INSERT INTO bookings VALUES("24","1","2014-11-25","1","0","16","0.00");INSERT INTO bookings VALUES("25","1","2014-11-26","1","0","16","0.00");INSERT INTO bookings VALUES("26","1","2014-11-27","1","0","16","0.00");INSERT INTO bookings VALUES("27","1","2014-12-01","1","0","16","0.00");INSERT INTO bookings VALUES("28","1","2014-12-02","1","0","16","0.00");INSERT INTO bookings VALUES("29","1","2014-11-28","1","0","16","0.00");INSERT INTO bookings VALUES("30","1","2014-11-29","1","0","16","0.00");INSERT INTO bookings VALUES("31","1","2014-11-27","1","0","110","0.00");INSERT INTO bookings VALUES("32","1","2014-11-28","1","0","110","0.00");INSERT INTO bookings VALUES("33","1","2014-12-05","1","0","16","0.00");INSERT INTO bookings VALUES("34","1","2014-12-06","1","0","16","0.00");INSERT INTO bookings VALUES("35","1","2014-12-03","1","0","16","0.00");INSERT INTO bookings VALUES("36","1","2014-12-04","1","0","16","0.00");INSERT INTO bookings VALUES("37","1","2014-12-07","1","0","16","0.00");INSERT INTO bookings VALUES("38","1","2014-12-08","1","0","16","0.00");INSERT INTO bookings VALUES("39","1","2014-12-09","1","0","16","0.00");INSERT INTO bookings VALUES("40","1","2014-12-10","1","0","16","0.00");INSERT INTO bookings VALUES("41","1","2014-12-11","1","0","16","0.00");INSERT INTO bookings VALUES("42","1","2014-12-12","1","0","16","0.00");INSERT INTO bookings VALUES("43","1","2014-12-13","1","0","16","0.00");INSERT INTO bookings VALUES("44","1","2014-12-14","1","0","16","0.00");INSERT INTO bookings VALUES("45","1","2014-12-15","1","0","16","0.00");INSERT INTO bookings VALUES("49","1","2014-11-28","1","0","145","0.00");INSERT INTO bookings VALUES("48","1","2014-11-27","1","0","145","0.00");INSERT INTO bookings VALUES("50","1","2014-12-09","1","0","135","0.00");INSERT INTO bookings VALUES("51","1","2014-12-10","1","0","135","0.00");INSERT INTO bookings VALUES("52","1","2014-12-05","1","0","149","0.00");INSERT INTO bookings VALUES("53","1","2014-12-06","1","0","149","0.00");INSERT INTO bookings VALUES("54","1","2014-12-07","1","0","149","0.00");INSERT INTO bookings VALUES("55","1","2014-12-08","1","0","149","0.00");INSERT INTO bookings VALUES("56","1","2014-12-09","1","0","149","0.00");INSERT INTO bookings VALUES("57","1","2014-12-10","1","0","149","0.00");INSERT INTO bookings VALUES("58","1","2014-12-11","1","0","149","0.00");INSERT INTO bookings VALUES("59","1","2014-12-12","1","0","149","0.00");INSERT INTO bookings VALUES("60","1","2014-12-05","1","0","8","0.00");INSERT INTO bookings VALUES("61","1","2014-12-06","1","0","8","0.00");INSERT INTO bookings VALUES("62","1","2014-12-07","1","0","8","0.00");INSERT INTO bookings VALUES("63","1","2014-12-08","1","0","8","0.00");INSERT INTO bookings VALUES("64","1","2014-12-09","1","0","8","0.00");INSERT INTO bookings VALUES("65","1","2014-12-10","1","0","8","0.00");INSERT INTO bookings VALUES("66","1","2014-12-16","1","0","8","0.00");INSERT INTO bookings VALUES("67","1","2014-12-17","1","0","8","0.00");INSERT INTO bookings VALUES("68","1","2014-12-18","1","0","8","0.00");INSERT INTO bookings VALUES("69","1","2014-12-19","1","0","8","0.00");INSERT INTO bookings VALUES("70","1","2014-12-20","1","0","8","0.00");INSERT INTO bookings VALUES("71","1","2014-12-21","1","0","8","0.00");INSERT INTO bookings VALUES("72","1","2014-12-22","1","0","8","0.00");INSERT INTO bookings VALUES("73","1","2014-12-23","1","0","8","0.00");INSERT INTO bookings VALUES("74","1","2014-12-24","1","0","8","0.00");INSERT INTO bookings VALUES("75","1","2014-12-16","1","0","180","0.00");INSERT INTO bookings VALUES("76","1","2014-12-17","1","0","180","0.00");INSERT INTO bookings VALUES("77","1","2014-12-18","1","0","180","0.00");INSERT INTO bookings VALUES("78","1","2014-12-17","1","0","202","0.00");INSERT INTO bookings VALUES("79","1","2014-12-18","1","0","202","0.00");INSERT INTO bookings VALUES("80","1","2014-12-19","1","0","202","0.00");INSERT INTO bookings VALUES("81","1","2014-12-20","1","0","202","0.00");INSERT INTO bookings VALUES("82","1","2014-12-21","1","0","202","0.00");INSERT INTO bookings VALUES("83","1","2014-12-23","1","0","202","0.00");INSERT INTO bookings VALUES("84","1","2014-12-24","1","0","202","0.00");INSERT INTO bookings VALUES("85","1","2014-12-25","1","0","202","0.00");INSERT INTO bookings VALUES("86","1","2014-12-26","1","0","202","0.00");INSERT INTO bookings VALUES("87","1","2014-12-27","1","0","202","0.00");INSERT INTO bookings VALUES("88","1","2014-12-28","1","0","202","0.00");INSERT INTO bookings VALUES("89","1","2014-12-29","1","0","202","0.00");INSERT INTO bookings VALUES("90","1","2014-12-30","1","0","202","0.00");INSERT INTO bookings VALUES("91","1","2014-12-31","1","0","202","0.00");INSERT INTO bookings VALUES("92","1","2014-12-23","1","0","213","0.00");INSERT INTO bookings VALUES("93","1","2014-12-24","1","0","213","0.00");INSERT INTO bookings VALUES("94","1","2014-12-25","1","0","213","0.00");INSERT INTO bookings VALUES("95","1","2014-12-19","1","0","199","0.00");INSERT INTO bookings VALUES("96","1","2014-12-20","1","0","199","0.00");INSERT INTO bookings VALUES("97","1","2014-12-21","1","0","199","0.00");INSERT INTO bookings VALUES("98","1","2014-12-22","1","0","199","0.00");INSERT INTO bookings VALUES("99","1","2014-12-23","1","0","199","0.00");INSERT INTO bookings VALUES("100","1","2014-12-22","1","0","219","0.00");INSERT INTO bookings VALUES("101","1","2014-12-23","1","0","219","0.00");INSERT INTO bookings VALUES("102","1","2014-12-24","1","0","219","0.00");INSERT INTO bookings VALUES("103","1","2014-12-25","1","0","219","0.00");INSERT INTO bookings VALUES("104","1","2014-12-26","1","0","219","0.00");INSERT INTO bookings VALUES("105","1","2014-12-27","1","0","219","0.00");INSERT INTO bookings VALUES("106","1","2014-12-28","1","0","219","0.00");INSERT INTO bookings VALUES("107","1","2014-12-29","1","0","219","0.00");INSERT INTO bookings VALUES("108","1","2014-12-30","1","0","219","0.00");INSERT INTO bookings VALUES("109","1","2014-12-23","1","0","222","0.00");INSERT INTO bookings VALUES("110","1","2014-12-24","1","0","222","0.00");INSERT INTO bookings VALUES("111","1","2014-12-25","1","0","222","0.00");INSERT INTO bookings VALUES("112","1","2014-12-26","1","0","222","0.00");INSERT INTO bookings VALUES("113","1","2014-12-27","1","0","222","0.00");INSERT INTO bookings VALUES("114","1","2014-12-28","1","0","222","0.00");INSERT INTO bookings VALUES("115","1","2014-12-29","1","0","222","0.00");INSERT INTO bookings VALUES("116","1","2015-01-01","1","0","222","0.00");INSERT INTO bookings VALUES("117","1","2015-01-02","1","0","222","0.00");INSERT INTO bookings VALUES("118","1","2015-01-03","1","0","222","0.00");INSERT INTO bookings VALUES("119","1","2015-01-04","1","0","222","0.00");INSERT INTO bookings VALUES("346","1","2015-01-05","1","0","222","0.00");INSERT INTO bookings VALUES("815","1","2015-01-06","1","0","222","0.00");INSERT INTO bookings VALUES("920","1","2015-01-22","1","0","222","0.00");INSERT INTO bookings VALUES("921","1","2015-01-23","1","0","222","0.00");INSERT INTO bookings VALUES("136","1","2015-01-06","1","0","230","0.00");INSERT INTO bookings VALUES("137","1","2015-01-07","1","0","230","0.00");INSERT INTO bookings VALUES("138","1","2015-01-08","1","0","230","0.00");INSERT INTO bookings VALUES("139","1","2015-01-09","1","0","230","0.00");INSERT INTO bookings VALUES("140","1","2015-01-10","1","0","230","0.00");INSERT INTO bookings VALUES("141","1","2015-01-11","1","0","230","0.00");INSERT INTO bookings VALUES("142","1","2015-01-12","1","0","230","0.00");INSERT INTO bookings VALUES("143","1","2015-01-13","1","0","230","0.00");INSERT INTO bookings VALUES("144","1","2015-01-14","1","0","230","0.00");INSERT INTO bookings VALUES("145","1","2015-01-15","1","0","230","0.00");INSERT INTO bookings VALUES("919","1","2015-01-21","1","0","222","0.00");INSERT INTO bookings VALUES("918","1","2015-01-20","1","0","222","0.00");INSERT INTO bookings VALUES("917","1","2015-01-19","1","0","222","0.00");INSERT INTO bookings VALUES("916","1","2015-01-29","1","0","222","0.00");INSERT INTO bookings VALUES("915","1","2015-01-28","1","0","222","0.00");INSERT INTO bookings VALUES("914","1","2015-01-27","1","0","222","0.00");INSERT INTO bookings VALUES("913","1","2015-01-26","1","0","222","0.00");INSERT INTO bookings VALUES("888","1","2015-02-02","1","0","222","0.00");INSERT INTO bookings VALUES("889","1","2015-02-03","1","0","222","0.00");INSERT INTO bookings VALUES("890","1","2015-02-04","1","0","222","0.00");INSERT INTO bookings VALUES("891","1","2015-02-05","1","0","222","0.00");INSERT INTO bookings VALUES("892","1","2015-02-23","1","0","222","0.00");INSERT INTO bookings VALUES("893","1","2015-02-24","1","0","222","0.00");INSERT INTO bookings VALUES("894","1","2015-02-25","1","0","222","0.00");INSERT INTO bookings VALUES("895","1","2015-02-26","1","0","222","0.00");INSERT INTO bookings VALUES("896","1","2015-02-27","1","0","222","0.00");INSERT INTO bookings VALUES("897","1","2015-02-17","1","0","222","0.00");INSERT INTO bookings VALUES("898","1","2015-02-18","1","0","222","0.00");INSERT INTO bookings VALUES("899","1","2015-02-19","1","0","222","0.00");INSERT INTO bookings VALUES("900","1","2015-02-20","1","0","222","0.00");INSERT INTO bookings VALUES("901","1","2015-02-21","1","0","222","0.00");INSERT INTO bookings VALUES("902","1","2015-02-10","1","0","222","0.00");INSERT INTO bookings VALUES("903","1","2015-02-11","1","0","222","0.00");INSERT INTO bookings VALUES("904","1","2015-02-12","1","0","222","0.00");INSERT INTO bookings VALUES("905","1","2015-02-13","1","0","222","0.00");INSERT INTO bookings VALUES("906","1","2015-02-14","1","0","222","0.00");INSERT INTO bookings VALUES("907","1","2015-03-01","1","0","222","0.00");INSERT INTO bookings VALUES("908","1","2015-03-02","1","0","222","0.00");INSERT INTO bookings VALUES("909","1","2015-03-03","1","0","222","0.00");INSERT INTO bookings VALUES("910","1","2015-03-04","1","0","222","0.00");INSERT INTO bookings VALUES("911","1","2015-03-05","1","0","222","0.00");INSERT INTO bookings VALUES("912","1","2015-01-25","1","0","222","0.00");INSERT INTO bookings VALUES("922","1","2015-01-13","1","0","5","0.00");INSERT INTO bookings VALUES("923","1","2015-01-14","1","0","5","0.00");INSERT INTO bookings VALUES("924","1","2015-01-15","1","0","5","0.00");INSERT INTO bookings VALUES("925","1","2015-01-13","1","0","6","0.00");INSERT INTO bookings VALUES("926","1","2015-01-14","1","0","6","0.00");INSERT INTO bookings VALUES("927","1","2015-01-15","1","0","6","0.00");INSERT INTO bookings VALUES("928","1","2015-01-16","1","0","6","0.00");INSERT INTO bookings VALUES("929","1","2015-01-13","1","0","7","0.00");INSERT INTO bookings VALUES("930","1","2015-01-14","1","0","7","0.00");INSERT INTO bookings VALUES("931","1","2015-01-15","1","0","7","0.00");CREATE TABLE `bookings_admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` tinyint(1) NOT NULL DEFAULT '2',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `date_visit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;INSERT INTO bookings_admin_users VALUES("1","1","admin","fe01ce2a7fbac8fafaed7c982a04e229","1","2014-01-03 16:23:49","2");CREATE TABLE `bookings_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `num_months` tinyint(3) NOT NULL DEFAULT '3',
  `default_lang` varchar(6) NOT NULL DEFAULT 'en',
  `theme` varchar(50) NOT NULL DEFAULT 'default',
  `start_day` enum('mon','sun') NOT NULL DEFAULT 'sun',
  `date_format` enum('us','eu') NOT NULL DEFAULT 'eu',
  `click_past_dates` enum('on','off') NOT NULL DEFAULT 'off',
  `cal_url` varchar(255) NOT NULL DEFAULT '',
  `local_path` varchar(255) NOT NULL DEFAULT '/calendar',
  `version` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;INSERT INTO bookings_config VALUES("1","Availability Calendar","6","en","default","sun","eu","off","http://www.stayrove.com/1/","/calendar","v3.03.07");CREATE TABLE `bookings_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT '1',
  `id_ref_external` int(11) NOT NULL COMMENT 'link to external db table',
  `desc_en` varchar(100) NOT NULL DEFAULT '',
  `desc_es` varchar(100) NOT NULL DEFAULT '',
  `list_order` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_ref_external` (`id_ref_external`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;INSERT INTO bookings_items VALUES("1","1","0","Demo Item","Demo","1","1");CREATE TABLE `bookings_last_update` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_item` int(10) NOT NULL DEFAULT '0',
  `date_mod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `id_item` (`id_item`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;INSERT INTO bookings_last_update VALUES("1","1","2014-01-21 10:38:03");CREATE TABLE `bookings_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_en` varchar(100) NOT NULL DEFAULT '',
  `desc_es` varchar(100) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `list_order` int(11) NOT NULL DEFAULT '0',
  `class` varchar(30) NOT NULL DEFAULT '',
  `show_in_key` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;INSERT INTO bookings_states VALUES("1","Booked","Reservado","b","1","0","booked","1");INSERT INTO bookings_states VALUES("4","Unavailable","Unavailable","pr","1","3","booked_pr","1");CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;INSERT INTO ci_sessions VALUES("005797557f33346913a5b99f52a1f2ab","120.18.153.29","Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36","1430437871","a:7:{s:9:\"user_data\";s:0:\"\";s:13:\"currency_type\";s:3:\"USD\";s:10:\"currency_s\";s:1:\"$\";s:10:\"currency_r\";s:4:\"1.00\";s:18:\"fc_session_temp_id\";s:6:\"117810\";s:13:\"language_code\";s:2:\"en\";s:10:\"newAuthUrl\";s:385:\"https://accounts.google.com/o/oauth2/auth?response_type=code&redirect_uri=http%3A%2F%2Fwww.stayrove.com%2F1%2Fgooglelogin%2FgoogleRedirect&client_id=100606869806-es7136a5vps090hr21lhd7jnbut6mm5k.apps.googleusercontent.com&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.profile+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email&access_type=offline&approval_prompt=force\";}");INSERT INTO ci_sessions VALUES("2ca4e725d82648faac117b4618c67111","120.18.153.29","Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36","1430437279","a:12:{s:9:\"user_data\";s:0:\"\";s:13:\"currency_type\";s:3:\"USD\";s:10:\"currency_s\";s:1:\"$\";s:10:\"currency_r\";s:4:\"1.00\";s:18:\"fc_session_temp_id\";s:6:\"511831\";s:19:\"fc_session_admin_id\";s:1:\"1\";s:21:\"fc_session_admin_name\";s:5:\"admin\";s:22:\"fc_session_admin_email\";s:17:\"pets@stayrove.com\";s:18:\"session_admin_mode\";s:8:\"fc_admin\";s:27:\"fc_session_admin_privileges\";b:0;s:21:\"flash:old:sErrMSGType\";s:13:\"message-green\";s:17:\"flash:old:sErrMSG\";s:34:\"SMTP settings updated successfully\";}");INSERT INTO ci_sessions VALUES("8fa4cd958d7209815c26c37617b2158b","120.18.153.29","Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko","1430437948","a:10:{s:9:\"user_data\";s:0:\"\";s:13:\"currency_type\";s:3:\"USD\";s:10:\"currency_s\";s:1:\"$\";s:10:\"currency_r\";s:4:\"1.00\";s:18:\"fc_session_temp_id\";s:6:\"246826\";s:19:\"fc_session_admin_id\";s:1:\"1\";s:21:\"fc_session_admin_name\";s:5:\"admin\";s:22:\"fc_session_admin_email\";s:17:\"pets@stayrove.com\";s:18:\"session_admin_mode\";s:8:\"fc_admin\";s:27:\"fc_session_admin_privileges\";b:0;}");INSERT INTO ci_sessions VALUES("afb5b57cced342d2184713794f9b8313","120.18.153.29","Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36","1430436455","a:7:{s:9:\"user_data\";s:0:\"\";s:13:\"currency_type\";s:3:\"USD\";s:10:\"currency_s\";s:1:\"$\";s:10:\"currency_r\";s:4:\"1.00\";s:18:\"fc_session_temp_id\";s:6:\"797965\";s:13:\"language_code\";s:2:\"en\";s:10:\"newAuthUrl\";s:385:\"https://accounts.google.com/o/oauth2/auth?response_type=code&redirect_uri=http%3A%2F%2Fwww.stayrove.com%2F1%2Fgooglelogin%2FgoogleRedirect&client_id=100606869806-es7136a5vps090hr21lhd7jnbut6mm5k.apps.googleusercontent.com&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.profile+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email&access_type=offline&approval_prompt=force\";}");CREATE TABLE `contactus` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `security_code` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;INSERT INTO contactus VALUES("13"," steven"," stevenbegley@hotmail.com","111","sent to contact 1.54am","");INSERT INTO contactus VALUES("14"," Steven"," stevenbegley73@gmail.com","fdfd","fdfdsf","");INSERT INTO contactus VALUES("15","ewty","ewtuk@hotmail.com","ewtuk 251","251 ewtuk","");INSERT INTO contactus VALUES("16"," ewt"," ewtuk@hotmail.com","fdsfd","dfdf","");INSERT INTO contactus VALUES("17","steven","stevenbegley@hotmail.com","test","921","");INSERT INTO contactus VALUES("18","steven","stevenbegley73@gmail.com","gmail test","921","");INSERT INTO contactus VALUES("19","test","stevenbegley@hotmail.com","treter","retretre","");CREATE TABLE `country_code` (
  `Country` varchar(80) NOT NULL,
  `Code` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;CREATE TABLE `fc_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `admin_name` varchar(24) NOT NULL,
  `admin_password` varchar(500) NOT NULL,
  `email` varchar(5000) NOT NULL,
  `dropbox_email` varchar(500) NOT NULL,
  `dropbox_password` varchar(500) NOT NULL,
  `admin_type` enum('super','sub') NOT NULL DEFAULT 'super',
  `privileges` text NOT NULL,
  `last_login_date` datetime NOT NULL,
  `last_logout_date` datetime NOT NULL,
  `last_login_ip` varchar(16) NOT NULL,
  `is_verified` enum('No','Yes') NOT NULL,
  `site_pagination_per_page` int(20) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `twilio_account_sid` varchar(1000) NOT NULL,
  `twilio_account_token` varchar(1000) NOT NULL,
  `twilio_phone_number` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;INSERT INTO fc_admin VALUES("1","2015-02-27","2015-04-29","admin","dc68578a7f9aa1f37dd76959a52305dd","pets@stayrove.com","vselvakumar04@gmail.com","permission2696","super","","2015-05-01 05:12:21","2015-04-29 09:55:47","120.18.153.29","Yes","20","Active","ACc935f2661110f762bd0092308fd83b80","e7c972aebfd93cdf76ab11cb603f584f","+14154837400");CREATE TABLE `fc_admin_settings` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `dropbox_email` varchar(500) NOT NULL,
  `dropbox_password` varchar(500) NOT NULL,
  `site_contact_mail` varchar(200) NOT NULL,
  `site_contact_number` varchar(50) NOT NULL,
  `email_title` varchar(400) NOT NULL,
  `google_verification` varchar(500) NOT NULL,
  `google_verification_code` longtext NOT NULL,
  `facebook_link` varchar(200) NOT NULL,
  `twitter_link` varchar(100) NOT NULL,
  `pinterest` varchar(500) NOT NULL,
  `googleplus_link` varchar(100) NOT NULL,
  `linkedin_link` varchar(500) NOT NULL,
  `rss_link` varchar(500) NOT NULL,
  `youtube_link` varchar(500) NOT NULL,
  `footer_content` varchar(255) NOT NULL,
  `logo_image` varchar(255) NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `videoUrl` varchar(200) NOT NULL,
  `slider` enum('on','off') NOT NULL DEFAULT 'off',
  `meta_title` varchar(100) NOT NULL,
  `meta_keyword` varchar(150) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `fevicon_image` varchar(255) NOT NULL,
  `watermark` varchar(255) NOT NULL,
  `facebook_api` varchar(100) NOT NULL,
  `facebook_secret_key` varchar(100) NOT NULL,
  `paypal_api_name` varchar(100) NOT NULL,
  `paypal_api_pw` varchar(100) NOT NULL,
  `paypal_api_key` varchar(100) NOT NULL,
  `authorize_net_key` varchar(100) NOT NULL,
  `paypal_id` varchar(500) NOT NULL,
  `paypal_live` enum('1','2') NOT NULL,
  `smtp_port` int(200) NOT NULL,
  `smtp_uname` varchar(200) NOT NULL,
  `smtp_password` varchar(200) NOT NULL,
  `consumer_key` varchar(500) NOT NULL,
  `consumer_secret` varchar(500) NOT NULL,
  `google_client_secret` varchar(500) NOT NULL,
  `google_client_id` varchar(500) NOT NULL,
  `google_redirect_url` varchar(500) NOT NULL,
  `google_developer_key` varchar(500) NOT NULL,
  `facebook_app_id` text NOT NULL,
  `facebook_app_secret` text NOT NULL,
  `like_text` mediumtext NOT NULL,
  `unlike_text` mediumtext NOT NULL,
  `liked_text` mediumtext NOT NULL,
  `banner_text` varchar(1000) NOT NULL,
  `site_pagination_per_page` int(20) NOT NULL,
  `twilio_account_sid` varchar(1000) NOT NULL,
  `twilio_account_token` varchar(1000) NOT NULL,
  `twilio_phone_number` varchar(1000) NOT NULL,
  `google_map_api` text NOT NULL,
  `home_title_1` varchar(250) NOT NULL,
  `home_title_2` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;INSERT INTO fc_admin_settings VALUES("1","","","pets@stayrove.com","","stayrove.com","<meta name=\"google-site-verification\" content=\"rcQQO19eKsSclZmd2H22IzatCVCkamBM-yKv85S-Q7Y\" />","<script>
  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');

  ga(\'create\', \'UA-60458855-1\', \'auto\');
  ga(\'send\', \'pageview\');

</script>","https://www.facebook.com/pages/StayRove/819185851456588?fref=ts","http://twitter.com/stayrove","","https://plus.google.com/u/3/103832597583890915894/posts","","","https://www.youtube.com/channel/UCMZ9aDqaK2bgDYhAPWiuzXQ/feed","Copyright 2014-2015 stayrove.com. All rights reserved.","stayrove_logo.png","dogbannerimages.png","https://www.youtube.com/watch?v=xAJlcQPoKv4","on","Stay Rove","Stay Rove","Stay Rove","stayrove_fav.png","stayrove_logo1.png","","","","","","","","","465","stayrovetech@gmail.com","Newcastle73","","","lPDTQuqaHEqqAwZBkzBx1GB7","100606869806-es7136a5vps090hr21lhd7jnbut6mm5k.apps.googleusercontent.com","http://www.stayrove.com/1/googlelogin/googleRedirect ","","1403580126616165","e3a73272a08abcc1a6c44d516376b920","Like","Unlike","Like\'d","","20","ACc935f2661110f762bd0092308fd83b80","e7c972aebfd93cdf76ab11cb603f584f","+14154837400","AIzaSyBoD8MrQKfKDDHxYdKJJg5jMJipZa3YtJc","WELCOME","Find a Pet Sitter in your Area");CREATE TABLE `fc_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(500) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `attribute_seourl` varchar(500) NOT NULL,
  `attribute_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;INSERT INTO fc_attribute VALUES("1","Amenities","Active","2014-12-23 09:24:12","amenities","Common amenities at most Hosts listings.");INSERT INTO fc_attribute VALUES("3","demo","Active","2014-12-19 06:48:20","demo","");INSERT INTO fc_attribute VALUES("4","Extras","Inactive","2014-12-16 11:56:09","extras","");INSERT INTO fc_attribute VALUES("5","Special Features","Active","2014-12-23 09:24:34","specialfeatures","Features of your listing for guests with specific needs.");INSERT INTO fc_attribute VALUES("6","Home Safety","Active","2014-12-23 09:39:14","homesafety","Safety equipment for your home");INSERT INTO fc_attribute VALUES("7","Property Type","Active","2014-12-18 08:08:14","propertytype","");CREATE TABLE `fc_banner_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `image` mediumtext NOT NULL,
  `link` mediumtext NOT NULL,
  `status` enum('Publish','Unpublish') NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;INSERT INTO fc_banner_category VALUES("5","Nursery","nursery.jpg","teamtweaks.com","Publish","2013-09-24 16:43:07");INSERT INTO fc_banner_category VALUES("6","Season Indoors","season-indoors.jpg","google.com","Publish","2013-09-24 16:43:17");CREATE TABLE `fc_booking` (
  `id` int(11) NOT NULL,
  `From_date` datetime NOT NULL,
  `To_date` datetime NOT NULL,
  `prd_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `Details` varchar(300) CHARACTER SET utf8 NOT NULL,
  `NoofGuest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;CREATE TABLE `fc_category` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(500) NOT NULL,
  `rootID` int(20) NOT NULL,
  `seourl` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  `cat_position` int(11) NOT NULL,
  `seo_title` longblob NOT NULL,
  `seo_keyword` longblob NOT NULL,
  `seo_description` longblob NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;INSERT INTO fc_category VALUES("1","","0","","","Active","0","","","","2014-10-31 07:42:15");CREATE TABLE `fc_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `state_code` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `contid` varchar(50) NOT NULL,
  `seourl` varchar(250) NOT NULL,
  `status` enum('InActive','Active') NOT NULL,
  `featured` enum('0','1') NOT NULL,
  `description` longblob NOT NULL,
  `meta_title` varchar(1000) NOT NULL,
  `meta_keyword` varchar(1000) NOT NULL,
  `meta_description` blob NOT NULL,
  `citylogo` varchar(1000) NOT NULL,
  `citythumb` varchar(1000) NOT NULL,
  `neighborhoods` varchar(1000) NOT NULL,
  `tags` varchar(1000) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  `latitude` varchar(1000) NOT NULL,
  `longitude` varchar(1000) NOT NULL,
  `get_around` varchar(1000) NOT NULL,
  `known_for` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;INSERT INTO fc_cities VALUES("439","95","2","","Chennai","","chennai","Active","1","","","","","Desert2.jpg","Desert3.jpg","0","","","37.77264","-122.40992","","");CREATE TABLE `fc_cities_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `state_code` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `contid` varchar(50) NOT NULL,
  `seourl` varchar(250) NOT NULL,
  `status` enum('InActive','Active') NOT NULL,
  `featured` enum('0','1') NOT NULL,
  `description` longblob NOT NULL,
  `meta_title` varchar(1000) NOT NULL,
  `meta_keyword` varchar(1000) NOT NULL,
  `meta_description` blob NOT NULL,
  `citylogo` varchar(1000) NOT NULL,
  `citythumb` varchar(1000) NOT NULL,
  `neighborhoods` varchar(1000) NOT NULL,
  `tags` varchar(1000) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  `latitude` varchar(1000) NOT NULL,
  `longitude` varchar(1000) NOT NULL,
  `get_around` varchar(1000) NOT NULL,
  `known_for` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=892 DEFAULT CHARSET=utf8;CREATE TABLE `fc_cms` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(500) NOT NULL,
  `page_title` varchar(200) NOT NULL,
  `seourl` varchar(1000) NOT NULL,
  `hidden_page` enum('Yes','No') NOT NULL DEFAULT 'No',
  `category` enum('Main','Sub') NOT NULL DEFAULT 'Main',
  `section` enum('discover','company') NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `meta_tag` varchar(500) NOT NULL,
  `meta_description` blob NOT NULL,
  `description` blob NOT NULL,
  `status` enum('Publish','UnPublish') NOT NULL,
  `meta_title` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;INSERT INTO fc_cms VALUES("1","About us","About Us","about-us","No","Main","company","0","About Us","About Us","<h2>StayRove - About Us</h2>","Publish","About Us");INSERT INTO fc_cms VALUES("20","FAQ","Frequently asked questions","faq","No","Main","discover","0","faq","faq","<h2 class=\"ptit\">Help /&nbsp;<span>FAQ</span></h2>","UnPublish","faq");INSERT INTO fc_cms VALUES("68","Privacy","Privacy","privacy","No","Main","discover","0","","","","UnPublish","");INSERT INTO fc_cms VALUES("69","Live like local","Live like local","learn-more-about-hosting","No","Main","discover","0","","","<div class=\"livehost\">
<p>&nbsp;</p>
</div>","UnPublish","");INSERT INTO fc_cms VALUES("70","Copyright","Copyright","copyright","No","Main","discover","0","","","","UnPublish","");INSERT INTO fc_cms VALUES("71","Help","Help","help","No","Main","discover","0","","","<p>Add help</p>","Publish","");INSERT INTO fc_cms VALUES("72","Getting Started Guide","Getting Started Guide","getting-started-guide","No","Sub","discover","71","","","","UnPublish","");INSERT INTO fc_cms VALUES("74","How do I sign up?","How do I sign up?","how-do-i-sign-up","No","Sub","discover","71","","","","UnPublish","");INSERT INTO fc_cms VALUES("75","Visit our Trust & Safety Center","Visit our Trust & Safety Center","visit-our-trust-safety-center","No","Sub","discover","71","","","","Publish","");INSERT INTO fc_cms VALUES("78","Policy","Policy","policy","No","Main","discover","0","","","","UnPublish","");INSERT INTO fc_cms VALUES("80","Terms of Service","Terms of Service","terms-of-service","No","Main","discover","0","","","<h2 class=\"ptit\">Terms of Service</h2>
<p>Terms and Conditions (\"Terms\")</p>
<p>Last updated: January 09, 2015</p>
<p>Please read these Terms and Conditions (\"Terms\", \"Terms and Conditions\") carefully before using the http://www.stayrove.com website and the stayrove mobile application (the \"Service\") operated by stayrove (\"us\", \"we\", or \"our\").</p>
<p>&nbsp;</p>
<p>Your access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or use the Service. You warrant that you are at least 18-years-old and you are legally capable of entering into binding contracts. If you are under 18-years-old, you warrant that you have obtained consent from your parent or guardian and they agree to be bound by these Terms on your behalf.</p>
<p>&nbsp;</p>
<p>By accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms then you may not access the Service.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Content</p>
<p>&nbsp;</p>
<p>Our Service allows you to post, link, store, share and otherwise make available certain information, text, graphics, videos, or other material (\"Content\"). You are responsible for the Content that you post to the Service, including its legality, reliability, and appropriateness.</p>
<p>&nbsp;</p>
<p>By posting Content to the Service, you grant us the right and license to use, modify, publicly perform, publicly display, reproduce, and distribute such Content on and through the Service. You retain any and all of your rights to any Content you submit, post or display on or through the Service and you are responsible for protecting those rights. You agree that this license includes the right for us to make your Content available to other users of the Service, who may also use your Content subject to these Terms.</p>
<p>&nbsp;</p>
<p>You represent and warrant that: (i) the Content is yours (you own it) or you have the right to use it and grant us the rights and license as provided in these Terms, and (ii) the posting of your Content on or through the Service does not violate the privacy rights, publicity rights, copyrights, contract rights or any other rights of any person. Further, you warrant that: (i) the Content will not cause you or us to breach any law, regulation, rule, code or other legal obligation; (ii) the Content will not or could not be reasonably considered to be obscene, inappropriate, defamatory, disparaging, indecent, seditious, offensive, pornographic, threatening, abusive, liable to incite racial hatred, discriminatory, blasphemous, in breach of confidence or in breach of privacy; (iii) the Content will not be unsolicited, undisclosed or unauthorised advertising; (iv) the Content does not contain software viruses or any other computer code, files, or programs designed to interrupt, destroy, or limit the functionality of any computer software, hardware or telecommunications equipment; and (v): the Content does not bring us or the Service into disrepute.</p>
<p>&nbsp;</p>
<p>You agree to keep all records necessary to establish that your Content does not violate any of the requirements this clause and make such records available upon our reasonable request.</p>
<p>&nbsp;</p>
<p>We are under no obligation to regularly monitor the accuracy or reliability of your Content incorporated into the Service. We reserve the right to modify or remove any Content at any time.</p>
<p>&nbsp;</p>
<p>You acknowledge and agree that all Content you provide on the Service will be publicly available information and you bear the risks involved with such public disclosures.</p>
<p>&nbsp;</p>
<p>Accounts</p>
<p>&nbsp;</p>
<p>When you create an account with us, you must provide us information that is accurate, complete, and current at all times. Failure to do so constitutes a breach of the Terms, which may result in immediate termination of your account on our Service.</p>
<p>&nbsp;</p>
<p>You are responsible for safeguarding the password that you use to access the Service and for any activities or actions under your password, whether your password is with our Service or a third-party service.</p>
<p>&nbsp;</p>
<p>You agree not to disclose your password to any third party. You agree to be fully responsible for activities that relate to your account or your password. You must notify us immediately upon becoming aware of any breach of security or unauthorized use of your account.&nbsp;&nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p>You may not use as a username the name of another person or entity or that is not lawfully available for use, a name or trade mark that is subject to any rights of another person or entity other than you without appropriate authorization, or a name that is otherwise offensive, vulgar or obscene.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Intellectual Property</p>
<p>The Service and its original content (excluding Content provided by users), features and functionality are and will remain the exclusive property of stayrove and its licensors. The Service is protected by copyright, trademark, and other laws of both the Australia and foreign countries. Our trademarks and trade dress may not be used in connection with any product or service without the prior written consent of stayrove. Nothing in these Terms constitutes a transfer of any Intellectual Property rights from us to you.</p>
<p>&nbsp;</p>
<p>You are permitted to use the Service only as authorised by us. As a user, you are granted a limited, non-exclusive, revocable, non-transferable right to use the Service to create, display, use, play, and download Content subject to these Terms.</p>
<p>&nbsp;</p>
<p>Our Intellectual Property must not be used in connection with a product or service that is not affiliated with us or in any way brings us in disrepute.</p>
<p>&nbsp;</p>
<p>You must not modify the physical or digital copies of any Content you print off or download in any way, and you must not use any illustrations, photographs, video or audio, or any graphics separately from any accompanying text.</p>
<p>&nbsp;</p>
<p>Any opinions, advice, statements, services, offers, or other information or content expressed or made available by any other users are those of the respective authors or distributors and not of us.</p>
<p>&nbsp;</p>
<p>Links To Other Web Sites</p>
<p>&nbsp;</p>
<p>Our Service may contain links to third-party web sites or services that are not owned or controlled by stayrove.</p>
<p>&nbsp;</p>
<p>stayrove has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that stayrove shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, goods or services available on or through any such web sites or services.</p>
<p>&nbsp;</p>
<p>We only provide links to external websites as a convenience, and the inclusion of such a link to external websites do not imply our endorsement of those websites. You acknowledge and agree that when you access other websites on the Internet, you do so at your own risk.</p>
<p>&nbsp;</p>
<p>We strongly advise you to read the terms and conditions and privacy policies of any third-party web sites or services that you visit.</p>
<p>&nbsp;</p>
<p>Termination</p>
<p>&nbsp;</p>
<p>We may terminate or suspend your account immediately, without prior notice or liability, for any reason whatsoever, including without limitation if you breach the Terms.</p>
<p>&nbsp;</p>
<p>Upon termination, your right to use the Service will immediately cease. If you wish to terminate your account, you may simply discontinue using the Service.</p>
<p>&nbsp;</p>
<p>All provisions of the Terms which by their nature should survive termination shall survive termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity and limitations of liability.</p>
<p>&nbsp;</p>
<p>We shall not be liable to you or any third party for any claims or damages arising out of any termination or suspension or any other actions taken by us in connection therewith.</p>
<p>&nbsp;</p>
<p>If applicable law requires us to provide notice of termination or cancellation, we may give prior or subsequent notice by posting it on the Service or by sending a communication to any address (email or otherwise) that we have for you in our records.</p>
<p>&nbsp;</p>
<p>Indemnification&nbsp;&nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p>As a condition of your access to and use of the Service, you agree to indemnify us and our successors and assigns for all damages, costs, expenses and other liabilities, including but not limited to legal fees and expenses, relating to any claim arising out of or related to your access to and use of the Servuce or your breach of these Terms and any applicable law or the rights of another person or party.&nbsp;&nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p>This indemnification section survives the expiration of your registration, and applies to claims arising both before and after the registration ends.</p>
<p>&nbsp;</p>
<p>Limitation Of Liability</p>
<p>&nbsp;</p>
<p>You agree that we shall not be liable for any damages suffered as a result of using the Service, copying, distributing, or downloading Content from the Service.</p>
<p>&nbsp;</p>
<p>In no event shall we be liable for any indirect, punitive, special, incidental or consequential damage (including loss of business, revenue, profits, use, privacy, data, goodwill or other economic advantage) however it arises, whether for breach of contract or in tort, even if it has been previously advised of the possibility of such damage.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>You have sole responsibility for adequate security protection and backup of data and/or equipment used in connection with your usage of the Service and will not make a claim against for lost data, re-run time, inaccurate instruction, work delays or lost profits resulting from the use of the Service. You must not assign or otherwise dispose of your account to any other person.</p>
<p>Without limiting the foregoing, in no event will our aggregate liability to you exceed, in total, the amounts paid by you to us.</p>
<p>&nbsp;</p>
<p>Disclaimer</p>
<p>&nbsp;</p>
<p>Your use of the Service is at your sole risk. The Service is provided on an \"AS IS\" and \"AS AVAILABLE\" basis. The Service is provided without warranties of any kind, whether express or implied, including, but not limited to, implied warranties of merchantability, fitness for a particular purpose, non-infringement or course of performance.</p>
<p>&nbsp;</p>
<p>stayrove its subsidiaries, affiliates, and its licensors do not warrant that a) the Service will function uninterrupted, secure or available at any particular time or location; b) any errors or defects will be corrected; c) the Service is free of viruses or other harmful components; or d) the results of using the Service will meet your requirements.</p>
<p>&nbsp;</p>
<p>This disclaimer of liability applies to any damages or injury caused by any failure of performance, error, omission, interruption, deletion, defect, delay in operation or transmission, computer virus, communication line failure, theft, or destruction or unauthorized access or, alteration of or use of record in connection with the use or operation of the Service, whether for breach of contract, tortious behaviour, negligence or any other cause of action.</p>
<p>&nbsp;</p>
<p>We make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the content contained on the Service for any purpose. Any reliance you place on such information is therefore strictly at your own risk. We disclaim any express or implied warranty representation or guarantee as to the effectiveness or profitability of the Service or that the operation of our Service will be uninterrupted or error-free. We are not liable for the consequences of any interruptions or error in the Service.</p>
<p>&nbsp;</p>
<p>Exclusions</p>
<p>&nbsp;</p>
<p>Some jurisdictions do not allow the exclusion of certain warranties or the exclusion or limitation of liability for consequential or incidental damages, so the limitations above may not apply to you.</p>
<p>&nbsp;</p>
<p>Governing Law</p>
<p>&nbsp;</p>
<p>These Terms shall be governed and construed in accordance with the laws of New South Wales, Australia, without regard to its conflict of law provisions.</p>
<p>&nbsp;</p>
<p>Our failure to enforce any right or provision of these Terms will not be considered a waiver of those rights. If any provision of these Terms is held to be invalid or unenforceable by a court, the remaining provisions of these Terms will remain in effect. These Terms constitute the entire agreement between us regarding our Service, and supersede and replace any prior agreements we might have between us regarding the Service.</p>
<p>&nbsp;</p>
<p>Changes</p>
<p>&nbsp;</p>
<p>We reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is material we will try to provide at least 15 days notice prior to any new terms taking effect.</p>
<p>&nbsp;</p>
<p>It is your sole responsibility to periodically check these Terms for any changes. If you do not agree with any of the changes to these Terms, it is your sole responsibility to stop using the Service. Your continued use of the Service will be deemed as your acceptance thereof.</p>
<p>&nbsp;</p>
<p>Contact Us</p>
<p>&nbsp;</p>
<p>If you have any questions about these Terms, please contact us.</p>","Publish","");INSERT INTO fc_cms VALUES("88","verify_id","verify_id","verify_id","No","Main","discover","0","","","","Publish","");INSERT INTO fc_cms VALUES("49","Press","Press","press","No","Main","company","0","","","<p>Press</p>","UnPublish","");INSERT INTO fc_cms VALUES("86","livelikelocal","livelikelocal","livelikeloca","No","Main","discover","0","","","","UnPublish","");INSERT INTO fc_cms VALUES("85","Privacy Policy","Privacy Policy","privacy-policy","No","Main","discover","0","","","<h1><strong>Privacy Policy</strong></h1>
<p>&nbsp;</p>
<p>Last updated: January 09, 2015</p>
<p>stayrove (\"us\", \"we\", or \"our\") operates the http://www.stayrove.com website and the stayrove mobile application (the \"Service\").</p>
<p>&nbsp;</p>
<p>This page informs you of our policies regarding the collection, use and disclosure of Personal Information when you use our Service.</p>
<p>&nbsp;</p>
<p>We will not use or share your information with anyone except as described in this Privacy Policy.</p>
<p>&nbsp;</p>
<p>We use your Personal Information for providing and improving the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Information Collection And Use</p>
<p>&nbsp;</p>
<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you. Personally identifiable information may include, but is not limited to, your email address, name, phone number, postal address, other information (\"Personal Information\").</p>
<p>The purpose for which we collect personal information is to provide you with the best service experience possible on the Service and for our internal business purposes that form part of normal business practices. Some provision of personal information is optional. However, if you do not provide us with certain types of personal information, you may be unable to enjoy the full functionality of the Service.</p>
<p>&nbsp;</p>
<p>Log Data</p>
<p>&nbsp;</p>
<p>We collect information that your browser sends whenever you visit our Service (\"Log Data\"). This Log Data may include information such as your computer\'s Internet Protocol (\"IP\") address, browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages and other statistics.</p>
<p>&nbsp;</p>
<p>In addition, we may use third party services such as Google Analytics that collect, monitor and analyze this type of information in order to increase our Service\'s functionality. These third party service providers have their own privacy policies addressing how they use such information.</p>
<p>&nbsp;</p>
<p>When you access the Service by or through a mobile device, we may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browser you use and other statistics.</p>
<p>&nbsp;</p>
<p>Location information</p>
<p>&nbsp;</p>
<p>We may use and store information about your location, if you give us permission to do so. We use this information to provide features of our Service, to improve and customize our Service. You can enable or disable location services when you use our Service at anytime, through your mobile device settings.</p>
<p>&nbsp;</p>
<p>Cookies</p>
<p>&nbsp;</p>
<p>Cookies are files with small amount of data, which may include an anonymous unique identifier. Cookies are sent to your browser from a web site and stored on your computer\'s hard drive.</p>
<p>&nbsp;</p>
<p>We use \"cookies\" to collect information. You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.</p>
<p>&nbsp;</p>
<p>We send a session cookie to your computer when you log in to your User account. This type of cookie helps if you visit multiple pages on the Service during the same session, so that you don\'t need to enter your password on each page. Once you log out or close your browser, this cookie expires.</p>
<p>&nbsp;</p>
<p>We also use longer-lasting cookies for other purposes such as to display your Content and account information. We encode our cookie so that only we can interpret the information stored in them. Users always have the option of disabling cookies via their browser preferences. If you disable cookies on your browser, please note that some parts of our Service may not function as effectively or may be considerably slower.</p>
<p>&nbsp;</p>
<p>DoubleClick Cookie</p>
<p>&nbsp;</p>
<p>Google, as a third party vendor, uses cookies to serve ads on our Service. Google\'s use of the DoubleClick cookie enables it and its partners to serve ads to our users based on their visit to our Service or other web sites on the Internet.</p>
<p>&nbsp;</p>
<p>You may opt out of the use of the DoubleClick Cookie for interest-based advertising by visiting the Google Ads Settings web page: http://www.google.com/ads/preferences/</p>
<p>&nbsp;</p>
<p>Behavioral Remarketing</p>
<p>&nbsp;</p>
<p>stayrove uses remarketing services to advertise on third party web sites to you after you visited our Service. We, and our third party vendors, use cookies to inform, optimize and serve ads based on your past visits to our Service.</p>
<p>&nbsp;</p>
<p>-&nbsp; Google</p>
<p>&nbsp;</p>
<p>Google AdWords remarketing service is provided by Google Inc.</p>
<p>&nbsp;</p>
<p>You can opt-out of Google Analytics for Display Advertising and customize the Google Display Network ads by visiting the Google Ads Settings page: http://www.google.com/settings/ads</p>
<p>&nbsp;</p>
<p>Google also recommends installing the Google Analytics Opt-out Browser Add-on - https://tools.google.com/dlpage/gaoptout - for your web browser. Google Analytics Opt-out Browser Add-on provides visitors with the ability to prevent their data from being collected and used by Google Analytics.</p>
<p>&nbsp;</p>
<p>For more information on the privacy practices of Google, please visit the Google Privacy &amp; Terms web page: http://www.google.com/intl/en/policies/privacy/</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Service Providers</p>
<p>&nbsp;</p>
<p>We may employ third party companies and individuals to facilitate our Service, to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.</p>
<p>&nbsp;</p>
<p>These third parties have access to your Personal Information only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</p>
<p>&nbsp;</p>
<p>Communications</p>
<p>&nbsp;</p>
<p>We may use your Personal Information to contact you with newsletters, marketing or promotional materials and other information that may be of interest to you. You may opt out of receiving any, or all, of these communications from us by following the unsubscribe link or instructions provided in any email we send.</p>
<p>&nbsp;</p>
<p>Compliance With Laws</p>
<p>&nbsp;</p>
<p>We may disclose personal information in special situations where we have reason to believe that doing so is necessary to identify, contact or bring legal action against anyone damaging, injuring or interfering (intentionally or unintentionally) with our rights or property, users or anyone else who could be harmed by such activities. We will disclose your Personal Information where required to do so by law or subpoena or if we believe that such action is necessary to comply with the law and the reasonable requests of law enforcement or to protect the security or integrity of our Service.</p>
<p>&nbsp;</p>
<p>Business Transaction</p>
<p>&nbsp;</p>
<p>In the event that we sell or buy businesses or their assets, or engage in transfers, acquisitions, mergers, restructurings, changes of control and other similar transactions, customer or user information is generally one of the transferable business assets. Thus, your personal information may be subject to such a transfer. In the unlikely event of insolvency, personal information may be transferred to a trustee or debtor in possession and then to a subsequent purchaser.</p>
<p>&nbsp;</p>
<p>Security</p>
<p>&nbsp;</p>
<p>The security of your Personal Information is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Information, we cannot guarantee its absolute security.</p>
<p>&nbsp;</p>
<p>International Transfer</p>
<p>&nbsp;</p>
<p>Your information, including Personal Information, may be transferred to &mdash; and maintained on &mdash; computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.</p>
<p>&nbsp;</p>
<p>If you are located outside Australia and choose to provide information to us, please note that we transfer the information, including Personal Information, to Australia and process it there.</p>
<p>&nbsp;</p>
<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.</p>
<p>&nbsp;</p>
<p>Access and Correction</p>
<p>&nbsp;</p>
<p>Australian Privacy Principle 6 of the Privacy Act 1988 (Cth) allows you to get access to, and correct, the personal information we hold about you in certain circumstances. If you would like to obtain such access, please contact us on the details set out above.</p>
<p>&nbsp;</p>
<p>Please note that the access and correction requirements under this Privacy Policy operates alongside and do not replace other informal or legal procedures by which an individual can be provided access to, or correction of, their personal information, including the requirements under the Freedom of Information Act 1982 (Cth).</p>
<p>&nbsp;</p>
<p>Complaints</p>
<p>&nbsp;</p>
<p>Australian Privacy Principle 1 of the Privacy Act 1988 (Cth) allows you to make a complaint about any alleged breaches of privacy. In order to lodge a complaint with us, please contact us using the details above with the following information:</p>
<p>&nbsp;</p>
<p>- Your name and address;</p>
<p>- Details of the alleged breach of privacy; and</p>
<p>- URL link to the alleged breach of privacy (if applicable).</p>
<p>&nbsp;</p>
<p>Please allow us 30 days to investigate your complaint, after which we will contact you immediately to resolve the issue.</p>
<p>&nbsp;</p>
<p>Retention of Information</p>
<p>&nbsp;</p>
<p>We retain information for as long as required, allowed or we believe it useful, but do not undertake retention obligations. We may dispose of information in our discretion without notice, subject to applicable law that specifically requires the handling or retention of information. You must keep your own, separate back-up records.</p>
<p>&nbsp;</p>
<p>Links To Other Sites</p>
<p>&nbsp;</p>
<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.</p>
<p>&nbsp;</p>
<p>We have no control over, and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>
<p>&nbsp;</p>
<p>Children\'s Privacy</p>
<p>&nbsp;</p>
<p>Our Service does not address anyone under the age of 18 (\"Children\").</p>
<p>&nbsp;</p>
<p>We do not knowingly collect personally identifiable information from children under 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Information, please contact us. If we become aware that we have collected Personal Information from children under 18 without verification of parental consent, we take steps to remove that information from our servers or replace it with the Personal Information of the Children&rsquo;s parent or guardian.</p>
<p>&nbsp;</p>
<p>Changes To This Privacy Policy</p>
<p>&nbsp;</p>
<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</p>
<p>&nbsp;</p>
<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>
<p>&nbsp;</p>
<p>If we make any material changes to this Privacy Policy, we will notify you either through the email address you have provided us, or by placing a prominent notice on our website.</p>
<p>&nbsp;</p>
<p>Consent</p>
<p>&nbsp;</p>
<p>You warrant that you are able to give consents under Australian Law or, in the event that you do not have the capacity to give consent, you warrant that your guardian or attorney is able to give any consent required under this Privacy Policy on your behalf.</p>
<p>&nbsp;</p>
<p>You hereby expressly and voluntarily grant your informed consent to us to deal with your personal information in accordance with the terms and conditions of this Privacy Policy. Should you retract your consent, please contact us. If you retract your consent, you acknowledge and agree that failure to provide certain types of personal information may not give you access to the full functionality of the Service.</p>
<p>&nbsp;</p>
<p>Contact Us</p>
<p>&nbsp;</p>
<p>If you have any questions about this Privacy Policy, please contact us.</p>","Publish","");INSERT INTO fc_cms VALUES("87","howitwork","howitwork","howitwork","No","Main","discover","0","","","<h1></h1>
<ul class=\"advantages-list\">
<li>
<div class=\"col-sm-10 adva-text\"></div>
</li>
</ul>","Publish","");INSERT INTO fc_cms VALUES("84","Payout Preferences","Payout Preferences","payout-preferences","No","Main","discover","0","","","","UnPublish","");INSERT INTO fc_cms VALUES("83","Why Verify","Why Verify","why-verify","No","Main","discover","0","","","<h2 class=\"ptit\">Why Verify</h2>","Publish","");INSERT INTO fc_cms VALUES("82","Learn More","Learn More","learn-more","No","Main","discover","0","","","<h1></h1>
<ul class=\"advantages-list\">
<li>
<div class=\"col-sm-10 adva-text\"></div>
</li>
</ul>","Publish","");INSERT INTO fc_cms VALUES("81","Cancellation Policy","Cancellation Policy","cancellation-policy","No","Main","discover","0","","","<h1><span style=\"float: left; width: 100%; text-align: center; color: #1b8ebf; font-family: helvetica; text-decoration: underline; font-size: 32px; padding: 20px 0px 30px;\">Cancellation Policies</span></h1>
<ul style=\"padding: 0px 0px 0px 18px;\">
<br /> 
</ul>
<p>&nbsp;</p>","Publish","");INSERT INTO fc_cms VALUES("67","Stay with Locals","Stay with Locals","stay-with-locals","No","Main","discover","0","","","","UnPublish","");CREATE TABLE `fc_commission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `commission_type` varchar(250) NOT NULL,
  `commission_percentage` varchar(200) NOT NULL,
  `promotion_type` enum('flat','percentage') NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;INSERT INTO fc_commission VALUES("1","Host Listing","10","flat","Active","2014-12-31 10:48:05");INSERT INTO fc_commission VALUES("2","Guest Booking","5","flat","Active","2015-01-05 05:38:20");INSERT INTO fc_commission VALUES("3","Host Accept The Reservation Request","10","percentage","Active","2014-12-19 07:36:22");CREATE TABLE `fc_contactus` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) NOT NULL,
  `adults` varchar(500) NOT NULL,
  `children` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `contact_sub` varchar(1000) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `status` enum('Active','InActive') NOT NULL DEFAULT 'Active',
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `arrival_date` date NOT NULL,
  `departure_date` date NOT NULL,
  `rental_id` varchar(1000) NOT NULL,
  `renter_id` varchar(1000) NOT NULL,
  `read_staus` enum('UnRead','Read') NOT NULL,
  `user_read_status` enum('UnRead','Read') NOT NULL,
  `customer_id` int(100) NOT NULL,
  `enquiry_timezone` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;CREATE TABLE `fc_country` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `contid` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `country_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `country_mobile_code` varchar(200) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `seourl` varchar(750) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `currency_type` char(3) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `currency_symbol` text NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_tax` decimal(10,2) NOT NULL,
  `meta_title` blob NOT NULL,
  `meta_keyword` blob NOT NULL,
  `meta_description` blob NOT NULL,
  `description` longblob NOT NULL,
  `status` enum('Active','InActive') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT 'Active',
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `currency_default` enum('No','Yes') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT 'No',
  `slider_image` varchar(1000) NOT NULL,
  `logo` varchar(1000) NOT NULL,
  `map` varchar(1000) NOT NULL,
  `thumb` varchar(1000) NOT NULL,
  `language_code` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;INSERT INTO fc_country VALUES("166","NA","PR","+787","Puerto Rico","puerto-rico","USD","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:20","No","0","0","0","","en");INSERT INTO fc_country VALUES("164","EU","PL","+48 ","Poland","poland","PLN","0","0.00","0.00","","","","","InActive","2015-01-15 13:56:43","No","0","0","0","","en");INSERT INTO fc_country VALUES("165","","PM","+508","Saint Pierre And Miquelon","saint-pierre-and-miquelon","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:41:52","No","0","0","0","","en");INSERT INTO fc_country VALUES("163","AS","PK","+92","Pakistan","pakistan","PKR","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:38","No","0","0","0","","en");INSERT INTO fc_country VALUES("162","AS","PH","+63","Philippines","philippines","PHP","0","0.00","0.00","","","","","InActive","2015-01-15 13:58:16","No","0","0","0","","en");INSERT INTO fc_country VALUES("161","OC","PG","+675","Papua New Guinea","papua-new-guinea","PGK","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:35","No","0","0","0","","en");INSERT INTO fc_country VALUES("160","OC","PF","+689","French Polynesia","french-polynesia","CFP","0","0.00","0.00","","","","","InActive","2015-01-15 13:31:37","No","0","0","0","","en");INSERT INTO fc_country VALUES("159","SA","PE","+51","Peru","peru","PEN","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:27","No","0","0","0","","en");INSERT INTO fc_country VALUES("158","NA","PA","+507","Panama","panama","PAB","0","0.00","0.00","","","","","InActive","2015-01-15 13:52:38","No","0","0","0","","en");INSERT INTO fc_country VALUES("157","AS","OM","+968","Oman","oman","OMR","0","0.00","0.00","","","","","InActive","2015-01-15 13:52:35","No","0","0","0","","en");INSERT INTO fc_country VALUES("155","OC","NR","+674","Nauru","nauru","AUD","0","0.00","0.00","","","","","InActive","2015-01-15 14:01:39","No","0","0","0","","en");INSERT INTO fc_country VALUES("156","OC","NZ","+64","New Zealand","new-zealand","NZD","0","0.00","0.00","","","","","Active","2015-03-11 12:29:10","No","0","0","0","","en");INSERT INTO fc_country VALUES("154","AS","NP","+977","Nepal","nepal","NPR","0","0.00","0.00","","","","","InActive","2015-01-15 14:01:36","No","0","0","0","","en");INSERT INTO fc_country VALUES("153","EU","NO","+47","Norway","norway","NOK","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:41","No","0","0","0","","en");INSERT INTO fc_country VALUES("152","EU","NL","+31","Netherlands","netherlands","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:56:33","No","0","0","0","","en");INSERT INTO fc_country VALUES("151","NA","NI","+505","Nicaragua","nicaragua","NIO","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:54","No","0","0","0","","en");INSERT INTO fc_country VALUES("150","AF","NG","+234","Nigeria","nigeria","NGN","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:47","No","0","0","0","","en");INSERT INTO fc_country VALUES("149","AF","NE","+227","Niger","niger","XOF","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:51","No","0","0","0","","en");INSERT INTO fc_country VALUES("148","OC","NC","+687","New Caledonia","new-caledonia","CFP","0","0.00","0.00","","","","","InActive","2015-01-15 13:57:56","No","0","0","0","","en");INSERT INTO fc_country VALUES("147","AF","NA","+264","Namibia","namibia","NAD","0","0.00","0.00","","","","","InActive","2015-01-15 13:54:32","No","0","0","0","","en");INSERT INTO fc_country VALUES("146","AF","MZ","+258","Mozambique","mozambique","MZN","0","0.00","0.00","","","","","InActive","2015-01-15 13:53:24","No","0","0","0","","en");INSERT INTO fc_country VALUES("145","AS","MY","+60","Malaysia","malaysia","MYR","0","0.00","0.00","","","","","InActive","2015-03-11 12:29:23","No","0","0","0","","en");INSERT INTO fc_country VALUES("144","NA","MX","+52","Mexico","mexico","MXN","0","0.00","0.00","","","","<p><strong>Traveling to Mexico</strong></p>
<p>Mexico vacation rentals and Mexico vacation homes have increased in volume, as has the tourism industry in the area. This is one of the most popular places to visit in the whole of North  America and it is easy to see why. Mexico covers a huge surface area of around 760,000 square miles, which means there is certainly not a shortage of things to see and do here.</p>
<p>&nbsp;</p>
<p><strong>Things to do in Mexico</strong></p>
<p>After checking into Mexico vacation rentals and Mexico vacation homes, listing the places to visit is certainly a worth while thing to do. One thing that this place is known for is having some great sites of archaeological interest, which are great with people that love to explore. It was here that many different forms of communication were developed, including writing. Alongside this, lots of arithmetic and astronomy based discoveries have been made here over the centuries, which makes this an interesting place to visit for all of the family.</p>
<p>&nbsp;</p>
<p>Of course, a visit to a Mexico vacation rental will allow people to explore some of the many beaches that are on offer. The reality is that there is certainly not a shortage of top quality beaches to explore. Mexico is home to around 6,000 miles of coast line, which means that there are a great range of different beaches, including coves, caves but also small bays. The waves here are not particularly large, but many of the beaches are well known for incorporating exciting water sports into every day life.</p>
<p>&nbsp;</p>
<p>Alongside the beaches and the many archaeological discoveries that are worth exploring, another option is to experience many of the adventures that are on offer. Mexico is full of tour guides that specialise in all types of things. This includes the likes of 4x4 tours, but also guided walks and mountain bike rides. This allows people to explore this great place using different forms of transport, which allows them to see Mexico in a whole new light. Of course, there are plenty of options to choose from here.</p>
<p>&nbsp;</p>
<p><strong>Accommodations in Mexico</strong></p>
<p>Accommodations in Mexico have been a huge part of helping to grow the tourism industry here. The Ritz Carlton is certainly one of the greater hotels in the area. Just in front of it, is around 1,200ft of white sandy beach, which means relaxing here is certainly not going to be difficult. It is conveniently located, which means that all the major attractions are within a short distance of the hotel here. The facilities here are more than luxurious and they help people to see the true beauty of Mexico.</p>
<p>&nbsp;</p>
<p><strong>Weather in Mexico</strong></p>
<p>The weather in Mexico is known for being exceptional during the summer months, which makes it perfect for a summer vacation. During the summer months, throughout this great destination, visitors should expect temperatures of around 28 &deg;C which is warm, but certainly comfortable at the same time. It is during the summer months that the majority of the tourists that visit here.</p>","InActive","2015-01-15 13:55:04","No","0","0","0","","en");INSERT INTO fc_country VALUES("143","AF","MW","+265","Malawi","malawi","MWK","0","0.00","0.00","","","","","InActive","2015-01-15 13:50:43","No","0","0","0","","en");INSERT INTO fc_country VALUES("142","AS","MV","+960","Maldives","maldives","MVR","0","0.00","0.00","","","","","InActive","2015-01-15 13:50:50","No","0","0","0","","en");INSERT INTO fc_country VALUES("141","AF","MU","+230","Mauritius","mauritius","MUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:52:23","No","0","0","0","","en");INSERT INTO fc_country VALUES("140","NA","MS","+1664","Montserrat","montserrat","XCD","0","0.00","0.00","","","","","InActive","2015-01-15 13:46:13","No","0","0","0","","en");INSERT INTO fc_country VALUES("139","AF","MR","+222","Mauritania","mauritania","MRO","0","0.00","0.00","","","","","InActive","2015-01-15 13:52:19","No","0","0","0","","en");INSERT INTO fc_country VALUES("138","NA","MQ","+596","Martinique","martinique","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:52:16","No","0","0","0","","en");INSERT INTO fc_country VALUES("137","OC","MP","+1 670","Northern Mariana Islands","northern-mariana-islands","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:52:32","No","0","0","0","","en");INSERT INTO fc_country VALUES("136","","MO","+853","Macao","macao","MOP","0","0.00","0.00","","","","","InActive","2015-01-15 13:50:34","No","0","0","0","","en");INSERT INTO fc_country VALUES("135","AS","MN","+976","Mongolia","mongolia","MNT","0","0.00","0.00","","","","","InActive","2015-01-15 13:53:37","No","0","0","0","","en");INSERT INTO fc_country VALUES("134","AS","MM","+95","Myanmar","myanmar","MMK","0","0.00","0.00","","","","","InActive","2015-01-15 13:52:29","No","0","0","0","","en");INSERT INTO fc_country VALUES("133","AF","ML","+223","Mali","mali","XOF","0","0.00","0.00","","","","","InActive","2015-01-15 13:50:28","No","0","0","0","","en");INSERT INTO fc_country VALUES("132","","MK","+389","Macedonia","macedonia","MKD","0","0.00","0.00","","","","","InActive","2015-01-15 13:50:37","No","0","0","0","","en");INSERT INTO fc_country VALUES("131","OC","MH","+692","Marshall Islands","marshall-islands","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:52:13","No","0","0","0","","en");INSERT INTO fc_country VALUES("130","AF","MG","+261","Madagascar","madagascar","MGF","0","0.00","0.00","","","","","InActive","2015-01-15 13:50:40","No","0","0","0","","en");INSERT INTO fc_country VALUES("129","","ME","+382","Montenegro","montenegro","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:53:34","No","0","0","0","","en");INSERT INTO fc_country VALUES("128","","MD","+373","Moldova","moldova","MDL","0","0.00","0.00","","","","","InActive","2015-01-15 13:53:43","No","0","0","0","","en");INSERT INTO fc_country VALUES("127","EU","MC","+377","Monaco","monaco","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:53:40","No","0","0","0","","en");INSERT INTO fc_country VALUES("126","AF","MA","+212","Morocco","morocco","MAD","0","0.00","0.00","","","","","InActive","2015-01-15 13:53:31","No","0","0","0","","en");INSERT INTO fc_country VALUES("125","","LY","+ 218","Libya","libya","LYD","0","0.00","0.00","","","","","InActive","2015-01-15 13:58:07","No","0","0","0","","en");INSERT INTO fc_country VALUES("124","EU","LV","+371","Latvia","latvia","LVL","0","0.00","0.00","","","","","InActive","2015-01-15 13:56:29","No","0","0","0","","en");INSERT INTO fc_country VALUES("123","EU","LU","+352","Luxembourg","luxembourg","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:59:23","No","0","0","0","","en");INSERT INTO fc_country VALUES("122","EU","LT","+370","Lithuania","lithuania","LTL","0","0.00","0.00","","","","","InActive","2015-01-15 13:58:13","No","0","0","0","","en");INSERT INTO fc_country VALUES("121","AF","LS","+266","Lesotho","lesotho","LSL","0","0.00","0.00","","","","","InActive","2015-01-15 13:41:29","No","0","0","0","","en");INSERT INTO fc_country VALUES("120","AF","LR","+231","Liberia","liberia","LRD","0","0.00","0.00","","","","","InActive","2015-01-15 13:58:04","No","0","0","0","","en");INSERT INTO fc_country VALUES("119","AS","LK","+94","Sri Lanka","sri-lanka","LKR","0","20.00","12.00","","","","","InActive","2015-01-15 13:39:58","No","0","0","0","","en");INSERT INTO fc_country VALUES("118","EU","LI","+423","Liechtenstein","liechtenstein","CHF","0","0.00","0.00","","","","","InActive","2015-01-15 13:58:10","No","0","0","0","","en");INSERT INTO fc_country VALUES("117","NA","LC","+1 758","Saint Lucia","saint-lucia","XCD","0","0.00","0.00","","","","","InActive","2015-01-15 13:41:44","No","0","0","0","","en");INSERT INTO fc_country VALUES("116","AS","LB","+961","Lebanon","lebanon","LBP","0","0.00","0.00","","","","","InActive","2015-01-15 13:58:00","No","0","0","0","","en");INSERT INTO fc_country VALUES("115","","LA","+856","Laos","laos","LAK","0","0.00","0.00","","","","","InActive","2015-01-15 13:56:26","No","0","0","0","","en");INSERT INTO fc_country VALUES("114","AS","KZ","+7","Kazakhstan","kazakhstan","KZT","0","0.00","0.00","","","","","InActive","2015-01-15 14:01:54","No","0","0","0","","en");INSERT INTO fc_country VALUES("113","AS","KW","+965","Kuwait","kuwait","KWD","0","0.00","0.00","","","","","InActive","2015-01-15 14:01:45","No","0","0","0","","en");INSERT INTO fc_country VALUES("112","","KR","+82","South Korea","south-korea","KRW","0","0.00","0.00","","","","","InActive","2015-01-15 13:40:09","No","0","0","0","","en");INSERT INTO fc_country VALUES("111","","KP","+850","North Korea","north-korea","KPW","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:44","No","0","0","0","","en");INSERT INTO fc_country VALUES("110","NA","KN","+1 869","Saint Kitts And Nevis","saint-kitts-and-nevis","XCD","0","0.00","0.00","","","","","InActive","2015-01-15 13:41:49","No","0","0","0","","en");INSERT INTO fc_country VALUES("109","AF","KM","+269","Comoros","comoros","KMF","0","0.00","0.00","","","","","InActive","2015-01-15 13:26:25","No","0","0","0","","en");INSERT INTO fc_country VALUES("108","OC","KI","+686","Kiribati","kiribati","AUD","0","0.00","0.00","","","","","InActive","2015-01-15 14:01:49","No","0","0","0","","en");INSERT INTO fc_country VALUES("107","AS","KH","+855","Cambodia","cambodia","KHR","0","0.00","0.00","","","","","InActive","2015-01-15 13:24:36","No","0","0","0","","en");INSERT INTO fc_country VALUES("106","AS","KG","+996","Kyrgyzstan","kyrgyzstan","KGS","0","0.00","0.00","","","","","InActive","2015-01-15 14:01:43","No","0","0","0","","en");INSERT INTO fc_country VALUES("105","AF","KE","+254","Kenya","kenya","KES","0","0.00","0.00","","","","","InActive","2015-01-15 14:01:51","No","0","0","0","","en");INSERT INTO fc_country VALUES("104","AS","JP","+81 ","Japan","japan","JPY","0","0.00","0.00","","","","","InActive","2015-01-15 14:02:00","No","0","0","0","","en");INSERT INTO fc_country VALUES("103","AS","JO","+962","Jordan","jordan","JOD","0","0.00","0.00","","","","","InActive","2015-01-15 14:01:57","No","0","0","0","","en");INSERT INTO fc_country VALUES("102","NA","JM","+1 876","Jamaica","jamaica","JMD","0","0.00","0.00","","","","","InActive","2015-01-15 13:50:31","No","0","0","0","","en");INSERT INTO fc_country VALUES("101","","JE","+44 ","Jersey","jersey","GBP","0","0.00","0.00","","","","","InActive","2015-01-15 13:46:10","No","0","0","0","","en");INSERT INTO fc_country VALUES("100","EU","IT","+39","Italy","italy","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:34:30","No","0","0","0","","en");INSERT INTO fc_country VALUES("99","EU","IS","+354","Iceland","iceland","ISK","0","0.00","0.00","","","","","InActive","2015-01-15 13:33:25","No","0","0","0","","en");INSERT INTO fc_country VALUES("98","","IR","+98","Iran","iran","IRR","0","0.00","0.00","","","","","InActive","2015-01-15 13:34:11","No","0","0","0","","en");INSERT INTO fc_country VALUES("62","EU","ES","+34","Spain","spain","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:40:02","No","0","0","0","","en");INSERT INTO fc_country VALUES("63","AF","ET","+251","Ethiopia","ethiopia","ETB","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:52","No","0","0","0","","en");INSERT INTO fc_country VALUES("64","EU","FI","+358","Finland","finland","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:31:26","No","0","0","0","","en");INSERT INTO fc_country VALUES("65","OC","FJ","+679","Fiji","fiji","FJD","0","0.00","0.00","","","","","InActive","2015-01-15 13:31:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("66","","FM","+691","Micronesia","micronesia","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:44:44","No","0","0","0","","en");INSERT INTO fc_country VALUES("67","EU","FO","+298","Faroe Islands","faroe-islands","DKK","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:56","No","0","0","0","","en");INSERT INTO fc_country VALUES("68","EU","FR","+33","France","france","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:31:30","No","0","0","0","","en");INSERT INTO fc_country VALUES("69","AF","GA","+241 ","Gabon","gabon","XAF","0","0.00","0.00","","","","","InActive","2015-01-15 13:31:46","No","0","0","0","","en");INSERT INTO fc_country VALUES("70","EU","GB","+44","United Kingdom","united-kingdom","USD","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:33","No","0","0","0","","en");INSERT INTO fc_country VALUES("71","NA","GD","+1 473","Grenada","grenada","XCD","0","0.00","0.00","","","","","InActive","2015-01-15 13:32:42","No","0","0","0","","en");INSERT INTO fc_country VALUES("72","AS","GE","+995","Georgia","georgia","GEL","0","0.00","0.00","","","","","InActive","2015-01-15 13:31:58","No","0","0","0","","en");INSERT INTO fc_country VALUES("73","SA","GF","+594","French Guiana","french-guiana","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:31:34","No","0","0","0","","en");INSERT INTO fc_country VALUES("74","","GG","+44","Guernsey","guernsey","GGP","0","0.00","0.00","","","","","InActive","2015-01-15 13:32:57","No","0","0","0","","en");INSERT INTO fc_country VALUES("75","AF","GH","+233","Ghana","ghana","GHS","0","0.00","0.00","","","","","InActive","2015-01-15 13:32:14","No","0","0","0","","en");INSERT INTO fc_country VALUES("76","NA","GL","+299","Greenland","greenland","DKK","0","0.00","0.00","","","","","InActive","2015-01-15 13:32:39","No","0","0","0","","en");INSERT INTO fc_country VALUES("77","AF","GM","+220","Gambia","gambia","GMD","0","0.00","0.00","","","","","InActive","2015-01-15 13:31:53","No","0","0","0","","en");INSERT INTO fc_country VALUES("78","AF","GN","+224 ","Guinea","guinea","GNF","0","0.00","0.00","","","","","InActive","2015-01-15 13:33:01","No","0","0","0","","en");INSERT INTO fc_country VALUES("79","NA","GP","+590","Guadeloupe","guadeloupe","EUD","0","0.00","0.00","","","","","InActive","2015-01-15 13:32:46","No","0","0","0","","en");INSERT INTO fc_country VALUES("80","AF","GQ","+240","Equatorial Guinea","equatorial-guinea","XAF","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:42","No","0","0","0","","en");INSERT INTO fc_country VALUES("81","EU","GR","+30","Greece","greece","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:32:35","No","0","0","0","","en");INSERT INTO fc_country VALUES("82","NA","GT","+502","Guatemala","guatemala","QTQ","0","0.00","0.00","","","","","InActive","2015-01-15 13:32:53","No","0","0","0","","en");INSERT INTO fc_country VALUES("83","OC","GU","+1 671","Guam","guam","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:32:50","No","0","0","0","","en");INSERT INTO fc_country VALUES("84","AF","GW","+245","Guinea-Bissau","guinea-bissau","GWP","0","0.00","0.00","","","","","InActive","2015-01-15 13:33:04","No","0","0","0","","en");INSERT INTO fc_country VALUES("85","SA","GY","+592","Guyana","guyana","GYD","0","0.00","0.00","","","","","InActive","2015-01-15 13:33:08","No","0","0","0","","en");INSERT INTO fc_country VALUES("86","AS","HK","+852","Hong Kong","hong-kong","HKD","0","0.00","0.00","","","","","InActive","2015-01-15 13:33:19","No","0","0","0","","en");INSERT INTO fc_country VALUES("87","NA","HN","+504","Honduras","honduras","HNL","0","0.00","0.00","","","","","InActive","2015-01-15 13:33:15","No","0","0","0","","en");INSERT INTO fc_country VALUES("88","EU","HR","+385","Croatia","croatia","HRK","0","0.00","0.00","","","","","InActive","2015-01-15 13:26:33","No","0","0","0","","en");INSERT INTO fc_country VALUES("89","NA","HT","+509","Haiti","haiti","HTG","0","0.00","0.00","","","","","InActive","2015-01-15 13:33:12","No","0","0","0","","en");INSERT INTO fc_country VALUES("90","EU","HU","+36","Hungary","hungary","HUF","0","0.00","0.00","","","","","InActive","2015-01-15 13:33:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("91","AS","ID","+62","Indonesia","indonesia","IDR","0","0.00","0.00","","","","","InActive","2015-01-15 13:33:32","No","0","0","0","","en");INSERT INTO fc_country VALUES("92","EU","IE","+353","Ireland","ireland","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:34:18","No","0","0","0","","en");INSERT INTO fc_country VALUES("93","AS","IL","+972 ","Israel","israel","ILS","0","0.00","0.00","","","","","InActive","2015-01-15 13:34:27","No","0","0","0","","en");INSERT INTO fc_country VALUES("94","","IM","+44","Isle Of Man","isle-of-man","GBP","0","0.00","0.00","","","","","InActive","2015-01-15 13:34:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("95","AS","IN","+91","India","india","INR","0","15.00","10.00","","","","","Active","2015-03-16 07:27:39","Yes","0","0","0","","en");INSERT INTO fc_country VALUES("96","AS","IO","+246","British Indian Ocean Territory","british-indian-ocean-territory","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:18:18","No","0","0","0","","en");INSERT INTO fc_country VALUES("97","AS","IQ","+964","Iraq","iraq","IQD","0","0.00","0.00","","","","","InActive","2015-01-15 13:34:15","No","0","0","0","","en");INSERT INTO fc_country VALUES("61","AF","ER","+291","Eritrea","eritrea","ERN","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:45","No","0","0","0","","en");INSERT INTO fc_country VALUES("60","AF","EH","+212","Western Sahara","western-sahara","MAD","0","0.00","0.00","","","","","InActive","2015-01-15 13:42:05","No","0","0","0","","en");INSERT INTO fc_country VALUES("59","AF","EG","+20","Egypt","egypt","EGP","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:35","No","0","0","0","","en");INSERT INTO fc_country VALUES("58","EU","EE","+372","Estonia","estonia","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:48","No","0","0","0","","en");INSERT INTO fc_country VALUES("57","SA","EC","+593","Ecuador","ecuador","ECS","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:31","No","0","0","0","","en");INSERT INTO fc_country VALUES("56","AF","DZ","+213","Algeria","algeria","DZD","0","0.00","0.00","","","","","InActive","2015-01-15 13:11:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("55","NA","DO","+1 809 ","Dominican Republic","dominican-republic","DOP","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("54","NA","DM","+ 1 767","Dominica","dominica","XCD","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:19","No","0","0","0","","en");INSERT INTO fc_country VALUES("53","EU","DK","+45","Denmark","denmark","DKK","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:10","No","0","0","0","","en");INSERT INTO fc_country VALUES("52","AF","DJ","+253","Djibouti","djibouti","DJF","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:14","No","0","0","0","","en");INSERT INTO fc_country VALUES("51","EU","DE","+49","Germany","germany","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:32:07","No","0","0","0","","de");INSERT INTO fc_country VALUES("50","EU","CZ","+420
","Czech Republic","czech-republic","CZK","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:02","No","0","0","0","","en");INSERT INTO fc_country VALUES("49","EU","CY","+357
","Cyprus","cyprus","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:25:13","No","0","0","0","","en");INSERT INTO fc_country VALUES("48","AF","CV","+238
","Cape Verde","cape-verde","CVE","0","0.00","0.00","","","","","InActive","2015-01-15 13:25:53","No","0","0","0","","en");INSERT INTO fc_country VALUES("47","NA","CU","+53
","Cuba","cuba","CUP","0","0.00","0.00","","","","","InActive","2015-01-15 13:26:37","No","0","0","0","","en");INSERT INTO fc_country VALUES("46","NA","CR","+506
","Costa Rica","costa-rica","CRC","0","0.00","0.00","","","","","InActive","2015-01-15 13:26:29","No","0","0","0","","en");INSERT INTO fc_country VALUES("45","SA","CO","+57","Colombia","colombia","COP","0","0.00","0.00","","","","","InActive","2015-01-15 13:26:19","No","0","0","0","","en");INSERT INTO fc_country VALUES("44","AS","CN","+86","China","china","CNY","0","0.00","0.00","","","","","InActive","2015-01-15 13:26:15","No","0","0","0","","en");INSERT INTO fc_country VALUES("43","AF","CM","+237","Cameroon","cameroon","XAF","0","0.00","0.00","","","","","InActive","2015-01-15 13:24:48","No","0","0","0","","en");INSERT INTO fc_country VALUES("42","SA","CL","+56
","Chile","chile","CLP","0","0.00","0.00","","","","","InActive","2015-01-15 13:26:11","No","0","0","0","","en");INSERT INTO fc_country VALUES("41","","CI","+225","Ivory Coast","ivory-coast","XOF","0","0.00","0.00","","","","","InActive","2015-01-15 13:25:01","No","0","0","0","","en");INSERT INTO fc_country VALUES("40","EU","CH","+41
","Switzerland","switzerland","CHF","0","0.00","0.00","","","","","InActive","2015-01-15 13:39:25","No","0","0","0","","en");INSERT INTO fc_country VALUES("39","","CG","+ 242","Republic Of The Congo","republic-of-the-congo","DRC","0","0.00","0.00","","","","","InActive","2015-01-15 13:58:19","No","0","0","0","","en");INSERT INTO fc_country VALUES("38","AF","CF","+236
","Central African Republic","central-african-republic","XAF","0","0.00","0.00","","","","","InActive","2015-01-15 13:25:58","No","0","0","0","","en");INSERT INTO fc_country VALUES("37","","CD","+243","Democratic Republic Of The Congo","democratic-republic-of-the-congo","DRC","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:06","No","0","0","0","","en");INSERT INTO fc_country VALUES("36","NA","CA","+1","Canada","canada","CAD","0","0.00","0.00","","","","","InActive","2015-01-15 13:25:48","No","0","0","0","","en");INSERT INTO fc_country VALUES("35","NA","BZ","+501","Belize","belize","BZD","0","0.00","0.00","","","","","InActive","2015-01-15 13:17:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("34","EU","BY","+375","Belarus","belarus","BYR","0","0.00","0.00","","","","","InActive","2015-01-15 13:16:49","No","0","0","0","","en");INSERT INTO fc_country VALUES("33","AF","BW","+267","Botswana","botswana","BWP","0","0.00","0.00","","","","","InActive","2015-01-15 13:18:57","No","0","0","0","","en");INSERT INTO fc_country VALUES("32","AN","BV","+47	","Bouvet Island","bouvet-island","NOK","0","0.00","0.00","","","","","InActive","2015-01-15 13:22:59","No","0","0","0","","en");INSERT INTO fc_country VALUES("31","AS","BT","+975","Bhutan","bhutan","BTN","0","0.00","0.00","","","","","InActive","2015-01-15 13:23:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("30","NA","BS","+242","Bahamas","bahamas","BSD","0","0.00","0.00","","","","","InActive","2015-01-15 13:15:59","No","0","0","0","","en");INSERT INTO fc_country VALUES("29","SA","BR","+55","Brazil","brazil","BRL","0","0.00","0.00","","","","","InActive","2015-01-15 13:23:11","No","0","0","0","","en");INSERT INTO fc_country VALUES("28","","BQ","+599","Bonaire, Saint Eustatius And Saba ","bonaire-saint-eustatius-and-saba","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:17:11","No","0","0","0","","en");INSERT INTO fc_country VALUES("27","SA","BO","+591","Bolivia","bolivia","BOB","0","0.00","0.00","","","","","InActive","2015-01-15 13:23:46","No","0","0","0","","en");INSERT INTO fc_country VALUES("26","","BN","+673","Brunei","brunei","BND","0","0.00","0.00","","","","","InActive","2015-01-15 13:23:34","No","0","0","0","","en");INSERT INTO fc_country VALUES("25","NA","BM","+1441","Bermuda","bermuda","BMD","0","0.00","0.00","","","","","InActive","2015-01-15 13:19:11","No","0","0","0","","en");INSERT INTO fc_country VALUES("24","AF","BJ","+229 ","Benin","benin","XOF","0","0.00","0.00","","","","","InActive","2015-01-15 13:18:06","No","0","0","0","","en");INSERT INTO fc_country VALUES("23","AF","BI","+257","Burundi","burundi","BIF","0","0.00","0.00","","","","","InActive","2015-01-15 13:24:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("22","AS","BH","+973","Bahrain","bahrain","BHD","0","0.00","0.00","","","","","InActive","2015-01-15 13:16:11","No","0","0","0","","en");INSERT INTO fc_country VALUES("21","EU","BG","+359","Bulgaria","bulgaria","BGN","0","0.00","0.00","","","","","InActive","2015-01-15 13:23:59","No","0","0","0","","en");INSERT INTO fc_country VALUES("20","AF","BF","+226","Burkina Faso","burkina-faso","XOF","0","0.00","0.00","","","","","InActive","2015-01-15 13:24:10","No","0","0","0","","en");INSERT INTO fc_country VALUES("19","EU","BE","+32","Belgium","belgium","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:17:00","No","0","0","0","","en");INSERT INTO fc_country VALUES("18","AS","BD","+880","Bangladesh","bangladesh","BDT","0","0.00","0.00","","","","","InActive","2015-01-15 13:16:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("17","NA","BB","+246","Barbados","barbados","BBD","0","0.00","0.00","","","","","InActive","2015-01-15 13:16:36","No","0","0","0","","en");INSERT INTO fc_country VALUES("16","","BA","+387","Bosnia And Herzegovina","bosnia-and-herzegovina","BAM","0","0.00","0.00","","","","","InActive","2015-01-15 13:18:34","No","0","0","0","","en");INSERT INTO fc_country VALUES("15","AS","AZ","+994","Azerbaijan","azerbaijan","AZN","0","0.00","0.00","","","","","InActive","2015-01-15 13:15:49","No","0","0","0","","en");INSERT INTO fc_country VALUES("14","","AX","+358
","Aland Islands","aland-islands","EUR","0","0.00","0.00","","","","<p>dfsdf</p>","InActive","2015-01-15 13:10:59","No","0","Chrysanthemum1.jpg","0","Lighthouse3.jpg","en");INSERT INTO fc_country VALUES("13","NA","AW","+297","Aruba","aruba","AWG","0","0.00","0.00","","","","","InActive","2015-01-15 13:14:42","No","0","0","0","","en");INSERT INTO fc_country VALUES("12","OC","AU","+61","Australia","australia","AUD","0","0.00","0.00","","","","","Active","2015-03-16 07:27:39","No","0","0","0","","en");INSERT INTO fc_country VALUES("11","EU","AT","+43","Austria","austria","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:15:03","No","0","0","0","","en");INSERT INTO fc_country VALUES("10","OC","AS","+684","American Samoa","american-samoa","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:11:33","No","0","0","0","","en");INSERT INTO fc_country VALUES("9","SA","AR","+54 ","Argentina","argentina","ARS","0","0.00","0.00","","","","","InActive","2015-01-15 13:14:21","No","0","0","0","","en");INSERT INTO fc_country VALUES("8","AN","AQ","+672","Antarctica","antarctica","XCD","0","0.00","0.00","","","","","InActive","2015-01-15 13:13:59","No","0","0","0","","en");INSERT INTO fc_country VALUES("7","AF","AO","+244","Angola","angola","AOA","0","0.00","0.00","","","","","InActive","2015-01-15 13:13:37","No","0","0","0","","en");INSERT INTO fc_country VALUES("6","AS","AM","+374","Armenia","armenia","AMD","0","0.00","0.00","","","","","InActive","2015-01-15 13:14:31","No","0","0","0","","en");INSERT INTO fc_country VALUES("5","EU","AL","+355","Albania","albania","ALL","0","0.00","0.00","","","","","InActive","2015-01-15 13:11:11","No","0","0","0","","en");INSERT INTO fc_country VALUES("4","NA","AG","+268","Antigua And Barbuda","antigua-and-barbuda","XCD","0","2.00","3.00","","","","","InActive","2015-01-15 13:14:09","No","0","0","0","","en");INSERT INTO fc_country VALUES("3","AS","AF","+93 ","Afghanistan","afghanistan","AFN","0","3.00","0.00","","","","<p>hjgjf</p>","InActive","2015-01-21 13:32:12","No","0","Chrysanthemum2.jpg","0","Koala8.jpg","en");INSERT INTO fc_country VALUES("2","AS","AE","+971","United Arab Emirates","united-arab-emirates","AED","0","0.00","0.00","","","","","InActive","2015-01-15 13:54:38","No","0","0","0","","en");INSERT INTO fc_country VALUES("1","EU","AD","+376","Andorra","andorra","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:13:06","No","0","0","0","","en");INSERT INTO fc_country VALUES("167","","PS","+970","Palestinian Territory","palestinian-territory","PAB","0","0.00","0.00","","","","","InActive","2015-01-15 13:59:16","No","0","0","0","","en");INSERT INTO fc_country VALUES("168","EU","PT","+351","Portugal","portugal","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:23","No","0","0","0","","en");INSERT INTO fc_country VALUES("169","OC","PW","+680","Palau","palau","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:56:40","No","0","0","0","","en");INSERT INTO fc_country VALUES("170","SA","PY","+595","Paraguay","paraguay","PYG","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:31","No","0","0","0","","en");INSERT INTO fc_country VALUES("171","AS","QA","+974","Qatar","qatar","QAR","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:17","No","0","0","0","","en");INSERT INTO fc_country VALUES("172","AF","RE","+262","Reunion","reunion","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 14:00:13","No","0","0","0","","en");INSERT INTO fc_country VALUES("173","EU","RO","+40","Romania","romania","RON","0","0.00","0.00","","","","","InActive","2015-01-15 13:52:42","No","0","0","0","","en");INSERT INTO fc_country VALUES("174","","RS","+381","Serbia","serbia","RSD","0","0.00","0.00","","","","","InActive","2015-01-15 13:38:41","No","0","0","0","","en");INSERT INTO fc_country VALUES("175","","RU","+7","Russia","russia","RUB","0","0.00","0.00","","","","","InActive","2015-01-15 13:44:48","No","0","0","0","","en");INSERT INTO fc_country VALUES("176","AF","RW","+250","Rwanda","rwanda","RWF","0","0.00","0.00","","","","","InActive","2015-01-15 13:51:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("177","AS","SA","+966","Saudi Arabia","saudi-arabia","SAR","0","0.00","0.00","","","","","InActive","2015-01-15 13:42:08","No","0","0","0","","en");INSERT INTO fc_country VALUES("178","OC","SB","+677","Solomon Islands","solomon-islands","SBD","0","0.00","0.00","","","","","InActive","2015-01-15 13:40:20","No","0","0","0","","en");INSERT INTO fc_country VALUES("179","AF","SC","+248 ","Seychelles","seychelles","SCR","0","0.00","0.00","","","","","InActive","2015-01-15 13:48:58","No","0","0","0","","en");INSERT INTO fc_country VALUES("180","AF","SD","+249","Sudan","sudan","SDG","0","0.00","0.00","","","","","InActive","2015-01-15 13:39:55","No","0","0","0","","en");INSERT INTO fc_country VALUES("181","EU","SE","+46 ","Sweden","sweden","SEK","0","0.00","0.00","","","","","InActive","2015-01-15 13:39:28","No","0","0","0","","en");INSERT INTO fc_country VALUES("182","AS","SG","+65","Singapore","singapore","SGD","0","0.00","0.00","","","","","InActive","2015-03-11 12:29:33","No","0","0","0","","en");INSERT INTO fc_country VALUES("183","","SH","+290","Saint Helena","saint-helena","SHP","0","0.00","0.00","","","","","InActive","2015-01-15 13:41:34","No","0","0","0","","en");INSERT INTO fc_country VALUES("184","EU","SI","+386","Slovenia","slovenia","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:48:50","No","0","0","0","","en");INSERT INTO fc_country VALUES("185","","SJ","+47","Svalbard And Jan Mayen","svalbard-and-jan-mayen","NOK","0","0.00","0.00","","","","","InActive","2015-01-15 13:39:46","No","0","0","0","","en");INSERT INTO fc_country VALUES("186","","SK","+421","Slovakia","slovakia","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:48:53","No","0","0","0","","en");INSERT INTO fc_country VALUES("187","AF","SL","+232","Sierra Leone","sierra-leone","SLL","0","0.00","0.00","","","","","InActive","2015-01-15 13:44:51","No","0","0","0","","en");INSERT INTO fc_country VALUES("188","EU","SM","+378","San Marino","san-marino","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:42:01","No","0","0","0","","en");INSERT INTO fc_country VALUES("189","AF","SN","+221","Senegal","senegal","XOF","0","0.00","0.00","","","","","InActive","2015-01-15 13:46:15","No","0","0","0","","en");INSERT INTO fc_country VALUES("190","AF","SO","+252","Somalia","somalia","SOS","0","0.00","0.00","","","","","InActive","2015-01-15 13:40:16","No","0","0","0","","en");INSERT INTO fc_country VALUES("191","SA","SR","+597","Suriname","suriname","SRD","0","0.00","0.00","","","","","InActive","2015-01-15 13:39:50","No","0","0","0","","en");INSERT INTO fc_country VALUES("192","","SS","+211","South Sudan","south-sudan","SSP","0","0.00","0.00","","","","","InActive","2015-01-15 13:40:05","No","0","0","0","","en");INSERT INTO fc_country VALUES("193","AF","ST","+239","Sao Tome And Principe","sao-tome-and-principe","STD","0","0.00","0.00","","","","","InActive","2015-01-15 13:43:13","No","0","0","0","","en");INSERT INTO fc_country VALUES("194","NA","SV","+503","El Salvador","el-salvador","SVC","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:38","No","0","0","0","","en");INSERT INTO fc_country VALUES("195","","SY","+963","Syria","syria","SYP","0","0.00","0.00","","","","","InActive","2015-01-15 14:04:06","No","0","0","0","","en");INSERT INTO fc_country VALUES("196","AF","SZ","+268","Swaziland","swaziland","SZL","0","0.00","0.00","","","","","InActive","2015-01-15 13:39:32","No","0","0","0","","en");INSERT INTO fc_country VALUES("197","AF","TD","+235","Chad","chad","XAF","0","0.00","0.00","","","","","InActive","2015-01-15 13:26:01","No","0","0","0","","en");INSERT INTO fc_country VALUES("198","AN","TF","","French Southern Territories","french-southern-territories","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:31:42","No","0","0","0","","en");INSERT INTO fc_country VALUES("199","AF","TG","+228","Togo","togo","XOF","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:52","No","0","0","0","","en");INSERT INTO fc_country VALUES("200","AS","TH","+66","Thailand","thailand","THB","0","0.00","0.00","","","","","InActive","2015-01-15 13:56:46","No","0","0","0","","en");INSERT INTO fc_country VALUES("201","AS","TJ","+992","Tajikistan","tajikistan","TJS","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:59","No","0","0","0","","en");INSERT INTO fc_country VALUES("202","OC","TK","+690","Tokelau","tokelau","NZD","0","0.00","0.00","","","","","InActive","2015-01-15 13:56:49","No","0","0","0","","en");INSERT INTO fc_country VALUES("203","OC","TL","+670","East Timor","east-timor","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:29:28","No","0","0","0","","en");INSERT INTO fc_country VALUES("204","AS","TM","+993","Turkmenistan","turkmenistan","TMT","0","0.00","0.00","","","","","InActive","2015-01-15 13:55:10","No","0","0","0","","en");INSERT INTO fc_country VALUES("205","AF","TN","+216","Tunisia","tunisia","TND","0","0.00","0.00","","","","","InActive","2015-01-15 13:44:57","No","0","0","0","","en");INSERT INTO fc_country VALUES("206","OC","TO","+676","Tonga","tonga","TOP","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:49","No","0","0","0","","en");INSERT INTO fc_country VALUES("207","AS","TR","+90","Turkey","turkey","TRY","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:42","No","0","0","0","","en");INSERT INTO fc_country VALUES("208","NA","TT","+868
","Trinidad And Tobago","trinidad-and-tobago","TTD","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:45","No","0","0","0","","en");INSERT INTO fc_country VALUES("209","OC","TV","+688","Tuvalu","tuvalu","AUD","0","0.00","0.00","","","","","InActive","2015-01-15 13:59:26","No","0","0","0","","en");INSERT INTO fc_country VALUES("210","AS","TW","+886","Taiwan","taiwan","TWD","0","0.00","0.00","","","","","InActive","2015-01-15 14:04:03","No","0","0","0","","en");INSERT INTO fc_country VALUES("211","","TZ","+255","Tanzania","tanzania","TZS","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:56","No","0","0","0","","en");INSERT INTO fc_country VALUES("212","EU","UA","+380","Ukraine","ukraine","UAH","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:36","No","0","0","0","","en");INSERT INTO fc_country VALUES("213","AF","UG","+256","Uganda","uganda","UGX","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:39","No","0","0","0","","en");INSERT INTO fc_country VALUES("214","OC","UM","+1","United States Minor Outlying Islands","united-states-minor-outlying-islands","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:54:41","No","0","0","0","","en");INSERT INTO fc_country VALUES("215","NA","US","+1","United States","united-states","USD","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:30","No","0","0","0","","en");INSERT INTO fc_country VALUES("216","SA","UY","+598
","Uruguay","uruguay","UYU","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:26","No","0","0","0","","en");INSERT INTO fc_country VALUES("217","AS","UZ","+998","Uzbekistan","uzbekistan","UZS","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("218","NA","VC","+1 784 ","Saint Vincent And The Grenadines","saint-vincent-and-the-grenadines","XCD","0","0.00","0.00","","","","","InActive","2015-01-15 13:41:55","No","0","0","0","","en");INSERT INTO fc_country VALUES("219","SA","VE","+58","Venezuela","venezuela","VEF","0","0.00","0.00","","","","","InActive","2015-01-15 13:56:57","No","0","0","0","","en");INSERT INTO fc_country VALUES("220","","VI","+1 340","U.S. Virgin Islands","us-virgin-islands","USD","0","0.00","0.00","","","","","InActive","2015-01-15 13:56:57","No","0","0","0","","en");INSERT INTO fc_country VALUES("221","","VN","+84","Vietnam","vietnam","VND","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:15","No","0","0","0","","en");INSERT INTO fc_country VALUES("222","OC","VU","+678","Vanuatu","vanuatu","VUV","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:18","No","0","0","0","","en");INSERT INTO fc_country VALUES("223","","WF","+681 ","Wallis And Futuna","wallis-and-futuna","XPF","0","0.00","0.00","","","","","InActive","2015-01-15 13:58:22","No","0","0","0","","en");INSERT INTO fc_country VALUES("224","OC","WS","+685","Samoa","samoa","WST","0","0.00","0.00","","","","","InActive","2015-01-15 13:41:58","No","0","0","0","","en");INSERT INTO fc_country VALUES("225","","XK","+381","Kosovo","kosovo","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:41:27","No","0","0","0","","en");INSERT INTO fc_country VALUES("226","AS","YE","+967","Yemen","yemen","YER","0","0.00","0.00","","","","","InActive","2015-01-15 13:55:13","No","0","0","0","","en");INSERT INTO fc_country VALUES("227","AF","YT","+262","Mayotte","mayotte","EUR","0","0.00","0.00","","","","","InActive","2015-01-15 13:52:26","No","0","0","0","","en");INSERT INTO fc_country VALUES("228","AF","ZA","+27","South Africa","south-africa","ZAR","0","0.00","0.00","","","","","InActive","2015-01-15 13:40:12","No","0","0","0","","en");INSERT INTO fc_country VALUES("229","AF","ZM","+260","Zambia","zambia","ZMW","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:12","No","0","0","0","","en");INSERT INTO fc_country VALUES("230","AF","ZW","+263","Zimbabwe","zimbabwe","ZWD","0","0.00","0.00","","","","","InActive","2015-01-15 14:03:09","No","0","0","0","","en");CREATE TABLE `fc_couponcards` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(250) NOT NULL,
  `code` varchar(50) NOT NULL,
  `price_type` enum('1','2','3') NOT NULL DEFAULT '1',
  `coupon_type` varchar(500) NOT NULL,
  `price_value` float(10,2) NOT NULL,
  `quantity` int(100) NOT NULL,
  `description` blob NOT NULL,
  `datefrom` date NOT NULL,
  `dateto` date NOT NULL,
  `category_id` varchar(500) NOT NULL,
  `product_id` varchar(500) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `card_status` enum('redeemed','not used','expired') NOT NULL DEFAULT 'not used',
  `purchase_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;INSERT INTO fc_couponcards VALUES("1","test","Y2hm9JRtHM","1","Business Travel","300.00","10","test","2014-11-13","2014-12-28","","","Active","not used","0");INSERT INTO fc_couponcards VALUES("2","test","4UrHJ8GSRA","1","Advertisement","10.00","12","dfvbfgb","2014-11-30","2014-12-08","","","Active","not used","0");INSERT INTO fc_couponcards VALUES("3","sample","bvuPdEJrWC","1","","600.00","10","test coupon card","2014-12-04","2015-01-04","","","Active","not used","0");INSERT INTO fc_couponcards VALUES("4","sample2","SjPfLr84Xa","2","","10.00","10","dg dfgdfg","2014-12-10","2015-01-14","","","Active","not used","0");CREATE TABLE `fc_currency` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  `seourl` varchar(755) NOT NULL,
  `currency_symbols` text NOT NULL,
  `currency_rate` float(10,2) NOT NULL,
  `currency_type` char(3) NOT NULL,
  `meta_title` blob NOT NULL,
  `meta_keyword` blob NOT NULL,
  `meta_description` blob NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `default_currency` enum('No','Yes') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;INSERT INTO fc_currency VALUES("3","United States Dollar","united-states-dollar","$","1.00","USD","","","","Active","2015-01-22 07:48:29","Yes");INSERT INTO fc_currency VALUES("4","Philippines","philippines","₱","13.29","PHP","","","","InActive","2015-03-11 12:54:28","No");INSERT INTO fc_currency VALUES("5","Ecuador","ecuador","€","0.30","EUR","","","","InActive","2015-03-11 12:54:42","No");INSERT INTO fc_currency VALUES("9","New Zealand","new-zealand","$","0.38","NZD","","","","InActive","2015-03-11 12:54:32","No");INSERT INTO fc_currency VALUES("10","India","india","Rs","18.40","INR","","","","InActive","2015-03-11 12:54:39","No");INSERT INTO fc_currency VALUES("11","Australia","australia","$","1.00","AUD","","","","Active","2015-04-07 10:50:52","No");INSERT INTO fc_currency VALUES("12","Malaysia","malaysia","RM","1.00","MYR","","","","InActive","2015-03-11 12:54:36","No");CREATE TABLE `fc_fancybox` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `excerpt` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `image` longtext NOT NULL,
  `price` float(10,2) NOT NULL,
  `likes` bigint(20) NOT NULL,
  `comments` bigint(20) NOT NULL,
  `shipping_cost` float(10,2) NOT NULL,
  `tax` float(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seourl` mediumtext NOT NULL,
  `category_id` longtext NOT NULL,
  `price_range` mediumtext NOT NULL,
  `purchased` bigint(20) NOT NULL,
  `status` enum('Publish','UnPublish') NOT NULL,
  `meta_title` mediumtext NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `valid_date` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;INSERT INTO fc_fancybox VALUES("1","Diamond Packages ","Add some Fancy to your kitchen. Subscribe and receive a curated collection of the best gourmet","Add some Fancy to your kitchen. Subscribe and receive a curated collection of the best gourmet artisan foods around. Every month!
Each Fancy Food Box includes five or more food products - anything from cookies and chocolates to teas and sauces - along with a selection of tasty recipes and pairing suggestions.
By purchasing this item, you hereby consent to a $39.00 monthly fee for the Fancy Box. Once payment is received, all orders will ship on the 5th of the following calendar month. All charges are billed on the day of original purchase and every 30 days thereafter. Subscription may be cancelled by updating your subscription preferences under your Fancy Box subscriptions: https://www.fancy.com/fancybox/manage. You can cancel your Fancy Box within 10 days of your last payment. If you cancel after 10 days, you will still receive your Fancy Box for that month, and your subscription will cease in the following month. Thank you for ordering the Fancy Box.
Shipping and handling not included in price. Allow 10 days from date of shipment for delivery.
In addition, to the maximum extent allowable by applicable law, Thing Daemon, and its officers, directors, employees, agents and suppliers specifically disclaim all liability resulting from personal injury and/or death resulting from, or arising out of, your use or consumption of products obtained through the Site, the Applications, or in connection with the services. Such disclaimer shall include, without limitation, mislabeling of products and/or ingredients. ","foodbox.jpeg,","39.00","0","0","12.00","0.00","2013-08-18 15:07:40","2013-11-14 18:03:18","diamond-packages","","","2","Publish","Diamond Packages ","Diamond Packages ","Diamond Packages ","6");INSERT INTO fc_fancybox VALUES("2","Silver Packages ","Hey, it?s Coco. When I discover a new product or brand that I absolutely love I always like to","Hey, it?s Coco. When I discover a new product or brand that I absolutely love I always like to spreading the word. So when Fancy asked me to put together a box every month containing my latest finds, it was a perfect fit. It?s so much fun putting these boxes together, and I think its just as fun for subscribers, who each month receive a box filled with my latest faves-things like jewelry, nail polish, tech products and other cool things. The point is you never know exactly whats coming till you get it, but one thing?s for sure: each Fancy Box will have more than $80 worth of stuff inside-not bad considering you pay just $39!
You will receive a new box with top Fancy goodies each month. To manage your Fancy Box subscription, just go to your Fancy order history (http://www.fancy.com/purchases), find your Fancy Box order number and select \"Manage Subscription\" on your order page. 

By purchasing this item, you hereby consent to a $39.00 monthly fee for the Fancy Box. Orders placed before the 24th of the calendar month will ship on the 30th of the same month. Orders placed after the 24th of the calendar month will ship on the 30th of the NEXT calendar month. All charges are billed on the day of original purchase and every 30 days thereafter. Subscription may be cancelled by updating your subscription preferences under your Fancy Box subscriptions: https://www.fancy.com/fancybox/manage. You can cancel your Fancy Box within 10 days of your last payment. If you cancel after 10 days, you will still receive your Fancy Box for that month, and your subscription will cease in the following month. Thank you for ordering the Fancy Box.

Shipping and handling not included in price. Allow 10 days from date of shipment for delivery.",",","55.00","0","0","11.00","0.00","2013-08-18 18:21:33","2013-11-14 18:02:46","silver-packages","","","0","Publish","Coco Rocha Fancy Box Subscription","Coco Rocha Fancy Box Subscription","Coco Rocha Fancy Box Subscription","3");INSERT INTO fc_fancybox VALUES("3","Free Package ","Free Package ","Free Package ","44275_1_lg.jpg,","0.00","0","0","0.00","0.00","2013-11-14 22:57:15","2013-11-14 17:56:00","free-package","","","0","Publish","Free Package ","Free Package ","Free Package ","1");INSERT INTO fc_fancybox VALUES("4","Golden Package ","Golden Package ","Golden Package ","416315_1297964234983.jpg,large.jpg,","100.00","0","0","0.00","0.00","2013-11-14 23:21:07","2014-05-29 11:42:55","golden-package","","","0","Publish","Golden Package ","Golden Package ","Golden Package ","1");INSERT INTO fc_fancybox VALUES("5","Month plan","Month plan","Month plan",",","10000.00","0","0","0.00","0.00","2014-06-04 17:44:10","2014-06-04 12:14:20","month-plan","","","0","Publish","tttt","ttt","tt","1");INSERT INTO fc_fancybox VALUES("6","gold member","","gold member","","100.00","0","0","0.00","0.00","2014-06-18 16:11:19","0000-00-00 00:00:00","gold-member","","21-100","0","Publish","gold member","gold member","gold member","5");CREATE TABLE `fc_fancybox_temp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `fancybox_id` int(11) NOT NULL,
  `image` longtext NOT NULL,
  `price` float(10,2) NOT NULL,
  `fancy_ship_cost` float(10,2) NOT NULL,
  `fancy_tax_cost` float(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seourl` mediumtext NOT NULL,
  `category_id` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `indtotal` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `invoice_no` varchar(150) NOT NULL,
  `status` enum('Pending','Paid') NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;CREATE TABLE `fc_fancybox_uses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `fancybox_id` int(11) NOT NULL,
  `image` longtext NOT NULL,
  `price` float(10,2) NOT NULL,
  `fancy_ship_cost` float(10,2) NOT NULL,
  `fancy_tax_cost` float(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seourl` mediumtext NOT NULL,
  `category_id` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `indtotal` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `status` enum('Pending','Paid','Expired') NOT NULL DEFAULT 'Pending',
  `shipping_id` int(11) NOT NULL,
  `invoice_no` varchar(150) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `trans_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;INSERT INTO fc_fancybox_uses VALUES("18","Fancy Food Box Subscription","42","1","foodbox.jpeg","39.00","12.00","0.00","2013-08-22 12:06:53","fancy-food-box-subscription","","1","39.00","107.36","20.00","9.36","Paid","18","133963790","Credit Cart","9865848854");INSERT INTO fc_fancybox_uses VALUES("19","Fancy Food Box Subscription","42","1","foodbox.jpeg","39.00","12.00","0.00","2013-08-22 12:06:57","fancy-food-box-subscription","","1","39.00","107.36","20.00","9.36","Paid","18","133963790","Credit Cart","9865848854");INSERT INTO fc_fancybox_uses VALUES("20","Fancy Food Box Subscription","3","1","foodbox.jpeg","39.00","12.00","0.00","2013-08-22 12:06:57","fancy-food-box-subscription","","1","39.00","57.90","15.00","10.00","Paid","18","133963791","Credit Cart","9865848854");CREATE TABLE `fc_giftcards` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipient_name` varchar(200) NOT NULL,
  `recipient_mail` varchar(200) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `sender_mail` varchar(200) NOT NULL,
  `price_value` float(10,2) NOT NULL,
  `description` blob NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expiry_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `card_status` enum('redeemed','not used','expired') NOT NULL DEFAULT 'not used',
  `payment_status` enum('Pending','Paid') NOT NULL DEFAULT 'Pending',
  `used_amount` decimal(10,2) NOT NULL,
  `payer_email` varchar(500) NOT NULL,
  `paypal_transaction_id` varchar(500) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;INSERT INTO fc_giftcards VALUES("31","8SOq5GHpnk","42","sriram","sriram@teamtweaks.com","sivaprakash","sivaprakash@teamtweaks.com","25.00","test for gift cards","2013-10-30 19:14:58","2013-11-12 01:59:59","redeemed","Paid","25.00","gopishorebuyer@teamtweaks.com","","Credit Cart");INSERT INTO fc_giftcards VALUES("5","pdqR8l6WzT","3","vinu","vinu@teamtweaks.com","vinu","vinu@teamtweaks.com","100.00","test","2013-08-28 15:07:02","2013-11-26 01:59:59","not used","Paid","0.00","gopishorebuyer@teamtweaks.com","8787569074341804R","Paypal");INSERT INTO fc_giftcards VALUES("10","ayJmeht8OK","42","manivannan","manivannan@teamtweaks.com","sivaprakash","sivaprakash@teamtweaks.com","25.00","test message","2013-10-30 19:14:58","2014-01-29 07:29:59","not used","Paid","0.00","","","Credit Cart");CREATE TABLE `fc_giftcards_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `amounts` varchar(200) NOT NULL,
  `default_amount` varchar(100) NOT NULL,
  `expiry_days` int(11) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;INSERT INTO fc_giftcards_settings VALUES("1","Fancyy Gift Card","The perfect present for any occasion. Send a Fancyy Gift Card today and let your friends choose what they love!","d342fa6bce0de522e7ae8f3ab672a279.png","10,25,50,100,500,1000","100","90","Enable");CREATE TABLE `fc_giftcards_temp` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipient_name` varchar(200) NOT NULL,
  `recipient_mail` varchar(200) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `sender_mail` varchar(200) NOT NULL,
  `price_value` float(10,2) NOT NULL,
  `description` blob NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expiry_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `card_status` enum('redeemed','not used','expired') NOT NULL DEFAULT 'not used',
  `payment_status` enum('Pending','Paid') NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;INSERT INTO fc_giftcards_temp VALUES("7","0aUZghPOyb","96","dsafd","meganathan@teamtweaks.com","sriramteam1","meganathan.team@gmail.com","100.00","dfasdf","2013-08-27 22:13:45","2013-11-26 01:59:59","not used","Pending");CREATE TABLE `fc_hostalert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostId` int(11) NOT NULL,
  `propertyId` int(11) NOT NULL,
  `seen` enum('no','yes') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;CREATE TABLE `fc_inbox` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(1000) NOT NULL,
  `sender_id` varchar(1000) NOT NULL,
  `product_id` int(100) NOT NULL,
  `description` blob NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mailsubject` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;INSERT INTO fc_inbox VALUES("1","kumar@casperon.in","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Demo User, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>1</p>
<p><strong>Rental Name:</strong>Appartement au pied de Montmartre</p>
<p><span><strong>Date of Arrival:</strong></span>2014-11-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-11-11 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>Demo User</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>ramasamy@teamtweaks.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>9999999999</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/al.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-03 07:29:16","Notification Mail");INSERT INTO fc_inbox VALUES("2","admin@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>1</p>
<p><strong>Rental Name:</strong>Appartement au pied de Montmartre</p>
<p><span><strong>Date of Arrival:</strong></span>2014-11-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-11-11 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/al.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-03 07:29:20","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("3","ramasamy@teamtweaks.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>1</p>
<p><strong>Rental Name:</strong>Appartement au pied de Montmartre</p>
<p><span><strong>Date of Arrival:</strong></span>2014-11-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-11-11 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/al.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-03 07:29:24","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("4","kumar@casperon.in","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Demo User, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>1</p>
<p><strong>Rental Name:</strong>Appartement au pied de Montmartre</p>
<p><span><strong>Date of Arrival:</strong></span>2014-11-20 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-11-26 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>Demo User</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>ramasamy@teamtweaks.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>9999999999</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/al.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-03 07:34:56","Notification Mail");INSERT INTO fc_inbox VALUES("5","admin@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>1</p>
<p><strong>Rental Name:</strong>Appartement au pied de Montmartre</p>
<p><span><strong>Date of Arrival:</strong></span>2014-11-20 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-11-26 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/al.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-03 07:35:00","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("6","ramasamy@teamtweaks.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>1</p>
<p><strong>Rental Name:</strong>Appartement au pied de Montmartre</p>
<p><span><strong>Date of Arrival:</strong></span>2014-11-20 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-11-26 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/al.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-03 07:35:04","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("7","gangatharan@casperon.in","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
			<html>
			<head>
			<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
			<meta name=\"viewport\" content=\"width=device-width\"/>
			<title>Membership Purchased Successfully</title><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.png\" alt=\"Stay Next\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi,</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>User Name:</strong>Gangatharan Duraikannu</p>
<p><strong>Package:</strong>Diamond Packages </p>
<p><span><strong>Valid Until Month:</strong></span>6</p>
<strong>price:</strong>39.00<br /><br />
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p>&nbsp;</p>
<p><strong>-  Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
			</html>","2014-11-05 11:07:42","From: Stay Next - Membership Purchased Successfully");INSERT INTO fc_inbox VALUES("8","ramasamy@teamtweaks.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi kumar kumar, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-11-19 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-11-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>8</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>kumar kumar</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>kumar@casperon.in</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>4524524524</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-12 09:04:48","Notification Mail");INSERT INTO fc_inbox VALUES("9","admin@gmail.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-11-19 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-11-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>8</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-12 09:04:53","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("10","kumar@casperon.in","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-11-19 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-11-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>8</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-12 09:04:57","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("11","ramasamy@teamtweaks.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi kumar kumar, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-02 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>0</label></p>
<p><strong>Booking Status:</strong>Pending</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>kumar kumar</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>kumar@casperon.in</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>4524524524</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-18 12:23:43","Notification Mail");INSERT INTO fc_inbox VALUES("12","admin@gmail.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-02 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>0</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-18 12:23:47","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("13","kumar@casperon.in","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.png\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-02 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>0</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-18 12:23:51","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("14","ramasamy@teamtweaks.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi kumar kumar, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-06 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Booking Status:</strong>Pending</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>kumar kumar</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>kumar@casperon.in</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>4524524524</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 09:31:49","Notification Mail");INSERT INTO fc_inbox VALUES("15","admin@gmail.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-06 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 09:31:54","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("16","kumar@casperon.in","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-06 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 09:31:58","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("17","ramasamy@teamtweaks.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi kumar kumar, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-03 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-04 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Booking Status:</strong>Pending</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>kumar kumar</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>kumar@casperon.in</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>4524524524</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 09:38:45","Notification Mail");INSERT INTO fc_inbox VALUES("18","admin@gmail.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-03 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-04 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 09:38:49","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("19","kumar@casperon.in","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-03 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-04 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 09:38:54","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("20","ramasamy@teamtweaks.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi kumar kumar, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-07 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-13 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>3</label></p>
<p><strong>Booking Status:</strong>Pending</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>kumar kumar</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>kumar@casperon.in</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>4524524524</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 10:24:18","Notification Mail");INSERT INTO fc_inbox VALUES("21","admin@gmail.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-07 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-13 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>3</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 10:24:22","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("22","kumar@casperon.in","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-07 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-13 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>3</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 10:24:25","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("23","ramasamy@teamtweaks.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi kumar kumar, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-14 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-15 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Booking Status:</strong>Pending</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>kumar kumar</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>kumar@casperon.in</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>4524524524</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 14:02:36","Notification Mail");INSERT INTO fc_inbox VALUES("24","admin@gmail.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-14 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-15 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 14:02:42","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("25","kumar@casperon.in","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>16</p>
<p><strong>Rental Name:</strong>apartment999999</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-14 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-15 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/140896986024260574.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-24 14:02:48","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("26","kumar@casperon.in","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi ramasamy test, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>135</p>
<p><strong>Rental Name:</strong>Lovely central newly renovated </p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-09 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-10 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>0</label></p>
<p><strong>Booking Status:</strong>Pending</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>ramasamy test</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>ramasamy@teamtweaks.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>0</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-27 16:52:01","Notification Mail");INSERT INTO fc_inbox VALUES("27","admin@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>135</p>
<p><strong>Rental Name:</strong>Lovely central newly renovated </p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-09 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-10 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>0</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-27 16:52:05","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("28","ramasamy@teamtweaks.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>135</p>
<p><strong>Rental Name:</strong>Lovely central newly renovated </p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-09 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-10 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>1</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>0</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-11-27 16:52:09","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("29","kumar@casperon.in","vinu@teamtweaks.com","0","<!DOCTYPE HTML>
							<html>
							<head>
							<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
							<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
							</html>","2014-11-29 13:44:07","From: Stay Next - test");INSERT INTO fc_inbox VALUES("30","ramasamy@teamtweaks.com","xyz@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi dfasd asda, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>149</p>
<p><strong>Rental Name:</strong>ganga</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-08 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Pending</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>dfasd asda</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>xyz@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong></label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1417097578sandego.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 12:11:50","Notification Mail");INSERT INTO fc_inbox VALUES("31","admin@gmail.com","xyz@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>149</p>
<p><strong>Rental Name:</strong>ganga</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-08 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1417097578sandego.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 12:11:54","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("32","xyz@gmail.com","xyz@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>149</p>
<p><strong>Rental Name:</strong>ganga</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-08 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1417097578sandego.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 12:11:58","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("33","ramasamy@teamtweaks.com","xyz@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi dfasd asda, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>149</p>
<p><strong>Rental Name:</strong>ganga</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-09 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-12 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>dfasd asda</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>xyz@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong></label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1417097578sandego.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 12:47:40","Notification Mail");INSERT INTO fc_inbox VALUES("34","admin@gmail.com","xyz@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>149</p>
<p><strong>Rental Name:</strong>ganga</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-09 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-12 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1417097578sandego.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 12:47:44","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("35","xyz@gmail.com","xyz@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>149</p>
<p><strong>Rental Name:</strong>ganga</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-09 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-12 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1417097578sandego.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 12:47:48","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("36","ramasamy@teamtweaks.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi kumar kumar, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>8</p>
<p><strong>Rental Name:</strong>Dongli</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-07 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>kumar kumar</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>kumar@casperon.in</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>4524524524</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/260134529_260631e43bca.png\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:21:02","Notification Mail");INSERT INTO fc_inbox VALUES("37","admin@gmail.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>8</p>
<p><strong>Rental Name:</strong>Dongli</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-07 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/260134529_260631e43bca.png\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:21:06","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("38","kumar@casperon.in","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>8</p>
<p><strong>Rental Name:</strong>Dongli</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-05 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-07 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/260134529_260631e43bca.png\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:21:10","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("39","ramasamy@teamtweaks.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi kumar kumar, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>8</p>
<p><strong>Rental Name:</strong>Dongli</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-08 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-10 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>kumar kumar</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>kumar@casperon.in</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>4524524524</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/260134529_260631e43bca.png\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:26:56","Notification Mail");INSERT INTO fc_inbox VALUES("40","admin@gmail.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>8</p>
<p><strong>Rental Name:</strong>Dongli</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-08 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-10 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/260134529_260631e43bca.png\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:27:00","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("41","kumar@casperon.in","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>8</p>
<p><strong>Rental Name:</strong>Dongli</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-08 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-10 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/260134529_260631e43bca.png\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:27:04","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("42","ramasamy@teamtweaks.com","xyz@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi dfasd asda, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>149</p>
<p><strong>Rental Name:</strong>ganga</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-08 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-10 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>dfasd asda</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>xyz@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong></label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1417097578sandego.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:27:58","Notification Mail");INSERT INTO fc_inbox VALUES("43","admin@gmail.com","xyz@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>149</p>
<p><strong>Rental Name:</strong>ganga</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-08 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-10 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1417097578sandego.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:28:02","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("44","xyz@gmail.com","xyz@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>149</p>
<p><strong>Rental Name:</strong>ganga</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-08 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-10 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1417097578sandego.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:28:06","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("45","ramasamy@teamtweaks.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi kumar kumar, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>8</p>
<p><strong>Rental Name:</strong>Dongli</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-16 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-24 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>8</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>kumar kumar</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>kumar@casperon.in</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>4524524524</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/260134529_260631e43bca.png\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:31:04","Notification Mail");INSERT INTO fc_inbox VALUES("46","admin@gmail.com","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>8</p>
<p><strong>Rental Name:</strong>Dongli</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-16 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-24 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>8</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/260134529_260631e43bca.png\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:31:08","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("47","kumar@casperon.in","kumar@casperon.in","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>8</p>
<p><strong>Rental Name:</strong>Dongli</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-16 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-24 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>8</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/260134529_260631e43bca.png\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-05 13:31:13","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("48","staydemo@staynest.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi ramasamy test, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>180</p>
<p><strong>Rental Name:</strong>ioasdhfjkasdhdfdfd</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-16 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-18 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>ramasamy test</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>ramasamy@teamtweaks.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>9876543210</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418625623Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-16 07:59:24","Notification Mail");INSERT INTO fc_inbox VALUES("49","admin@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>180</p>
<p><strong>Rental Name:</strong>ioasdhfjkasdhdfdfd</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-16 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-18 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418625623Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-16 07:59:28","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("50","ramasamy@teamtweaks.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>180</p>
<p><strong>Rental Name:</strong>ioasdhfjkasdhdfdfd</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-16 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-18 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418625623Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-16 07:59:32","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("51","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi vvv vvv, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>202</p>
<p><strong>Rental Name:</strong>test </p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-17 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-21 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>vvv vvv</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong></label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418726858Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-17 07:09:44","Notification Mail");INSERT INTO fc_inbox VALUES("52","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>202</p>
<p><strong>Rental Name:</strong>test </p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-17 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-21 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418726858Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-17 07:09:48","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("53","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>202</p>
<p><strong>Rental Name:</strong>test </p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-17 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-21 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>2</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418726858Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-17 07:09:52","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("54","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi vvv vvv, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>202</p>
<p><strong>Rental Name:</strong>test </p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>3</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>vvv vvv</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>0</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418726858Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-18 07:36:21","Notification Mail");INSERT INTO fc_inbox VALUES("55","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>202</p>
<p><strong>Rental Name:</strong>test </p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>3</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418726858Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-18 07:36:26","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("56","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>202</p>
<p><strong>Rental Name:</strong>test </p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>3</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418726858Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-18 07:36:30","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("57","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi vvv vvv, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>202</p>
<p><strong>Rental Name:</strong>test</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-28 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-31 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>vvv vvv</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>0</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418726858Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-18 10:29:38","Notification Mail");INSERT INTO fc_inbox VALUES("58","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>202</p>
<p><strong>Rental Name:</strong>test</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-28 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-31 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418726858Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-18 10:29:42","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("59","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>202</p>
<p><strong>Rental Name:</strong>test</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-28 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-31 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418726858Lighthouse.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-18 10:29:46","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("60","gangatharan@casperon.in","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi ramasamy test, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>213</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-25 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>ramasamy test</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>ramasamy@teamtweaks.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>9876543210</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418894425slide1.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-19 12:26:22","Notification Mail");INSERT INTO fc_inbox VALUES("61","admin@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>213</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-25 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418894425slide1.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-19 12:26:27","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("62","ramasamy@teamtweaks.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>213</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-25 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>2</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418894425slide1.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-19 12:26:30","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("63","vv@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi ramasamy test, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>213</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-19 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-23 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Pending</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>ramasamy test</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>ramasamy@teamtweaks.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>9876543210</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418894425slide1.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-19 16:08:49","Notification Mail");INSERT INTO fc_inbox VALUES("64","admin@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>213</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-19 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-23 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418894425slide1.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-19 16:08:54","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("65","ramasamy@teamtweaks.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>213</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-19 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-23 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Pending</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1418894425slide1.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-19 16:08:58","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("66","vv@gmail.com","vvv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi fgh fgh, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>219</p>
<p><strong>Rental Name:</strong>selva-test</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-22 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-25 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>fgh fgh</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vvv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong></label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419227002bed.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-22 06:40:01","Notification Mail");INSERT INTO fc_inbox VALUES("67","admin@gmail.com","vvv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>219</p>
<p><strong>Rental Name:</strong>selva-test</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-22 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-25 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419227002bed.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-22 06:40:05","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("68","vvv@gmail.com","vvv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>219</p>
<p><strong>Rental Name:</strong>selva-test</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-22 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-25 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>3</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419227002bed.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-22 06:40:10","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("69","vv@gmail.com","vvv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi fgh fgh, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>219</p>
<p><strong>Rental Name:</strong>selva-test</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-26 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-30 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>fgh fgh</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vvv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong></label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419227002bed.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-23 14:54:27","Notification Mail");INSERT INTO fc_inbox VALUES("70","admin@gmail.com","vvv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>219</p>
<p><strong>Rental Name:</strong>selva-test</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-26 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-30 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419227002bed.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-23 14:54:32","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("71","vvv@gmail.com","vvv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>219</p>
<p><strong>Rental Name:</strong>selva-test</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-26 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-30 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419227002bed.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-23 14:54:36","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("72","muhammedgani@teamtweaks.com","muhammedgani@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi muhammed gani, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-29 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>muhammed gani</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>muhammedgani@teamtweaks.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong></label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-23 16:00:27","Notification Mail");INSERT INTO fc_inbox VALUES("73","admin@gmail.com","muhammedgani@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-29 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-23 16:00:32","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("74","ramasamy@teamtweaks.com","muhammedgani@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2014-12-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2014-12-29 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>6</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-23 16:00:36","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("75","vvv@gmail.com","vvv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi fgh fgh, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-09 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>8</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>fgh fgh</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vvv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong></label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-26 06:19:46","Notification Mail");INSERT INTO fc_inbox VALUES("76","admin@gmail.com","vvv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-09 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>8</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-26 06:19:52","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("77","ramasamy@teamtweaks.com","vvv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-09 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>8</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-26 06:19:56","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("78","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi vvvv vvvvv, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-10 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-14 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>vvvv vvvvv</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>0</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 14:03:47","Notification Mail");INSERT INTO fc_inbox VALUES("79","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-10 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-14 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 14:03:54","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("80","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-10 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-14 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 14:03:58","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("81","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi vvvv vvvvv, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span></p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong></label></p>
<p><strong>Booking Status:</strong></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>vvvv vvvvv</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>0</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 14:17:21","Notification Mail");INSERT INTO fc_inbox VALUES("82","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span></p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong></label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span></span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 14:17:27","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("83","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span></p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong></label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span></span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 14:17:32","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("84","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi vvvv vvvvv, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span></p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong></label></p>
<p><strong>Booking Status:</strong></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>vvvv vvvvv</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>0</label></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 15:12:47","Notification Mail");INSERT INTO fc_inbox VALUES("85","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span></p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong></label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span></span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 15:12:51","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("86","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span></p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong></label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong></label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span></span></p>
<p><strong>Message to owner:</strong></p>
<p><strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 15:12:55","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("87","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi vvvv vvvvv, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-10 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-15 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>5</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>vvvv vvvvv</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>0</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 15:27:23","Notification Mail");INSERT INTO fc_inbox VALUES("88","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-10 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-15 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>5</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 15:27:27","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("89","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-10 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-15 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>5</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 15:27:31","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("90","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi vvvv vvvvv, Your Rental request has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-20 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-24 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Booking Status:</strong>Booked</p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Name:</strong>vvvv vvvvv</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Email:</strong>vv@gmail.com</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>Owner Phone Number:</strong>0</label></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 15:53:28","Notification Mail");INSERT INTO fc_inbox VALUES("91","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-20 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-24 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 15:53:33","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("92","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-01-20 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-01-24 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2014-12-27 15:53:37","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("93","ramasamy@teamtweaks.com","vinu@teamtweaks.com","0","<!DOCTYPE HTML>
							<html>
							<head>
							<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
							<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"logo\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<th style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">  </th>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
							</html>","2014-12-30 07:58:04","From: Stay Next - test");INSERT INTO fc_inbox VALUES("94","ramasamy@teamtweaks.com","vinu@teamtweaks.com","0","<!DOCTYPE HTML>
							<html>
							<head>
							<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
							<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"logo\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<th style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">  </th>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
							</html>","2014-12-30 08:01:51","From: Stay Next - test");INSERT INTO fc_inbox VALUES("95","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>","2015-01-05 11:26:14","");INSERT INTO fc_inbox VALUES("96","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-05 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 11:26:21","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("97","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-05 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 11:26:26","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("98","vv@gmail.com","vv@gmail.com","0","<body></body>
						</html>","2015-01-05 11:26:34","");INSERT INTO fc_inbox VALUES("99","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-05 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 11:26:40","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("100","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-05 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 11:26:44","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("101","vv@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
						</html>","2015-01-05 11:26:52","");INSERT INTO fc_inbox VALUES("102","admin@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-05 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 11:26:58","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("103","ramasamy@teamtweaks.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-05 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 11:27:02","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("104","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>","2015-01-05 12:19:52","");INSERT INTO fc_inbox VALUES("105","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:19:57","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("106","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:20:02","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("107","vv@gmail.com","vv@gmail.com","0","<body></body>
						</html>","2015-01-05 12:20:09","");INSERT INTO fc_inbox VALUES("108","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:20:13","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("109","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:20:17","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("110","vv@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
						</html>","2015-01-05 12:20:25","");INSERT INTO fc_inbox VALUES("111","admin@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:20:30","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("112","ramasamy@teamtweaks.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-23 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-27 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:20:34","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("113","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>","2015-01-05 12:57:52","");INSERT INTO fc_inbox VALUES("114","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-17 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-21 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:57:58","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("115","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-17 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-21 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:58:02","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("116","vv@gmail.com","vv@gmail.com","0","<body></body>
						</html>","2015-01-05 12:58:07","");INSERT INTO fc_inbox VALUES("117","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-17 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-21 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:58:13","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("118","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-17 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-21 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:58:17","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("119","vv@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
						</html>","2015-01-05 12:58:23","");INSERT INTO fc_inbox VALUES("120","admin@gmail.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-17 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-21 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:58:32","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("121","ramasamy@teamtweaks.com","ramasamy@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-02-17 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-02-21 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 12:58:36","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("122","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>","2015-01-05 14:55:59","");INSERT INTO fc_inbox VALUES("123","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>","2015-01-05 15:17:12","");INSERT INTO fc_inbox VALUES("124","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>","2015-01-05 15:17:37","");INSERT INTO fc_inbox VALUES("125","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>","2015-01-05 15:17:41","");INSERT INTO fc_inbox VALUES("126","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>","2015-01-05 15:17:49","");INSERT INTO fc_inbox VALUES("127","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:24:05","Notification Mail1");INSERT INTO fc_inbox VALUES("128","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:24:06","Notification Mail1");INSERT INTO fc_inbox VALUES("129","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:24:06","Notification Mail1");INSERT INTO fc_inbox VALUES("130","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:25:25","Notification Mail1");INSERT INTO fc_inbox VALUES("131","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:25:27","Notification Mail1");INSERT INTO fc_inbox VALUES("132","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:28:36","Notification Mail1");INSERT INTO fc_inbox VALUES("133","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:29:07","Notification Mail1");INSERT INTO fc_inbox VALUES("134","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:29:08","Notification Mail1");INSERT INTO fc_inbox VALUES("135","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:29:11","Notification Mail1");INSERT INTO fc_inbox VALUES("136","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p>Payment   On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.   &nbsp;   Cancellation Policy   Flexible: Full refund 1 day prior to arrival, except fees   &nbsp;</p>
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
&nbsp;
<p>Thanks!</p>
<p>The Staynest Team</p>
&nbsp;   &nbsp;   &nbsp;   &nbsp;</body>","2015-01-05 15:29:43","Notification Mail1");INSERT INTO fc_inbox VALUES("137","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p>Payment   On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.   &nbsp;   Cancellation Policy   Flexible: Full refund 1 day prior to arrival, except fees   &nbsp;</p>
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
&nbsp;
<p>Thanks!</p>
<p>The Staynest Team</p>
&nbsp;   &nbsp;   &nbsp;   &nbsp;</body>","2015-01-05 15:29:44","Notification Mail1");INSERT INTO fc_inbox VALUES("138","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:31:01","Notification Mail1");INSERT INTO fc_inbox VALUES("139","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:31:03","Notification Mail1");INSERT INTO fc_inbox VALUES("140","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:31:06","Notification Mail1");INSERT INTO fc_inbox VALUES("141","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:31:07","Notification Mail1");INSERT INTO fc_inbox VALUES("142","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:31:34","Notification Mail1");INSERT INTO fc_inbox VALUES("143","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:31:35","Notification Mail1");INSERT INTO fc_inbox VALUES("144","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:31:35","Notification Mail1");INSERT INTO fc_inbox VALUES("145","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:33:52","Notification Mail1");INSERT INTO fc_inbox VALUES("146","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:33:56","Notification Mail1");INSERT INTO fc_inbox VALUES("147","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:35:47","Notification Mail1");INSERT INTO fc_inbox VALUES("148","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:35:48","Notification Mail1");INSERT INTO fc_inbox VALUES("149","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:36:24","Notification Mail1");INSERT INTO fc_inbox VALUES("150","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:36:24","Notification Mail1");INSERT INTO fc_inbox VALUES("151","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:36:24","Notification Mail1");INSERT INTO fc_inbox VALUES("152","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM1000</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:43:34","Notification Mail1");INSERT INTO fc_inbox VALUES("153","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM1000</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:43:34","Notification Mail1");INSERT INTO fc_inbox VALUES("154","vv@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with vvvv vvvvv</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-03-01 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-03-05 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">vvvv vvvvv</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">0</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM1000</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-05 15:43:35","Notification Mail1");INSERT INTO fc_inbox VALUES("155","vv@gmail.com","vv@gmail.com","0","<body></body>
						</html>","2015-01-05 15:47:11","");INSERT INTO fc_inbox VALUES("156","admin@gmail.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-03-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-03-05 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 15:47:15","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("157","ramasamy@teamtweaks.com","vv@gmail.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"http://192.168.1.253/kumar/staynext/\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Hi Your Rental has been reviewed and booked.</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">&nbsp;</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>Rental ID:</strong>222</p>
<p><strong>Rental Name:</strong>A great title</p>
<p><span><strong>Date of Arrival:</strong></span>2015-03-01 00:00:00</p>
<p><label id=\"InqArrDate-label\" class=\"inquiry-form-col is-quarter is-first\"><strong>Date of&nbsp;Departure:</strong>2015-03-05 00:00:00</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Days:</strong>4</label></p>
<p><label class=\"inquiry-form-col is-quarter is-first\"><strong>No of Guest:</strong>1</label></p>
<p><strong>Phone Number:</strong></p>
<p><strong>Booking Status:</strong><span>Booked</span></p>
<p><strong>Message to owner:</strong></p>
<p>0<strong><span><br /></span></strong></p>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><img src=\"http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" width=\"100\" height=\"100\" /></p>
<p><strong>- Stay Next Team</strong></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>
						</html>","2015-01-05 15:47:21","Follows User Notification Mail");INSERT INTO fc_inbox VALUES("158","vv@gmail.com","vv@gmail.com","0","<body></body>
						</html>","2015-01-05 15:47:59","");INSERT INTO fc_inbox VALUES("159","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with ramasamy test</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-01-18 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-01-22 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">ramasamy test</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">9876543210</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM1000</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-06 12:58:13","Notification Mail1");INSERT INTO fc_inbox VALUES("160","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with ramasamy test</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-01-18 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-01-22 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">ramasamy test</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">9876543210</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM1000</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-06 12:58:13","Notification Mail1");INSERT INTO fc_inbox VALUES("161","vv@gmail.com","ganesh@teamtweaks.com","0","<body></body>
						</html>","2015-01-06 12:58:18","");INSERT INTO fc_inbox VALUES("162","vv@gmail.com","ganesh@teamtweaks.com","0","<body></body>
						</html>","2015-01-06 12:58:19","");INSERT INTO fc_inbox VALUES("163","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
						</html>","2015-01-06 12:58:23","");INSERT INTO fc_inbox VALUES("164","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
						</html>","2015-01-06 12:58:24","");INSERT INTO fc_inbox VALUES("165","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with ramasamy test</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-01-11 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-01-15 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">ramasamy test</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">9876543210</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM1000</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-06 13:04:44","Notification Mail1");INSERT INTO fc_inbox VALUES("166","vv@gmail.com","ganesh@teamtweaks.com","0","<body></body>
						</html>","2015-01-06 13:04:48","");INSERT INTO fc_inbox VALUES("167","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
						</html>","2015-01-06 13:04:56","");INSERT INTO fc_inbox VALUES("168","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with ramasamy test</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-01-06 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-01-10 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">ramasamy test</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">9876543210</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM1000</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-06 13:16:09","Notification Mail1");INSERT INTO fc_inbox VALUES("169","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with ramasamy test</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">2015-01-06 00:00:00</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">2015-01-10 00:00:00</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">ramasamy test</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">9876543210</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM1000</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-06 13:16:10","Notification Mail1");INSERT INTO fc_inbox VALUES("170","vv@gmail.com","ganesh@teamtweaks.com","0","<body></body>
						</html>","2015-01-06 13:16:14","");INSERT INTO fc_inbox VALUES("171","vv@gmail.com","ganesh@teamtweaks.com","0","<body></body>
						</html>","2015-01-06 13:16:14","");INSERT INTO fc_inbox VALUES("172","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
						</html>","2015-01-06 13:16:18","");INSERT INTO fc_inbox VALUES("173","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
						<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
						</html>","2015-01-06 13:16:18","");INSERT INTO fc_inbox VALUES("174","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with ramasamy test</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">25-01-15</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">29-01-15</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">ramasamy test</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">9876543210</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM1000</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-07 12:23:47","Notification Mail1");INSERT INTO fc_inbox VALUES("175","vv@gmail.com","ganesh@teamtweaks.com","0","<body></body>
		</html>","2015-01-07 12:23:52","");INSERT INTO fc_inbox VALUES("176","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-07 12:23:56","");INSERT INTO fc_inbox VALUES("177","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/kumar/staynext/images/logo/logo3.jpg\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked A great title To help make check-in seamless, we suggest you continue the conversation with ramasamy test</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/kumar/staynext/server/php/rental/1419326342Nr_10_Leonardo_Royal_Hotel_Munich_Rooms_Deluxe_Room_1024x768.jpg\" alt=\"\" /> A great title</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">19-01-15</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">23-01-15</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">ramasamy test</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">9876543210</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *4 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM1000</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM1005.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-08 14:28:59","Notification Mail1");INSERT INTO fc_inbox VALUES("178","vv@gmail.com","ganesh@teamtweaks.com","0","<body></body>
		</html>","2015-01-08 14:29:03","");INSERT INTO fc_inbox VALUES("179","vv@gmail.com","ganesh@teamtweaks.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-08 14:29:08","");INSERT INTO fc_inbox VALUES("180","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 09:14:53","Notification Mail");INSERT INTO fc_inbox VALUES("181","vv@gmail.com","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 09:14:58","Reservation Confirmed");INSERT INTO fc_inbox VALUES("182","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 09:15:01","Reservation Confirmation");INSERT INTO fc_inbox VALUES("183","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 09:15:16","Notification Mail");INSERT INTO fc_inbox VALUES("184","vv@gmail.com","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 09:15:20","Reservation Confirmed");INSERT INTO fc_inbox VALUES("185","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 09:15:24","Reservation Confirmation");INSERT INTO fc_inbox VALUES("186","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 09:15:38","Notification Mail");INSERT INTO fc_inbox VALUES("187","vv@gmail.com","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 09:15:43","Reservation Confirmed");INSERT INTO fc_inbox VALUES("188","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 09:15:48","Reservation Confirmation");INSERT INTO fc_inbox VALUES("189","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 09:31:21","Notification Mail");INSERT INTO fc_inbox VALUES("190","vv@gmail.com","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 09:31:26","Reservation Confirmed");INSERT INTO fc_inbox VALUES("191","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 09:31:31","Reservation Confirmation");INSERT INTO fc_inbox VALUES("192","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 09:31:43","Notification Mail");INSERT INTO fc_inbox VALUES("193","vv@gmail.com","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 09:31:47","Reservation Confirmed");INSERT INTO fc_inbox VALUES("194","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 09:31:51","Reservation Confirmation");INSERT INTO fc_inbox VALUES("195","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 09:40:07","Notification Mail");INSERT INTO fc_inbox VALUES("196","vv@gmail.com","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 09:40:11","Reservation Confirmed");INSERT INTO fc_inbox VALUES("197","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 09:40:15","Reservation Confirmation");INSERT INTO fc_inbox VALUES("198","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 09:52:35","Notification Mail");INSERT INTO fc_inbox VALUES("199","vv@gmail.com","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 09:52:39","Reservation Confirmed");INSERT INTO fc_inbox VALUES("200","vv@gmail.com","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 09:52:43","Reservation Confirmation");INSERT INTO fc_inbox VALUES("201","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:21:15","Notification Mail");INSERT INTO fc_inbox VALUES("202","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:21:19","Reservation Confirmed");INSERT INTO fc_inbox VALUES("203","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:21:24","Reservation Confirmation");INSERT INTO fc_inbox VALUES("204","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:23:37","Notification Mail");INSERT INTO fc_inbox VALUES("205","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:23:41","Reservation Confirmed");INSERT INTO fc_inbox VALUES("206","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:23:45","Reservation Confirmation");INSERT INTO fc_inbox VALUES("207","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:26:23","Notification Mail");INSERT INTO fc_inbox VALUES("208","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:26:27","Reservation Confirmed");INSERT INTO fc_inbox VALUES("209","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:26:31","Reservation Confirmation");INSERT INTO fc_inbox VALUES("210","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">13-01-15</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">15-01-15</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *2 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM110</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM115.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:34:56","Notification Mail");INSERT INTO fc_inbox VALUES("211","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:35:00","Reservation Confirmed");INSERT INTO fc_inbox VALUES("212","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:35:04","Reservation Confirmation");INSERT INTO fc_inbox VALUES("213","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">13-01-15</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">15-01-15</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *2 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM110</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM115.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:35:19","Notification Mail");INSERT INTO fc_inbox VALUES("214","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:35:24","Reservation Confirmed");INSERT INTO fc_inbox VALUES("215","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:35:27","Reservation Confirmation");INSERT INTO fc_inbox VALUES("216","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">13-01-15</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">15-01-15</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *2 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM110</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM115.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:35:40","Notification Mail");INSERT INTO fc_inbox VALUES("217","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:35:44","Reservation Confirmed");INSERT INTO fc_inbox VALUES("218","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:35:49","Reservation Confirmation");INSERT INTO fc_inbox VALUES("219","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:37:37","Notification Mail");INSERT INTO fc_inbox VALUES("220","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:37:41","Reservation Confirmed");INSERT INTO fc_inbox VALUES("221","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:37:47","Reservation Confirmation");INSERT INTO fc_inbox VALUES("222","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:37:58","Notification Mail");INSERT INTO fc_inbox VALUES("223","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:38:02","Reservation Confirmed");INSERT INTO fc_inbox VALUES("224","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:38:04","Notification Mail");INSERT INTO fc_inbox VALUES("225","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:38:06","Reservation Confirmation");INSERT INTO fc_inbox VALUES("226","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:38:08","Reservation Confirmed");INSERT INTO fc_inbox VALUES("227","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:38:12","Reservation Confirmation");INSERT INTO fc_inbox VALUES("228","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:38:25","Notification Mail");INSERT INTO fc_inbox VALUES("229","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:38:29","Reservation Confirmed");INSERT INTO fc_inbox VALUES("230","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:38:35","Reservation Confirmation");INSERT INTO fc_inbox VALUES("231","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:43:30","Notification Mail");INSERT INTO fc_inbox VALUES("232","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:43:34","Reservation Confirmed");INSERT INTO fc_inbox VALUES("233","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:43:38","Reservation Confirmation");INSERT INTO fc_inbox VALUES("234","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">13-01-15</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">16-01-15</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *3 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM198</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM203.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:47:22","Notification Mail");INSERT INTO fc_inbox VALUES("235","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:47:26","Reservation Confirmed");INSERT INTO fc_inbox VALUES("236","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:47:32","Reservation Confirmation");INSERT INTO fc_inbox VALUES("237","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">13-01-15</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">16-01-15</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *3 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM198</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM203.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:49:31","Notification Mail");INSERT INTO fc_inbox VALUES("238","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:49:35","Reservation Confirmed");INSERT INTO fc_inbox VALUES("239","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:49:39","Reservation Confirmation");INSERT INTO fc_inbox VALUES("240","1","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi ramasamy test</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked drsgd To help make check-in seamless, we suggest you continue the conversation with ramasamy test</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/14211466241.jpg\" alt=\"\" /> drsgd</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">01-01-70</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">ramasamy test</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">9876543210</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM * Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM0</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 10:59:12","Notification Mail");INSERT INTO fc_inbox VALUES("241","1","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 10:59:16","Reservation Confirmed");INSERT INTO fc_inbox VALUES("242","1","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 10:59:21","Reservation Confirmation");INSERT INTO fc_inbox VALUES("243","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body><table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"http://192.168.1.253/VacationClone/renters/images/logo/renters-logo.png\" alt=\"\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi vvvv vvvvv</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that a guest just booked  To help make check-in seamless, we suggest you continue the conversation with fgh fgh</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Staynest\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"#\"><img src=\"server/php/rental/http://192.168.1.253/VacationClone/renters/server/php/rental/1420875285anner2.png\" alt=\"\" /> </a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">13-01-15</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">15-01-15</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">fgh fgh</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM *2 Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM-5</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM5.00</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM0.00</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></body>","2015-01-13 11:01:28","Notification Mail");INSERT INTO fc_inbox VALUES("244","92","admin@staynest.com","0","<body></body>
		</html>","2015-01-13 11:01:32","Reservation Confirmed");INSERT INTO fc_inbox VALUES("245","92","admin@staynest.com","0","<!DOCTYPE HTML>
		<html>
		<head>
		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
		<meta name=\"viewport\" content=\"width=device-width\"/><body></body>
		</html>","2015-01-13 11:01:38","Reservation Confirmation");CREATE TABLE `fc_inbox_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'sender id',
  `message` varchar(350) NOT NULL,
  `guide_id` int(11) NOT NULL COMMENT 'receiver id',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;CREATE TABLE `fc_inbox_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rental_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `posted_by` enum('customer','host') NOT NULL,
  `msg_read` enum('no','yes') NOT NULL DEFAULT 'no',
  `convId` int(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;CREATE TABLE `fc_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `lang_code` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;INSERT INTO fc_languages VALUES("1","English","en","Active");INSERT INTO fc_languages VALUES("2","Català","ca","Inactive");INSERT INTO fc_languages VALUES("4","dansk","da","Inactive");INSERT INTO fc_languages VALUES("5","Deutsch","de","Inactive");INSERT INTO fc_languages VALUES("7","Español","es","Inactive");INSERT INTO fc_languages VALUES("8","Eesti","et","Inactive");INSERT INTO fc_languages VALUES("9","Basque","eu","Inactive");INSERT INTO fc_languages VALUES("10","Filipino","fil","Inactive");INSERT INTO fc_languages VALUES("11","français","fr","Inactive");INSERT INTO fc_languages VALUES("12","Indonesian","id","Inactive");INSERT INTO fc_languages VALUES("13","Íslenska","is","Inactive");INSERT INTO fc_languages VALUES("14","Italiano","it","Inactive");INSERT INTO fc_languages VALUES("15","Lithuanian","lt","Inactive");INSERT INTO fc_languages VALUES("16","Nederlands","nl","Inactive");INSERT INTO fc_languages VALUES("17","norsk","no","Inactive");INSERT INTO fc_languages VALUES("18","Polski","pl","Inactive");INSERT INTO fc_languages VALUES("19","Português (br)","br","Inactive");INSERT INTO fc_languages VALUES("20","Português (pt)","pt","Inactive");INSERT INTO fc_languages VALUES("23","Slovenský","sk","Inactive");INSERT INTO fc_languages VALUES("24","Suomi","fi","Inactive");INSERT INTO fc_languages VALUES("27","Türkçe","tr","Inactive");INSERT INTO fc_languages VALUES("30","srpski (latinica)","sr-latn","Inactive");INSERT INTO fc_languages VALUES("31","svenska","sv","Inactive");INSERT INTO fc_languages VALUES("32","Thai","th","Inactive");CREATE TABLE `fc_languages_known` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(100) NOT NULL,
  `language_name` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;INSERT INTO fc_languages_known VALUES("1","4096","Bahasa Indonesia","2014-11-25 11:13:53");INSERT INTO fc_languages_known VALUES("2","4194304","Bahasa Malaysia","2014-11-25 11:13:53");INSERT INTO fc_languages_known VALUES("3","32768","Bengali","2014-11-25 11:14:49");INSERT INTO fc_languages_known VALUES("4","16777216","Dansk","2014-11-25 11:14:49");INSERT INTO fc_languages_known VALUES("5","4","Deutsch","2014-11-25 11:15:22");INSERT INTO fc_languages_known VALUES("6","1","English","2014-11-25 11:15:22");INSERT INTO fc_languages_known VALUES("7","64","Español","2014-11-25 11:15:55");INSERT INTO fc_languages_known VALUES("8","2","Français","2014-11-25 11:15:55");INSERT INTO fc_languages_known VALUES("9","512","Hindi","2014-11-25 11:16:26");INSERT INTO fc_languages_known VALUES("10","16","Italiano","2014-11-25 11:16:26");INSERT INTO fc_languages_known VALUES("11","536870912","Magyar","2014-11-25 11:16:54");INSERT INTO fc_languages_known VALUES("12","8192","Nederlands","2014-11-25 11:16:54");INSERT INTO fc_languages_known VALUES("13","67108864","Norsk","2014-11-25 11:17:21");INSERT INTO fc_languages_known VALUES("14","2097152","Polski","2014-11-25 11:17:21");INSERT INTO fc_languages_known VALUES("15","1024","Português","2014-11-25 11:17:59");INSERT INTO fc_languages_known VALUES("16","131072","Punjabi","2014-11-25 11:17:59");INSERT INTO fc_languages_known VALUES("17","524288","Sign Language","2014-11-25 11:18:46");INSERT INTO fc_languages_known VALUES("18","134217728","Suomi","2014-11-25 11:18:46");INSERT INTO fc_languages_known VALUES("19","33554432","Svenska","2014-11-25 11:19:12");INSERT INTO fc_languages_known VALUES("20","8388608","Tagalog","2014-11-25 11:19:12");INSERT INTO fc_languages_known VALUES("21","2048","Türkçe","2014-11-25 11:19:39");INSERT INTO fc_languages_known VALUES("22","268435456","Čeština","2014-11-25 11:19:39");INSERT INTO fc_languages_known VALUES("23","262144","Ελληνικά","2014-11-25 11:20:09");INSERT INTO fc_languages_known VALUES("24","32","Русский","2014-11-25 11:20:09");INSERT INTO fc_languages_known VALUES("25","1073741824","українська","2014-11-25 11:20:41");INSERT INTO fc_languages_known VALUES("26","1048576","עברית","2014-11-25 11:20:41");INSERT INTO fc_languages_known VALUES("27","256","العربية","2014-11-25 11:21:13");INSERT INTO fc_languages_known VALUES("28","65536","ภาษาไทย","2014-11-25 11:21:13");INSERT INTO fc_languages_known VALUES("29","128","中文","2014-11-25 11:21:46");INSERT INTO fc_languages_known VALUES("30","8","日本語","2014-11-25 11:21:46");INSERT INTO fc_languages_known VALUES("31","16384","한국어","2014-11-25 11:22:08");CREATE TABLE `fc_list_sub_values` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `list_id` int(20) NOT NULL,
  `list_value_id` varchar(20) NOT NULL,
  `sub_list_value` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `products` longtext NOT NULL,
  `product_count` bigint(20) NOT NULL,
  `followers` longtext NOT NULL,
  `followers_count` bigint(20) NOT NULL,
  `sub_list_value_seourl` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;INSERT INTO fc_list_sub_values VALUES("1","1","2","cxsacasc","","","0","","0","","Active");INSERT INTO fc_list_sub_values VALUES("2","1","1","Air Conditioning","Chrysanthemum.jpg","","0","","0","","Active");INSERT INTO fc_list_sub_values VALUES("3","1","19","test","","","0","","0","","Active");INSERT INTO fc_list_sub_values VALUES("5","1","36","Cable TV","","","0","","0","","Active");INSERT INTO fc_list_sub_values VALUES("6","1","3","Buzzer/Wireless Internet","","","0","","0","","Active");INSERT INTO fc_list_sub_values VALUES("7","7","38","Cabin","","","0","","0","","Active");INSERT INTO fc_list_sub_values VALUES("8","7","1","Chalet","","","0","","0","","Active");INSERT INTO fc_list_sub_values VALUES("9","7","40","Dorm","","","0","","0","","Active");INSERT INTO fc_list_sub_values VALUES("10","7","38","Loft","","","0","","0","","Active");INSERT INTO fc_list_sub_values VALUES("11","7","39","Other","","","0","","0","","Active");INSERT INTO fc_list_sub_values VALUES("12","7","40","Villa","","","0","","0","","Active");CREATE TABLE `fc_list_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `list_value` varchar(200) NOT NULL,
  `image` varchar(250) NOT NULL,
  `products` longtext NOT NULL,
  `product_count` bigint(20) NOT NULL,
  `followers` longtext NOT NULL,
  `followers_count` bigint(20) NOT NULL,
  `list_value_seourl` text NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;INSERT INTO fc_list_values VALUES("1","1","Wireless Internet","kitchen.png","","0","","1","wirelessinternet","Active");INSERT INTO fc_list_values VALUES("3","1","Kitchen","family.png","","0","","0","kitchen","Active");INSERT INTO fc_list_values VALUES("36","1","TV","tv.png","","0","","0","tv","Active");INSERT INTO fc_list_values VALUES("38","7","Apartment","Apartment.png","","0","","0","apartment","Active");INSERT INTO fc_list_values VALUES("39","7","House","","","0","","0","house","Active");INSERT INTO fc_list_values VALUES("40","7","Bed & Breakfast","","","0","","0","bedbreakfast","Active");INSERT INTO fc_list_values VALUES("41","1","Essentials","","","0","","0","essentials","Active");INSERT INTO fc_list_values VALUES("42","1","Cable TV","","","0","","0","cabletv","Active");INSERT INTO fc_list_values VALUES("43","1","Air Conditioning","","","0","","0","airconditioning","Active");INSERT INTO fc_list_values VALUES("44","1","Heating","","","0","","0","heating","Active");INSERT INTO fc_list_values VALUES("45","1","Internet","","","0","","0","internet","Active");INSERT INTO fc_list_values VALUES("46","7","Guest House","","","0","","0","guesthouse","Active");INSERT INTO fc_list_values VALUES("47","7","Serviced Apartment","","","0","","0","servicedapartment","Active");INSERT INTO fc_list_values VALUES("48","7","Heritage House","","","0","","0","heritagehouse","Active");INSERT INTO fc_list_values VALUES("49","1","Washer","washer1.png","","0","","0","washer","Active");INSERT INTO fc_list_values VALUES("50","1","Dryer","dryer1.png","","0","","0","dryer","Active");INSERT INTO fc_list_values VALUES("51","1","Breakfast","break2.png","","0","","0","breakfast","Active");INSERT INTO fc_list_values VALUES("52","1","Family/Kid Friendly","family2.png","","0","","0","familykidfriendly","Active");INSERT INTO fc_list_values VALUES("53","1","Suitable for Events","event.png","","0","","0","suitableforevents","Active");INSERT INTO fc_list_values VALUES("54","1","Smoking Allowed","smoking1.png","","0","","0","smokingallowed","Active");INSERT INTO fc_list_values VALUES("55","1","Wheelchair Accessible","weel1.png","","0","","0","wheelchairaccessible","Active");INSERT INTO fc_list_values VALUES("56","1","Elevator in Building","elevator1.png","","0","","0","elevatorinbuilding","Active");INSERT INTO fc_list_values VALUES("57","1","Indoor Fireplace","indoor1.png","","0","","0","indoorfireplace","Active");INSERT INTO fc_list_values VALUES("58","1","Buzzer/ Wireless Intercom","buzzer1.png","","0","","0","buzzerwirelessintercom","Active");INSERT INTO fc_list_values VALUES("59","1","Doorman","doorman1.png","","0","","0","doorman","Active");INSERT INTO fc_list_values VALUES("60","1","Pool","pool1.png","","0","","0","pool","Active");INSERT INTO fc_list_values VALUES("61","1","Hot Tub","hottub1.png","","0","","0","hottub","Active");INSERT INTO fc_list_values VALUES("62","1","Gym","gym1.png","","0","","0","gym","Active");INSERT INTO fc_list_values VALUES("63","1","Smoke Detector","smoke1.png","","0","","0","smokedetector","Active");INSERT INTO fc_list_values VALUES("64","4","Hot Tub","hottub11.png","","0","","0","hottub","Active");INSERT INTO fc_list_values VALUES("65","4","Washer","washer11.png","","0","","0","washer","Active");INSERT INTO fc_list_values VALUES("66","4","Pool","pool11.png","","0","","0","pool","Active");INSERT INTO fc_list_values VALUES("67","4","Dryer","dryer11.png","","0","","0","dryer","Active");INSERT INTO fc_list_values VALUES("68","4","Breakfast","break21.png","","0","","0","breakfast","Active");INSERT INTO fc_list_values VALUES("69","4","Free Parking on Premises","Parking.png","","0","","0","freeparkingonpremises","Active");INSERT INTO fc_list_values VALUES("70","4","Gym","gym11.png","","0","","0","gym","Active");INSERT INTO fc_list_values VALUES("71","4","Elevator in Building","elevator11.png","","0","","0","elevatorinbuilding","Active");INSERT INTO fc_list_values VALUES("72","4","Indoor Fireplace","indoor11.png","","0","","0","indoorfireplace","Active");INSERT INTO fc_list_values VALUES("73","4","Buzzer/ Wireless Intercom","buzzer11.png","","0","","0","buzzerwirelessintercom","Active");INSERT INTO fc_list_values VALUES("74","4","Doorman","doorman11.png","","0","","0","doorman","Active");INSERT INTO fc_list_values VALUES("75","4","Shampoo","Shampoo.png","","0","","0","shampoo","Active");INSERT INTO fc_list_values VALUES("76","6","Fire Extinguisher","Fire_Extinguisher.png","","0","","0","fireextinguisher","Active");INSERT INTO fc_list_values VALUES("78","6","Smoke Detector","smoke11.png","","0","","0","smokedetector","Active");INSERT INTO fc_list_values VALUES("79","6","First Aid Kit","First_Aid_Kit.png","","0","","0","firstaidkit","Active");INSERT INTO fc_list_values VALUES("80","6","Carbon Monoxide Detector","Carbon_Monoxide_Detector1.png","","0","","0","carbonmonoxidedetector","Active");INSERT INTO fc_list_values VALUES("81","6","Safety Card","Safety_Card.png","","0","","0","safetycard","Active");INSERT INTO fc_list_values VALUES("82","5","Family/Kid Friendly","family21.png","","0","","0","familykidfriendly","Active");INSERT INTO fc_list_values VALUES("83","5","Wheelchair Accessible","weel11.png","","0","","0","wheelchairaccessible","Active");INSERT INTO fc_list_values VALUES("84","5","Pets Allowed","Pets_Allowed.png","","0","","0","petsallowed","Active");INSERT INTO fc_list_values VALUES("85","5","Suitable for Events","event1.png","","0","","0","suitableforevents","Active");INSERT INTO fc_list_values VALUES("86","5","Smoking Allowed","smoking11.png","","0","","0","smokingallowed","Active");CREATE TABLE `fc_listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rooms_bed` longtext NOT NULL,
  `listings_info` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;INSERT INTO fc_listings VALUES("1","{\"bedrooms\":\"1\",\"beds\":\"1\",\"bedtype\":\"1\",\"bathrooms\":\"1\",\"noofbathrooms\":\"1\",\"min_stay\":\"1\",\"accommodates\":\"1\",\"can_policy\":\"1\"}","");CREATE TABLE `fc_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` longtext NOT NULL,
  `followers` longtext NOT NULL,
  `banner` varchar(200) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `contributors` longtext NOT NULL,
  `contributors_invited` longtext NOT NULL,
  `product_count` bigint(20) NOT NULL,
  `followers_count` bigint(20) NOT NULL,
  `whocansee` enum('Everyone','Only me') NOT NULL DEFAULT 'Everyone',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;INSERT INTO fc_lists VALUES("1","Test","1","2,16,135,8","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("3","Beauty","11","16,163,135,149","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("4","Amazing","11","163","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("18","Rocky","2","92,93,16","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("28","Hfjhhgj","1","8,149","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("29","Gfvg","1",",8","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("30","Gsdghs","36","149,8","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("31","Vvvvvvvvv","36","149,164,154,8","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("32","Sss","36","","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("33","Sssss","36","164,8","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("34","Tg","36","","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("40","Sasdf","1","","","","0","","","0","0","Only me");INSERT INTO fc_lists VALUES("41","Sugan","1","","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("42","Sunday","1","","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("48","Hjb","36","","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("51","Demo123","1","","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("52","Sample","1","","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("53","Sdfasd","103","","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("56","Sdfgdfgsdfgsdfg","104","","","","0","","","0","0","Only me");INSERT INTO fc_lists VALUES("57","Vre","104","","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("58","1","129",",11","","","0","","","0","0","Everyone");INSERT INTO fc_lists VALUES("60","New","125",",11","","","0","","","0","0","Everyone");CREATE TABLE `fc_listspace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(500) NOT NULL,
  `attribute_description` varchar(250) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `attribute_seourl` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;INSERT INTO fc_listspace VALUES("9","Home Type","","Active","2015-03-03 08:30:51","hometype");INSERT INTO fc_listspace VALUES("10","Room Type","","Active","2014-12-19 14:01:46","roomtype");CREATE TABLE `fc_listspace_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listspace_id` int(11) NOT NULL,
  `list_value` varchar(250) NOT NULL,
  `list_description` varchar(250) NOT NULL,
  `other` varchar(200) NOT NULL,
  `image` varchar(250) NOT NULL,
  `products` longtext NOT NULL,
  `product_count` bigint(20) NOT NULL,
  `followers` longtext NOT NULL,
  `followers_count` bigint(20) NOT NULL,
  `list_value_seourl` text NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;INSERT INTO fc_listspace_values VALUES("1","2","demo","","","","","0","","0","demo","Active");INSERT INTO fc_listspace_values VALUES("3","5","demo","","no","","","0","","0","demo","Active");INSERT INTO fc_listspace_values VALUES("4","4","demo","","","","","0","","0","demo","Active");INSERT INTO fc_listspace_values VALUES("5","5","demo 2","","no","","","0","","0","demo2","Active");INSERT INTO fc_listspace_values VALUES("6","8","demo 2","","","","","0","","0","demo2","Active");INSERT INTO fc_listspace_values VALUES("7","9"," Dog","","","c1houseblue.png","","0","","0","dog","Active");INSERT INTO fc_listspace_values VALUES("8","9","Cat","","","","","0","","0","cat","Active");INSERT INTO fc_listspace_values VALUES("9","9","Birds","","no","","","0","","0","birds","Active");INSERT INTO fc_listspace_values VALUES("10","10","Small Pet 0 to 10kg","","","","","0","","0","smallpet0to10kg","Active");INSERT INTO fc_listspace_values VALUES("11","10","Large Pet 10+ kg","","","","","0","","0","largepet10kg","Active");INSERT INTO fc_listspace_values VALUES("14","9","Any Animals ok","","Yes","","","0","","0","anyanimalsok","Active");INSERT INTO fc_listspace_values VALUES("15","9","villa","","Yes","","","0","","0","villa","Active");INSERT INTO fc_listspace_values VALUES("16","9","castle","","Yes","","","0","","0","castle","Active");INSERT INTO fc_listspace_values VALUES("17","11","type","","no","","","0","","0","type","Active");CREATE TABLE `fc_location` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(1000) NOT NULL,
  `location_code` varchar(500) NOT NULL,
  `iso_code2` varchar(500) NOT NULL,
  `iso_code3` varchar(500) NOT NULL,
  `country_tax` float(10,2) NOT NULL,
  `country_ship` decimal(10,2) NOT NULL,
  `seourl` varchar(1000) NOT NULL,
  `currency_type` varchar(500) NOT NULL,
  `currency_symbol` varchar(500) NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  `dateAdded` datetime NOT NULL,
  `meta_title` longblob NOT NULL,
  `meta_keyword` longblob NOT NULL,
  `meta_description` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;INSERT INTO fc_location VALUES("1","IN","","","","5.00","15.00","india","INR","Rs","InActive","2013-07-26 04:10:15","","","");INSERT INTO fc_location VALUES("3","USA","","US","USA","1.00","0.00","usa","USD","$","Active","2013-07-26 12:00:00","USA","USA","USA");INSERT INTO fc_location VALUES("6","Uk","","","","10.00","10.00","uk","USD","$","InActive","2013-07-29 13:00:00","","","");INSERT INTO fc_location VALUES("7","Australia","","AU","","10.00","20.00","australia","AUD","$","InActive","2013-08-21 11:00:00","","","");CREATE TABLE `fc_neighborhood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `seourl` varchar(250) NOT NULL,
  `status` enum('InActive','Active') NOT NULL,
  `category` varchar(1000) NOT NULL,
  `description` longblob NOT NULL,
  `meta_title` varchar(1000) NOT NULL,
  `meta_keyword` varchar(1000) NOT NULL,
  `meta_description` blob NOT NULL,
  `citylogo` varchar(1000) NOT NULL,
  `citythumb` varchar(1000) NOT NULL,
  `neighborhoods` varchar(1000) NOT NULL,
  `tags` varchar(1000) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  `featured` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;INSERT INTO fc_neighborhood VALUES("2","El Born","el-born","Active","Dining,Shopping","<p>rwerwerwe rwe wer werwer</p>","","","","54647.jpg","24260521.jpg","872","fghfgh","fgdfgdfgdgf
","0");INSERT INTO fc_neighborhood VALUES("3","El Raval","el-raval","Active","Nightlife,Shopping","<p>Bold resistance to change.dfgdfg dfgdfgd fgdfgdfg dfgdfgdfg dfg dfgdfgdfgdfgdgf dfg dfg dfg</p>","","","","1234url.jpg","827789021.jpg","872","tegs,tewewerwer,werwerew,werwerwer,werwer,w,erwer,werwe,wexcvx,v,fghfghfgh","Bold resistance to change.","1");INSERT INTO fc_neighborhood VALUES("4","Grace Cathedral","grace-cathedral","Active","Dining,Shopping","<p>Separated from many of Barcelona&rsquo;s well-known sights and attractions by  large roads and parks, Eixample&rsquo;s &ldquo;New Left&rdquo; keeps to itself, quietly  mixing office buildings and residential side streets. After nightfall,  most of the locals head home or to a gathering spot elsewhere in  l&rsquo;Eixample. Visitors who take the time to venture to the New Left often  stumble upon unexpectedly delightful sights, like the colorful Parc de  Joan Mir&oacute;.</p>","","","","213url.jpg","54648.jpg","871","sdfsdf,sdfsdfsdf,sdf,sdfsd","Separated from many of Barcelona’s well-known sights and attractions by large roads and parks, Eixample’s “New Left” keeps to itself","1");CREATE TABLE `fc_newsletter` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(5000) NOT NULL,
  `news_descrip` blob NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  `dateAdded` datetime NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_subject` varchar(1000) NOT NULL,
  `sender_name` varchar(500) NOT NULL,
  `sender_email` varchar(500) NOT NULL,
  `news_seourl` varchar(1000) NOT NULL,
  `typeVal` enum('1','2') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;INSERT INTO fc_newsletter VALUES("33","Reservation Confirmed to Admin","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"{base_url()}images/logo/{$logo}\" alt=\"{$meta_title}\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi Admin</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that {$first_name} {$last_name} just booked {$rental_name} with {$renter_fname} {$renter_lname}</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"http://www.stayrove.com/1/rental/{$prd_id}\"><img src=\"{$rental_image}\" alt=\"\" /> {$rental_name}</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">{$checkin}</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">{$checkout}</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Guest</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">{$first_name} {$last_name}</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">{$ph_no}</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM {$price}*{$noofnights} Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM{$amount}</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM{$serviceFee}</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM{$netamount}</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-30 00:00:00","","Reservation Confirmed","Stayrove","stayrovetech@gmail.com","","1");INSERT INTO fc_newsletter VALUES("16","Reservation request to host","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"www.stayrove.com/1/images/logo3.jpg\" alt=\"logo\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Great news! You have a reservation request from {$travellername}.</td>
</tr>
<tr>
<td height=\"40\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">{$travellername} would like to stay at (accommodation type) from {checkindate} through {checkoutdate}</td>
</tr>
<tr>
<td height=\"40\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">Based on your rate of RM {$price} per night along with Stayrove fees, your potential payout for this reservation is RM {totalprice}.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"http://www.stayrove.com/1/listing/all\">Accept</a> /  <a style=\"color: #ffffff; text-decoration: none;\" href=\"http://www.stayrove.com/1/listing/all\">Decline</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<p style=\"margin: 0px; padding: 8px 10px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; background: #f1f1f1;\">Reservation Request</p>
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">{$checkindate}</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">{$checkoutdate}</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr style=\"margin-top: 19px; display: block; padding: 0px 20px;\">
<td style=\"color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 12px;\" align=\"left\" valign=\"middle\"><span>{$travellername}</span>\'s reservation request will expire after 24 hours if you don\'t officially accept or decline it.</td>
</tr>
<tr style=\"margin-top: 19px; display: block; padding: 0px 20px;\">
<td style=\"color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 12px;\" align=\"left\" valign=\"middle\">We encourage you to respond as quickly as possible so your guest can begin to plan their adventure!</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"middle\"><a style=\"color: #0094aa; text-decoration: none;\" href=\"#\">(Remember: Not responding to this booking will result in your listing being ranked lower.)</a></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<th style=\"color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 12px; padding: 0 20px;\" align=\"center\" valign=\"middle\">If you need help or have any questions, please visit <a style=\"color: #0094aa;\" href=\"#\"><span class=\"__cf_email__\">[email&nbsp;protected]</span>
<script type=\"text/javascript\">// <![CDATA[
/* <![CDATA[ */!function(){try{var t=\"currentScript\"in document?document.currentScript:function(){for(var t=document.getElementsByTagName(\"script\"),e=t.length;e--;)if(t[e].getAttribute(\"cf-hash\"))return t[e]}();if(t&&t.previousSibling){var e,r,n,i,c=t.previousSibling,a=c.getAttribute(\"data-cfemail\");if(a){for(e=\"\",r=parseInt(a.substr(0,2),16),n=2;a.length-n;n+=2)i=parseInt(a.substr(n,2),16)^r,e+=String.fromCharCode(i);e=document.createTextNode(e),c.parentNode.replaceChild(e,c)}}}catch(u){}}();/*  */
// ]]></script>
</a></th>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2013-11-05 00:00:00","","Reservation request to host","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("19","Reservation request to host","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Great news! You have a reservation request from {$travellername}.</td>
</tr>
<tr>
<td height=\"40\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">{$travellername} would like to stay at {$productname} from {$checkindate} through {$checkoutdate}</td>
</tr>
<tr>
<td height=\"40\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">Based on your rate of RM {$price} per night along with associated fees, your potential payout for this reservation is RM {$totalprice}.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 200px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"http://www.stayrove.com/1/listing-reservation/\">Accept</a> /  <a style=\"color: #ffffff; text-decoration: none;\" href=\"http://www.stayrove.com/1/listing-reservation/\">Decline</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<p style=\"margin: 0px; padding: 8px 10px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; background: #f1f1f1;\">Reservation Request</p>
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">{$checkindate}</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">{$checkoutdate}</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr style=\"margin-top: 19px; display: block; padding: 0px 20px;\">
<td style=\"color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 12px;\" align=\"left\" valign=\"middle\">{$travellername}\'s reservation request will expire after 24 hours if you don\'t officially accept or decline it.</td>
</tr>
<tr style=\"margin-top: 19px; display: block; padding: 0px 20px;\">
<td style=\"color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 12px;\" align=\"left\" valign=\"middle\">We encourage you to respond as quickly as possible so your guest can begin to plan their adventure!</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"middle\"><a style=\"color: #0094aa; text-decoration: none;\" href=\"#\">(Remember: Not responding to this booking will result in your listing being ranked lower.)</a></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<th style=\"color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 12px; padding: 0 20px;\" align=\"center\" valign=\"middle\">&nbsp;</th>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-24 00:00:00","","Reservation request to host","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("5","Forgot Password","<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"640\" bgcolor=\"#7da2c1\">
<tbody>
<tr>
<td style=\"padding: 40px;\">
<table style=\"border: #1d4567 1px solid; font-family: Arial, Helvetica, sans-serif;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"610\">
<tbody>
<tr>
<td><a href=\"{base_url()}\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"{base_url()}images/logo/{$logo}\" alt=\"{$meta_title}\" /></a></td>
</tr>
<tr>
<td valign=\"top\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">
<tbody>
<tr>
<td colspan=\"2\">
<h3 style=\"padding: 10px 15px; margin: 0px; color: #0d487a;\">Here\'s Your New Password</h3>
<p style=\"padding: 0px 15px 10px 15px; font-size: 12px; margin: 0px;\">Have you forgetten your password? Don\'t worry. We already reset your password.</p>
</td>
</tr>
<tr>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p><strong>New Password :</strong> {$pwd}</p>
<p>You can login using above password and change your password immediately.</p>
<p>&nbsp;</p>
<p>Thanks,</p>
<div class=\"p \"><span>Sent with&nbsp;<img src=\"heart.png\" alt=\"&hearts;\" width=\"12\" height=\"10\" /></span><span>&nbsp;from {$email_title} HQ</span></div>
<p>&nbsp;</p>
</td>
<td style=\"font-size: 12px; padding: 10px 15px;\" width=\"50%\" valign=\"top\">
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2013-10-02 00:00:00","","Forgot Password","Stayrove","pets@stayrove.com","","2");INSERT INTO fc_newsletter VALUES("6","send mail subcribers list","<div style=\"width: 600px; background: #FFFFFF; margin: 0 auto; border-radius: 10px; box-shadow: 0 0 5px #ccc; border: 1px solid #DA7CAF;\">
<div style=\"background: #f7f7f7; padding: 10px; border-radius: 10px 10px 0 0; text-align: center;\"><a href=\"{base_url()}\" target=\"_blank\"><img style=\"margin: 5px 20px 0px 0px;\" src=\"{base_url()}images/logo/{$logo_image}\" border=\"0\" alt=\"{$title}\" width=\"205\" /> </a></div>
<div style=\"background: #fff; padding: 10px; width: 580px;\">
<div style=\"font-family: Myriad Pro; font-size: 24px; color: #da7caf; padding-bottom: 15px; font-weight: bold;\">{$news_subject}</div>
<div style=\"font-family: Myriad Pro; font-size: 16px; color: #000; padding-bottom: 15px; line-height: 24px; text-align: justify;\">{$news_descrip}</div>
<div style=\"font-family: Myriad Pro; font-size: 16px; color: #000; padding-bottom: 15px; line-height: 24px; text-align: justify;\">If you have any questions please email <a style=\"color: #5ea008; text-decoration: none;\" href=\"/cdn-cgi/l/email-protection#c2b9e6b6aaabb1efe4a5b6f9a1adaca4aba5efe4a5b6f9abb6a7afeae5a7afa3abaee5ebbf\">{$email}</a></div>
<div style=\"font-family: Myriad Pro; font-size: 18px; color: #000; padding-bottom: 15px; line-height: 28px;\">Sincerely , <br /> Management</div>
</div>
</div>","Active","2013-10-30 00:00:00","","send mail subcribers list","Stayrove","pets@stayrove.com","","2");INSERT INTO fc_newsletter VALUES("29","Notification Mail","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"{base_url()}images/logo/{$logo}\" alt=\"{$meta_title}\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi {$first_name} {$last_name}</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that you have booked {$rental_name} To help make check-in seamless, we suggest you continue the conversation with {$renter_fname} {$renter_lname}</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Stayrove\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"http://www.stayrove.com/1/rental/{$prd_id}\"><img src=\"{$rental_image}\" alt=\"\" width=\"300\" /> {$rental_name}</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">{$checkin}</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">{$checkout}</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Renter</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">{$renter_fname} {$renter_lname}</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">{$ph_no}</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">$ {$price}*{$noofnights} Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">${$amount}</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">${$serviceFee}</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">${$netamount}</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-29 00:00:00","","Notification Mail","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("32","Listing Email Host","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi {$hostname}</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">You have created a new listing with your Stayrove account on {$propertydate} at {$propertytime}.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">List name : {$propertyname}</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">Link : <a href=\" www.stayrove.com/1/rental/{$propertyid}\"> www.stayrove.com/1/rental/{$propertyid}</a></td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">Price : {$propertyprice}</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">If this was you, you can ignore this email.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">If this wasn\'t you, let us know. Notifying us is important because it helps us make sure no one is accessing your account without your knowledge.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-30 00:00:00","","Host listed new property at Stayrove","Stayrove","stayrovetech@gmail.com","","1");INSERT INTO fc_newsletter VALUES("35","Registration Confirmation","<div style=\"display: inline-block; background: none repeat scroll 0px 0px #f7f7f7; border: medium none; box-shadow: 0px 0px 2px 0px #cccccc; color: #565a5c; line-height: 21px; width: 560px; padding: 20px 50px;\">
<div style=\"display: inline-block; text-align: center; width: 100%;\"><img style=\"width: 149px;\" src=\"{base_url()}images/logo/{$logo}\" alt=\"\" /></div>
<div style=\"display: inline-block; font-size: 13px; width: 100%; margin: 0; padding: 0; font-family: Helvetica,Arial,sans-serif;\"><span>Hi</span><label style=\"padding: 0 0 0 2px;\">{$username},</label>
<div style=\"display: inline-block; width: 100%; margin: 0px; font-family: Helvetica,Arial,sans-serif; font-size: 14px; padding: 9px 0px 6px;\">Welcome to Stayrove! In order to get started, you need to confirm your email address.</div>
<div class=\"p \" style=\"margin: 0; padding: 0;\">
<div class=\"btn btn-primary space1\" style=\"margin: 0;\"><a href=\"{$cfmurl}\">Confirm Email</a></div>
</div>
<div class=\"p \" style=\"padding: 0px; font-family: Helvetica,Arial,sans-serif; font-size: 14px; margin: 1em 0px 3em;\">Thanks,<br style=\"margin: 0; padding: 0;\" />The {$email_title} Team</div>
</div>
</div>","Active","2014-12-31 00:00:00","","Registration Confirmation","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("18","Verification Confirmation","<div style=\"display: inline-block; background: none repeat scroll 0px 0px #f7f7f7; border: medium none; box-shadow: 0px 0px 2px 0px #cccccc; color: #565a5c; line-height: 21px; width: 560px; padding: 20px 50px;\">
<div style=\"display: inline-block; text-align: center; width: 100%;\"><img style=\"width: 149px;\" src=\"{base_url()}images/logo/{$logo}\" alt=\"\" /></div>
<div style=\"display: inline-block; font-size: 13px; width: 100%; margin: 0; padding: 0; font-family: Helvetica,Arial,sans-serif;\"><span>Hi</span><label style=\"padding: 0 0 0 2px;\">{$username},</label>
<div style=\"display: inline-block; width: 100%; margin: 0px; font-family: Helvetica,Arial,sans-serif; font-size: 14px; padding: 9px 0px 6px;\">Thanks for choosing to verify your ID. Our Stayrove team will contact you soon.</div>
<div class=\"p \" style=\"padding: 0px; font-family: Helvetica,Arial,sans-serif; font-size: 14px; margin: 1em 0px 3em;\">Thanks,<br style=\"margin: 0; padding: 0;\" />The {$email_title} Team</div>
<div class=\"content\">Sent with <img style=\"margin: 0; padding: 0;\" src=\"heart.png\" alt=\"&hearts;\" width=\"12\" height=\"10\" /> from {$email_title} HQ<br style=\"margin: 0; padding: 0;\" /> Email preferences</div>
</div>
</div>","Active","2014-12-18 00:00:00","","Verification Confirmation","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("30","Host Approve Reservation","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" width=\"200px\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi {$hostname},</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<th style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">You have accepted {$travelername} reservation request for {$propertyname}. </th>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-30 00:00:00","","Host Approve Reservation","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("20","Reservation request copy to travellers","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi {$travellername}</td>
</tr>
<tr>
<td height=\"40\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Your reservation request for {$productname} has been submitted.</td>
</tr>
<tr>
<td height=\"40\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">Your potential host has 24 hours to respond to your request, but most of our hosts reply more quickly than that! Once {$hostname} accepts or declines your reservation, we\'ll let you know.</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We have authorized your payment method for {$totalprice}, the full amount of the reservation. If your request is declined or expires, you will not be charged.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"http://www.stayrove.com/1/rental/{$prd_id}\"><img src=\"{base_url()}server/php/rental/{$prd_image}\" alt=\"\" width=\"300\" /> ({$productname})</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<p style=\"margin: 0px; padding: 8px 10px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; background: #f1f1f1;\">Reservation Request</p>
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">{$checkindate}</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">{$checkoutdate}</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td height=\"0\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-24 00:00:00","","Reservation Request at Stayrove","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("21","After Host List Property","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi {$host_name}</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">You have created a new listing with your Stayrove account on {$cdate} at {$ctime}.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">List name : {$propertyname}</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">Link : {base_url()}rental/{$propertyid}</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">Price : RM {$price}</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">If this was you, you can ignore this email.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">If this wasn\'t you, let us know. Notifying us is important because it helps us make sure no one is accessing your account without your knowledge.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-24 00:00:00","","After Host List Property","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("26","Listing Payment Success  By Host","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi {$travelername},</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<th style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\"> You have Paid the {$prdname}  for RM {$amount}. </th>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-26 00:00:00","","Listing Payment Success  By Host","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("22","After Admin List Property","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"border: 0px solid #f5fafb; width: 600px; background-color: #ecfafd;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" align=\"center\" valign=\"middle\">HI ADMIN</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\">You have created a new listing with your Stayrove account on {$cdate} at {$ctime}.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"left\">List name : {$propertyname}</td>
</tr>
<tr>
<td align=\"left\">Link : http://www.stayrove.com/1/rental/{$propertyid}</td>
</tr>
<tr>
<td align=\"left\">Price : RM {$price}</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"left\">If this was you, you can ignore this email.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"left\">If this wasn\'t you, let us know. Notifying us is important because it helps us make sure no one is accessing your account without your knowledge.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;<br /><br /></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-24 00:00:00","","After Admin List Property","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("23","Host Approve Reservation","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi {$travelername},</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<th style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">Host Accepted your reservation request for {$propertyname}.Please make your payment at <a href=\"http://www.stayrove.com/1/trips/upcoming\">&nbsp;your trip dashboard</a> in Stayrove website. Enjoy your holiday.</th>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-24 00:00:00","","Your Reservation with Stayrove has been approve","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("24","Host Decline Reservation","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi {$travelername},</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<th style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\"><span>The {$propertyname} h</span>ost have declined your reservation. Kindly find alternative accomodation at www.stayrove.com/1. We look forward for your next booking.&nbsp;</th>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
<p><span>Sent with&nbsp;</span><img src=\"http://www.stayrove.com/1/heart.png\" alt=\"&hearts;\" width=\"12\" height=\"10\" /><span>&nbsp;from {$email_title} HQ</span></p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-24 00:00:00","","Reservation request rejected","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("25","guide decline by user","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi {$travelername},</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<th style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\"> Sorry, Your reservation request is dined by {$hostname} for {$propertyname}. </th>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">Soon, We will contact you with the appropriate payment.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-24 00:00:00","","guide decline by user","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("27","Listing Payment Success  By Admin","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi Admin,</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<th style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\"> {$hostname} have Paid the {$prdname}  for RM {$amount}. </th>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Staynest Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-26 00:00:00","","Listing Payment Success  By Admin","Stayrove","stayrovetech@gmail.com","","1");INSERT INTO fc_newsletter VALUES("28","Contact Us - Reply","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td><span>&nbsp; &nbsp; &nbsp; </span><label></label></td>
</tr>
<tr>
<td><span>&nbsp; &nbsp; &nbsp; Hi</span><label>{$username}</label></td>
</tr>
<tr>
<td style=\"padding: 0px 20px;\">{$body_message}</td>
</tr>
<tr>
<td>&nbsp; &nbsp; &nbsp;&nbsp;</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp; &nbsp; &nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-26 00:00:00","","Contact Us - Reply","Stayrove","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("31","Listing Email Admin","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img src=\"{base_url()}images/logo/{$logo}\" alt=\"logo\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi Admin,</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<th style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\"> {$travelername} have created the new list. </th>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">Host name : {$travelername}</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">List name : {$propertyname}</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">Link :<a href=\" www.stayrove.com/1/rental/{$propertyid}\"> www.stayrove.com/1/rental/{$propertyid}</a></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\">Price : {$propertyprice}</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-30 00:00:00","","Listing Email Admin","stayrove.com","pets@stayrove.com","","1");INSERT INTO fc_newsletter VALUES("34","Notification Mail Host","<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"{base_url()}images/logo/{$logo}\" alt=\"{$meta_title}\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi {$renter_fname} {$renter_lname}</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that, your {$rental_name} is booked now. To help make check-in seamless, we suggest you continue the conversation with your guest {$first_name} {$last_name}</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Stayrove\'s message system to confirm your guest arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"http://www.stayrove.com/1/rental/{$prd_id}\"><img src=\"{$rental_image}\" alt=\"\" width=\"300\" /> {$rental_name}</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">{$checkin}</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">{$checkout}</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">RM {$price}*{$noofnights} Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM{$amount}</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">RM{$serviceFee}</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">RM{$netamount}</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","Active","2014-12-30 00:00:00","","Reservation Confirmation","Stayrove","pets@stayrove.com","","1");CREATE TABLE `fc_notes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `notes` mediumtext NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;INSERT INTO fc_notes VALUES("3","11","135","aaaaz vccxyt","2014-12-03 10:19:21");INSERT INTO fc_notes VALUES("4","11","8","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.","2014-12-03 10:20:50");INSERT INTO fc_notes VALUES("5","11","149","aaa aa aaaaa aaa aaa aa aaaaa aaa aaa aa aaaaa aaa aaa aa aaaaa aaa aaa aa aaaaa aaa","2014-12-03 11:39:14");INSERT INTO fc_notes VALUES("6","11","154","wwwwwww xccx","2014-12-03 12:21:02");INSERT INTO fc_notes VALUES("7","36","8","","2014-12-04 05:02:26");INSERT INTO fc_notes VALUES("8","1","149","","2014-12-08 05:55:20");INSERT INTO fc_notes VALUES("9","21","154","","2014-12-08 05:56:48");INSERT INTO fc_notes VALUES("10","21","170","","2014-12-08 05:56:59");INSERT INTO fc_notes VALUES("11","21","167","","2014-12-08 05:57:06");INSERT INTO fc_notes VALUES("12","21","135","","2014-12-08 07:53:12");INSERT INTO fc_notes VALUES("13","92","202","testing ","2014-12-31 09:27:19");INSERT INTO fc_notes VALUES("14","92","222","","2015-01-05 12:56:35");INSERT INTO fc_notes VALUES("15","92","230","Sampel","2015-01-09 13:43:20");INSERT INTO fc_notes VALUES("16","129","11","sdds","2015-03-12 06:16:41");INSERT INTO fc_notes VALUES("17","125","11","","2015-03-12 06:28:20");CREATE TABLE `fc_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `activity` mediumtext COLLATE utf8_bin NOT NULL,
  `activity_id` bigint(20) NOT NULL,
  `activity_ip` mediumtext COLLATE utf8_bin NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;CREATE TABLE `fc_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(100) NOT NULL,
  `sell_id` bigint(20) NOT NULL,
  `product_id` int(100) NOT NULL,
  `price` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `is_coupon_used` enum('No','Yes') NOT NULL,
  `session_id` varchar(200) NOT NULL,
  `coupon_id` varchar(200) NOT NULL,
  `discountAmount` varchar(500) NOT NULL,
  `couponCode` varchar(255) NOT NULL,
  `coupontype` varchar(500) NOT NULL,
  `shippingid` int(16) NOT NULL,
  `indtotal` varchar(500) NOT NULL,
  `sumtotal` decimal(10,2) NOT NULL,
  `total` varchar(100) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `shippingcost` varchar(500) NOT NULL,
  `shippingcountry` varchar(500) NOT NULL,
  `shippingcity` varchar(500) NOT NULL,
  `shippingstate` varchar(500) NOT NULL,
  `paidVoucherStatus` enum('Not Verified','Verified') NOT NULL,
  `paypal_transaction_id` varchar(500) NOT NULL,
  `dealCodeNumber` varchar(500) NOT NULL,
  `inserttime` varchar(65) NOT NULL,
  `status` enum('Pending','Paid') NOT NULL,
  `shipping_date` date NOT NULL,
  `tracking_id` varchar(100) NOT NULL,
  `shipping_status` varchar(100) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `attribute_values` int(11) NOT NULL,
  `product_shipping_cost` decimal(10,2) NOT NULL,
  `product_tax_cost` decimal(10,2) NOT NULL,
  `note` blob NOT NULL,
  `order_gift` enum('0','1') NOT NULL DEFAULT '0',
  `payer_email` varchar(500) NOT NULL,
  `received_status` enum('Not received yet','Product received','Need refund') NOT NULL,
  `review_status` enum('Not open','Opened','Closed') NOT NULL,
  `EnquiryId` int(100) NOT NULL,
  `shippingname` varchar(120) NOT NULL,
  `shippingemail` varchar(120) NOT NULL,
  `shippingmobileno` varchar(120) NOT NULL,
  `shippingaddress` varchar(120) NOT NULL,
  `coupon_code` varchar(150) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_amt` int(11) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `dval` int(11) NOT NULL,
  `errmsg` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;CREATE TABLE `fc_payment_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(200) NOT NULL,
  `settings` text NOT NULL,
  `status` enum('Enable','Disable') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;INSERT INTO fc_payment_gateway VALUES("1","Paypal IPN","a:2:{s:4:\"mode\";s:4:\"live\";s:14:\"merchant_email\";s:18:\"stayrove@gmail.com\";}","Enable");INSERT INTO fc_payment_gateway VALUES("4","Credit Card","a:3:{s:4:\"mode\";s:4:\"live\";s:12:\"merchantcode\";s:6:\"M07244\";s:11:\"merchantkey\";s:10:\"DbQhpCuQpP\";}","Disable");INSERT INTO fc_payment_gateway VALUES("5","Stripe","a:3:{s:4:\"mode\";s:7:\"sandbox\";s:10:\"secret_key\";s:32:\"sk_test_0tTTuvYsRdKGPkZ0McunhY4P\";s:15:\"publishable_key\";s:32:\"pk_test_PT3XNxa5eYTVkfGBqmslDEMX\";}","Disable");CREATE TABLE `fc_payment_host` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bookingId` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `host_id` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `txn_id` varchar(200) NOT NULL,
  `txt_date` varchar(150) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `payment_status` enum('paid','pending') NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;CREATE TABLE `fc_prefooter` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `footer_title` varchar(500) NOT NULL,
  `short_desc_count` int(10) NOT NULL,
  `short_description` text NOT NULL,
  `footer_link` varchar(500) NOT NULL,
  `image` varchar(250) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;INSERT INTO fc_prefooter VALUES("1","Check with Guest","3","Get More friends for refreshing//More Relax and Cool to enjoy//Worth for your Money","http://www.stayrove.com/1/pages/learn-more-about-hosting","Image6.png","Active","2015-03-02 08:18:32");INSERT INTO fc_prefooter VALUES("2","Check With Host","3","Be a Host//Be relax by posting the porperty//Go and search new friends","http://www.stayrove.com/1/site/cms/learnmore","Image4.png","Active","2015-03-02 08:18:45");INSERT INTO fc_prefooter VALUES("3","How it Perform","3","Discover a place//Buy It//Be happy by staying in home","http://www.stayrove.com/1/site/cms/howitwork","Image1.png","Active","2015-03-02 08:18:55");CREATE TABLE `fc_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_product_id` bigint(20) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_title` varchar(1000) NOT NULL,
  `seourl` varchar(500) NOT NULL,
  `meta_title` longblob NOT NULL,
  `meta_keyword` longblob NOT NULL,
  `meta_description` longblob NOT NULL,
  `excerpt` varchar(500) NOT NULL,
  `category_id` varchar(500) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `price_range` varchar(100) NOT NULL,
  `sale_price` decimal(20,2) NOT NULL,
  `image` longtext NOT NULL,
  `description` longblob NOT NULL,
  `weight` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `max_quantity` int(11) NOT NULL DEFAULT '1',
  `purchasedCount` int(11) NOT NULL,
  `shipping_type` enum('Shippable','Not Shippable') NOT NULL,
  `shipping_cost` decimal(6,2) NOT NULL,
  `taxable_type` enum('Taxable','Not Taxable') NOT NULL,
  `tax_cost` decimal(6,2) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `option` longtext NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `likes` bigint(20) NOT NULL DEFAULT '0',
  `list_name` longtext NOT NULL,
  `sub_list` longtext NOT NULL,
  `list_value` longtext NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `ship_immediate` enum('false','true') NOT NULL,
  `status` enum('Publish','UnPublish') NOT NULL,
  `order` int(100) NOT NULL,
  `contact_count` int(100) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `home_type` varchar(1000) NOT NULL,
  `other` varchar(250) NOT NULL,
  `room_type` varchar(1000) DEFAULT NULL,
  `accommodates` varchar(100) NOT NULL DEFAULT '1',
  `bedrooms` varchar(1000) NOT NULL,
  `beds` varchar(1000) NOT NULL,
  `bed_type` varchar(1000) NOT NULL,
  `bathrooms` varchar(1000) NOT NULL,
  `noofbathrooms` varchar(11) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `price_perweek` decimal(20,2) NOT NULL,
  `price_permonth` decimal(20,2) NOT NULL,
  `desc_title` varchar(50) NOT NULL,
  `space` varchar(250) NOT NULL,
  `guest_access` varchar(250) NOT NULL,
  `interact_guest` varchar(250) NOT NULL,
  `neighbor_overview` varchar(250) NOT NULL,
  `neighbor_around` varchar(250) NOT NULL,
  `other_thingnote` varchar(250) NOT NULL,
  `house_rules` longblob NOT NULL,
  `featured` enum('Featured','UnFeatured') NOT NULL DEFAULT 'UnFeatured',
  `member_pakage` int(11) NOT NULL,
  `package_status` varchar(50) NOT NULL,
  `datefrom` date NOT NULL,
  `dateto` date NOT NULL,
  `neighborhood` varchar(1000) NOT NULL,
  `mobile_verification_code` varchar(500) NOT NULL,
  `is_verified` varchar(500) NOT NULL,
  `calendar_checked` enum('','always','sometimes') NOT NULL,
  `minimum_stay` int(100) NOT NULL,
  `security_deposit` varchar(100) NOT NULL,
  `extra_people` int(20) NOT NULL,
  `cancellation_policy` varchar(200) NOT NULL,
  `minimum_price` varchar(200) NOT NULL,
  `maximum_price` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;INSERT INTO fc_product VALUES("1","0","2015-01-10 07:21:31","0000-00-00 00:00:00","","Happy Home","happy-home","","","","","","10.00","","0.00","","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500","","0","1","0","Shippable","0.00","Taxable","0.00","","","1","0","1,3,36,41,42,43,44,45,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,82,83,84,85,86,76,78,79,80,81,38,39,40,46,47,48","","","0","false","UnPublish","0","0","USD"," House",""," Entire home/apt","2","1","1","real bed","Private","1","Kuala Lumpur","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","always","2","5","0","Flexible","","");INSERT INTO fc_product VALUES("2","0","2015-01-10 07:34:17","0000-00-00 00:00:00","","","","","","","","","0.00","","0.00","","","","0","1","0","Shippable","0.00","Taxable","0.00","","","104","0","","","","0","false","UnPublish","0","0","","Bed & Breakfast",""," Entire home/apt","3","2","5","futon","Both","2","Arizona","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","always","3","","0","","","");INSERT INTO fc_product VALUES("3","0","2015-01-10 07:35:39","0000-00-00 00:00:00","","","","","","","","","0.00","","0.00","","","","0","1","0","Shippable","0.00","Taxable","0.00","","","104","0","","","","0","false","UnPublish","0","0",""," Apartment",""," Entire home/apt","3","","","","","","Alor Setar","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","","0","","0","","","");INSERT INTO fc_product VALUES("4","0","2015-01-10 11:11:44","0000-00-00 00:00:00","","The Lovenest-stay and party in Baga","the-lovenest-stay-and-party-in-baga","","","","","","120.00","","0.00","","Our two rooms are warm, cosy and completely self sufficient with air conditioning, 24 hr power backup, lift, a glorious little pool- all in the confin","","0","1","0","Shippable","0.00","Taxable","0.00","","","123","0","","","","0","false","UnPublish","0","0",""," House",""," Entire home/apt","5","","","","","","Kuala Lumpur","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","always","0","","0","","","");INSERT INTO fc_product VALUES("5","0","2015-01-13 06:24:45","0000-00-00 00:00:00","","fset","fset","","","","","","55.00","","0.00","","cfsdhfghsdgd","","0","1","0","Shippable","0.00","Taxable","0.00","","","1","0","42,45,50","","","0","false","Publish","0","0",""," Apartment",""," Entire home/apt","3","2","2","airbed","Private","2","Arizona","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","always","2","33","0","Strict","","");INSERT INTO fc_product VALUES("6","0","2015-01-13 06:40:28","0000-00-00 00:00:00","","test","test","","","","","","66.00","","0.00","","zdfsf","","0","1","0","Shippable","0.00","Taxable","0.00","","","1","0","51,53,54","","","0","false","Publish","0","0",""," Apartment",""," Entire home/apt","4","1","2","airbed","Private","2","Arizona","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","always","2","33","0","Moderate","","");INSERT INTO fc_product VALUES("7","0","2015-01-13 10:56:40","0000-00-00 00:00:00","","drsgd","drsgd","","","","","","55.00","","0.00","","dfgd","","0","1","0","Shippable","0.00","Taxable","0.00","","","1","0","42","","","0","false","Publish","0","0",""," Apartment",""," Entire home/apt","4","1","1","airbed","Private","1","Arizona","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","always","2","44","0","Moderate","","");INSERT INTO fc_product VALUES("8","0","2015-01-14 10:17:12","0000-00-00 00:00:00","","","","","","","","","0.00","","0.00","","","","0","1","0","Shippable","0.00","Taxable","0.00","","","123","0","","","","0","false","UnPublish","0","0",""," House",""," Entire home/apt","2","","","","","","Kota","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","","0","","0","","","");INSERT INTO fc_product VALUES("9","0","2015-01-14 10:18:21","0000-00-00 00:00:00","","","","","","","","","0.00","","0.00","","","","0","1","0","Shippable","0.00","Taxable","0.00","","","92","0","","","","0","false","UnPublish","0","0",""," House",""," Entire home/apt","1","","","","","","Dungun","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","","0","","0","","","");INSERT INTO fc_product VALUES("25","0","2015-04-23 09:56:18","0000-00-00 00:00:00","","q323","q323","","","","","","12.00","","0.00","","23232","","0","1","0","Shippable","0.00","Taxable","0.00","","","139","0","61,84,79,39","","","0","false","UnPublish","0","0","AUD","0","","Large Pet 10+ kg","1","1","1","1","1","1","","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","sometimes","1","25","0","","","");INSERT INTO fc_product VALUES("11","0","2015-03-05 07:53:35","0000-00-00 00:00:00","","12121","12121","","","","","","12.00","","0.00","","","","0","1","0","Shippable","0.00","Taxable","0.00","","","129","0","36,42","","","0","false","Publish","0","0","AUD","0","","Small Pet 0 to 10kg","1","2","2","airbed","Private","1","New York","0.00","0.00","","","","","","","","","Featured","0","","0000-00-00","0000-00-00","","","","sometimes","1","4","0","Moderate","","");INSERT INTO fc_product VALUES("12","0","2015-03-11 12:36:49","0000-00-00 00:00:00","","test test test","test-test-test","","","","","","35.00","","0.00","","test test test ","","0","1","0","Shippable","0.00","Taxable","0.00","","","137","0","36","","","0","false","UnPublish","0","0","AUD","Large Pet 10+ kg","","Small Pet 0 to 10kg","1","","","","","","newcastle nsw","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","always","0","","0","","","");INSERT INTO fc_product VALUES("21","0","2015-03-18 02:15:50","0000-00-00 00:00:00","","","","","","","","","0.00","","0.00","","","","0","1","0","Shippable","0.00","Taxable","0.00","","","132","0","","","","0","false","UnPublish","0","0","","0","","","1","","","","","","New Thippasandra","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","","0","","0","","","");INSERT INTO fc_product VALUES("17","0","2015-03-12 06:04:53","0000-00-00 00:00:00","","test","test","","","","","","1.00","","0.00","","test","","0","1","0","Shippable","0.00","Taxable","0.00","","","129","0","1","","","0","false","UnPublish","0","0","AUD","0","","","1","","","","","","Newcastle","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","sometimes","0","","0","","","");INSERT INTO fc_product VALUES("22","0","2015-03-31 10:33:26","0000-00-00 00:00:00","","222","222","","","","","","10.00","","0.00","","2222","","0","1","0","Shippable","0.00","Taxable","0.00","","","143","0","1","","","0","false","Publish","0","0","AUD","Cat","","Small Pet 0 to 10kg","1","","","","","","Willis Drive","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","always","0","1","0","","","");INSERT INTO fc_product VALUES("23","0","2015-04-01 03:00:54","0000-00-00 00:00:00","","Sweet Home","sweet-home","","","","","","10.00","","0.00","","Sampel","","0","1","0","Shippable","0.00","Taxable","0.00","","","125","0","1,36,42,82,84,76,79,40,47","","","0","false","Publish","0","0","USD","Birds","","Large Pet 10+ kg","1","","","","","","Mandaveli","0.00","0.00","","","","","","","","","UnFeatured","0","","0000-00-00","0000-00-00","","","","always","0","50","0","","","");INSERT INTO fc_product VALUES("24","0","2015-04-23 09:25:14","0000-00-00 00:00:00","","test ","test","","","","","","20.00","","0.00","","tet ret ert erwst we trew re re gr grew gre","","0","1","0","Shippable","0.00","Taxable","0.00","","","139","0","1","","","0","false","Publish","0","0","AUD","0","","0","1","","","","","","","0.00","0.00","","","","","","","","","Featured","0","","0000-00-00","0000-00-00","","","","sometimes","0","1","0","","","");CREATE TABLE `fc_product_address` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `state` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `post_code` varchar(1000) NOT NULL,
  `property_name` varchar(1000) NOT NULL,
  `holding_no` varchar(1000) NOT NULL,
  `no_of_star` varchar(1000) NOT NULL,
  `address` text NOT NULL,
  `latitude` varchar(1000) NOT NULL,
  `longitude` varchar(1000) NOT NULL,
  `apt` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;INSERT INTO fc_product_address VALUES("1","5","145","3","3","94103","","","","tgyjgy","37.77264","-122.40992","");INSERT INTO fc_product_address VALUES("2","6","215","4","2","94103","","","","dftgdf","37.77264","-122.40992","");INSERT INTO fc_product_address VALUES("3","7","215","4","2","94103","","","","sdrfg","37.77264","-122.40992","");INSERT INTO fc_product_address VALUES("4","11","215","4","2","434","","","","24234","37.77264","-122.40992","2");CREATE TABLE `fc_product_address_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `street` varchar(500) NOT NULL,
  `area` varchar(500) NOT NULL,
  `location` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `country` varchar(500) NOT NULL,
  `lang` varchar(500) NOT NULL,
  `lat` varchar(500) NOT NULL,
  `zip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;INSERT INTO fc_product_address_new VALUES("1","23","Mandaveli, Chennai, Tamil Nadu, India","2nd Main Road","","","Chennai","Tamil Nadu","India","80.2604455","13.0277393","600028");INSERT INTO fc_product_address_new VALUES("2","22","23 King Street, Sydney, New South Wales, Australia","King Street","","","Sydney","New South Wales","Australia","151.203628","-33.8688312","2000");INSERT INTO fc_product_address_new VALUES("3","24","Newcastle, New South Wales, Australia","king street","","","newcastle","New South Wales","Australia","151.7789205","-32.926689","2290");INSERT INTO fc_product_address_new VALUES("4","25","Newcastle, New South Wales, Australia","king street","","","newcastle","New South Wales","Australia","151.7789205","-32.926689","2300");CREATE TABLE `fc_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attr_name` varchar(500) NOT NULL,
  `attr_seourl` varchar(500) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;INSERT INTO fc_product_attribute VALUES("1","Dining","dining","Active","2014-06-26 19:04:33");INSERT INTO fc_product_attribute VALUES("2","Nightlife","nightlife","Active","2014-06-26 19:07:03");INSERT INTO fc_product_attribute VALUES("3","Shopping","shopping","Active","2014-06-26 19:07:20");CREATE TABLE `fc_product_booking` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(1000) NOT NULL,
  `datefrom` date NOT NULL,
  `dateto` date NOT NULL,
  `expiredate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;INSERT INTO fc_product_booking VALUES("2","11","0000-00-00","0000-00-00","2015-03-05 07:53:35","0.00");INSERT INTO fc_product_booking VALUES("3","12","0000-00-00","0000-00-00","2015-03-11 12:36:49","0.00");INSERT INTO fc_product_booking VALUES("8","17","0000-00-00","0000-00-00","2015-03-12 06:04:53","0.00");INSERT INTO fc_product_booking VALUES("12","21","0000-00-00","0000-00-00","2015-03-18 02:15:50","0.00");INSERT INTO fc_product_booking VALUES("13","22","0000-00-00","0000-00-00","2015-03-31 10:33:26","0.00");INSERT INTO fc_product_booking VALUES("14","23","0000-00-00","0000-00-00","2015-04-01 03:00:54","0.00");INSERT INTO fc_product_booking VALUES("15","24","0000-00-00","0000-00-00","2015-04-23 09:25:14","0.00");INSERT INTO fc_product_booking VALUES("16","25","0000-00-00","0000-00-00","2015-04-23 09:56:18","0.00");CREATE TABLE `fc_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;INSERT INTO fc_product_category VALUES("1","1","1","2");CREATE TABLE `fc_product_comments` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `user_id` int(200) NOT NULL,
  `product_id` int(200) NOT NULL,
  `comments` longblob NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  `dateAdded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;CREATE TABLE `fc_product_deal_price` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deal_amount` varchar(100) NOT NULL,
  `product_id` int(10) NOT NULL,
  `deal_start_date` date NOT NULL,
  `deal_end_date` date NOT NULL,
  `deal_status` enum('','Active','Inactive') NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;INSERT INTO fc_product_deal_price VALUES("1","1000","0","0000-00-00","0000-00-00","","2014-12-13 15:07:56");INSERT INTO fc_product_deal_price VALUES("2","100","198","2014-12-19","2014-12-26","","2014-12-13 15:20:10");INSERT INTO fc_product_deal_price VALUES("3","50","210","2014-12-20","2014-12-23","","2014-12-17 06:37:50");CREATE TABLE `fc_product_features` (
  `product_id` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `feature` longblob NOT NULL,
  `google_map` text CHARACTER SET utf8 NOT NULL,
  `add_feature` blob NOT NULL,
  `rentals_policy` blob NOT NULL,
  `trams_condition` blob NOT NULL,
  `confirm_email` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `order_email` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `invoice_template` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;INSERT INTO fc_product_features VALUES("1","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("1","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("1","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("3","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("3","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("3","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("4","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("6","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("6","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("6","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("5","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("8","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("9","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("10","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("10","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("10","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("11","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("13","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("13","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("13","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("13","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("13","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("13","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("14","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("15","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("38","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("38","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("38","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("38","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("62","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("62","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("66","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("67","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("68","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("98","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("93","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("92","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("91","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("87","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("74","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("73","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("53","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("38","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("2","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("15","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("16","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("3","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("3","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("6","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("16","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("16","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("16","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("6","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("136","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("136","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("136","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("136","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("170","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("179","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("179","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("179","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("179","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("179","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("179","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("179","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("179","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("179","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("179","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("181","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("180","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("185","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("185","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("187","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("189","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("189","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("210","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("206","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("209","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("202","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("180","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("208","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("269","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("202","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("18","0","0","0","0","0","0","0","0");INSERT INTO fc_product_features VALUES("18","0","0","0","0","0","0","0","0");CREATE TABLE `fc_product_likes` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `product_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;CREATE TABLE `fc_rental_photos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(1000) NOT NULL,
  `imgPriority` varchar(1000) NOT NULL,
  `imgtitle` varchar(1000) NOT NULL,
  `product_image` varchar(1000) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;INSERT INTO fc_rental_photos VALUES("1","11","","","1425560402dating_advice_for_men.jpg","","Active");INSERT INTO fc_rental_photos VALUES("2","12","","","1426091911wallls_com-15483.jpg","","Active");INSERT INTO fc_rental_photos VALUES("3","17","","","1426155187ae4f855bf98cdfc2e4cb21cc2d346607.jpg","","Active");INSERT INTO fc_rental_photos VALUES("4","23","","","lighthouse.jpg","","Active");INSERT INTO fc_rental_photos VALUES("5","22","","","missreefcalendarimages-994x66012.jpg","","Active");INSERT INTO fc_rental_photos VALUES("6","24","","","images.jpg","","Active");INSERT INTO fc_rental_photos VALUES("7","25","","","rabbit.jpg","","Active");CREATE TABLE `fc_rentalsenquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `Enquiry` longtext NOT NULL,
  `caltophone` varchar(20) NOT NULL,
  `enquiry_timezone` varchar(100) NOT NULL,
  `NoofGuest` int(11) NOT NULL,
  `renter_id` int(100) NOT NULL,
  `numofdates` int(100) NOT NULL,
  `serviceFee` decimal(10,2) NOT NULL,
  `totalAmt` decimal(10,2) NOT NULL,
  `phone_no` int(100) NOT NULL,
  `booking_status` varchar(50) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approval` enum('Pending','Decline','Accept') NOT NULL,
  `Bookingno` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;CREATE TABLE `fc_requirements` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `id_verified` varchar(100) NOT NULL,
  `ph_verified` varchar(100) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `trip_description` varchar(1000) NOT NULL,
  `verify_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;INSERT INTO fc_requirements VALUES("2","78","no","no","yes","yes","");INSERT INTO fc_requirements VALUES("16","92","yes","","","","");INSERT INTO fc_requirements VALUES("19","1","no","","","","seYcDHnFry");INSERT INTO fc_requirements VALUES("20","104","no","no","no","no","");INSERT INTO fc_requirements VALUES("21","126","no","yes","","","9OpI2vbfDu");INSERT INTO fc_requirements VALUES("22","127","","yes","","","mHvAWNRXzD");INSERT INTO fc_requirements VALUES("23","129","","yes","","","ircYS6g5d1");INSERT INTO fc_requirements VALUES("24","125","no","","","","gKd4fpNvtI");INSERT INTO fc_requirements VALUES("25","137","","yes","","","");INSERT INTO fc_requirements VALUES("26","138","","yes","","","");INSERT INTO fc_requirements VALUES("27","143","","yes","","","");INSERT INTO fc_requirements VALUES("28","139","","yes","","","m8OsVIGlWY");CREATE TABLE `fc_response_time` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `response_time` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;CREATE TABLE `fc_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rateVal` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `review` varchar(1000) NOT NULL,
  `email` varchar(500) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `product_id` int(100) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_type` varchar(1000) NOT NULL,
  `owner_reply` varchar(1000) NOT NULL,
  `user_id` varchar(1000) NOT NULL,
  `reviewer_id` varchar(1000) NOT NULL,
  `review_for` enum('accuracy','communication','cleanliness','location','check_in','value') NOT NULL,
  `accuracy` int(200) NOT NULL,
  `communication` int(200) NOT NULL,
  `cleanliness` int(200) NOT NULL,
  `location` int(200) NOT NULL,
  `checkin` int(200) NOT NULL,
  `value` int(200) NOT NULL,
  `total_review` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;CREATE TABLE `fc_review_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deal_code` mediumtext NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `commentor_id` bigint(20) NOT NULL,
  `comment` blob NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_from` enum('user','seller','admin') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;CREATE TABLE `fc_saved_neighborhoods` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `neighborhood` varchar(1000) NOT NULL,
  `user_id` int(100) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;CREATE TABLE `fc_shipping_address` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `nick_name` varchar(200) NOT NULL,
  `address1` varchar(500) NOT NULL,
  `address2` varchar(500) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(100) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `phone` bigint(9) NOT NULL,
  `primary` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;CREATE TABLE `fc_shopping_carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `sell_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discountAmount` decimal(10,2) NOT NULL,
  `indtotal` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `is_coupon_used` enum('Yes','No') NOT NULL DEFAULT 'No',
  `couponID` int(200) NOT NULL,
  `couponCode` varchar(100) NOT NULL,
  `coupontype` varchar(100) NOT NULL,
  `cate_id` varchar(100) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `product_shipping_cost` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `product_tax_cost` decimal(10,2) NOT NULL,
  `attribute_values` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;CREATE TABLE `fc_slider` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `status` enum('Active','InActive') NOT NULL,
  `slider_name` varchar(1000) NOT NULL,
  `slider_title` varchar(1000) NOT NULL,
  `slider_link` varchar(1000) NOT NULL,
  `slider_desc` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;INSERT INTO fc_slider VALUES("2","Active","second slider","second slider","www.stayrove.com/1/","1","dogbannerimages.png");INSERT INTO fc_slider VALUES("7","Active","cats","Cats","www.stayrove.com/1/","cats","Cats1.jpg");INSERT INTO fc_slider VALUES("8","Active","bird","bird","www.stayrove.com/1/","bird","bird.jpg");INSERT INTO fc_slider VALUES("9","Active","horse","horse","www.stayrove.com/1/","horse","horse.jpg");INSERT INTO fc_slider VALUES("10","Active","rabbit","rabbit","www.stayrove.com/1/","rabbit","rabbit.jpg");CREATE TABLE `fc_state_tax` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(500) NOT NULL,
  `state_code` varchar(500) NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  `dateAdded` datetime NOT NULL,
  `state_tax` float(10,2) NOT NULL,
  `country_id` int(100) NOT NULL,
  `country_code` varchar(500) NOT NULL,
  `country_name` varchar(500) NOT NULL,
  `seourl` varchar(500) NOT NULL,
  `meta_title` longblob NOT NULL,
  `meta_keyword` longblob NOT NULL,
  `meta_description` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;CREATE TABLE `fc_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `state_code` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `contid` varchar(50) NOT NULL,
  `seourl` varchar(250) NOT NULL,
  `status` enum('InActive','Active') NOT NULL,
  `featured` enum('0','1') NOT NULL,
  `description` longblob NOT NULL,
  `meta_title` varchar(1000) NOT NULL,
  `meta_keyword` varchar(1000) NOT NULL,
  `meta_description` blob NOT NULL,
  `statelogo` varchar(1000) NOT NULL,
  `statethumb` varchar(1000) NOT NULL,
  `latitude` varchar(250) NOT NULL,
  `longitude` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;INSERT INTO fc_states VALUES("2","95","TN","Tamil Nadu","","tamil-nadu","Active","0","","","","","","","37.77264","-122.40992");CREATE TABLE `fc_subadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `name` varchar(250) NOT NULL,
  `admin_name` varchar(24) NOT NULL,
  `admin_password` varchar(500) NOT NULL,
  `email` varchar(5000) NOT NULL,
  `admin_type` enum('super','sub') NOT NULL DEFAULT 'super',
  `password_reset_count` int(10) NOT NULL,
  `privileges` text NOT NULL,
  `last_login_date` datetime NOT NULL,
  `last_logout_date` datetime NOT NULL,
  `last_login_ip` varchar(16) NOT NULL,
  `is_verified` enum('No','Yes') NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;INSERT INTO fc_subadmin VALUES("22","2015-03-16","2015-03-16","gmkrrishnan","gmkrrishnan","b18794e4da951a3422eab614b7385951","muthukrishnan@casperon.in","sub","3","a:22:{s:16:\"confirm_password\";s:6:\"123456\";s:7:\"Members\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:4:\"Host\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Properties\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Orders\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:4:\"List\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:9:\"Listspace\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:7:\"Listing\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Couponcode\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Newsletter\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:8:\"Location\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:5:\"Pages\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:4:\"City\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Commission\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:15:\"Payment_gateway\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:8:\"Language\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Slider\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:9:\"Prefooter\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Backup\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Review\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:8:\"Currency\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Contact_Us\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}}","2015-03-16 05:46:28","2015-03-16 06:05:39","182.156.64.173","Yes","Active");INSERT INTO fc_subadmin VALUES("24","2015-04-29","2015-04-29","stayrovetech","stayrovetech","dc68578a7f9aa1f37dd76959a52305dd","stayrovetech@gmail.com","sub","3","a:22:{s:16:\"confirm_password\";s:11:\"Stayrove123\";s:7:\"Members\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:4:\"Host\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Properties\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Orders\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:4:\"List\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:9:\"Listspace\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:7:\"Listing\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Couponcode\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Newsletter\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:8:\"Location\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:5:\"Pages\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:4:\"City\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Commission\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:15:\"Payment_gateway\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:8:\"Language\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Slider\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:9:\"Prefooter\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Backup\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Review\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:8:\"Currency\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Contact_Us\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}}","2015-04-30 10:54:36","2015-04-29 09:54:04","110.33.202.121","Yes","Active");INSERT INTO fc_subadmin VALUES("23","2015-04-23","2015-04-23","steven","steven","90b6851a9725a5a66796ad6de5258cd6","stevenebegley@hotmail.com","sub","0","a:22:{s:16:\"confirm_password\";s:10:\"Newcastle1\";s:7:\"Members\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:4:\"Host\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Properties\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Orders\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:4:\"List\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:9:\"Listspace\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:7:\"Listing\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Couponcode\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Newsletter\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:8:\"Location\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:5:\"Pages\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:4:\"City\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Commission\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:15:\"Payment_gateway\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:8:\"Language\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Slider\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:9:\"Prefooter\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Backup\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:6:\"Review\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:8:\"Currency\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}s:10:\"Contact_Us\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";}}","0000-00-00 00:00:00","0000-00-00 00:00:00","","Yes","Active");CREATE TABLE `fc_subproducts` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_price` decimal(10,2) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;INSERT INTO fc_subproducts VALUES("11","92","9","34.00","2013-10-28 22:57:53");INSERT INTO fc_subproducts VALUES("12","92","10","36.00","2013-10-28 22:37:06");INSERT INTO fc_subproducts VALUES("13","92","11","38.00","2013-10-28 22:37:06");INSERT INTO fc_subproducts VALUES("14","92","12","40.00","2013-10-28 22:37:07");CREATE TABLE `fc_subscribers_list` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `subscrip_mail` varchar(500) NOT NULL,
  `active` int(255) NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  `dateAdded` date NOT NULL,
  `verification_mail` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;INSERT INTO fc_subscribers_list VALUES("113","ramasamy@teamtweaks.com","1","Active","2013-03-18","");CREATE TABLE `fc_testimonials` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) NOT NULL,
  `description` longblob NOT NULL,
  `dateAdded` datetime NOT NULL,
  `status` enum('Active','InActive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;INSERT INTO fc_testimonials VALUES("1","test","rtyryrtyrtytyuty","2013-11-16 00:00:00","Active");INSERT INTO fc_testimonials VALUES("2","testss","tetewewt","2013-11-16 08:00:00","Active");INSERT INTO fc_testimonials VALUES("3","tewetw"," sedfdfs  dfsdf sdf sfd ","2013-11-16 08:00:00","Active");INSERT INTO fc_testimonials VALUES("4","zzzz","zzzzz","2014-05-08 06:00:00","Active");CREATE TABLE `fc_transaction` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `payment_cycle` varchar(500) NOT NULL,
  `txn_type` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `next_payment_date` varchar(500) NOT NULL,
  `residence_country` varchar(500) NOT NULL,
  `initial_payment_amount` varchar(500) NOT NULL,
  `currency_code` varchar(500) NOT NULL,
  `time_created` varchar(500) NOT NULL,
  `verify_sign` varchar(750) NOT NULL,
  `period_type` varchar(500) NOT NULL,
  `payer_status` varchar(500) NOT NULL,
  `test_ipn` varchar(500) NOT NULL,
  `tax` varchar(500) NOT NULL,
  `payer_email` varchar(500) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `receiver_email` varchar(500) NOT NULL,
  `payer_id` varchar(500) NOT NULL,
  `product_type` varchar(500) NOT NULL,
  `shipping` varchar(500) NOT NULL,
  `amount_per_cycle` varchar(500) NOT NULL,
  `profile_status` varchar(500) NOT NULL,
  `charset` varchar(500) NOT NULL,
  `notify_version` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `outstanding_balance` varchar(500) NOT NULL,
  `recurring_payment_id` varchar(500) NOT NULL,
  `product_name` varchar(500) NOT NULL,
  `custom_values` varchar(500) NOT NULL,
  `ipn_track_id` varchar(500) NOT NULL,
  `tran_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;CREATE TABLE `fc_user_activity` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(200) NOT NULL,
  `activity_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `activity_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activity_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;CREATE TABLE `fc_user_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_product_id` bigint(20) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_name` varchar(100) NOT NULL,
  `seourl` varchar(500) NOT NULL,
  `meta_title` longblob NOT NULL,
  `meta_keyword` longblob NOT NULL,
  `meta_description` longblob NOT NULL,
  `excerpt` varchar(500) NOT NULL,
  `category_id` varchar(500) NOT NULL,
  `image` longtext NOT NULL,
  `description` longtext NOT NULL,
  `status` enum('Publish','UnPublish') NOT NULL DEFAULT 'Publish',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `likes` bigint(20) NOT NULL DEFAULT '0',
  `list_name` longtext NOT NULL,
  `list_value` longtext NOT NULL,
  `web_link` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;CREATE TABLE `fc_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_verification_code` varchar(200) NOT NULL,
  `loginUserType` enum('normal','twitter','facebook','google') NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `group` enum('User','Seller') NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `is_verified` enum('Yes','No') NOT NULL,
  `is_brand` enum('no','yes') NOT NULL DEFAULT 'no',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `last_login_date` datetime NOT NULL,
  `last_logout_date` datetime NOT NULL,
  `last_login_ip` varchar(50) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `address2` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(20) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `s_address` varchar(100) NOT NULL,
  `s_city` varchar(50) NOT NULL,
  `s_district` varchar(50) NOT NULL,
  `s_state` varchar(50) NOT NULL,
  `s_country` varchar(20) NOT NULL,
  `s_postal_code` int(11) NOT NULL,
  `s_phone_no` varchar(20) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `brand_description` text NOT NULL,
  `commision` int(11) NOT NULL,
  `web_url` varchar(50) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_no` varchar(100) NOT NULL,
  `bank_code` varchar(100) NOT NULL,
  `request_status` enum('Not Requested','Pending','Approved','Rejected') NOT NULL DEFAULT 'Not Requested',
  `verify_code` varchar(10) NOT NULL,
  `feature_product` int(100) NOT NULL,
  `followers_count` int(11) NOT NULL,
  `following_count` int(11) NOT NULL,
  `followers` varchar(200) NOT NULL,
  `following` varchar(200) NOT NULL,
  `twitter` varchar(50) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `google` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `about` varchar(200) NOT NULL,
  `age` enum('','13 to 17','18 to 24','25 to 34','35 to 44','45 to 54','55+') NOT NULL,
  `gender` enum('Male','Female','Unspecified') NOT NULL DEFAULT 'Unspecified',
  `language` varchar(10) NOT NULL DEFAULT 'en',
  `visibility` enum('Everyone','Only you') NOT NULL,
  `display_lists` enum('Yes','No') NOT NULL,
  `email_notifications` longtext NOT NULL,
  `notifications` longtext NOT NULL,
  `updates` enum('1','0') NOT NULL,
  `products` int(11) NOT NULL,
  `lists` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `location` mediumtext NOT NULL,
  `following_user_lists` longtext NOT NULL,
  `following_giftguide_lists` longtext NOT NULL,
  `api_id` bigint(20) NOT NULL,
  `own_products` longtext NOT NULL,
  `own_count` bigint(20) NOT NULL,
  `referId` int(11) NOT NULL,
  `want_count` bigint(20) NOT NULL,
  `refund_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `paypal_email` varchar(500) NOT NULL,
  `contact_count` int(100) NOT NULL,
  `firstname` varchar(1000) NOT NULL,
  `lastname` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `description` longtext NOT NULL,
  `response_rate` int(100) NOT NULL,
  `cardType` varchar(255) NOT NULL,
  `cardNumber` int(20) NOT NULL,
  `CCExpDay` int(4) NOT NULL,
  `CCExpMnth` int(4) NOT NULL,
  `cvv` varchar(255) NOT NULL,
  `dob_date` int(100) NOT NULL,
  `dob_month` int(100) NOT NULL,
  `dob_year` int(100) NOT NULL,
  `school` varchar(1000) NOT NULL,
  `work` varchar(1000) NOT NULL,
  `timezone` varchar(1000) NOT NULL,
  `member_pakage` varchar(1000) NOT NULL,
  `member_purchase_date` date NOT NULL,
  `package_status` enum('Pending','Paid') NOT NULL DEFAULT 'Pending',
  `expired_date` date NOT NULL,
  `package_exp_date` date NOT NULL,
  `social_recommend` enum('yes','no') NOT NULL DEFAULT 'no',
  `search_by_profile` enum('yes','no') NOT NULL DEFAULT 'no',
  `emergency_name` varchar(250) NOT NULL,
  `emergency_phone` varchar(250) NOT NULL,
  `emergency_email` varchar(250) NOT NULL,
  `emergency_relationship` varchar(250) NOT NULL,
  `languages_known` text NOT NULL,
  `accname` varchar(15) NOT NULL,
  `accno` varchar(250) NOT NULL,
  `bankname` varchar(25) NOT NULL,
  `Acccountry` varchar(25) NOT NULL,
  `swiftcode` varchar(55) NOT NULL,
  `subscriber` enum('Yes','No','delete') NOT NULL,
  `login_hit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;INSERT INTO fc_users VALUES("124","","normal","","Muthukumar","User","muthukumar@casperon.in","e10adc3949ba59abbe56e057f20f883e","Active","No","no","2015-02-27 07:59:25","0000-00-00 00:00:00","2015-03-11 10:55:03","2015-03-11 10:55:53","115.118.51.61","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","aS7wleMNRH","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","cool_destination,fun_news,upcoming_reservation,new_review,new_reference,reference_request,review_reminder,calendar_reminder","message_another_person,guest_reservation,reservation_request","1","0","0","0","","","","0","","0","0","0","0.00","","0","Muthukumar","test","","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-14","0000-00-00","no","no","","","","","","","","","","","No","0");INSERT INTO fc_users VALUES("125","","normal","","Muthu","Seller","muthukrishnan@casperon.in","e10adc3949ba59abbe56e057f20f883e","Active","Yes","no","2015-02-27 08:02:21","0000-00-00 00:00:00","2015-04-15 07:11:45","2015-03-12 03:13:23","115.118.155.149","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","8M4zR9ex3S","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","upcoming_reservation,reference_request,review_reminder,calendar_reminder","reservation_request","1","0","0","0","","","","0","","0","0","0","0.00","muthukrishnan@casperon.in","0","Muthu","Krishnan G","","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-14","0000-00-00","no","no","","","","","","0","0","0","","","No","0");INSERT INTO fc_users VALUES("143","828159","facebook","","James","Seller","jamesbeckau@gmail.com","cda26361587bdd1d923241cc39690bb9","Active","Yes","no","2015-03-31 20:02:52","0000-00-00 00:00:00","2015-04-30 10:46:31","2015-03-31 08:06:36","110.33.202.121","","","","","","","","0","0427350091","","","","","","0","","","","0","","","","","Not Requested","LtRv5ZNWF3","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","","","1","0","0","0","","","","0","","0","0","0","0.00","sdfdsf@cd.com","0","James","Beck","fb-James.jpg","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-04-15","0000-00-00","no","no","","","","","","0","0","0","","","Yes","0");INSERT INTO fc_users VALUES("144","","normal","","Muthu","User","muthukrishnanc@casperon.in","e10adc3949ba59abbe56e057f20f883e","Active","No","no","2015-04-15 07:11:52","0000-00-00 00:00:00","2015-04-15 07:11:58","0000-00-00 00:00:00","115.118.155.149","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","biJlGKec3U","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","cool_destination,fun_news,upcoming_reservation,new_review,new_reference,reference_request,review_reminder,calendar_reminder","message_another_person,guest_reservation,reservation_request","1","0","0","0","","","","0","","0","0","0","0.00","","0","Muthu","Krishnan","","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-04-30","0000-00-00","no","no","","","","","","","","","","","Yes","0");INSERT INTO fc_users VALUES("132","","normal","","Aravind","Seller","aravind@teamtweaks.com","e10adc3949ba59abbe56e057f20f883e","Active","No","no","2015-03-09 04:52:56","0000-00-00 00:00:00","2015-03-18 11:45:39","2015-03-18 11:52:02","115.118.56.118","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","hoEPkqUNGi","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","cool_destination,fun_news,upcoming_reservation,new_review,new_reference,reference_request,review_reminder,calendar_reminder","message_another_person,guest_reservation,reservation_request","1","0","0","0","","","","0","","0","0","0","0.00","","0","Aravind","Natarajan","","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-24","0000-00-00","no","no","","","","","","","","","","","Yes","0");INSERT INTO fc_users VALUES("128","","normal","","Aravind","User","aravi.88@gmail.com","e10adc3949ba59abbe56e057f20f883e","Active","No","no","2015-03-05 04:38:24","0000-00-00 00:00:00","2015-03-05 04:38:24","0000-00-00 00:00:00","122.164.44.43","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","lvODnhi2IF","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","cool_destination,fun_news,upcoming_reservation,new_review,new_reference,reference_request,review_reminder,calendar_reminder","message_another_person,guest_reservation,reservation_request","1","0","0","0","","","","0","","0","0","0","0.00","","0","Aravind","Natarajan","","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-20","0000-00-00","no","no","","","","","","","","","","","Yes","0");INSERT INTO fc_users VALUES("142","","normal","","sure","User","surefirematch@outlook.com","e10adc3949ba59abbe56e057f20f883e","Active","No","no","2015-03-18 07:40:49","0000-00-00 00:00:00","2015-03-18 07:41:12","0000-00-00 00:00:00","110.33.218.108","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","iLtaJNPZVD","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","cool_destination,fun_news,upcoming_reservation,new_review,new_reference,reference_request,review_reminder,calendar_reminder","message_another_person,guest_reservation,reservation_request","1","0","0","0","","","","0","","0","0","0","0.00","","0","sure","Fire","","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-04-02","0000-00-00","no","no","","","","","","","","","","","Yes","0");INSERT INTO fc_users VALUES("130","","normal","","Muthu","User","gmkrrishnan@gmail.com","e10adc3949ba59abbe56e057f20f883e","Active","Yes","no","2015-03-06 05:58:41","0000-00-00 00:00:00","2015-03-06 06:19:56","2015-04-17 01:27:58","122.164.44.43","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","Um5PzK69Wn","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","cool_destination,fun_news,upcoming_reservation,new_review,new_reference,reference_request,review_reminder,calendar_reminder","message_another_person,guest_reservation,reservation_request","1","0","0","0","","","","0","","0","0","0","0.00","","0","Muthu","Krishnan G","","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-21","0000-00-00","no","no","","","","","","","","","","","No","0");INSERT INTO fc_users VALUES("131","","normal","","selva","User","selvaKumar@casperon.in","e10adc3949ba59abbe56e057f20f883e","Active","Yes","no","2015-03-06 07:52:03","0000-00-00 00:00:00","2015-03-06 07:57:25","2015-03-06 07:55:55","115.118.215.195","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","lHmTuGAtbJ","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","cool_destination,fun_news,upcoming_reservation,new_review,new_reference,reference_request,review_reminder,calendar_reminder","message_another_person,guest_reservation,reservation_request","1","0","0","0","","","","0","","0","0","0","0.00","","0","selva","kumar","","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-21","0000-00-00","no","no","","","","","","","","","","","No","0");INSERT INTO fc_users VALUES("133","","facebook","","Johncena","User","johncena.c88@gmail.com","3d8cc477b2ca5c1dca4a1bffae6052d3","Active","No","no","2015-03-10 13:27:03","0000-00-00 00:00:00","0000-00-00 00:00:00","2015-03-10 01:27:34","","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","","","1","0","0","0","","","","0","","0","0","0","0.00","","0","Johncena","John","fb-Johncena.jpg","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-25","0000-00-00","no","no","","","","","","","","","","","Yes","0");INSERT INTO fc_users VALUES("139","913041","facebook","","Steven","Seller","stevenbegley73@gmail.com","a91ab60d3916220242d18a65c61c8dc8","Active","No","no","2015-03-15 10:05:22","0000-00-00 00:00:00","2015-03-15 10:08:22","2015-04-07 08:54:46","110.33.218.108","","","","","","","12","0","0427350091","","","","","","0","","","","0","","","","","Not Requested","NhiujeFfAY","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","","","1","0","0","0","","","","0","","0","0","0","0.00","","0","Steven","Begley","fb-Steven.jpg","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-30","0000-00-00","no","no","","","","","","","","","","","Yes","0");INSERT INTO fc_users VALUES("140","","normal","","steven","User","stevenbegley@hotmail.com","d195f714e7e547e4726f6e7497c64a76","Active","No","no","2015-03-15 08:20:31","0000-00-00 00:00:00","2015-03-15 08:20:45","2015-03-15 09:00:48","110.33.218.108","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","eT23XbGJUh","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","cool_destination,fun_news,upcoming_reservation,new_review,new_reference,reference_request,review_reminder,calendar_reminder","message_another_person,guest_reservation,reservation_request","1","0","0","0","","","","0","","0","0","0","0.00","","0","steven","begley","","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-30","0000-00-00","no","no","","","","","","","","","","","Yes","2");INSERT INTO fc_users VALUES("135","","google","","Muhmammed Gani","User","muhammedgani@teamtweaks.com","39566f84b77fe3166fd4f121734e2830","Active","No","no","2015-03-10 19:31:02","0000-00-00 00:00:00","0000-00-00 00:00:00","2015-03-10 07:31:11","","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","","0","0","0","","","","","Yes","0000-00-00","","","Unspecified","en","Everyone","Yes","","","1","0","0","0","","","","0","","0","0","0","0.00","","0","Muhmammed Gani","","https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-25","0000-00-00","no","no","","","","","","","","","","","Yes","0");INSERT INTO fc_users VALUES("141","","normal","","ewt","User","ewtuk@hotmail.com","41340eb0f73046830e7cdaeca7f446d7","Active","No","no","2015-03-15 09:28:47","0000-00-00 00:00:00","2015-03-15 09:28:52","2015-03-15 09:44:02","110.33.218.108","","","","","","","","0","","","","","","","0","","","","0","","","","","Not Requested","gB3ViXsP0x","0","0","0","","","","","","0000-00-00","","","Unspecified","en","Everyone","Yes","cool_destination,fun_news,upcoming_reservation,new_review,new_reference,reference_request,review_reminder,calendar_reminder","message_another_person,guest_reservation,reservation_request","1","0","0","0","","","","0","","0","0","0","0.00","","0","ewt","uk","","","0","","0","0","0","","0","0","0","","","","","0000-00-00","Pending","2015-03-30","0000-00-00","no","no","","","","","","","","","","","Yes","0");CREATE TABLE `fc_vendor_payment_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` mediumtext COLLATE utf8_bin NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_type` mediumtext COLLATE utf8_bin NOT NULL,
  `amount` float(20,2) NOT NULL,
  `status` enum('pending','success','failed') COLLATE utf8_bin NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;CREATE TABLE `fc_wants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `product_id` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;CREATE TABLE `schedule` (
  `id` int(11) DEFAULT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;INSERT INTO schedule VALUES("11","{\"-0001-11-29\":{\"available\":\"1\",\"bind\":0,\"info\":\"\",\"notes\":\"\",\"price\":\"12\",\"promo\":\"\",\"status\":\"available\"}}");INSERT INTO schedule VALUES("12","{\"-0001-11-29\":{\"available\":\"1\",\"bind\":0,\"info\":\"\",\"notes\":\"\",\"price\":\"35\",\"promo\":\"\",\"status\":\"available\"}}");INSERT INTO schedule VALUES("17","{\"-0001-11-29\":{\"available\":\"1\",\"bind\":0,\"info\":\"\",\"notes\":\"\",\"price\":\"1\",\"promo\":\"\",\"status\":\"available\"}}");INSERT INTO schedule VALUES("21","");INSERT INTO schedule VALUES("22","{\"2015-04-09\":{\"available\":\"1\",\"bind\":0,\"info\":\"\",\"notes\":\"\",\"price\":\"10.00\",\"promo\":\"\",\"status\":\"available\"},\"2015-04-10\":{\"available\":\"1\",\"bind\":0,\"info\":\"\",\"notes\":\"\",\"price\":\"10.00\",\"promo\":\"\",\"status\":\"available\"},\"2015-04-16\":{\"available\":\"1\",\"bind\":0,\"info\":\"\",\"notes\":\"\",\"price\":\"10.00\",\"promo\":\"\",\"status\":\"available\"},\"2015-04-17\":{\"available\":\"1\",\"bind\":0,\"info\":\"\",\"notes\":\"\",\"price\":\"10.00\",\"promo\":\"\",\"status\":\"available\"}}");INSERT INTO schedule VALUES("23","");INSERT INTO schedule VALUES("24","");INSERT INTO schedule VALUES("25","");