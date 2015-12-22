-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: stayrove
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accept_pay`
--

DROP TABLE IF EXISTS `accept_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accept_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `currency` varchar(25) NOT NULL,
  `status` int(1) NOT NULL,
  `created` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accept_pay`
--

LOCK TABLES `accept_pay` WRITE;
/*!40000 ALTER TABLE `accept_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `accept_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_key`
--

DROP TABLE IF EXISTS `admin_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_key` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `page_refer` varchar(150) NOT NULL,
  `page_key` varchar(150) NOT NULL,
  `created` varchar(150) NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_key`
--

LOCK TABLES `admin_key` WRITE;
/*!40000 ALTER TABLE `admin_key` DISABLE KEYS */;
INSERT INTO `admin_key` VALUES (2,'0','Find a Pet Sitter','1424914715',0);
/*!40000 ALTER TABLE `admin_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amnities`
--

DROP TABLE IF EXISTS `amnities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amnities` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(111) NOT NULL,
  `description` varchar(333) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amnities`
--

LOCK TABLES `amnities` WRITE;
/*!40000 ALTER TABLE `amnities` DISABLE KEYS */;
INSERT INTO `amnities` VALUES (1,'Test 1','Test 1');
/*!40000 ALTER TABLE `amnities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `list_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `availability` varchar(31) NOT NULL,
  `value` varchar(30) NOT NULL,
  `currency` varchar(7) NOT NULL,
  `notes` text NOT NULL,
  `style` varchar(11) NOT NULL,
  `booked_using` varchar(30) NOT NULL,
  `booked_days` int(31) NOT NULL,
  `created` int(31) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancellation_policy`
--

DROP TABLE IF EXISTS `cancellation_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancellation_policy` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) NOT NULL,
  `cancellation_title` varchar(155) NOT NULL,
  `cancellation_content` text NOT NULL,
  `cleaning_status` int(1) NOT NULL,
  `security_status` int(1) NOT NULL,
  `additional_status` int(1) NOT NULL,
  `list_days_prior_status` int(1) NOT NULL,
  `list_days_prior_days` int(2) NOT NULL,
  `list_days_prior_percentage` int(3) NOT NULL,
  `list_before_status` int(1) NOT NULL,
  `list_before_days` int(2) NOT NULL,
  `list_before_percentage` int(2) NOT NULL,
  `list_non_refundable_nights` int(2) NOT NULL,
  `list_after_status` int(1) NOT NULL,
  `list_after_days` int(2) NOT NULL,
  `list_after_percentage` int(2) NOT NULL,
  `is_standard` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancellation_policy`
--

LOCK TABLES `cancellation_policy` WRITE;
/*!40000 ALTER TABLE `cancellation_policy` DISABLE KEYS */;
INSERT INTO `cancellation_policy` VALUES (1,'Flexible','Flexible: {percentage} refund {day} prior to arrival, except fees','<ul>\n<li>Cleaning fees, Security fees and Additional Guest fees are always refunded if the guest did not check in.</li>\n<li>The {site_title} service fee is non-refundable.</li>\n<li>If there is a complaint from either party, notice must be given to&nbsp;{site_title} within 24 hours of check-in.</li>\n<li>{site_title}&nbsp;will mediate when necessary, and has the final say in all disputes.</li>\n<li>A reservation is officially cancelled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Cancel.</li>\n<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\n<li>Applicable taxes will be retained and remitted.</li>\n</ul>',0,0,0,1,1,100,1,1,100,1,1,1,100,'1'),(2,'Moderate','Moderate: Full refund {day} prior to arrival, except fees','<ul>\n<li>Cleaning fees, Security fees and Additional Guest fees are always refunded if the guest did not check in.</li>\n<li>The {site_title} service fee is non-refundable.</li>\n<li>If there is a complaint from either party, notice must be given to&nbsp;{site_title} within 24 hours of check-in.</li>\n<li>{site_title}&nbsp;will mediate when necessary, and has the final say in all disputes.</li>\n<li>A reservation is officially cancelled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Cancel.</li>\n<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\n<li>Applicable taxes will be retained and remitted.</li>\n</ul>',0,0,0,1,5,100,1,5,100,1,1,1,50,'1'),(3,'Strict','Strict: {percentage} refund up until {day} prior to arrival, except fees','<ul>\n<li>Cleaning fees, Security fees and Additional Guest fees are always refunded if the guest did not check in.</li>\n<li>The {site_title} service fee is non-refundable.</li>\n<li>If there is a complaint from either party, notice must be given to&nbsp;{site_title} within 24 hours of check-in.</li>\n<li>{site_title}&nbsp;will mediate when necessary, and has the final say in all disputes.</li>\n<li>A reservation is officially cancelled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Cancel.</li>\n<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\n<li>Applicable taxes will be retained and remitted.</li>\n</ul>',0,0,0,1,7,50,0,7,50,1,0,1,0,'1'),(4,'Super Strict','Super Strict: {percentage} refund up until {day} prior to arrival, except fees','<ul>\n<li>Cleaning fees, Security fees and Additional Guest fees are always refunded if the guest did not check in.</li>\n<li>The {site_title} service fee is non-refundable.</li>\n<li>If there is a complaint from either party, notice must be given to&nbsp;{site_title} within 24 hours of check-in.</li>\n<li>{site_title}&nbsp;will mediate when necessary, and has the final say in all disputes.</li>\n<li>A reservation is officially cancelled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Cancel.</li>\n<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\n<li>Applicable taxes will be retained and remitted.</li>\n</ul>',0,0,0,1,30,50,0,30,50,1,0,1,0,'0'),(5,'Long Term','Long Term: First month down payment, {day} notice for lease, termination','<ul>\n<li>Cleaning fees, Security fees and Additional Guest fees are always refunded if the guest did not check in.</li>\n<li>The {site_title} service fee is non-refundable.</li>\n<li>If there is a complaint from either party, notice must be given to&nbsp;{site_title} within 24 hours of check-in.</li>\n<li>{site_title}&nbsp;will mediate when necessary, and has the final say in all disputes.</li>\n<li>A reservation is officially cancelled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Cancel.</li>\n<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\n<li>Applicable taxes will be retained and remitted.</li>\n</ul>',0,0,0,0,1,10,1,30,100,1,0,30,12,'0');
/*!40000 ALTER TABLE `cancellation_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('999cfba7be822f53372b2466554cb123','157.55.39.164','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)',1450489458,'a:5:{s:9:\"user_data\";s:0:\"\";s:15:\"_facebook_scope\";s:5:\"email\";s:18:\"_facebook_callback\";s:34:\"http://stayrove.com/beta/pages/faq\";s:14:\"locale_country\";s:13:\"United States\";s:15:\"locale_currency\";s:3:\"USD\";}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_info`
--

DROP TABLE IF EXISTS `contact_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `pincode` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_info`
--

LOCK TABLES `contact_info` WRITE;
/*!40000 ALTER TABLE `contact_info` DISABLE KEYS */;
INSERT INTO `contact_info` VALUES (1,'0432485336','pets@stayrove.com','StayRove.com','King street','Newcastle','NSW','Australia',2300);
/*!40000 ALTER TABLE `contact_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `list_id` int(111) NOT NULL,
  `contact_key` varchar(100) NOT NULL,
  `userby` int(11) NOT NULL,
  `userto` int(111) NOT NULL,
  `checkin` varchar(50) NOT NULL,
  `checkout` varchar(50) NOT NULL,
  `no_quest` tinyint(4) NOT NULL,
  `currency` varchar(11) NOT NULL,
  `price` float NOT NULL,
  `original_price` float NOT NULL,
  `topay` float NOT NULL,
  `admin_commission` float NOT NULL,
  `status` tinyint(4) NOT NULL,
  `send_date` int(31) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_symbol` char(2) NOT NULL,
  `caps_name` varchar(80) NOT NULL,
  `country_name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'AF','AFGHANISTAN','Afghanistan','AFG',4,93),(2,'AL','ALBANIA','Albania','ALB',8,355),(3,'DZ','ALGERIA','Algeria','DZA',12,213),(4,'AS','AMERICAN SAMOA','American Samoa','ASM',16,1684),(5,'AD','ANDORRA','Andorra','AND',20,376),(6,'AO','ANGOLA','Angola','AGO',24,244),(7,'AI','ANGUILLA','Anguilla','AIA',660,1264),(8,'AQ','ANTARCTICA','Antarctica',NULL,NULL,0),(9,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28,1268),(10,'AR','ARGENTINA','Argentina','ARG',32,54),(11,'AM','ARMENIA','Armenia','ARM',51,374),(12,'AW','ARUBA','Aruba','ABW',533,297),(13,'AU','AUSTRALIA','Australia','AUS',36,61),(14,'AT','AUSTRIA','Austria','AUT',40,43),(15,'AZ','AZERBAIJAN','Azerbaijan','AZE',31,994),(16,'BS','BAHAMAS','Bahamas','BHS',44,1242),(17,'BH','BAHRAIN','Bahrain','BHR',48,973),(18,'BD','BANGLADESH','Bangladesh','BGD',50,880),(19,'BB','BARBADOS','Barbados','BRB',52,1246),(20,'BY','BELARUS','Belarus','BLR',112,375),(21,'BE','BELGIUM','Belgium','BEL',56,32),(22,'BZ','BELIZE','Belize','BLZ',84,501),(23,'BJ','BENIN','Benin','BEN',204,229),(24,'BM','BERMUDA','Bermuda','BMU',60,1441),(25,'BT','BHUTAN','Bhutan','BTN',64,975),(26,'BO','BOLIVIA','Bolivia','BOL',68,591),(27,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70,387),(28,'BW','BOTSWANA','Botswana','BWA',72,267),(29,'BV','BOUVET ISLAND','Bouvet Island',NULL,NULL,0),(30,'BR','BRAZIL','Brazil','BRA',76,55),(31,'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL,246),(32,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96,673),(33,'BG','BULGARIA','Bulgaria','BGR',100,359),(34,'BF','BURKINA FASO','Burkina Faso','BFA',854,226),(35,'BI','BURUNDI','Burundi','BDI',108,257),(36,'KH','CAMBODIA','Cambodia','KHM',116,855),(37,'CM','CAMEROON','Cameroon','CMR',120,237),(38,'CA','CANADA','Canada','CAN',124,1),(39,'CV','CAPE VERDE','Cape Verde','CPV',132,238),(40,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',136,1345),(41,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140,236),(42,'TD','CHAD','Chad','TCD',148,235),(43,'CL','CHILE','Chile','CHL',152,56),(44,'CN','CHINA','China','CHN',156,86),(45,'CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL,61),(46,'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL,672),(47,'CO','COLOMBIA','Colombia','COL',170,57),(48,'KM','COMOROS','Comoros','COM',174,269),(49,'CG','CONGO','Congo','COG',178,242),(50,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180,242),(51,'CK','COOK ISLANDS','Cook Islands','COK',184,682),(52,'CR','COSTA RICA','Costa Rica','CRI',188,506),(53,'CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',384,225),(54,'HR','CROATIA','Croatia','HRV',191,385),(55,'CU','CUBA','Cuba','CUB',192,53),(56,'CY','CYPRUS','Cyprus','CYP',196,357),(57,'CZ','CZECH REPUBLIC','Czech Republic','CZE',203,420),(58,'DK','DENMARK','Denmark','DNK',208,45),(59,'DJ','DJIBOUTI','Djibouti','DJI',262,253),(60,'DM','DOMINICA','Dominica','DMA',212,1767),(61,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214,1809),(62,'EC','ECUADOR','Ecuador','ECU',218,593),(63,'EG','EGYPT','Egypt','EGY',818,20),(64,'SV','EL SALVADOR','El Salvador','SLV',222,503),(65,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226,240),(66,'ER','ERITREA','Eritrea','ERI',232,291),(67,'EE','ESTONIA','Estonia','EST',233,372),(68,'ET','ETHIOPIA','Ethiopia','ETH',231,251),(69,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238,500),(70,'FO','FAROE ISLANDS','Faroe Islands','FRO',234,298),(71,'FJ','FIJI','Fiji','FJI',242,679),(72,'FI','FINLAND','Finland','FIN',246,358),(73,'FR','FRANCE','France','FRA',250,33),(74,'GF','FRENCH GUIANA','French Guiana','GUF',254,594),(75,'PF','FRENCH POLYNESIA','French Polynesia','PYF',258,689),(76,'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL,0),(77,'GA','GABON','Gabon','GAB',266,241),(78,'GM','GAMBIA','Gambia','GMB',270,220),(79,'GE','GEORGIA','Georgia','GEO',268,995),(80,'DE','GERMANY','Germany','DEU',276,49),(81,'GH','GHANA','Ghana','GHA',288,233),(82,'GI','GIBRALTAR','Gibraltar','GIB',292,350),(83,'GR','GREECE','Greece','GRC',300,30),(84,'GL','GREENLAND','Greenland','GRL',304,299),(85,'GD','GRENADA','Grenada','GRD',308,1473),(86,'GP','GUADELOUPE','Guadeloupe','GLP',312,590),(87,'GU','GUAM','Guam','GUM',316,1671),(88,'GT','GUATEMALA','Guatemala','GTM',320,502),(89,'GN','GUINEA','Guinea','GIN',324,224),(90,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624,245),(91,'GY','GUYANA','Guyana','GUY',328,592),(92,'HT','HAITI','Haiti','HTI',332,509),(93,'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL,0),(94,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336,39),(95,'HN','HONDURAS','Honduras','HND',340,504),(96,'HK','HONG KONG','Hong Kong','HKG',344,852),(97,'HU','HUNGARY','Hungary','HUN',348,36),(98,'IS','ICELAND','Iceland','ISL',352,354),(99,'IN','INDIA','India','IND',356,91),(100,'ID','INDONESIA','Indonesia','IDN',360,62),(101,'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364,98),(102,'IQ','IRAQ','Iraq','IRQ',368,964),(103,'IE','IRELAND','Ireland','IRL',372,353),(104,'IL','ISRAEL','Israel','ISR',376,972),(105,'IT','ITALY','Italy','ITA',380,39),(106,'JM','JAMAICA','Jamaica','JAM',388,1876),(107,'JP','JAPAN','Japan','JPN',392,81),(108,'JO','JORDAN','Jordan','JOR',400,962),(109,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',398,7),(110,'KE','KENYA','Kenya','KEN',404,254),(111,'KI','KIRIBATI','Kiribati','KIR',296,686),(112,'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',408,850),(113,'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410,82),(114,'KW','KUWAIT','Kuwait','KWT',414,965),(115,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417,996),(116,'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',418,856),(117,'LV','LATVIA','Latvia','LVA',428,371),(118,'LB','LEBANON','Lebanon','LBN',422,961),(119,'LS','LESOTHO','Lesotho','LSO',426,266),(120,'LR','LIBERIA','Liberia','LBR',430,231),(121,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434,218),(122,'LI','LIECHTENSTEIN','Liechtenstein','LIE',438,423),(123,'LT','LITHUANIA','Lithuania','LTU',440,370),(124,'LU','LUXEMBOURG','Luxembourg','LUX',442,352),(125,'MO','MACAO','Macao','MAC',446,853),(126,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807,389),(127,'MG','MADAGASCAR','Madagascar','MDG',450,261),(128,'MW','MALAWI','Malawi','MWI',454,265),(129,'MY','MALAYSIA','Malaysia','MYS',458,60),(130,'MV','MALDIVES','Maldives','MDV',462,960),(131,'ML','MALI','Mali','MLI',466,223),(132,'MT','MALTA','Malta','MLT',470,356),(133,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',584,692),(134,'MQ','MARTINIQUE','Martinique','MTQ',474,596),(135,'MR','MAURITANIA','Mauritania','MRT',478,222),(136,'MU','MAURITIUS','Mauritius','MUS',480,230),(137,'YT','MAYOTTE','Mayotte',NULL,NULL,269),(138,'MX','MEXICO','Mexico','MEX',484,52),(139,'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583,691),(140,'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498,373),(141,'MC','MONACO','Monaco','MCO',492,377),(142,'MN','MONGOLIA','Mongolia','MNG',496,976),(143,'MS','MONTSERRAT','Montserrat','MSR',500,1664),(144,'MA','MOROCCO','Morocco','MAR',504,212),(145,'MZ','MOZAMBIQUE','Mozambique','MOZ',508,258),(146,'MM','MYANMAR','Myanmar','MMR',104,95),(147,'NA','NAMIBIA','Namibia','NAM',516,264),(148,'NR','NAURU','Nauru','NRU',520,674),(149,'NP','NEPAL','Nepal','NPL',524,977),(150,'NL','NETHERLANDS','Netherlands','NLD',528,31),(151,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530,599),(152,'NC','NEW CALEDONIA','New Caledonia','NCL',540,687),(153,'NZ','NEW ZEALAND','New Zealand','NZL',554,64),(154,'NI','NICARAGUA','Nicaragua','NIC',558,505),(155,'NE','NIGER','Niger','NER',562,227),(156,'NG','NIGERIA','Nigeria','NGA',566,234),(157,'NU','NIUE','Niue','NIU',570,683),(158,'NF','NORFOLK ISLAND','Norfolk Island','NFK',574,672),(159,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580,1670),(160,'NO','NORWAY','Norway','NOR',578,47),(161,'OM','OMAN','Oman','OMN',512,968),(162,'PK','PAKISTAN','Pakistan','PAK',586,92),(163,'PW','PALAU','Palau','PLW',585,680),(164,'PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL,970),(165,'PA','PANAMA','Panama','PAN',591,507),(166,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598,675),(167,'PY','PARAGUAY','Paraguay','PRY',600,595),(168,'PE','PERU','Peru','PER',604,51),(169,'PH','PHILIPPINES','Philippines','PHL',608,63),(170,'PN','PITCAIRN','Pitcairn','PCN',612,0),(171,'PL','POLAND','Poland','POL',616,48),(172,'PT','PORTUGAL','Portugal','PRT',620,351),(173,'PR','PUERTO RICO','Puerto Rico','PRI',630,1787),(174,'QA','QATAR','Qatar','QAT',634,974),(175,'RE','REUNION','Reunion','REU',638,262),(176,'RO','ROMANIA','Romania','ROM',642,40),(177,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',643,70),(178,'RW','RWANDA','Rwanda','RWA',646,250),(179,'SH','SAINT HELENA','Saint Helena','SHN',654,290),(180,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659,1869),(181,'LC','SAINT LUCIA','Saint Lucia','LCA',662,1758),(182,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666,508),(183,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670,1784),(184,'WS','SAMOA','Samoa','WSM',882,684),(185,'SM','SAN MARINO','San Marino','SMR',674,378),(186,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678,239),(187,'SA','SAUDI ARABIA','Saudi Arabia','SAU',682,966),(188,'SN','SENEGAL','Senegal','SEN',686,221),(189,'CS','SERBIA AND MONTENEGRO','Serbia and Montenegro',NULL,NULL,381),(190,'SC','SEYCHELLES','Seychelles','SYC',690,248),(191,'SL','SIERRA LEONE','Sierra Leone','SLE',694,232),(192,'SG','SINGAPORE','Singapore','SGP',702,65),(193,'SK','SLOVAKIA','Slovakia','SVK',703,421),(194,'SI','SLOVENIA','Slovenia','SVN',705,386),(195,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',90,677),(196,'SO','SOMALIA','Somalia','SOM',706,252),(197,'ZA','SOUTH AFRICA','South Africa','ZAF',710,27),(198,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL,0),(199,'ES','SPAIN','Spain','ESP',724,34),(200,'LK','SRI LANKA','Sri Lanka','LKA',144,94),(201,'SD','SUDAN','Sudan','SDN',736,249),(202,'SR','SURINAME','Suriname','SUR',740,597),(203,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744,47),(204,'SZ','SWAZILAND','Swaziland','SWZ',748,268),(205,'SE','SWEDEN','Sweden','SWE',752,46),(206,'CH','SWITZERLAND','Switzerland','CHE',756,41),(207,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760,963),(208,'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158,886),(209,'TJ','TAJIKISTAN','Tajikistan','TJK',762,992),(210,'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834,255),(211,'TH','THAILAND','Thailand','THA',764,66),(212,'TL','TIMOR-LESTE','Timor-Leste',NULL,NULL,670),(213,'TG','TOGO','Togo','TGO',768,228),(214,'TK','TOKELAU','Tokelau','TKL',772,690),(215,'TO','TONGA','Tonga','TON',776,676),(216,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780,1868),(217,'TN','TUNISIA','Tunisia','TUN',788,216),(218,'TR','TURKEY','Turkey','TUR',792,90),(219,'TM','TURKMENISTAN','Turkmenistan','TKM',795,7370),(220,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796,1649),(221,'TV','TUVALU','Tuvalu','TUV',798,688),(222,'UG','UGANDA','Uganda','UGA',800,256),(223,'UA','UKRAINE','Ukraine','UKR',804,380),(224,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784,971),(225,'GB','UNITED KINGDOM','United Kingdom','GBR',826,44),(226,'US','UNITED STATES','United States','USA',840,1),(227,'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL,1),(228,'UY','URUGUAY','Uruguay','URY',858,598),(229,'UZ','UZBEKISTAN','Uzbekistan','UZB',860,998),(230,'VU','VANUATU','Vanuatu','VUT',548,678),(231,'VE','VENEZUELA','Venezuela','VEN',862,58),(232,'VN','VIET NAM','Viet Nam','VNM',704,84),(233,'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92,1284),(234,'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850,1340),(235,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876,681),(236,'EH','WESTERN SAHARA','Western Sahara','ESH',732,212),(237,'YE','YEMEN','Yemen','YEM',887,967),(238,'ZM','ZAMBIA','Zambia','ZMB',894,260),(239,'ZW','ZIMBABWE','Zimbabwe','ZWE',716,263);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `couponcode` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `coupon_price` float NOT NULL,
  `expirein` varchar(12) NOT NULL,
  `status` int(20) NOT NULL,
  `currency` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (1,'54eeb16560f2a',10.95,'1425081600',0,'AUD');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_users`
--

DROP TABLE IF EXISTS `coupon_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` bigint(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `used_coupon_code` varchar(50) NOT NULL,
  `status` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_users`
--

LOCK TABLES `coupon_users` WRITE;
/*!40000 ALTER TABLE `coupon_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(150) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `currency_symbol` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `default` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'US Dollar','USD','&#36;',1,0),(2,'Pound Sterling','GBP','&pound;',1,0),(3,'Europe','EUR','&euro;',1,0),(4,'Australian Dollar','AUD','&#36;',1,1),(5,'Singapore','SGD','&#36;',1,0),(6,'Swedish Krona','SEK','kr',1,0),(7,'Danish Krone','DKK','kr',1,0),(8,'Mexican Peso','MXN','$',1,0),(9,'Brazilian Real','BRL','R$',1,0),(10,'Malaysian Ringgit','MYR','RM',1,0),(11,'Philippine Peso','PHP','P',1,0),(12,'Swiss Franc','CHF','&euro;',1,0),(13,'India','INR','&#x20B9;',1,0),(14,'Argentine Peso','ARS','&#36;',1,0),(15,'Canadian Dollar','CAD','&#36;',1,0),(16,'Chinese Yuan','CNY','&#165;',1,0),(17,'Czech Republic Koruna','CZK','K&#269;',1,0),(18,'Hong Kong Dollar','HKD','&#36;',1,0),(19,'Hungarian Forint','HUF','Ft',1,0),(20,'Indonesian Rupiah','IDR','Rp',1,0),(21,'Israeli New Sheqel','ILS','&#8362;',1,0),(22,'Japanese Yen','JPY','&#165;',1,0),(23,'South Korean Won','KRW','&#8361;',1,0),(24,'Norwegian Krone','NOK','kr',1,0),(25,'New Zealand Dollar','NZD','&#36;',1,0),(26,'Polish Zloty','PLN','z&#322;',1,0),(27,'Russian Ruble','RUB','p',1,0),(28,'Thai Baht','THB','&#3647;',1,0),(29,'Turkish Lira','TRY','&#8378;',1,0),(30,'New Taiwan Dollar','TWD','&#36;',1,0),(31,'Vietnamese Dong','VND','&#8363;',1,0),(32,'South African Rand','ZAR','R',1,0);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_converter`
--

DROP TABLE IF EXISTS `currency_converter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_converter` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(10) NOT NULL,
  `currency_value` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_converter`
--

LOCK TABLES `currency_converter` WRITE;
/*!40000 ALTER TABLE `currency_converter` DISABLE KEYS */;
INSERT INTO `currency_converter` VALUES (1,'USD','1'),(2,'GBP','0.594438'),(3,'EUR','0.744682'),(4,'AUD','1.073841'),(5,'SGD','1.24696'),(6,'SEK','6.863501'),(7,'DKK','5.554448'),(8,'MXN','13.18913'),(9,'BRL','2.259438'),(10,'MYR','3.209797'),(11,'PHP','43.75468'),(12,'CHF','0.90628'),(13,'INR','60.97431'),(14,'ARS','8.230843'),(15,'CAD','1.09174'),(16,'CNY','6.178215'),(17,'CZK','20.61438'),(18,'HKD','7.750034'),(19,'HUF','233.3027'),(20,'IDR','11771.4166'),(21,'ILS','3.420409'),(22,'JPY','102.642499'),(23,'KRW','1035.65165'),(24,'NOK','6.270852'),(25,'NZD','1.174948'),(26,'PLN','3.116912'),(27,'RUB','35.7553'),(28,'THB','32.14812'),(29,'TRY','2.135574'),(30,'TWD','30.02386'),(31,'VND','21219.8333'),(32,'ZAR','10.68457');
/*!40000 ALTER TABLE `currency_converter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_settings`
--

DROP TABLE IF EXISTS `email_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(111) NOT NULL,
  `name` varchar(111) NOT NULL,
  `value` varchar(111) NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_settings`
--

LOCK TABLES `email_settings` WRITE;
/*!40000 ALTER TABLE `email_settings` DISABLE KEYS */;
INSERT INTO `email_settings` VALUES (1,'MAILER_TYPE','Mailer Type','1',2011),(2,'SMTP_PORT','SMTP Port','',2011),(3,'SMTP_USER','SMTP Username','',2011),(4,'SMTP_PASS','SMTP Password','',2011),(5,'MAILER_MODE','Mailer Mode','html',2011);
/*!40000 ALTER TABLE `email_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) CHARACTER SET utf8 NOT NULL,
  `title` text CHARACTER SET utf8 NOT NULL,
  `mail_subject` text CHARACTER SET utf8 NOT NULL,
  `email_body_text` text CHARACTER SET utf8 NOT NULL,
  `email_body_html` text CHARACTER SET ucs2 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (40,'refferal_invite','Refferal Invitation','{username} has invited you to {site_name}','Hi user,\n\n{username} wants you to save money with {site_name}\n\n{dynamic_content}\n\n{click_here}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi User,</td>\n</tr>\n<tr>\n<td>\n<p>{username} wants you to save money with {site_name}</p>\n<p>{dynamic_content}</p>\n<p>{click_here} To Started Now!</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(44,'tc_book_to_admin','Admin notification for  Travel cretid booking',' {traveler_name} sent the reservation request by using his Travel Cretids','Hello Admin,\r\n\r\n{traveler_name}sent the reservation request to book the {list_title} place on {book_date} at {book_time} by using his Travel Credits.\r\n\r\nDetails as follows,\r\n\r\nTraveler Name : {traveler_name}\r\nContact Email Id : {traveler_email_id}\r\nPlace Name : {list_title}\r\nCheck in : {checkin}\r\nCheck out : {checkout}\r\nMarket Price : {market_price}\r\nPayed Amount : {payed_amount}\r\nTravel Credits : {travel_credits} \r\nHost Name : {host_name}\r\nHost Email Id : {host_email_id} \r\n\r\n--\r\nThanks and Regards,\r\n\r\n{site_name} Team','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{traveler_name}sent the reservation request to book the {list_title} place on {book_date} at {book_time} by using his Travel Credits.</p>\r\n<p>Details as follows,</p>\r\n<p>Traveler Name : {traveler_name}</p>\r\n<p>Contact Email Id : {traveler_email_id}</p>\r\n<p>Place Name : {list_title}</p>\r\n<p>Check in : {checkin}</p>\r\n<p>Check out : {checkout}</p>\r\n<p>Market Price : {market_price}</p>\r\n<p>Payed Amount : {payed_amount}</p>\r\n<p>Travel Credits : {travel_credits}</p>\r\n<p>Host Name : {host_name}</p>\r\n<p>Host Email Id : {host_email_id}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0px;\">{site_name} Team</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(45,'tc_book_to_host','Host notification for  Travel cretid booking',' {traveler_name} sent the reservation request by using his Travel Cretids','Hello {username},\r\n\r\n{traveler_name}sent the reservation request to book your {list_title} place on {book_date} at {book_time} by using his Travel Credits.\r\n\r\nWe will contact you with the appropriate payment.\r\n\r\nDetails as follows,\r\n\r\nTraveler Name : {traveler_name}\r\nContact Email Id : {traveler_email_id}\r\nPlace Name : {list_title}\r\nCheck in : {checkin}\r\nCheck out : {checkout}\r\nPrice : {market_price}\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {username} ,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{traveler_name}sent the reservation request to book your {list_title} place on {book_date} at {book_time} by using his Travel Credits.</p>\r\n<p>Details as follows,</p>\r\n<p>Traveler Name : {traveler_name}</p>\r\n<p>Contact Email Id : {traveler_email_id}</p>\r\n<p>Place Name : {list_title}</p>\r\n<p>Check in : {checkin}</p>\r\n<p>Check out : {checkout}</p>\r\n<p>Price : {market_price}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0 0 10px 0;\">Admin,</p>\r\n<p style=\"margin: 0px;\">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(46,'admin_mass_email','Admin mass email','{subject}','Hi User,\r\n\r\n{dynamic_content}\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi User,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{dynamic_content}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\r\n<p style=\"margin: 0px;\">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(47,'user_reference','Reference','Write {username} a reference on {site_name}','Hi,\n\n{username} is asking you to provide a reference that they can display publicly on their {site_name} profile. {site_name} is a community marketplace for accommodations that is built on trust and reputation. A reference from you would really help build their reputation with the community.\nA reference on {site_name} can help {username} find a cool place to stay or host interesting travelers. \n\n{click_here} to have a Reference for {username}.\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi,</td>\n</tr>\n<tr>\n<td>\n<p>{username} is asking you to provide a reference that they can display publicly on their {site_name} profile. {site_name} is a community marketplace for accommodations that is built on trust and reputation. A reference from you would really help build their reputation with the community. A reference on {site_name} can help {username} find a cool place to stay or host interesting travelers.</p>\n<p>{click_here} to have a Reference for {username}.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(101,'reference_receive','Reference Receive','You have received a new reference on {site_name}!','Hi {username},\r\n\r\n{other_username} has written a reference for you. Before it goes to your public profile, you can review it and either accept or ignore it. {click_here} to view the reference. \r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {username},</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{other_username} has written a reference for you. Before it goes to your public profile, you can review it and either accept or ignore it. {click_here} to view the reference.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>Admin</p>\r\n<p>{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(48,'host_reservation_notification','Reservation notification for host','The Reservation was requested by  {traveler_name}','Hello {username},\n\n{traveler_name} booked the {list_title} place on {book_date} at {book_time}.\n\nDetails as follows,\n\nTraveler Name : {traveler_name}\nContact Email Id : {traveler_email_id}\nPlace Name : {list_title}\nCheck in : {checkin}\nCheck out : {checkout}\nPrice : {market_price}\n\nPlease give the confirmation by clicking the below action.\n{action_url}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Hi {username} ,</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{traveler_name} booked the {list_title} place on {book_date} at {book_time}.</p>\r\n<br />\r\n<p>Details as follows,</p>\r\n<p>Traveler Name : {traveler_name}</p>\r\n<p>Contact Email Id : {traveler_email_id}</p>\r\n<p>Place Name : {list_title}</p>\r\n<p>Check in : {checkin}</p>\r\n<p>Check out : {checkout}</p>\r\n<p>Price : {market_price}</p>\r\n<br />\r\n<p>Please give the confirmation by clicking the below action.</p>\r\n<p>{action_url}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0px;\">{site_name} Team</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(49,'traveller_reservation_notification','Reservation notification for  traveller','Your Reservation Request Is Succesfully Sent','Hello {traveler_name},\r\n\r\nYour reservation request is successfully sent to the appropriate host.\r\n\r\nPlease wait for his confirmation.\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {traveler_name} ,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Your reservation request is successfully sent to the appropriate host.</p>\r\n<p>Please wait for his confirmation.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0 0 10px 0;\">Admin,</p>\r\n<p style=\"margin: 0px;\">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(50,'admin_reservation_notification','Reservation notification for  administrator','{traveler_name} sent the reservation request to {host_name}','Hello Admin,\n\n{traveler_name} sent the reservation request for {list_title} place on {book_date} at {book_time}.\n\nDetails as follows,\n\nTraveler Name : {traveler_name}\nContact Email Id : {traveler_email_id}\nPlace Name : {list_title}\nCheck in : {checkin}\nCheck out : {checkout}\nPrice : {market_price}\nHost Name : {host_name}\nHost Email Id : {host_email_id} \n\n--\nThanks and Regards,\n\n{site_name} Team','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>{traveler_name} sent the reservation request for  {list_title} place on {book_date} at {book_time}.</p>\n<p>Details as follows,</p>\n<p>Traveler Name : {traveler_name}</p>\n<p>Contact Email Id : {traveler_email_id}</p>\n<p>Place Name : {list_title}</p>\n<p>Check in : {checkin}</p>\n<p>Check out : {checkout}</p>\n<p>Price : {market_price}</p>\n<p>Host Name : {host_name}</p>\n<p>Host Email Id : {host_email_id}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0px;\">{site_name} Team</p>\n</td>\n</tr>\n</tbody>\n</table>'),(51,'traveler_reservation_granted','Traveler : After Reservation granted','Congrats! Your reservation request is granted.','Hi {traveler_name},\n\nCongratulation, Your reservation request is granted by {host_name} for {list_name}.\n\nBelow we mentioned his contact details,\n\nFirst Name : {Fname}\nLast Name : {Lname}\nLive In : {livein}\nPhone No : {phnum}\n\nExact Address is,\n\nStreet Address : {street_address}\nOptional Address : {optional_address}\nCity : {city}\nState : {state}\nCountry : {country}\nZip Code : {zipcode}\n\nHost Message : {comment} \n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {traveler_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>Congratulation, Your reservation request is granted by {host_name} for {list_name}.</p>\n<p>Below we mentioned his contact details,</p>\n<p>First Name : {Fname}</p>\n<p>Last Name : {Lname}</p>\n<p>Live In : {livein}</p>\n<p>Phone No : {phnum}</p>\n<p>Exact Address is,</p>\n<p>Street Address : {street_address},</p>\n<p>Optional Address :{optional_address},</p>\n<p>City : {city},</p>\n<p>State : {state},</p>\n<p>Country : {country},</p>\n<p>Zip code : {zipcode}</p>\n<p>Host Message : {comment}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 0 10px 0;\">Admin,</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(52,'traveler_reservation_declined','Traveler : After reservation declined','Sorry! Your reservation request is denied','Hi {traveler_name},\n\nSorry, Your reservation request is dined by {host_name} for {list_title}.\n\nHost Message : {comment} \n\nSoon, We will contact you with the appropriate payment.\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {traveler_name} ,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Sorry, Your reservation request is dined by {host_name} for {list_title}.</p>\r\n<p>Host Message : {comment}</p>\r\n<p>Soon, We will contact you with the appropriate payment.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0 0 10px 0;\">Admin,</p>\r\n<p style=\"margin: 0px;\">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(60,'traveler_reservation_cancel','Traveler : After reservation canceled','{traveler_name} canceled your reservation list','Hi {host_name},\n\nSorry, Your ({status}) reservation list is canceled by {traveler_name} for {list_title}.\n\n{user_type} Message : {comment} \n\nSure we will contact you soon, if there is any payment balance.\n\nAnd also, if you have any other queries, please feel free to contact us.\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {host_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>Sorry, Your ({status}) reservation list is canceled by {traveler_name} for {list_title}.</p>\n<p>{user_type} Message : {comment}</p>\n<p>Sure we will contact you soon, if there is any payment balance.</p>\n<p>And also, if you have any other queries, please feel free to contact us.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 0 10px 0;\">Admin,</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(53,'traveler_reservation_expire','Traveler : Reservation Expire','Sorry! Your reservation request is expired','Hi {traveler_name},\n\nYour reservation request is expired.\n\nHost Name : {host_name}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {traveler_name},</td>\n</tr>\n<tr>\n<td>\n<br />\nYour reservation request is expired.<br /><br />\nHost Name : {host_name}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),(54,'host_reservation_expire','Host : Reservation Expire','Reservation request expired for your list','Hi {host_name},\n\nReservation request expired for {list_title} booked by {traveler_name}.\n\nGuest Name : {traveler_name}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {host_name},</td>\n</tr>\n<tr>\n<td>\n<br />\nReservation request expired for {list_title} booked by {traveler_name}.<br /><br />\nGuest Name : {traveler_name}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),(55,'admin_reservation_expire','Admin : Reservation Expire','Reservation request is expired','Hi Admin,\n\n{traveler_name} reservation request is expired for {list_title}.\n\nGuest Name : {traveler_name}\nGuest Email : {traveler_email}\nHost Name : {host_name}\nHost Email : {host_email}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n\n','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<br />\n{traveler_name} reservation request is expired for {list_title}.<br /><br />\nGuest Name : {traveler_name}.<br /><br />\nGuest Email : {traveler_email}.<br /><br />\nHost Name : {host_name}.<br /><br />\nHost Email : {host_email}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),(56,'host_reservation_granted','Host : After Reservation Granted','You have accepted the {traveler_name} reservation request','Hi {host_name},\r\n\r\nYou have accepted the {traveler_name} reservation request for {list_title}.\r\n\r\nBelow we mentioned his contact details,\r\n\r\nFirst Name : {Fname}\r\nLast Name : {Lname}\r\nLive In : {livein}\r\nPhone No : {phnum}\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_name} ,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>You have accepted the {traveler_name} reservation request for {list_title}.</p>\r\n<p>Below we mentioned his contact details,</p>\r\n<p>First Name : {Fname}</p>\r\n<p>Last Name : {Lname}</p>\r\n<p>Live In : {livein}</p>\r\n<p>Phone No : {phnum}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0 0 10px 0;\">Admin,</p>\r\n<p style=\"margin: 0px;\">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(57,'admin_reservation_granted','Admin : After Reservation granted','{host_name} accepted the {traveler_name} reservation request','Hi Admin,\r\n\r\n{host_name} accepted the {traveler_name} reservation request for {list_title}.\r\n\r\n--\r\nThanks and Regards,\r\n\r\n{site_name} Team','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{host_name} accepted the {traveler_name} reservation request for {list_title}.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0px;\">{site_name} Team</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(58,'host_reservation_declined','Host : After Reservation Declined','You have declined the {traveler_name} reservation request','Hi {host_name},\r\n\r\nYou have declined the {traveler_name} reservation request for {list_title}.\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_name} ,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>You have declined the {traveler_name} reservation request} for {list_title}.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0 0 10px 0;\">Admin,</p>\r\n<p style=\"margin: 0px;\">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(59,'admin_reservation_declined','Admin : After Reservation Declined','{host_name} declined the {traveler_name} reservation request','Hi Admin,\r\n\r\n{host_name} declined the {traveler_name} reservation request for {list_title}.\r\n\r\n--\r\nThanks and Regards,\r\n\r\n{site_name} Team','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>{host_name} declined the {traveler_name} reservation request for {list_title}.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0px;\">{site_name} Team</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(61,'admin_reservation_cancel','Admin : After reservation canceled','{traveler_name} canceled the {host_name} reservation list','Hi Admin,\n\n{traveler_name} canceled the {host_name} reservation list ({status}) for {list_title}.\n\n{penalty}\n\n--\nThanks and Regards,\n\n{site_name} Team','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>{traveler_name} canceled the {host_name}&nbsp; reservation list ({status}) for {list_title}.\n<br/><br/>{penalty}\n</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0px;\">{site_name} Team</p>\n</td>\n</tr>\n</tbody>\n</table>'),(62,'host_reservation_cancel','Host : After reservation canceled','You have canceled the {host_name} reservation list','Hi {traveler_name},\n\nYou have canceled the {host_name} reservation list ({status}) for {list_title}.\n\n{cancellation_limit}\n\n{penalty}\n\nIf you have any other queries, please feel free to contact us. \n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {traveler_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>You have canceled the {host_name}&nbsp; reservation list ({status}) for {list_title}.<br /><br />{cancellation_limit}<br /><br />{penalty}</p>\n<p>If you have any other queries, please feel free to contact us.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin,</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(63,'forgot_password','Forgot Password','Forgot Password','Dear Member,\n\nBelow we have mentioned your account details.\n\nHere we go,\n\nEmail_id : {email}\n\nPassword : {password}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Dear Member,</td>\n</tr>\n<tr>\n<td>\n<p>Below we have mentioned your account details.</p>\n<p>Here we go,</p>\n<p>Email_id : {email}</p>\n<p>Password : {password}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(91,'checkin_host','Host: Check In','Guest CheckIn','Hi {host_name},\n\n{traveler_name} is checkin to {list_title}.\n\nGuest Name : {guest_name}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {host_name},</td>\n</tr>\n<tr>\n<td>\n<br />\n{traveler_name} is checkin to&nbsp;&nbsp;{list_title} &nbsp;.<br /><br />\nGuest Name : {traveler_name}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),(64,'users_signin','Users Signin','Welcome to  {site_name}','Dear Member,\n\nWelcome to the {site_name}.\n\nBelow are your account details.\n\nEmail_id : {email}\n\nPassword : {password}\n\n--\nThanks and Regards,\n\nStayRove.com\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Dear Member,</td>\n</tr>\n<tr>\n<td>\n<p>Pleasure to meet you and welcome to the {site_name}.</p>\n<p>Below we have mentioned your account details.</p>\n<p>Here we go,</p>\n<p>Email_id : {email}</p>\n<p>Password : {password}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(65,'reset_password','Reset Password','Reset Password','Dear Member,\n\nYour new password is below:\n\n\nPassword : {password}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Dear Member,</td>\n</tr>\n<tr>\n<td>\n<p>Below we have mentioned your new account details.</p>\n<p>Here we go,</p>\n<p>Password : {password}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(66,'admin_payment','Admin payment to Host','Admin payed your fees for {list_title}','Hello {username},\n\nWe have payed your fees for {list_title}.\n\nDetails as follows,\n\nPlace Name : {list_title}\nCheck in : {checkin}\nCheck out : {checkout}\nPrice : {payed_price}\nPayment Through : {payment_type}\nPay Id: {pay_id}\nPayed Date : {payed_date}\n\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<p>Hi {username} ,</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>We have payed your fees for {list_title}.</p>\n<br />\n<p>Details as follows,</p>\n<p>Place Name : {list_title}</p>\n<p>Check in : {checkin}</p>\n<p>Check out : {checkout}</p>\n<p>Price : {payed_price}</p>\n<p>Payment Through : {payment_type}</p>\n<p>Pay Id : {pay_id}</p>\n<p>Payed Date : {payed_date}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0px;\">{site_name} Team</p>\n</td>\n</tr>\n</tbody>\n</table>'),(67,'contact_form','Contact Form','Message received from contact form','Hi Admin,\n\nA message received from contact us page on {date} at {time}.\n\nDetails as follows,\n\nName : {name}\n\nEmail : {email}\n\nMessage : {message}\n\n--\nThanks and Regards,\n\n{site_name} Team','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>A message received from contact us page on {date} at {time}.</p>\n<p>Details as follows,</p>\n<p>Name : {name}</p>\n<p>Email : {email}</p>\n<p>Message : {message}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0px;\">{site_name} Team</p>\n</td>\n</tr>\n</tbody>\n</table>'),(68,'invite_friend','Invite My Friends','{username} invite You.','Hi Friend\'s,\n\n{username} wants you to invite {site_name}\n\n{dynamic_content}\n\n{click_here}\n\n--\nRegards,\n{username}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Friends,</td>\n</tr>\n<tr>\n<td>\n<p>{username} wants you to invite</p>\n<p>{site_name}</p>\n<p>{dynamic_content}</p>\n<p>&nbsp;{click_here}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Regards,</p>\n<p style=\"margin: 0px;\">{username}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(69,'email_verification','Email Verification Link','{site_name} Email Verification Link','Hi {user_name},\n\nPlease Click the below link for your {site_name} email verification.\n\n{click_here}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {user_name},</td>\n</tr>\n<tr>\n<td>\n<p>Please Click the below link for your {site_name} email verification.</p>\n<p>&nbsp;{click_here}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(70,'referral_credit','Referral Credit','You are earn {amount} from Referrals','Hi {username},\n\nYou are earn the {amount} by {friend_name}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {user_name},</td>\n</tr>\n<tr>\n<td><p>\nYou are earn the {amount} by {friend_name}</p>\n</td>\n</tr><tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(72,'User_join_to_Referal_mail','User join to Referal mail','Your Friend Signup','Dear {refer_name},\n\nYour friend {friend_name} is now join in {site_name}.Now, $100 is credit in your Travel Credit Possible account.\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Dear {refer_name},</td>\n</tr>\n<tr>\n<td><br />Your friend {friend_name} is now join in {site_name}.Now, $100 is credit in your Travel Credit Possible account.<br /><br /></td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(73,'contact_request_to_host','Contact Request to Host','Contact Request','Hi {host_username},\n		\nPlease click on the following link to contact the user : {link}	\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n		\nGuests : {guest}\n		\nGuest Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {host_username},</td>\n</tr>\n<tr>\n<td>\nPlease click on the following link to contact the user : {link}<br /><br />\n			\nList : {title}<br /><br />\n		\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n		\nGuests : {guest}<br /><br />\n		\nGuest Message  : {message}<br /><br /></td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(74,'contact_request_to_guest','Contact Request to Guest','Contact Request','Hi {traveller_username},\n		\nYou have sent contact request to {host_username}.\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n		\nGuests : {guest}\n		\nYour Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {traveller_username},</td>\n</tr>\n<tr>\n<td>\nYou have sent contact request to {host_username}.<br /><br />\n			\nList : {title}<br /><br />\n		\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n		\nGuests : {guest}<br /><br />\n		\nYour Message  : {message}<br /><br /></td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(75,'request_granted_to_guest','Contact Request Granted to Guest','Contact Request Granted','Hi {traveller_username},\n\nYour contact request is granted by {host_username}.\n		\nHost Email : {host_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n			\nHost Message  : {message}\n\nURL for Booking  : {link}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {traveller_username},</td>\n</tr>\n<tr>\n<td><br /><br />\nYour contact request is granted by {host_username}.\n<br /><br />\n\nHost Email : {host_email}<br /><br /> \n\nList : {title}<br /><br /> \n\nCheckin Date : {checkin}<br /><br /> \n\nCheckout Date : {checkout}<br /><br /> \n\nPrice : {price}<br /><br />\n\nHost Message : {message}<br /><br /> \n\nURL for Booking : {link}<br /><br /></td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(76,'request_granted_to_host','Contact Request Granted to Host','Contact Request Granted','Hi {host_username},\n\nYou have accept the contact request for {traveller_username}.\n		\nGuest Email : {guest_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n\nPrice : {price}\n				\nYour Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {host_username},</td>\n</tr>\n<tr>\n<td><br /><br />\nYou have accept the contact request for {traveller_username}. <br /><br />\n\nGuest Email : {guest_email}<br /><br />	\n		\nList : {title}<br /><br />\n		\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n\nPrice : {price}<br /><br />\n	\nYour Message  : {message}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(77,'contact_request_to_admin','Contact Request to Admin','Contact Request','Hi Admin,\n		\n{traveller_username} sent contact request to {host_username}.\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n		\nGuests : {guest}\n\nPrice : {price}\n		\nGuest Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td><br />\n{traveller_username} sent contact request to {host_username}. <br /><br />		\nList : {title}<br /><br />	\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n	\nPrice : {price}<br /><br />\n		\nGuest Message  : {message}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(78,'request_granted_to_admin','Contact Request Granted to Admin','Contact Request Granted','Hi Admin,\n\n{host_username} accept the contact request for {traveller_username}.\n		\nGuest Email : {guest_email}\n\nHost Email : {host_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n\nPrice : {price}\n				\nHost Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td><br />\n{host_username} accept the contact request for {traveller_username}.<br /><br />\n\nGuest Email : {guest_email}<br /><br />	\n\nHost Email : {host_email}<br /><br />	\n\nList : {title}<br /><br />	\n\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n\nPrice : {price}<br /><br />	\n			\nHost Message  : {message}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(79,'special_request_granted_to_guest','Contact Request Granted with Special Offer to Guest','Contact Request Granted with Special Offer','Hi {traveller_username},\n\n{host_username} accept your contact request with special offer.\n		\nHost Email : {host_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n\nPrice : {price}\n				\nMessage  : {message}\n\nURL for Booking  : {link}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {traveller_username},</td>\n</tr>\n<tr>\n<td><br />\n\n{host_username} accept your contact request with special offer.<br /><br />\n\nHost Email : {host_email}<br /><br />	\n\nList : {title}<br /><br />	\n\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n\nPrice : {price}<br /><br />\n			\nMessage  : {message}<br /><br />\n\nURL for Booking  : {link}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(80,'special_request_granted_to_host','Contact Request Granted with Special Offer to Host','Contact Request Granted with Special Offer','Hi {host_username},\n\nYou have accept the {traveller_username} contact request with special offer.\n		\nGuest Email : {guest_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n\nPrice : {price}\n			\nYour Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {host_username},</td>\n</tr>\n<tr>\n<td><br />\n\nYou have accept the {traveller_username} contact request with special offer.<br /><br />\n\nGuest Email : {guest_email}<br /><br />\n\nList : {title}<br /><br />	\n\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n\nPrice : {price}<br /><br />\n			\nYour Message  : {message}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(81,'special_request_granted_to_admin','Contact Request Granted with Special Offer to Admin','Contact Request Granted with Special Offer','Hi Admin,\n\n{host_username} have accept the {traveller_name} contact request with special offer.\n		\nGuest Email : {guest_email}\n\nHost Email : {host_email}\n\nList : {title}\n		\nCheckin Date : {checkin}\n		\nCheckout Date : {checkout}\n\nPrice : {price}\n			\nHost Message  : {message}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td><br />\n\n{host_username} have accept the {traveller_username} contact request with special offer.<br /><br />\n\nGuest Email : {guest_email}<br /><br />\n\nHost Email : {host_email}<br /><br />\n\nList : {title}<br /><br />	\n\nCheckin Date : {checkin}<br /><br />\n		\nCheckout Date : {checkout}<br /><br />\n\nPrice : {price}<br /><br />\n			\nHost Message  : {message}<br /><br />\n\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(82,'request_cancel_to_guest','Contact Request Cancelled to Guest','Sorry! your contact request is cancelled','Hi {traveller_username},\n\nSorry, Your contact request is denied by {host_username} for {title}.\n\nHost Message : {message}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {traveller_username} ,</td>\n</tr>\n<tr>\n<td>\n<p>Sorry, Your contact request is denied by {host_username} for {title}.</p><br /><br />\nHost Message : {message}<br /><br />\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 0 10px 0;\">Admin,</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(83,'request_cancel_to_host','Contact Request Cancelled to Host','You have cancelled the contact request','Hi {host_username},\n\nYou have cancelled the {traveller_username} contact request for {title}.\n\nYour message : {message}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {host_username} ,</td>\n</tr>\n<tr>\n<td>\n<p>You have cancelled the {traveller_username} contact request for {title}.</p><br /><br />\nYour message : {message}<br /><br />\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0 0 10px 0;\">Admin,</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(85,'checkout_admin','Admin: Check Out','Traveller Checkout','Hi Admin,\n\n{traveler_name} is checkouted from {list_title}.\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>{traveler_name} is checkouted form {list_title}.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div> </div>\n</td>\n</tr>\n</tbody>\n</table>'),(84,'request_cancel_to_admin','Contact Request Cancelled to Admin','{host_username} cancelled the {traveller_username} contact request','Hi Admin,\n\n{host_username} cancelled the {traveller_username} contact request for {title}.\n\nHost message : {message}\n\n--\nThanks and Regards,\n\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>{host_username} cancelled the {traveller_username} contact request for {title}.</p>\n<br /><br />\nHost message : {message}.\n</td>\n</tr>\n<tr>\n<td>\n<p style=\"margin: 0 10px 0 0;\">--</p>\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\n<p style=\"margin: 0px;\">{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(86,'checkout_host','Host: Check Out','Traveller Checkout','Hi {host_name},\n\n{traveler_name} is checkouted from {list_title} .\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {host_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>{traveler_name} is checkouted from&nbsp;&nbsp;{list_title} &nbsp;.</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin,</p>\n<p>{site_name}</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),(87,'checkout_traveler','Traveler: Check Out','Traveller Checkout','Hi {traveler_name},\n\nThank you,You are checkouted from {list_title}.\n\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {traveler_name} ,</td>\n</tr>\n<tr>\n<td>\n<p>Thank you,You are sucessfully checkouted from {list_title}.</p>\n<p>&nbsp;</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin,</p>\n<p>{site_name}</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),(88,'contact_discuss_more_to_guest','Contact Request - Discuss more to Guest','Contact Request - Discuss more','Hi {traveller_username},\r\n\r\n{host_username} wants to discuss more with you.\r\n\r\nHost Email : {host_email}\r\n\r\nList : {title}\r\n		\r\nCheckin Date : {checkin}\r\n		\r\nCheckout Date : {checkout}\r\n				\r\nMessage  : {message}\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {traveller_username},</td>\r\n</tr>\r\n<tr>\r\n<td><br />\r\n\r\n{host_username} wants to discuss more with you.<br /><br />\r\n\r\nHost Email : {host_email}<br /><br />	\r\n\r\nList : {title}<br /><br />	\r\n\r\nCheckin Date : {checkin}<br /><br />\r\n		\r\nCheckout Date : {checkout}<br /><br />\r\n			\r\nMessage  : {message}<br /><br />\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\r\n<p style=\"margin: 0px;\">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(89,'contact_discuss_more_to_host','Contact Request - Discuss more to Host','Contact Request - Discuss more','Hi {host_username},\r\n\r\nYou wants to discuss more with {traveller_username}.\r\n\r\nGuest Email : {guest_email}\r\n\r\nList : {title}\r\n		\r\nCheckin Date : {checkin}\r\n		\r\nCheckout Date : {checkout}\r\n				\r\nYour Message  : {message}\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_username},</td>\r\n</tr>\r\n<tr>\r\n<td><br />\r\n\r\nYou wants to discuss more with {traveller_username}.<br /><br />\r\n\r\nGuest Email : {guest_email}<br /><br />	\r\n\r\nList : {title}<br /><br />	\r\n\r\nCheckin Date : {checkin}<br /><br />\r\n		\r\nCheckout Date : {checkout}<br /><br />\r\n			\r\nYour Message  : {message}<br /><br />\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\r\n<p style=\"margin: 0px;\">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(90,'contact_discuss_more_to_admin','Contact Request - Discuss more to Admin','Contact Request - Discuss more','Hi Admin,\r\n\r\n{host_username} wants to discuss more with {traveller_username}.\r\n\r\nGuest Email : {guest_email}\r\n\r\nHost Email : {host_email}\r\n\r\nList : {title}\r\n		\r\nCheckin Date : {checkin}\r\n		\r\nCheckout Date : {checkout}\r\n				\r\nHost Message  : {message}\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}','<table style=\"width: 100%;\" cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td><br />\r\n\r\n{host_username} wants to discuss more with {traveller_username}.<br /><br />\r\n\r\nGuest Email : {guest_email}<br /><br />\r\n\r\nHost Email : {host_email}<br /><br />\r\n\r\nList : {title}<br /><br />\r\n\r\nCheckin Date : {checkin}<br /><br />\r\n		\r\nCheckout Date : {checkout}<br /><br />\r\n			\r\nHost Message  : {message}<br /><br />\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p style=\"margin: 0 10px 0 0;\">--</p>\r\n<p style=\"margin: 0 0 10px 0;\">Thanks and Regards,</p>\r\n<p style=\"margin: 0 10px 0 0;\">Admin</p>\r\n<p style=\"margin: 0px;\">{site_name}</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(92,'checkin_admin','Admin: CheckIn','Guest CheckIn','Hi Admin,\n\n{traveler_name} is checkin to {list_title}.\n\nGuest Name : {traveler_name}\nGuest Email : {traveler_email}\nHost Name : {host_name}\nHost Email : {host_email}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<br />\n{traveler_name} is checkin to {list_title}.<br /><br />\nGuest Name : {traveler_name}.<br /><br />\nGuest Email : {traveler_email}.<br /><br />\nHost Name : {host_name}.<br /><br />\nHost Email : {host_email}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),(93,'checkin_traveller','Traveler: Check In','Guest CheckIn','Hi {traveler_name},\n\nThank you,You are checkin to {list_title}.\n\nHost Name : {host_name}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {traveler_name},</td>\n</tr>\n<tr>\n<td>\n<br />\nThank you,You are sucessfully checkin to {list_title}.<br /><br />\nHost Name : {host_name}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),(94,'refund_admin','Admin: Refund','Refund from Admin','Hi Admin,\n\nYou have refunded the {refund_amt} amount to {name} {account} account.\n\nGuest Name : {traveler_name}\nGuest Email : {traveler_email}\nHost Name : {host_name}\nHost Email : {host_email}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\nRefunded Amount : {refund_amt}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<br />\nYou have refunded the {refund_amt} amount to {name} {account} account.<br /><br />\nGuest Name : {traveler_name}.<br /><br />\nGuest Email : {traveler_email}.<br /><br />\nHost Name : {host_name}.<br /><br />\nHost Email : {host_email}.<br /><br />\nList Name : {list_title}.<br /><br />\nPrice : {currency}{price}.<br /><br />\nCheckin Date : {checkin}.<br /><br />\nCheckout Date : {checkout}.<br /><br />\nRefunded Amount : {refund_amt}\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>{site_name} Team</p>\n<div>&nbsp;</div>\n</td>\n</tr>\n</tbody>\n</table>'),(95,'refund_host','Host: Refund','Refund from Admin','Hi {host_name},\r\n\r\nAdmin refunded the {refund_amt} amount to your {account} account.\r\n\r\nGuest Name : {traveler_name}\r\nList Name : {list_title}\r\nPrice : {currency}{price}\r\nCheckin Date : {checkin}\r\nCheckout Date : {checkout}\r\nRefunded Amount : {refund_amt}\r\n\r\n--\r\nThanks and Regards,\r\n\r\nAdmin\r\n{site_name}\r\n','<table cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_name},</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<br />\r\nAdmin refunded the {refund_amt} amount to your {account} account..<br /><br />\r\nGuest Name : {traveler_name}.<br /><br />\r\nList Name : {list_title}.<br /><br />\r\nPrice : {currency}{price}.<br /><br />\r\nCheckin Date : {checkin}.<br /><br />\r\nCheckout Date : {checkout}.<br /><br />\r\nRefunded Amount : {refund_amt}\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>{site_name} Team</p>\r\n<div>&nbsp;</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(96,'refund_guest','Traveler: Refund','Refund from Admin','Hi {traveler_name},\n\nAdmin refunded the {refund_amt} amount to your {account} account.\n\nHost Name : {host_name}\nList Name : {list_title}\nPrice : {currency}{price}\nCheckin Date : {checkin}\nCheckout Date : {checkout}\nRefunded Amount : {refund_amt}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n','<table cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {traveler_name},</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<br />\r\nAdmin refunded the {refund_amt} amount to your {account} account.<br /><br />\r\nHost Name : {host_name}.<br /><br />\r\nList Name : {list_title}.<br /><br />\r\nPrice : {currency}{price}.<br /><br />\r\nCheckin Date : {checkin}.<br /><br />\r\nCheckout Date : {checkout}.<br /><br />\r\nRefunded Amount : {refund_amt}\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>{site_name} Team</p>\r\n<div>&nbsp;</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(97,'list_create_host','List creation to Host','You have created the new list','Hi {host_name},\r\n\r\nYou have created the new list.\r\n\r\nList name : {list_title}\r\n\r\nLink : {link}\r\n\r\nPrice : {price}\r\n\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_name},</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<br />\r\nYou have created the new list.<br /><br />\r\nList Name : {list_title}.<br /><br />\r\nLink : {link}.<br /><br />\r\nPrice : {price}.\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>{site_name} Team</p>\r\n<div>&nbsp;</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(98,'list_create_admin','List creation to Admin','{host_name} have created the new list','Hi Admin,\r\n\r\n{host_name} have created the new list.\r\n\r\nHost name : {host_name}\r\n\r\nList name : {list_title}\r\n\r\nLink : {link}\r\n\r\nPrice : {price}\r\n\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<br />\r\n{host_name} have created the new list.<br /><br />\r\nHost name : {host_name}.<br /><br />\r\nList name : {list_title}.<br /><br />\r\nLink : {link}.<br /><br />\r\nPrice : {price}.\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>{site_name} Team</p>\r\n<div>&nbsp;</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(99,'list_delete_host','List deletion to Host','You have deleted the list','Hi {host_name},\r\n\r\nYou have deleted the list.\r\n\r\nList name : {list_title}\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi {host_name},</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<br />\r\nYou have deleted the list.<br /><br />\r\nList Name : {list_title}.\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>{site_name} Team</p>\r\n<div>&nbsp;</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(100,'list_delete_admin','List deletion to Admin','{host_name} have deleted the list','Hi Admin,\r\n\r\n{host_name} have deleted the list.\r\n\r\nHost name : {host_name}\r\n\r\nList name : {list_title}\r\n\r\n\r\n--\r\nThanks and Regards,\r\nAdmin\r\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Hi Admin,</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<br />\r\n{host_name} have deleted the list.<br /><br />\r\nHost name : {host_name}.<br /><br />\r\nList name : {list_title}.\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>--</p>\r\n<p>Thanks and Regards,</p>\r\n<p>{site_name} Team</p>\r\n<div>&nbsp;</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(102,'payment_issue_to_admin','Payment issue mail to Admin','Payment misconfigured','Hi Admin,\n\n{payment_type} API credentials are misconfigured.\n\n{username} tried to make the payment.\n\nEmail ID : {email_id}\n\n--\nThanks and Regards,\nAdmin\n{site_name}','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>{payment_type} API credentials are misconfigured.</p>\n<p>{username} tried to make the payment.</p>\n<p>Email ID : {email_id}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(104,'refund_host_commission','Host: Accept Commission Refund','Refunding the Host Accept Commission from Admin','Hi {host_name},\n\nAdmin refunded the {refund_amt} amount to your {account} account.\n\nList Name : {list_title}\nRefunded Amount : {refund_amt}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi {host_name},</td>\n</tr>\n<tr>\n<td>\n<p>Admin refunded the {refund_amt} amount to your {account} account.</p>\n<p>List Name : {list_title}</p>\n<p>Refunded Amount : {refund_amt}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>'),(105,'refund_host_commission_admin','Admin: Accept Commission Refund','You have Refunding the Host Accept Commission','Hi Admin,\n\nYou have refunded the {refund_amt} amount to your {account} account.\n\nList Name : {list_title}\nHost Name : {host_name}\nRefunded Amount : {refund_amt}\n\n--\nThanks and Regards,\n\nAdmin\n{site_name}\n','<table cellspacing=\"10\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Hi Admin,</td>\n</tr>\n<tr>\n<td>\n<p>You have refunded the {refund_amt} amount to your {account} account.</p>\n<p>List Name : {list_title}</p>\n<p>Host Name : {host_name}</p>\n<p>Refunded Amount : {refund_amt}</p>\n</td>\n</tr>\n<tr>\n<td>\n<p>--</p>\n<p>Thanks and Regards,</p>\n<p>Admin</p>\n<p>{site_name}</p>\n</td>\n</tr>\n</tbody>\n</table>');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(128) CHARACTER SET utf8 NOT NULL,
  `faq_content` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created` int(31) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'Need help on this page?','<p>Every one must be know how to work on this product. It is helpful to shows how to work in this product dropinn.</p>',1,0),(2,'How do i sign up?','<p>It is helpful to shows how to sign up to access this product.</p>',1,0);
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(125) NOT NULL,
  `description` text NOT NULL,
  `page_refer` varchar(150) NOT NULL,
  `created` varchar(150) NOT NULL,
  `modified_date` varchar(150) NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
INSERT INTO `help` VALUES (1,'Need help on this page?','<p>Every one must be know how to work on this product. It is helpful to shows how to work in this product dropinn.</p>','home','','1375233569',0),(2,'How do i sign up?',' It is helpful to shows how to sign up to access this product.','home','','',0),(3,'How can i create an account?',' It is helpful to shows how to create an account to access this product.','dashboard','1375203327','',0),(5,'How can i view my reserved rooms?',' It is helpful to shows how to view my reserved rooms.','dashboard','1375204538','',0),(6,'How can i edit my reserved rooms? 	','It is helpful to shows how to edit my reserved rooms.','hosting','1375204557','',0),(7,'How to set my payout method to pay?','To click a payout method in dashboard and then select a payout method to pay.','account','1375204597','',0),(8,'How to view my transaction history?','&lt;p&gt;How to view my transaction history?&lt;/p&gt;','payout','1375205019','1375211187',0),(9,'How can i add new rooms?','&lt;p&gt;Fill the form correctly and then add new rooms&lt;/p&gt;','new','1375211799','',0),(10,'How can i view my inbox?','<p>Go to dashboard and then select a link inbox to view your messages</p>','inbox','1375215395','1375215585',0),(11,'How can i cancel my reserved rooms?','<p>Go to dashboard and then select a link reservations to view your reserved rooms. In this link has a cancellation button to cancel the reservations.','travelling','1375215747','',1),(12,'How can i edit my profile?','Login to dashboard and then click a link edit profile to edit.','edit','','',1),(13,'How can i view my reviews?','<p>view your reviews to click a link in profile.</p>','reviews','1375233515','',1),(14,'How can i view my current trip?','Select a travellin link and then click a current trip tab to view your current trips.','current_trip','','',1),(15,'Need help on this page?','<p>Every one must be know how to work on this product. It is helpful to shows how to work in this product dropinn.</p>','guide','','1377699914',1),(16,'How do i sign up?','<p>It is helpful to shows how to sign up to access this product.</p>','guide','','1376922078',0),(17,'How do I verify my phone number?','<p>To verify your phone number:</p>\r\n<ol>\r\n<li>Click your name in the top-right corner of site.</li>\r\n<li>Select <strong>Edit Profile</strong></li>\r\n<li>Look for <strong>Phone Number</strong> and click <strong>Add a phone number</strong></li>\r\n<li>Use the drop-down menu to select your country. We&rsquo;ll automatically insert the right country code.</li>\r\n<li>Enter your area code and phone number</li>\r\n<li>Click <strong>Verify via SMS</strong> or <strong>Verify via Call</strong>. We\'ll send you a 4-digit code via an SMS (text) message or automated phone call.</li>\r\n<li>Enter the code we sent you and and click <strong>Verify</strong></li>\r\n<li>If you don&rsquo;t see a confirmation message, try refreshing the page. If the method you chose isn\'t working, try the other one.</li>\r\n</ol>','verify','1375215395','',0),(18,'How do references work?','<p>&nbsp;Hosts and guests can receive public references from friends, family members, and colleagues to help build their profile. References help people throughout the Airbnb community get to know you, and feel more comfortable booking a reservation with you.<br /><br />You need an account to request and write references, and a reference will only display on the recipient&rsquo;s profile if the author of the reference has a profile photo of their own.<br /><br />To request a reference:<br /><br />&nbsp;&nbsp;&nbsp; Click your name in the top-right corner of site.<br />&nbsp;&nbsp;&nbsp; Select Edit Profile<br />&nbsp;&nbsp;&nbsp; Select References on the left-hand side and use the Request References section to send emails to the people you want to get a reference from<br /><br />In the References About You section, you&rsquo;ll see references that you&rsquo;ve received. You have to approve each reference before it will appear on your profile.<br /><br />In the References By You section, you&rsquo;ll see reference requests you&rsquo;ve received. The only way you can write a reference for someone else in the community is in response to a reference request&mdash;you can&rsquo;t proactively leave a reference for someone.<br /><br />References are different from reviews, which hosts and guests write after a completed trip.</p>','references','','',0);
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_cancellation_penalty`
--

DROP TABLE IF EXISTS `host_cancellation_penalty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_cancellation_penalty` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `amount` float NOT NULL,
  `currency` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_cancellation_penalty`
--

LOCK TABLES `host_cancellation_penalty` WRITE;
/*!40000 ALTER TABLE `host_cancellation_penalty` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_cancellation_penalty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_cancellation_policy`
--

DROP TABLE IF EXISTS `host_cancellation_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_cancellation_policy` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `days` int(2) NOT NULL,
  `months` int(2) NOT NULL,
  `before_amount` int(100) NOT NULL,
  `after_amount` int(100) NOT NULL,
  `free_cancellation` int(100) NOT NULL,
  `currency` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_cancellation_policy`
--

LOCK TABLES `host_cancellation_policy` WRITE;
/*!40000 ALTER TABLE `host_cancellation_policy` DISABLE KEYS */;
INSERT INTO `host_cancellation_policy` VALUES (1,7,6,50,100,1,'USD');
/*!40000 ALTER TABLE `host_cancellation_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ical_import`
--

DROP TABLE IF EXISTS `ical_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ical_import` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `list_id` int(50) NOT NULL,
  `url` varchar(500) NOT NULL,
  `last_sync` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ical_import`
--

LOCK TABLES `ical_import` WRITE;
/*!40000 ALTER TABLE `ical_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ical_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joinus`
--

DROP TABLE IF EXISTS `joinus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joinus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joinus`
--

LOCK TABLES `joinus` WRITE;
/*!40000 ALTER TABLE `joinus` DISABLE KEYS */;
INSERT INTO `joinus` VALUES (1,'Twitter','http://twitter.com/stayrove'),(2,'Facebook','https://www.facebook.com/pages/StayRove/819185851456588?fref=ts'),(3,'Google','https://www.facebook.com/pages/StayRove/819185851456588?fref=ts'),(4,'Youtube','https://www.facebook.com/pages/StayRove/819185851456588?fref=ts');
/*!40000 ALTER TABLE `joinus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(7) NOT NULL,
  `name` varchar(30) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'en','English'),(2,'fr','French'),(3,'it','Italian'),(4,'gr','German'),(5,'po','Portuguese'),(6,'sp','Spanish');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` text CHARACTER SET utf8,
  `country` varchar(50) CHARACTER SET utf8 NOT NULL,
  `street_address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `optional_address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `city` varchar(25) CHARACTER SET utf8 NOT NULL,
  `state` varchar(25) CHARACTER SET utf8 NOT NULL,
  `zip_code` varchar(25) NOT NULL,
  `exact` int(11) NOT NULL,
  `directions` text CHARACTER SET utf8,
  `lat` decimal(18,14) NOT NULL,
  `long` decimal(18,14) NOT NULL,
  `property_id` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `beds` int(11) NOT NULL,
  `bed_type` varchar(50) NOT NULL,
  `bathrooms` float DEFAULT NULL,
  `amenities` varchar(111) NOT NULL,
  `title` text CHARACTER SET utf8,
  `desc` text CHARACTER SET utf8,
  `capacity` int(11) NOT NULL,
  `cancellation_policy` int(2) NOT NULL,
  `street_view` smallint(6) NOT NULL,
  `price` int(11) NOT NULL,
  `sublet_price` int(50) NOT NULL,
  `sublet_status` enum('0','1') NOT NULL,
  `sublet_startdate` varchar(150) NOT NULL,
  `sublet_enddate` varchar(150) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `house_rule` text CHARACTER SET utf8 NOT NULL,
  `calendar_type` int(1) NOT NULL,
  `is_enable` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `list_pay` int(1) NOT NULL DEFAULT '0',
  `payment` int(1) NOT NULL DEFAULT '0',
  `page_viewed` bigint(20) NOT NULL,
  `review` int(11) NOT NULL DEFAULT '0',
  `created` int(31) NOT NULL,
  `neighbor` text CHARACTER SET utf8,
  `is_featured` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (1,1,'Dunas Altas, El Cipras (Guarnician Militar), Zona 4, 22785 Ensenada Municipality, Baja California, Mexico','Mexico','Dunas Altas, El Cipras (Guarnician Militar), Zona 4, 22785 Ensenada Municipality, Baja California, M','','Zona','Baja California','264634',0,NULL,31.78962130000000,-116.60434580000003,6,'Private room',1,1,'Airbed',1,'4,7,10,11','Modern Rustic Beach House with Pool','This unique house is a 3 bedrooms beach house with pool designed by architect Jorge Gracia recently featured in in the architectural books \'\'21st Century - 150 of the World\'\'s Best\'\' and \'\'Architecture Now - Houses\'\', published by TASCHEN.',1,1,0,250,0,'0','','','USD','','','',1,1,1,1,0,29,0,1366502043,'nothing select',1),(2,1,'Carrera 1C # 162A-2 a 162A-100, Bogota, Cundinamarca, Colombia','Colombia','Carrera 1C # 162A-2 a 162A-100, Bogota, Cundinamarca, Colombia','','Bogota','Cundinamarca','87684',0,NULL,4.73524780000000,-74.01826100000000,5,'Private room',1,1,'None',0,'2,8,14,18,20','New beautiful apartment in Spb','New beautiful apartment in the centre of the city in a new house with a balcony overlooking the old area of Sankt Petersburg.',2,1,0,221,0,'0','','','PHP','','','',1,1,1,1,0,24,0,1366502043,'nothing select',1),(3,1,'184, 64606 Palva County, Estonia','Estonia','184, 64606 Palva County, Estonia','','Palva','Estonia','235325',0,'NULL',58.21135870000001,27.16648880000003,7,'Shared room',1,0,'',0,'','Sunny Room in Brooklyn','10 minutes to Williamsburg, 20 minutes to manhattan!\nA sunny private room with a Queen size futon and big closet in a new renovated apartment (this March), with a SHARED bathroom , has Wi-Fi, it\'\'s on the first floor, so no need to drag your heavy suitcase up down stairs.',2,1,0,125,0,'0','','','EUR','','','',1,1,1,1,0,18,0,1366502307,'nothing select',1),(4,1,'46 Raper Street, Newtown NSW 2042, Australia','Australia','Raper Street','','Newtown','New South Wales','2042',0,NULL,-33.89203596370960,151.18127334550786,28,'Entire Home/Apt',2,4,'Pull-out Sofa',0.5,'1,','ghgfgfhgfhgf hfg gfh gfh','hgf hgf hfgh fh gfh gf hgfh gfh gfh gfh gfh gfh gf hfgh fgh fg gfhh',1,1,0,34,0,'0','','','AUD','','','',2,0,1,0,0,0,0,1424877870,NULL,0);
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_pay`
--

DROP TABLE IF EXISTS `list_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `currency` varchar(25) NOT NULL,
  `created` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_pay`
--

LOCK TABLES `list_pay` WRITE;
/*!40000 ALTER TABLE `list_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_photo`
--

DROP TABLE IF EXISTS `list_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `list_id` bigint(20) NOT NULL,
  `name` varchar(333) NOT NULL,
  `highlights` text NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `created` int(31) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_photo`
--

LOCK TABLES `list_photo` WRITE;
/*!40000 ALTER TABLE `list_photo` DISABLE KEYS */;
INSERT INTO `list_photo` VALUES (2,1,'00f71a669e5117773846d24468f6d893','',1,1366501598),(1,1,'ef3e4692d7704ec4a205976290f7ceaf','',0,1366501589),(3,1,'9535a4f7affb7493e78521ade4bc3fe6','',0,1366501606),(4,1,'f92676daed07e0a969a30fae9908c91f','',0,1366501615),(5,2,'2b24a7e41aa366465ce276654428468c','',0,1366502093),(6,2,'7723fc9da2f5525bec31b1dfd77e82a5','',0,1366502101),(28,1,'11.jpg','',0,1390248698),(29,2,'14.jpg','',1,1390248752),(30,3,'16.jpg','',0,1390248893),(31,3,'17.jpg','',1,1390249198),(33,4,'490_banner.jpg','',1,1424877954);
/*!40000 ALTER TABLE `list_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lys_status`
--

DROP TABLE IF EXISTS `lys_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lys_status` (
  `id` int(5) NOT NULL,
  `user_id` int(3) NOT NULL,
  `calendar` int(1) NOT NULL DEFAULT '0',
  `price` int(1) NOT NULL DEFAULT '0',
  `overview` int(1) NOT NULL DEFAULT '0',
  `title` int(1) NOT NULL,
  `summary` int(1) NOT NULL,
  `photo` int(1) NOT NULL DEFAULT '0',
  `amenities` int(1) NOT NULL DEFAULT '0',
  `address` int(1) NOT NULL DEFAULT '0',
  `listing` int(1) NOT NULL DEFAULT '0',
  `beds` int(1) NOT NULL,
  `bathrooms` int(1) NOT NULL,
  `bedscount` int(1) NOT NULL,
  `bedtype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lys_status`
--

LOCK TABLES `lys_status` WRITE;
/*!40000 ALTER TABLE `lys_status` DISABLE KEYS */;
INSERT INTO `lys_status` VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(2,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(3,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(4,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `lys_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_type`
--

DROP TABLE IF EXISTS `message_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `url` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_type`
--

LOCK TABLES `message_type` WRITE;
/*!40000 ALTER TABLE `message_type` DISABLE KEYS */;
INSERT INTO `message_type` VALUES (1,'Reservation Request','trips/request'),(2,'Conversation','trips/conversation'),(3,'Message','trips/conversation'),(4,'Review Request','trips/review_by_host'),(5,'Review Request','trips/review_by_traveller'),(6,'Inquiry','trips/conversation'),(7,'Contacts Request','contacts/request'),(8,'Contacts Response','contacts/response'),(9,'Referrals','trips/conversation'),(10,'List Creation','trips/conversation');
/*!40000 ALTER TABLE `message_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` bigint(20) unsigned NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL DEFAULT '0',
  `userby` int(11) NOT NULL,
  `userto` int(11) NOT NULL,
  `subject` varchar(70) NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `created` int(31) NOT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `is_starred` tinyint(4) NOT NULL,
  `is_respond` int(1) NOT NULL,
  `is_archived` int(1) NOT NULL,
  `message_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas`
--

DROP TABLE IF EXISTS `metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(111) NOT NULL,
  `name` varchar(300) NOT NULL,
  `title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas`
--

LOCK TABLES `metas` WRITE;
/*!40000 ALTER TABLE `metas` DISABLE KEYS */;
INSERT INTO `metas` VALUES (1,'account/index','Edit_account_details','Edit account details','Edit account details','Edit account details'),(2,'account/payout','Your_Payment_Method_details','Your Payment Method details','Your Payment Method details','Your Payment Method details'),(3,'account/setDefault','Set_Default_Payout_Preferences','Set Default Payout Preferences','Set Default Payout Preferences','Set Default Payout Preferences'),(4,'account/transaction','Your_Transaction_Details','Your Transaction Details','Your Transaction Details','Your Transaction Details'),(5,'calendar/single','Calendar','Calendar','Calendar','Calendar'),(6,'home/dashboard','Dashboard','Dashboard','Dashboard','Dashboard'),(7,'hosting/index','Your_Hosting_data','Your Listings','Your Listings','Your Listings'),(8,'hosting/change_status','Manage_Listings','Manage Listings','Manage Listings','Manage Listings'),(9,'hosting/sort_by_status','Manage Listings','Manage Listings','Manage Listings','Manage Listings'),(10,'hosting/my_reservation','My_Reservations','My Reservations','My Reservations','My Reservations'),(11,'hosting/policies','Stand_Bys','Policies','Policies','Policies'),(12,'info/index','Access_Deny','Access Deny','Access Deny','Access Deny'),(13,'info/deny','Access_Deny','Access Deny','Access Deny','Access Deny'),(14,'info/how_it_works','How it works','How it works','How it works','How it works'),(15,'listpay/index','Payment_Option','Payment Option','Payment Option','Payment Option'),(16,'message/inbox','Inbox','Inbox','Inbox','Inbox'),(17,'pages/contact','Contact_Us','Contact Us','Contact Us','Contact Us'),(18,'pages/faq','FAQs','FAQs','FAQs','FAQs'),(19,'payments/form','Confirm_your_booking','Confirm your booking','Confirm your booking','Confirm your booking'),(20,'referrals/index','Invite_Your_Friends','Invite Your Friends','Invite Your Friends','Invite Your Friends'),(21,'referrals/email','Invite_Your_Friends -Email','Invite Your Friends - Email','Invite Your Friends - Email','Invite Your Friends - Email'),(22,'referrals/tell_a_friend','Tell_A_Friend','Tell A Friend','Tell A Friend','Tell A Friend'),(23,'rooms/index','Rooms','Rooms1','Rooms1','Rooms1'),(24,'rooms/newlist','List_Your_property','List your property','List your property','List your property'),(25,'rooms/edit','Edit_your_Listing','Edit your Listing','Edit your Listing','Edit your Listing'),(26,'rooms/edit_photo','Add_photo_for_this_listing','Add photo for this listing','Add photo for this listing','Add photo for this listing'),(27,'rooms/edit_price','Edit_the_price_information_for_your_site','Edit price','Edit price','Edit price'),(28,'rooms/change_status','Manage_Listings','Manage Listings','Manage Listings','Manage Listings'),(29,'search/index','Search_Elements','Search Elements','Search Elements','Search Elements'),(30,'travelling/current_trip','Your_Current_Trips','Your Current Trips','Your Current Trips','Your Current Trips'),(31,'travelling/your_trips','Your_trips','Your Trips','Your Trips','Your Trips'),(32,'travelling/previous_trips','Your_Previous_Trips_Trips','Your Previous Trips','Your Previous Trips','Your Previous Trips'),(33,'travelling/starred_items','List_your_stared_Item','List your starred Items','List your starred Items','List your starred Items'),(34,'travelling/host_details','Host_Details','Host Details','Host Details','Host Details'),(35,'travelling/billing','Reservation_Request','Reservation Request','Reservation Request','Reservation Request'),(36,'trips/request','Reservation_Request','Reservation Request','Reservation Request','Reservation Request'),(37,'trips/conversation','Conversations','Conversations','Conversations','Conversations'),(38,'trips/review_by_host','Review','Review','Review','Review'),(39,'trips/review_by_traveller','Review','Review','Review','Review'),(40,'host_review','View_Your_Review','View Your Review','View Your Review','View Your Review'),(41,'trips/traveler_review','View_your_review','View your review','View your review','View your review'),(42,'users/edit','Edit_your_Profile','Edit your Profile','Edit your Profile','Edit your Profile'),(43,'users/references','Your_recommendation_details','References details','References details','References details'),(44,'users/reviews','Your_Reviews_and_Recommendation','Your Reviews','Your Reviews','Your Reviews'),(45,'users/vouch','Recommend_your_friends','Recommend your friends','Recommend your friends','Recommend your friends'),(46,'users/signup','Sign_Up_for_the_site','Sign Up for the site','Sign Up for the site','Sign Up for the site'),(47,'users/signin','Sign_In / Sign_Up','Sign In / Sign Up','Sign In / Sign up','Sign In / Sign up'),(48,'uers/login','Sign_In / Sign_up','Sign In / Sign up','Sign In / Sign up','Sign In / Sign up'),(49,'users/logout','Logout_Shortly','Logout Shortly','Logout Shortly','Logout Shortly'),(50,'users/change_password','Change_Password','Change Password','Change Password','Change Password'),(51,'pages/cancellation_policy','cancellation_policy','Cancellation Policy','Cancellation Policy','Cancellation Policy'),(52,'account/mywishlist','My Wishlist','My Wishlist','My Wishlist','My Wishlist'),(53,'home/popular','Popular','Popular','Popular','Popular'),(54,'home/friends','Friends','Friends','Friends','Friends'),(55,'home/neighborhoods','Neighborhoods','Neighborhoods','Neighborhoods','Neighborhoods'),(56,'home/help','Help','Help','Help','Help'),(57,'users/verify','Verification','Verification','Verification','Verification'),(58,'home/verify','Verify','Verify','Verify','Verify'),(59,'neighbourhoods/detail_place','Neighbourhoods','Neighbourhoods','Neighbourhoods','Neighbourhoods'),(60,'neighbourhoods/city_places','Neighbourhoods','Neighbourhoods','Neighbourhoods','Neighbourhoods'),(61,'neighbourhoods/city','Neighbourhoods','Neighbourhoods','Neighbourhoods','Neighbourhoods'),(62,'users/view_fb_popup','Facebook Signup','Facebook Signup','Facebook Signup','Facebook Signup'),(63,'contacts/request','Contact_Request','Contact Request','Contact Request','Contact Request'),(64,'statistics/view_statistics_graph','Statistics','Statistics','Statistics','Statistics');
/*!40000 ALTER TABLE `metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neigh_category`
--

DROP TABLE IF EXISTS `neigh_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neigh_category` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neigh_category`
--

LOCK TABLES `neigh_category` WRITE;
/*!40000 ALTER TABLE `neigh_category` DISABLE KEYS */;
INSERT INTO `neigh_category` VALUES (1,'Great Transit','1381458120'),(2,'Touristy','1381458133'),(3,'Shopping','1381458148'),(4,'Loved by Londoners','1381458168');
/*!40000 ALTER TABLE `neigh_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neigh_city`
--

DROP TABLE IF EXISTS `neigh_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neigh_city` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  `city_desc` text NOT NULL,
  `around` text NOT NULL,
  `known` text NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `is_home` int(1) NOT NULL DEFAULT '0',
  `created` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neigh_city`
--

LOCK TABLES `neigh_city` WRITE;
/*!40000 ALTER TABLE `neigh_city` DISABLE KEYS */;
INSERT INTO `neigh_city` VALUES (1,'Sydney','Description of Sydney','Public Transit','Sydney Harbour Bridge, Kangaroos','London.jpg',1,'1424877277');
/*!40000 ALTER TABLE `neigh_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neigh_city_place`
--

DROP TABLE IF EXISTS `neigh_city_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neigh_city_place` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `city_id` int(4) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `quote` text NOT NULL,
  `short_desc` text NOT NULL,
  `long_desc` text NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `lat` varchar(25) NOT NULL,
  `lng` varchar(25) NOT NULL,
  `is_featured` int(1) NOT NULL,
  `created` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neigh_city_place`
--

LOCK TABLES `neigh_city_place` WRITE;
/*!40000 ALTER TABLE `neigh_city_place` DISABLE KEYS */;
INSERT INTO `neigh_city_place` VALUES (1,1,'Sydney','Westminster','Prove you\'re in London with pictures in Westminster.','History is etched into the stones that compose this neighborhood\'s famous clock tower, abbey, and parliament buildings.','Boasting more than a few London landmarks, Westminster is a distinct political and cultural epicenter. Westminster Abbey, Buckingham Palace (God Save the Queen), and the United KingdomÃ¢â‚¬â„¢s House of Parliament all share the cobblestoned lanes under Big BenÃ¢â‚¬â„¢s timely shadow. Perched along the north bank','0_5616_651_3093_hero_UK_London_King_s_Cross_RD__2.jpg','51.5096446','-0.1585863',1,'1381458492');
/*!40000 ALTER TABLE `neigh_city_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neigh_knowledge`
--

DROP TABLE IF EXISTS `neigh_knowledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neigh_knowledge` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `post_id` int(3) NOT NULL,
  `city_id` int(5) NOT NULL,
  `city` varchar(25) NOT NULL,
  `place_id` int(5) NOT NULL,
  `place` varchar(25) NOT NULL,
  `user_id` int(5) NOT NULL,
  `user_type` varchar(25) NOT NULL DEFAULT 'Guest',
  `room_id` int(5) NOT NULL,
  `room_title` text NOT NULL,
  `knowledge` text NOT NULL,
  `shown` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neigh_knowledge`
--

LOCK TABLES `neigh_knowledge` WRITE;
/*!40000 ALTER TABLE `neigh_knowledge` DISABLE KEYS */;
INSERT INTO `neigh_knowledge` VALUES (1,1,1,'London',1,'Westminster',1,'Guest',0,'','We would definitely recommend this [neighbourhood] to anyone who wants to be centrally located and use the flat as a base to enjoy this vibrant city and all it has to offer',1);
/*!40000 ALTER TABLE `neigh_knowledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neigh_photographer`
--

DROP TABLE IF EXISTS `neigh_photographer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neigh_photographer` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `photographer_name` text NOT NULL,
  `photographer_desc` text NOT NULL,
  `photographer_image` varchar(100) NOT NULL,
  `photographer_web` varchar(50) NOT NULL,
  `city_id` varchar(3) NOT NULL,
  `is_featured` varchar(1) NOT NULL,
  `created` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neigh_photographer`
--

LOCK TABLES `neigh_photographer` WRITE;
/*!40000 ALTER TABLE `neigh_photographer` DISABLE KEYS */;
INSERT INTO `neigh_photographer` VALUES (1,'London','Westminster','Duke','Rebecca Duke has been working as a photographer for the last decade, after attending Central St Martinâ€™s in London. Her work focuses on people, interiors and travel and has been published in The Sunday Times, Elle Decor and Conde Nast Traveller. Rebecca travels frequently for her work but loved work','no_avatar-xlarge.jpg','No Website','1','1','1381460489');
/*!40000 ALTER TABLE `neigh_photographer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neigh_place_category`
--

DROP TABLE IF EXISTS `neigh_place_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neigh_place_category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `category_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neigh_place_category`
--

LOCK TABLES `neigh_place_category` WRITE;
/*!40000 ALTER TABLE `neigh_place_category` DISABLE KEYS */;
INSERT INTO `neigh_place_category` VALUES (5,'London','Westminster',1),(6,'London','Westminster',2),(7,'London','Westminster',3),(8,'London','Westminster',4),(9,'Tokyo','Akihabara',1),(10,'Tokyo','Akihabara',2),(11,'Tokyo','Akihabara',3),(12,'Tokyo','Akihabara',4),(13,'Mexico City','Mexico City',1);
/*!40000 ALTER TABLE `neigh_place_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neigh_post`
--

DROP TABLE IF EXISTS `neigh_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neigh_post` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `image_title` text NOT NULL,
  `image_desc` text NOT NULL,
  `big_image1` varchar(100) NOT NULL,
  `small_image1` varchar(100) NOT NULL,
  `small_image2` varchar(100) NOT NULL,
  `small_image3` varchar(100) NOT NULL,
  `small_image4` varchar(100) NOT NULL,
  `small_image5` varchar(100) NOT NULL,
  `big_image2` varchar(100) NOT NULL,
  `big_image3` varchar(100) NOT NULL,
  `is_featured` int(1) NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neigh_post`
--

LOCK TABLES `neigh_post` WRITE;
/*!40000 ALTER TABLE `neigh_post` DISABLE KEYS */;
INSERT INTO `neigh_post` VALUES (1,'Sydney','Westminster','Britain\'s VIPs: Very Important People and Places','Westminster\'s regal appeal stems from more than old stones and gold-gilded gates.','0_5760_0_3840_one_UK_London_King_s_Cross_RD__6.jpg','0_5760_115_3725_two_UK_London_King_s_Cross_RD__7.jpg','0_5760_115_3725_two_UK_London_King_s_Cross_RD__18.jpg','765_4995_0_3840_three_UK_London_King_s_Cross_RD__11.jpg','765_4995_0_3840_three_UK_London_King_s_Cross_RD__13.jpg','765_4995_0_3840_three_UK_London_King_s_Cross_RD__9.jpg','0_5760_115_3725_two_UK_London_King_s_Cross_RD__22.jpg','0_5760_115_3725_two_UK_London_King_s_Cross_RD__25.jpg',1,'1381458967');
/*!40000 ALTER TABLE `neigh_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neigh_tag`
--

DROP TABLE IF EXISTS `neigh_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neigh_tag` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `city_id` int(5) NOT NULL,
  `city` varchar(25) NOT NULL,
  `place_id` int(5) NOT NULL,
  `place` varchar(25) NOT NULL,
  `user_id` int(5) NOT NULL,
  `tag` varchar(25) NOT NULL,
  `shown` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neigh_tag`
--

LOCK TABLES `neigh_tag` WRITE;
/*!40000 ALTER TABLE `neigh_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `neigh_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neighbor_area`
--

DROP TABLE IF EXISTS `neighbor_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neighbor_area` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `city_id` int(50) NOT NULL,
  `area` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neighbor_area`
--

LOCK TABLES `neighbor_area` WRITE;
/*!40000 ALTER TABLE `neighbor_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `neighbor_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neighbor_city`
--

DROP TABLE IF EXISTS `neighbor_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neighbor_city` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `Country` varchar(80) NOT NULL,
  `State` varchar(80) NOT NULL,
  `City` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neighbor_city`
--

LOCK TABLES `neighbor_city` WRITE;
/*!40000 ALTER TABLE `neighbor_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `neighbor_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(111) NOT NULL,
  `page_title` varchar(111) NOT NULL,
  `page_url` varchar(111) NOT NULL,
  `is_footer` tinyint(4) NOT NULL,
  `is_under` varchar(25) NOT NULL,
  `page_content` text NOT NULL,
  `created` int(31) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (13,'Help','Help','help',0,'','<div id=\"View_help\" class=\"inner_pad_top\">\n<ul>\n  		<li><a href=\"#\"> Need help on this page? </a></li>\n  		<li><a href=\"#\">Getting Started Guide</a></li>\n  		<li><a href=\"#\">How do I sign up?</a></li>\n  		<li><a href=\"#\">How do I host on Dropinn?</a></li>\n  		<li><a href=\"#\">How do I travel on Dropinn?</a></li>\n  		<li><a href=\"#\">Visit our Trust & Safety Center </a></li>\n  		<li><a href=\"#\">See all FAQs</a></li>\n  		\n  	</ul>\n</div>',1323793245),(12,'Travel','Travel','travel',0,'','<div class=\"inner_header\"><h2>Travel</h2></div><h4>Aliquam vitae congue tortor</h4>\r\n<p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique.</p>\r\n\r\n<h3>Nam aliquam dolor</h3>\r\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\r\n\r\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\r\n\r\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\r\n<div class=\"inner_terms\">\r\n<ul>\r\n   <li><a href=\"#\">Ut rhoncus imperdiet augue sit amet egestas</a></li>\r\n<li><a href=\"#\">Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</a></li>\r\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</a></li>\r\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</a></li>\r\n<li><a href=\"#\">Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</a></li>\r\n<li><a href=\"#\">Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</a></li>\r\n<li><a href=\"#\">Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\r\n<li><a href=\"#\">Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\r\n</ul>\r\n</div>\r\n<h3>Phasellus sem</h3>\r\n\r\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\r\n\r\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\r\n\r\n<h3>Nunc porttitor sagittis</h3>\r\n\r\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\r\n\r\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\r\n\r\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\r\n\r\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\r\n\r\n\r\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\r\n<div class=\"inner_terms\">\r\n<ul>\r\n   <li><a href=\"#\">Ut rhoncus imperdiet augue sit amet egestas</a></li>\r\n<li><a href=\"#\">Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</a></li>\r\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</a></li>\r\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</a></li>\r\n<li><a href=\"#\">Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</a></li>\r\n<li><a href=\"#\">Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</a></li>\r\n<li><a href=\"#\">Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\r\n<li><a href=\"#\">Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\r\n</ul>\r\n</div>\r\n\r\n<h3>Nam aliquam dolor</h3>\r\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\r\n\r\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\r\n\r\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>',1323793245),(11,'Social Connections','Social Connections','social',1,'discover','<div class=\"inner_header\"><h2>Social Connections</h2></div><h3>Nam aliquam dolor?</h3>\r\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\r\n\r\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\r\n\r\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\r\n\r\n<h3>Phasellus sem?</h3>\r\n\r\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\r\n\r\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\r\n\r\n<h3>Nunc porttitor sagittis?</h3>\r\n\r\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\r\n<h3>Donec gravida nulla non ante semper fringilla in ante justo?</h3>\r\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\r\n<h3>Aliquam gravida nisl non libero ullamcorper placerat sed nisl lacus?</h3>\r\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\r\n<h3>Nunc porttitor sagittis?</h3>\r\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\r\n\r\n<h3>Nunc porttitor sagittis?</h3>\r\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>',1323793245),(10,'Responsible Hosting','Responsible Hosting','responsible_hosting',1,'company','<div class=\"inner_header\"><h2>Responsible Hosting</h2></div><h4>Aliquam vitae congue tortor</h4>\n<p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique.</p>\n\n<h4>Integer velit nunc faucibus idmollir</h4>\n<div class=\"inner_terms\">\n<ul>\n   <li>Ut rhoncus imperdiet augue sit amet egestas</li>\n<li>Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</li>\n<li>Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</li>\n<li>Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</li>\n<li>Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n<li>Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n</ul>\n</div>\n\n<h4>Aliquam gravida nisl non libero ullamcorper placerat</h4>\n\n<div class=\"inner_terms\">\n<ul>\n  <li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</li>\n<li>Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</li>\n<li>Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</li>\n<li>Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n<li>Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n</ul>\n</div>\n\n\n<h4>Nam eget nisl feugiat augue egestas</h4>\n<div class=\"inner_terms\">\n<ul>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</li>\n<li>Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</li>\n<li>Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</li>\n<li>Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n<li>Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</li>\n<li>Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</li>\n<li>Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n\n</div>',1323793245),(9,'Terms & Privacy','Terms & Privacy','terms',1,'company','<div class=\"inner_header\"><h2>Terms & Privacy</h2></div><h4>Aliquam vitae congue tortor</h4>\n<p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique.</p>\n\n<h3>Nam aliquam dolor</h3>\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\n\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\n\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\n\n<h3>Phasellus sem</h3>\n\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n\n<h3>Nunc porttitor sagittis</h3>\n\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\n\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\n\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n\n\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\n<div class=\"inner_terms\">\n<ul>\n   <li>Ut rhoncus imperdiet augue sit amet egestas</li>\n<li>Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</li>\n<li>Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</li>\n<li>Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</li>\n<li>Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n<li>Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n</ul>\n</div>\n\n',1323793245),(8,'Policies','Policies','policies',1,'company','<div class=\"inner_header\"><h2>Policies</h2></div><h4>Aliquam vitae congue tortor</h4>\n<p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique.</p>\n\n<h3>Nam aliquam dolor</h3>\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\n\n\n<div class=\"inner_terms\">\n<ul>\n   <li>Ut rhoncus imperdiet augue sit amet egestas</li>\n<li>Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</li>\n<li>Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</li>\n<li>Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</li>\n<li>Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n<li>Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n</ul>\n</div>\n\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\n\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\n<div class=\"inner_terms\">\n<ul>\n  <li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</li>\n<li>Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</li>\n<li>Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</li>\n<li>Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n<li>Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n</ul>\n</div>\n<h3>Phasellus sem</h3>\n\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n\n<h3>Nunc porttitor sagittis</h3>\n\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\n\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\n\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n\n\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\n<div class=\"inner_terms\">\n<ul>\n   <li>Ut rhoncus imperdiet augue sit amet egestas</li>\n<li>Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</li>\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</li>\n<li>Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</li>\n<li>Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</li>\n<li>Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n<li>Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\n</ul>\n</div>\n',1323793245),(6,'About Us','About Us','about',1,'company','<div class=\"inner_header\"><h2>About Us</h2></div><p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique. Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>',1323793245),(7,'Press','Press','press',1,'company','<div class=\"inner_header\"><h2>Press</h2></div><h4>Aliquam vitae congue tortor</h4>\n<p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique.</p>\n\n<h3>Nam aliquam dolor</h3>\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\n\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\n\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\n<div class=\"inner_terms\">\n<ul>\n   <li><a href=\"#\">Ut rhoncus imperdiet augue sit amet egestas</a></li>\n<li><a href=\"#\">Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</a></li>\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</a></li>\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</a></li>\n<li><a href=\"#\">Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</a></li>\n<li><a href=\"#\">Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</a></li>\n<li><a href=\"#\">Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\n<li><a href=\"#\">Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\n</ul>\n</div>\n<h3>Phasellus sem</h3>\n\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n\n<h3>Nunc porttitor sagittis</h3>\n\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\n\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\n\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n\n\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\n<div class=\"inner_terms\">\n<ul>\n   <li><a href=\"#\">Ut rhoncus imperdiet augue sit amet egestas</a></li>\n<li><a href=\"#\">Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</a></li>\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</a></li>\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</a></li>\n<li><a href=\"#\">Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</a></li>\n<li><a href=\"#\">Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</a></li>\n<li><a href=\"#\">Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\n<li><a href=\"#\">Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\n</ul>\n</div>\n\n<h3>Nam aliquam dolor</h3>\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\n\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\n\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>',1323793245),(5,'Why Host?','Why Host?','why_host',1,'discover','<div class=\"inner_header\"><h2>Why Host?</h2></div><p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique. Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>',1323793245),(4,'Recommendation Help','Recommendation Help','recommendation_help',0,'','<div class=\"inner_header\"><h2>Recommendation Help</h2></div>\r\n\r\n<h4>Aliquam vitae congue tortor</h4>\r\n<p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique.</p>\r\n\r\n<h3>Nam aliquam dolor</h3>\r\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\r\n\r\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\r\n\r\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\r\n\r\n<h3>Phasellus sem</h3>\r\n\r\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\r\n\r\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\r\n\r\n<h3>Nunc porttitor sagittis</h3>\r\n\r\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\r\n\r\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\r\n\r\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\r\n\r\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\r\n\r\n\r\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\r\n<div class=\"inner_terms\">\r\n<ul>\r\n   <li>Ut rhoncus imperdiet augue sit amet egestas</li>\r\n<li>Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</li>\r\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</li>\r\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</li>\r\n<li>Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</li>\r\n<li>Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</li>\r\n<li>Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\r\n<li>Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\r\n</ul>\r\n</div>',1323793186),(3,'Photo Tips','Photo Tips','photo_tips',0,'','<div class=\"inner_header\"><h2>Photo Tips</h2></div>\r\n\r\n<h4>Aliquam vitae congue tortor</h4>\r\n<p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique.</p>\r\n\r\n<h3>Nam aliquam dolor</h3>\r\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\r\n\r\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\r\n\r\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\r\n\r\n<h3>Phasellus sem</h3>\r\n\r\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\r\n\r\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\r\n\r\n<h3>Nunc porttitor sagittis</h3>\r\n\r\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\r\n\r\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\r\n\r\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\r\n\r\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\r\n\r\n\r\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\r\n<div class=\"inner_terms\">\r\n<ul>\r\n   <li>Ut rhoncus imperdiet augue sit amet egestas</li>\r\n<li>Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</li>\r\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</li>\r\n<li>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</li>\r\n<li>Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</li>\r\n<li>Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</li>\r\n<li>Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\r\n<li>Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</li>\r\n</ul>\r\n</div>',1323793059),(2,'Fun Company News','Fun Company News','fun_company_news',0,'','<div class=\"inner_header\"><h2>Fun Company News</h2></div><h4>Aliquam vitae congue tortor</h4>\n<p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique.</p>\n\n<h3>Nam aliquam dolor</h3>\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\n\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\n\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\n<div class=\"inner_terms\">\n<ul>\n   <li><a href=\"#\">Ut rhoncus imperdiet augue sit amet egestas</a></li>\n<li><a href=\"#\">Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</a></li>\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</a></li>\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</a></li>\n<li><a href=\"#\">Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</a></li>\n<li><a href=\"#\">Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</a></li>\n<li><a href=\"#\">Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\n<li><a href=\"#\">Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\n</ul>\n</div>\n<h3>Phasellus sem</h3>\n\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n\n<h3>Nunc porttitor sagittis</h3>\n\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\n\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\n\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n\n\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>\n<div class=\"inner_terms\">\n<ul>\n   <li><a href=\"#\">Ut rhoncus imperdiet augue sit amet egestas</a></li>\n<li><a href=\"#\">Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper</a></li>\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel</a></li>\n<li><a href=\"#\">Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit.</a></li>\n<li><a href=\"#\">Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio.</a></li>\n<li><a href=\"#\">Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat.</a></li>\n<li><a href=\"#\">Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\n<li><a href=\"#\">Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</a></li>\n</ul>\n</div>\n\n<h3>Nam aliquam dolor</h3>\n<p> Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\n\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\n\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>',1323793001),(1,'Really Cool Destinations','Really Cool Destinations','really_cool_destinations',0,'','<div class=\"inner_header\"><h2>Really Cool Destinations</h2></div><p>Praesent in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent dui nibh, placerat id placerat nec, facilisis vitae lorem.Ut at ante non quam posuere sollicitudin. Sed vel libero tellus. Nam aliquam dolor vitae risus lacinia tristique. Sed vitae nibh et felis ornare accum. tiam tristique ornare erat et facilisis. Etiam pretium, massa ut commodo viverra, nunc magna vestibulum risus, a imperdiet quam leo ac mi.</p>\n<p>Nam eget nisl feugiat augue egestas tempus at fermentum tellus. Vestibulum vel orci ante, sed auctor mauris. Nulla a odio id nunc lobortis venenatis. Sed vestibulum elit at urna tincidunt pellentesque. Aenean tristique, massa ac faucibus adipiscing, nunc nulla aliquet orci, vitae pharetra enim erat sit amet magna. Ut pulvinar consequat purus in egestas. Phasellus imperdiet bibendum libero sit amet adipiscing.</p>\n<p>Nulla mauris tellus, aliquam rutrum consectetur eu, pulvinar sit amet est. Integer sodales vulputate arcu eget dictum. Suspendisse nibh dolor, vestibulum a euismod nec, tristique ac quam. Aliquam vitae dolor justo, non aliquet nisl. Maecenas accumsan convallis mattis.</p>\n<p>Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros. Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius.</p>\n<p>Phasellus sem tellus, imperdiet eu feugiat vel, laoreet non ligula. Pellentesque eleifend consequat augue eu hendrerit. Quisque vel turpis et lacus fermentum congue. Integer fringilla euismod dui, id vehicula ut. Pellentesque placerat dictum diam sit amet porta.</p>\n<p>Aliquam vitae congue tortor. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio. Ut elementum ante quis urna auctor sagittis. Nunc porttitor sagittis condimentum. Nullam laoreet elit quis quam lobortis aliquet. Duis suscipit interdum sapien, nec vulputate tortor dignissim et. Maecenas consequat rhoncus eros.</p>\n<p>Ut rhoncus imperdiet augue, sit amet egestas odio fermentum sed. Aliquam gravida nisl non libero ullamcorper placerat. Sed nisl lacus, auctor in posuere vitae, aliquam ut elit. Integer velit nunc, faucibus id mollis pharetra, eleifend at odio. Integer ullamcorper pretium varius. Donec gravida nulla non ante semper fringilla. In ante justo, sodales id condimentum sit amet, lobortis ut odio.</p>',1323792509);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paykey`
--

DROP TABLE IF EXISTS `paykey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paykey` (
  `paykey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paykey`
--

LOCK TABLES `paykey` WRITE;
/*!40000 ALTER TABLE `paykey` DISABLE KEYS */;
INSERT INTO `paykey` VALUES ('AP-9LF47559NN033983K');
/*!40000 ALTER TABLE `paykey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` smallint(6) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
INSERT INTO `payment_details` VALUES (4,2,'PAYPAL_ID','Paypal Business Id','vignesh.p-facilitator@cogzidel.com'),(3,1,'CC_SIGNATURE','CC Signature','AhjoXWrVwMCmGWPz.GpsdmO6GmC8AVq0BluBpwKO2BpWyluWPPcAsPWu'),(2,1,'CC_PASSWORD','CC Password','1377208047'),(1,1,'CC_USER','CC Username','vignesh.p-facilitator_api1.cogzidel.com'),(5,3,'BT_MERCHANT','BT Merchant Id','qcnc872v7nf5dw7g'),(6,3,'BT_PUBLICKEY','BT Public Key','qmbvckybnqfxtw96'),(7,3,'BT_PRIVATEKEY','BT Private Key','adef7fce612824cd03f5e103008e1d9d');
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(30) NOT NULL,
  `is_enabled` smallint(6) NOT NULL DEFAULT '0',
  `is_live` smallint(6) NOT NULL DEFAULT '0',
  `is_payout` smallint(6) NOT NULL DEFAULT '0',
  `arrives_on` varchar(111) NOT NULL,
  `fees` varchar(30) NOT NULL,
  `currency` varchar(5) NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (2,'Paypal',1,0,1,'Instant','None','USD','You can withdraw money from PayPal...\r\n<ul style=\"list-style-type: disc;list-style-position: inside;\">\r\n<li>to your local bank account.</li>\r\n<li>via paper check.</li>\r\n</ul>'),(1,'CreditCard',1,0,1,'','','','');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymode`
--

DROP TABLE IF EXISTS `paymode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymode` (
  `id` tinyint(4) NOT NULL,
  `mod_name` varchar(111) NOT NULL,
  `is_premium` tinyint(4) NOT NULL DEFAULT '0',
  `is_fixed` tinyint(4) NOT NULL DEFAULT '0',
  `fixed_amount` bigint(20) NOT NULL,
  `currency` varchar(25) NOT NULL,
  `percentage_amount` float NOT NULL,
  `modified_date` varchar(111) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymode`
--

LOCK TABLES `paymode` WRITE;
/*!40000 ALTER TABLE `paymode` DISABLE KEYS */;
INSERT INTO `paymode` VALUES (1,'Host Listing',1,0,1,'AUD',15,''),(2,'Guest Booking',0,1,5,'AUD',50,''),(3,'Host Accept The Reservation Request',0,0,10,'USD',10,'');
/*!40000 ALTER TABLE `paymode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payout_preferences`
--

DROP TABLE IF EXISTS `payout_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payout_preferences` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(111) NOT NULL,
  `country` varchar(7) NOT NULL,
  `payout_type` smallint(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `currency` varchar(7) NOT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout_preferences`
--

LOCK TABLES `payout_preferences` WRITE;
/*!40000 ALTER TABLE `payout_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `payout_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paywhom`
--

DROP TABLE IF EXISTS `paywhom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paywhom` (
  `id` int(11) NOT NULL,
  `whom` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paywhom`
--

LOCK TABLES `paywhom` WRITE;
/*!40000 ALTER TABLE `paywhom` DISABLE KEYS */;
INSERT INTO `paywhom` VALUES (1,0);
/*!40000 ALTER TABLE `paywhom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `night` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `guests` smallint(6) NOT NULL,
  `addguests` int(11) NOT NULL,
  `cleaning` int(11) NOT NULL,
  `security` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (1,250,1445,3888,2,5,5,0,'USD'),(2,221,155,258,1,5,5,0,'PHP'),(3,125,693,1890,1,5,0,0,'EUR'),(4,34,0,0,0,0,0,0,'AUD');
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_picture`
--

DROP TABLE IF EXISTS `profile_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_picture` (
  `email` text NOT NULL,
  `src` text,
  `ext` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_picture`
--

LOCK TABLES `profile_picture` WRITE;
/*!40000 ALTER TABLE `profile_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` bigint(20) NOT NULL,
  `Fname` varchar(255) DEFAULT NULL,
  `Lname` varchar(255) DEFAULT NULL,
  `gender` varchar(25) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `live` text,
  `school` text NOT NULL,
  `work` text,
  `phnum` varchar(255) DEFAULT NULL,
  `describe` text,
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Ush','Smith','0','','stayrovetech@gmail.com','','','','0',''),(2,'Steven','Begley','0','05/12/1973','stevenbegley@hotmail.com','newcastle nsw australia','','','0','');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_type`
--

DROP TABLE IF EXISTS `property_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_type` (
  `id` int(63) NOT NULL AUTO_INCREMENT,
  `type` varchar(63) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_type`
--

LOCK TABLES `property_type` WRITE;
/*!40000 ALTER TABLE `property_type` DISABLE KEYS */;
INSERT INTO `property_type` VALUES (32,'Tigers'),(31,'Horses'),(30,'Birds'),(29,'Cats'),(28,'Dogs');
/*!40000 ALTER TABLE `property_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommends`
--

DROP TABLE IF EXISTS `recommends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommends` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userby` bigint(20) NOT NULL,
  `userto` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `relationship` int(1) NOT NULL,
  `is_approval` int(1) NOT NULL,
  `created` int(31) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommends`
--

LOCK TABLES `recommends` WRITE;
/*!40000 ALTER TABLE `recommends` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_request`
--

DROP TABLE IF EXISTS `reference_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_request` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userby` int(10) NOT NULL,
  `userto` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `created` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_request`
--

LOCK TABLES `reference_request` WRITE;
/*!40000 ALTER TABLE `reference_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrals`
--

DROP TABLE IF EXISTS `referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referrals` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `invite_from` int(111) NOT NULL,
  `invite_to` int(111) NOT NULL,
  `join_date` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrals`
--

LOCK TABLES `referrals` WRITE;
/*!40000 ALTER TABLE `referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrals_amount`
--

DROP TABLE IF EXISTS `referrals_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referrals_amount` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `user_id` int(111) NOT NULL,
  `count_trip` int(111) NOT NULL,
  `count_book` int(111) NOT NULL,
  `amount` varchar(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrals_amount`
--

LOCK TABLES `referrals_amount` WRITE;
/*!40000 ALTER TABLE `referrals_amount` DISABLE KEYS */;
/*!40000 ALTER TABLE `referrals_amount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrals_booking`
--

DROP TABLE IF EXISTS `referrals_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referrals_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payer_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `ref_amount` int(11) NOT NULL,
  `is_full` int(1) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrals_booking`
--

LOCK TABLES `referrals_booking` WRITE;
/*!40000 ALTER TABLE `referrals_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `referrals_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund`
--

DROP TABLE IF EXISTS `refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reservation_id` int(10) NOT NULL,
  `userto` int(10) NOT NULL,
  `payout_id` varchar(50) NOT NULL,
  `accept_status` int(1) NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund`
--

LOCK TABLES `refund` WRITE;
/*!40000 ALTER TABLE `refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(50) NOT NULL,
  `list_id` int(111) NOT NULL,
  `userby` int(11) NOT NULL,
  `userto` int(111) NOT NULL,
  `checkin` varchar(50) NOT NULL,
  `checkout` varchar(50) NOT NULL,
  `no_quest` tinyint(4) NOT NULL,
  `currency` varchar(11) NOT NULL,
  `price` float NOT NULL,
  `topay` float NOT NULL,
  `admin_commission` float NOT NULL,
  `cleaning` float NOT NULL,
  `security` float NOT NULL,
  `extra_guest_price` float NOT NULL,
  `guest_count` int(5) NOT NULL,
  `coupon` varchar(25) NOT NULL,
  `credit_type` tinyint(4) NOT NULL,
  `ref_amount` int(111) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  `is_payed` tinyint(4) NOT NULL DEFAULT '0',
  `is_payed_host` int(1) NOT NULL DEFAULT '0',
  `is_payed_guest` int(1) NOT NULL DEFAULT '0',
  `payment_id` tinyint(4) NOT NULL,
  `payed_date` varchar(111) NOT NULL,
  `book_date` int(31) NOT NULL,
  `cancel_date` varchar(50) NOT NULL,
  `host_penalty` float NOT NULL,
  `policy` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_status`
--

DROP TABLE IF EXISTS `reservation_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_status` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_status`
--

LOCK TABLES `reservation_status` WRITE;
/*!40000 ALTER TABLE `reservation_status` DISABLE KEYS */;
INSERT INTO `reservation_status` VALUES (0,'Payment Pending'),(1,'Pending'),(2,'Expired'),(3,'Accepted'),(4,'Declined'),(5,'Before Checkin Canceled by Host'),(6,'Before Checkin Canceled by Guet'),(7,'Checkin'),(8,'Awaiting Host Review'),(9,'Awaiting Travel Review'),(10,'Completed'),(11,'After Checkin Canceled by Host'),(12,'After Checkin Canceled by Guest'),(13,'Pending Reservation Canceled');
/*!40000 ALTER TABLE `reservation_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userby` bigint(20) NOT NULL,
  `userto` bigint(20) NOT NULL,
  `reservation_id` bigint(20) NOT NULL,
  `list_id` bigint(20) NOT NULL,
  `review` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `feedback` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cleanliness` smallint(6) NOT NULL,
  `communication` smallint(6) NOT NULL,
  `house_rules` smallint(6) NOT NULL,
  `accuracy` tinyint(4) NOT NULL,
  `checkin` tinyint(4) NOT NULL,
  `location` tinyint(4) NOT NULL,
  `value` tinyint(4) NOT NULL,
  `created` int(31) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,0,'User'),(2,0,'Admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_neigh`
--

DROP TABLE IF EXISTS `saved_neigh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_neigh` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `city_id` int(5) NOT NULL,
  `city` varchar(100) NOT NULL,
  `place_id` int(5) NOT NULL,
  `place` varchar(100) NOT NULL,
  `user_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_neigh`
--

LOCK TABLES `saved_neigh` WRITE;
/*!40000 ALTER TABLE `saved_neigh` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_neigh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasonalprice`
--

DROP TABLE IF EXISTS `seasonalprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seasonalprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `start_date` int(31) NOT NULL,
  `end_date` int(31) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasonalprice`
--

LOCK TABLES `seasonalprice` WRITE;
/*!40000 ALTER TABLE `seasonalprice` DISABLE KEYS */;
/*!40000 ALTER TABLE `seasonalprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `setting_type` char(1) CHARACTER SET utf8 NOT NULL,
  `value_type` char(1) CHARACTER SET utf8 NOT NULL,
  `int_value` int(12) DEFAULT NULL,
  `string_value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text_value` text CHARACTER SET utf8,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'SITE_TITLE','Site Title','S','S',0,'stayrove.com',NULL,1424858516),(2,'SITE_SLOGAN','Site Slogan','S','S',0,'Travel and Care for Pets',NULL,2013),(3,'SITE_STATUS','Site status','S','I',0,'',NULL,2013),(4,'OFFLINE_MESSAGE','Offline Message','S','T',0,'','Website is visiting the VET for updates, please check back in 10 minutes',2013),(5,'SITE_ADMIN_MAIL','Site Admin Mail','S','S',NULL,'stayrovetech@gmail.com',NULL,1424858516),(6,'SITE_FB_API_ID','Site Facebook API ID','S','S',NULL,'1403580126616165',NULL,1424858516),(7,'SITE_FB_API_SECRET','Site Facebook Secret Key','S','S',NULL,'e3a73272a08abcc1a6c44d516376b920',NULL,1424858516),(8,'SITE_GOOGLE_API_ID','Site Google API Key','S','S',NULL,'1',NULL,1424858516),(9,'FRONTEND_LANGUAGE','Frontend Language','S','S',1,'en','en',2013),(10,'SITE_LOGO','Site Logo','S','S',NULL,'stayrove_logo_157_45.png',NULL,2013),(11,'META_KEYWORD','Meta Keyword','S','S',NULL,'StayRove',NULL,2013),(12,'META_DESCRIPTION','Meta Description','S','S',NULL,'StayRove - travel the world and mind pets',NULL,2013),(13,'HOW_IT_WORKS','How It Works','S','S',0,'video.mp4','',2013),(14,'GOOGLE_ANALYTICS_CODE','Google Analytics Code','S','S',NULL,NULL,'',2013),(15,'BACKEND_LANGUAGE','Backend Language','S','S',1,'en','en',0),(16,'SITE_TWITTER_API_ID','Site Twitter API ID','S','S',NULL,'1',NULL,1424858516),(17,'SITE_TWITTER_API_SECRET','Site Twitter Secret Key','S','S',NULL,'1',NULL,1424858516),(47,'DI_LICENSE_KEY','License Key','S','S',NULL,'DropInn-866c1846d26a ',NULL,1424876503),(48,'DI_LICENSE_LOCAL_KEY','License Local Key','S','T',NULL,NULL,'YToxMTp7czo4OiJjdXN0b21lciI7YTo4OntzOjI6ImlkIjtzOjM6IjYzMSI7czox%0ANToicHJpbWFyeV91c2VyX2lkIjtzOjQ6IjExNDUiO3M6NDoibmFtZSI7czo4OiJD%0Ab2d6aWRlbCI7czoxMDoidmF0X251bWJlciI7czowOiIiO3M6OToiaG93X2ZvdW5k%0AIjtzOjA6IiI7czo1OiJhbGlhcyI7czowOiIiO3M6Njoic3RhdHVzIjtzOjc6ImVu%0AYWJsZWQiO3M6NzoiY3JlYXRlZCI7czoxMDoiMTQyMzg0NTUyNSI7fXM6NDoidXNl%0AciI7YToxOntpOjA7YToxNDp7czoyOiJpZCI7czo0OiIxMTQ1IjtzOjEwOiJzZXNz%0AaW9uX2lkIjtzOjMyOiI1ODRiMjg3MjI2NjQ2ZDJhNjcxZWM1OTFhOGZhNDA2OSI7%0AczoxMToibGFzdF9sb2dnZWQiO3M6MTA6IjE0MjM4NDU2OTEiO3M6MTA6ImZpcnN0%0AX25hbWUiO3M6Nzoic3lzdGVtcyI7czo5OiJsYXN0X25hbWUiO3M6ODoiY29nemlk%0AZWwiO3M6ODoicGFzc3dvcmQiO3M6MzI6IjQ5YTA4MTgyMmI4NzQwNzlhYWJkOGU1%0AZGJmMTBjZWYwIjtzOjg6InVzZXJuYW1lIjtzOjE1OiJzeXN0ZW1zY29nemlkZWwi%0AO3M6NToiZW1haWwiO3M6MjA6InN5c3RlbXNAY29nemlkZWwuY29tIjtzOjE3OiJz%0AZWN1cml0eV9xdWVzdGlvbiI7czoyNDoiV2hhdCB3YXMgeW91ciBmaXJzdCBwZXQ%2F%0AIjtzOjI0OiJzZWN1cml0eV9xdWVzdGlvbl9hbnN3ZXIiO3M6Njoia3V0dGFpIjtz%0AOjg6Im1heF9yb3dzIjtzOjE6IjUiO3M6MjU6ImhlbHBkZXNrX2Zsb29kX3Byb3Rl%0AY3Rpb24iO3M6ODoiRGlzYWJsZWQiO3M6NzoiY3JlYXRlZCI7czoxMDoiMTQyMzg0%0ANTUyNSI7czo2OiJzdGF0dXMiO3M6NzoiZW5hYmxlZCI7fX1zOjE4OiJsaWNlbnNl%0AX2tleV9zdHJpbmciO3M6MjE6IkRyb3BJbm4tODY2YzE4NDZkMjZhICI7czo4OiJp%0AbnN0YW5jZSI7YTo1OntzOjk6ImRpcmVjdG9yeSI7YToxOntpOjExNTc1O3M6MzE6%0AIi9ob21lL3N0YXlyb3ZlL3B1YmxpY19odG1sL2JldGEiO31zOjY6ImRvbWFpbiI7%0AYToyOntpOjExNTcyO3M6MTI6InN0YXlyb3ZlLmNvbSI7aToxMTU3MztzOjE2OiJ3%0Ad3cuc3RheXJvdmUuY29tIjt9czoyOiJpcCI7YToxOntpOjExNTc0O3M6MTQ6IjEy%0AOC4xOTkuODQuMTI5Ijt9czoxNToic2VydmVyX2hvc3RuYW1lIjthOjE6e2k6MTE1%0ANzY7czoxOToic2VydmVyLnN0YXlyb3ZlLmNvbSI7fXM6OToic2VydmVyX2lwIjth%0AOjE6e2k6MTE1Nzc7czo5OiIxMjcuMC4xLjEiO319czo3OiJlbmZvcmNlIjthOjU6%0Ae2k6MDtzOjY6ImRvbWFpbiI7aToxO3M6MjoiaXAiO2k6MjtzOjk6ImRpcmVjdG9y%0AeSI7aTozO3M6MTU6InNlcnZlcl9ob3N0bmFtZSI7aTo0O3M6OToic2VydmVyX2lw%0AIjt9czoxMzoiY3VzdG9tX2ZpZWxkcyI7YToxOntzOjA6IiI7Tjt9czoyMzoiZG93%0AbmxvYWRfYWNjZXNzX2V4cGlyZXMiO2k6MDtzOjIyOiJzdXBwb3J0X2FjY2Vzc19l%0AeHBpcmVzIjtpOjA7czoxNToibGljZW5zZV9leHBpcmVzIjtzOjU6Im5ldmVyIjtz%0AOjE3OiJsb2NhbF9rZXlfZXhwaXJlcyI7czoxMDoiMTQyODk0OTc5OSI7czo2OiJz%0AdGF0dXMiO3M6NjoiYWN0aXZlIjt9e3NwYmFzfWVmMDMzOGY2ZWIzODhkODUyOGQ1%0ANjQ0OGJmZjhjMmQwe3NwYmFzfTYxNDNlNzU4MDRmMTlmNDkzMTE1N2RlNzAxOWMx%0AMjRh',1424876503),(30,'BANNER_VIDEO','Home page banner video','S','S',0,'http://www.youtube.com/watch?v=ab0TSkLe-E0',NULL,0),(20,'NEXMO_API_SECRET','Nexmo API Secret','S','T',0,'de5c7ba2',NULL,0),(21,'NEXMO_API_KEY','Nexmo API Key','S','T',0,'c39f7053',NULL,0),(22,'NEXMO_API_PHONE_NO','Nexmo API Registered Phone number','S','S',0,'441143597371',NULL,0);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_extra`
--

DROP TABLE IF EXISTS `settings_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_extra` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `setting_type` char(1) CHARACTER SET utf8 NOT NULL,
  `value_type` char(1) CHARACTER SET utf8 NOT NULL,
  `int_value` int(12) DEFAULT NULL,
  `string_value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text_value` text CHARACTER SET utf8,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_extra`
--

LOCK TABLES `settings_extra` WRITE;
/*!40000 ALTER TABLE `settings_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `list_id` int(25) NOT NULL,
  `page_view` int(25) NOT NULL,
  `date` int(25) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` int(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
INSERT INTO `statistics` VALUES (1,2,2,26,'February',2015),(2,1,2,10,'March',2015),(3,2,1,27,'March',2015),(4,2,1,14,'April',2015),(5,2,1,15,'April',2015),(6,1,1,21,'April',2015),(7,3,1,25,'April',2015),(8,2,1,3,'May',2015),(9,2,1,7,'May',2015),(10,3,1,7,'May',2015),(11,1,1,7,'May',2015),(12,2,1,11,'May',2015),(13,1,1,11,'May',2015),(14,3,1,11,'May',2015),(15,1,1,18,'May',2015),(16,3,1,18,'May',2015),(17,2,1,20,'May',2015),(18,2,1,21,'May',2015),(19,3,1,23,'May',2015),(20,1,1,23,'May',2015),(21,3,1,25,'May',2015),(22,1,1,25,'May',2015),(23,1,1,1,'June',2015),(24,3,1,1,'June',2015),(25,2,1,1,'June',2015),(26,1,1,3,'June',2015),(27,3,1,5,'June',2015),(28,2,1,8,'June',2015),(29,2,1,25,'June',2015),(30,3,1,26,'June',2015),(31,2,1,13,'July',2015),(32,1,1,14,'July',2015),(33,2,1,30,'July',2015),(34,3,2,6,'August',2015),(35,1,2,24,'August',2015),(36,2,1,5,'September',2015),(37,2,1,19,'October',2015),(38,2,1,1,'December',2015),(39,3,1,7,'December',2015);
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toplocation_categories`
--

DROP TABLE IF EXISTS `toplocation_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toplocation_categories` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toplocation_categories`
--

LOCK TABLES `toplocation_categories` WRITE;
/*!40000 ALTER TABLE `toplocation_categories` DISABLE KEYS */;
INSERT INTO `toplocation_categories` VALUES (1,'India'),(2,'World');
/*!40000 ALTER TABLE `toplocation_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toplocations`
--

DROP TABLE IF EXISTS `toplocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toplocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` smallint(6) NOT NULL,
  `name` varchar(111) NOT NULL,
  `search_code` varchar(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toplocations`
--

LOCK TABLES `toplocations` WRITE;
/*!40000 ALTER TABLE `toplocations` DISABLE KEYS */;
INSERT INTO `toplocations` VALUES (1,1,'Delhi','Delhi'),(2,1,'Mumbai','Mumbai'),(3,1,'Bangalore','Bangalore'),(4,1,'Hyderabad','Hyderabad'),(5,1,'Ahmedabad','Ahmedabad'),(6,1,'Chennai','Chennai'),(7,1,'Kolkata','Kolkata'),(8,1,'Pune','Pune'),(9,2,'New York','New York'),(10,2,'San Francisco','San Francisco'),(11,2,'London','London'),(12,2,'Paris','Paris'),(13,2,'Barcelona','Barcelona'),(14,2,'Rome','Rome'),(15,2,'Berlin','Berlin'),(16,2,'Amsterdam','Amsterdam');
/*!40000 ALTER TABLE `toplocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_autologin`
--

DROP TABLE IF EXISTS `user_autologin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_autologin` (
  `key_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_autologin`
--

LOCK TABLES `user_autologin` WRITE;
/*!40000 ALTER TABLE `user_autologin` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_autologin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notification`
--

DROP TABLE IF EXISTS `user_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notification` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `periodic_offers` smallint(5) NOT NULL,
  `company_news` smallint(5) NOT NULL,
  `upcoming_reservation` smallint(5) NOT NULL,
  `new_review` smallint(5) NOT NULL,
  `leave_review` smallint(5) NOT NULL,
  `standby_guests` smallint(5) NOT NULL,
  `rank_search` smallint(5) NOT NULL,
  `user_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification`
--

LOCK TABLES `user_notification` WRITE;
/*!40000 ALTER TABLE `user_notification` DISABLE KEYS */;
INSERT INTO `user_notification` VALUES (1,0,0,0,0,0,0,0,1),(2,0,0,0,1,1,0,0,2);
/*!40000 ALTER TABLE `user_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_temp`
--

DROP TABLE IF EXISTS `user_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(34) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `activation_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_temp`
--

LOCK TABLES `user_temp` WRITE;
/*!40000 ALTER TABLE `user_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '1',
  `ref_id` varchar(50) NOT NULL,
  `fb_id` bigint(20) NOT NULL,
  `twitter_id` bigint(20) NOT NULL,
  `google_id` bigint(20) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `via_login` varchar(25) NOT NULL,
  `facebook_verify` varchar(10) DEFAULT '0',
  `facebook_email` varchar(25) NOT NULL,
  `google_verify` varchar(10) DEFAULT '0',
  `google_email` varchar(25) NOT NULL,
  `email_verify` varchar(10) DEFAULT '0',
  `phone_verify` varchar(10) NOT NULL DEFAULT '0',
  `email_verification_code` varchar(50) DEFAULT '0',
  `phone_verification_code` int(10) NOT NULL,
  `referral_code` varchar(15) NOT NULL,
  `trips_referral_code` varchar(15) NOT NULL,
  `list_referral_code` varchar(15) NOT NULL,
  `referral_amount` int(10) NOT NULL,
  `timezone` varchar(11) NOT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `newpass` varchar(34) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `newpass_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `newpass_time` datetime DEFAULT NULL,
  `last_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` int(31) NOT NULL,
  `created` int(31) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `photo_status` int(11) NOT NULL,
  `shortlist` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,2,'21232f297a57a5a743894a0e4a801fc3',0,0,0,'41179','admin','$1$LVAfS3lA$PEC0wURcLs47RHLG8cwRu/','stayrovetech@gmail.com','','0','','0','','0','0','e4b9194d0d2266f5add96e7d0247ee95',0,'','','',0,'UP10',0,NULL,NULL,NULL,NULL,'110.33.196.70',1426077210,1424876516,'2015-03-11 12:33:30',1,'1,2'),(2,1,'f118f9610072f0bbd26fdd0027fb5041',0,0,0,'71645','stevenb','$1$Hb3pwf1p$6BE7QciKAt8txyjUWrI7V1','stevenbegley@hotmail.com','','0','','0','','0','yes','0',9150,'','0','0',0,'UTC',0,NULL,NULL,NULL,NULL,'110.33.205.245',1426430215,1424878249,'2015-03-15 14:36:55',1,'');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-22  1:55:13
