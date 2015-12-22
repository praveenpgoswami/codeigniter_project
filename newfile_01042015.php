<?php
include_once('databaseValues.php');
$conn = @mysql_pconnect($hostName,$dbUserName,$dbPassword) or die("Database Connection Failed<br>". mysql_error());

mysql_select_db($databaseName, $conn) or die('DB not selected');

mysql_query("UPDATE `fc_users` SET `is_verified` = 'No' WHERE `fc_users`.`email` = 'muthukrishnan@casperon.in'") or die(mysql_error());

echo "1";
mysql_close();

 ?>