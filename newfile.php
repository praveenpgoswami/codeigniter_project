<?php
include_once('databaseValues.php');
$conn = @mysql_pconnect($hostName,$dbUserName,$dbPassword) or die("Database Connection Failed<br>". mysql_error());

mysql_select_db($databaseName, $conn) or die('DB not selected');


mysql_query("CREATE TABLE IF NOT EXISTS `fc_product_address_new` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;") or die(mysql_error());

echo "1";
mysql_close();

 ?>