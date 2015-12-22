<?php

/**
3
 * Quickly and easily backup your MySQL database and have the .tgz copied to
4
 * your Dropbox account.
5
 *
6
 * Copyright (c) 2012 Eric Silva
7
 *
8
 * Permission is hereby granted, free of charge, to any person obtaining a copy
9
 * of this software and associated documentation files (the "Software"), to deal
10
 * in the Software without restriction, including without limitation the rights
11
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
12
 * copies of the Software, and to permit persons to whom the Software is
13
 * furnished to do so, subject to the following conditions:
14
 *
15
 * The above copyright notice and this permission notice shall be included in
16
 * all copies or substantial portions of the Software.
17
 *
18
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
19
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
20
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
21
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
22
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
23
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
24
 * THE SOFTWARE.
25
 *
26
 * @author Eric Silva [eric@ericsilva.org] [http://ericsilva.org/]
27
 * @version 1.0.0
28
 */

 

require('DropboxUploader.php');

 

// location of your temp directory

//$tmpDir = "/tmp/";

// username for MySQL

$username = "";

// password for MySQL

$password = "iGk7WD5-3n+C";

// database name to backup

$dbname = "";

// hostname or IP where database resides

$host = "localhost";

// the zip file emailed to you will have this prefixed

//$prefix = "db_";

$dbhandle = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL"); 
$selected = mysql_select_db($dbname,$dbhandle);
$result = mysql_query("SELECT * FROM fc_admin");
$row = mysql_fetch_array($result);
   
//echo "<pre>";print_r($row);die;
//echo $row["dropbox_email"]; die;
// username for Dropbox

$dropbox_user = $row["dropbox_email"];

// password for Dropbox

$dropbox_password = $row["dropbox_password"];

// Destination folder in Dropbox (folder will be created if doesn't yet exist)

$dropbox_dest = "db_backups";

  

// Create the database backup file

// $sqlFile =$prefix.date('Y_m_d').".sql";

// $backupFilename = $prefix.date('Y_m_d').".tgz";

// $backupFile = $sqlFile;



$zip = new ZipArchive();

// $dir = "backupdb";
// if(!(file_exists($dir))) {
// mkdir($dir, 0777);
// }

backup_tables($host, $username, $password, $dbname);


function backup_tables($host,$user,$pass,$name,$tables = '*')
{
$con = mysql_connect($host,$user,$pass);
mysql_select_db($name,$con);

//get all of the tables
if($tables == '*')
{
$tables = array();
$result = mysql_query('SHOW TABLES');
while($row = mysql_fetch_row($result))
{
$tables[] = $row[0];
}
}
else
{
$tables = is_array($tables) ? $tables : explode(',',$tables);
}
$return = "";

//cycle through
foreach($tables as $table)
{
$result = mysql_query('SELECT * FROM '.$table);
$num_fields = mysql_num_fields($result);
$return.= 'DROP TABLE '.$table.';';
$row2 = mysql_fetch_row(mysql_query('SHOW CREATE TABLE '.$table));
$return.= "nn".$row2[1].";nn";

while($row = mysql_fetch_row($result))
{
$return.= 'INSERT INTO '.$table.' VALUES(';
for($j=0; $j<$num_fields; $j++)
{
$row[$j] = addslashes($row[$j]);
$row[$j] = preg_replace("#n#","n",$row[$j]);
if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
if ($j<($num_fields-1)) { $return.= ','; }
}
$return.= ");n";
}
$return.="nnn";
}

//save file
@$handle = fopen('backup/backupdb'.date('Y-m-d').'.sql','w+');
fwrite($handle,$return);
fclose($handle);
}


if (glob("*.sql") != false)
{
$filecount = count(glob("*.sql"));
//echo "<script>alert($filecount);</script>"; die;
$arr_file = glob("*.sql");

for($j=0;$j<$filecount;$j++)
{
$res = $zip->open($arr_file[$j].".zip", ZipArchive::CREATE);
if ($res === TRUE)
{
$zip->addFile($arr_file[$j]);
$zip->close();
unlink($arr_file[$j]);
}
}
}


$path = dirname($_SERVER['PHP_SELF']);
//$path = $path."/backupdb";
$position = strrpos($path,'/') + 1;
$folder_name = substr($path,$position);
//get the current folder name-end


@$zipname = date('Y/m/d');
@$str = "stark-".$zipname.".zip";
@$str = str_replace("/", "-", $str);


// open archive
if ($zip->open($str, ZIPARCHIVE::CREATE) !== TRUE) {
die ("Could not open archive");
}
// initialize an iterator
// pass it the directory to be processed
$iterator = new RecursiveIteratorIterator(new RecursiveDirectoryIterator("../$folder_name/"));
// iterate over the directory
// add each file found to the archive

// foreach ($iterator as $key=>$value) {
// if( strstr(realpath($key), "stark") == FALSE) {
// $zip->addFile(realpath($key), $key) or die ("ERROR: Could not add file: $key");
// }

// }
// close and save archive
$zip->close();






 

//$createBackup = "mysqldump -h ".$dbHost." -u ".$user." --password='".$password."' ".$dbName." > ".$sqlFile;

//echo $createBackup;

//$createZip = "tar cvzf $backupFile $sqlFile";

//echo $createZip;

//exec($createBackup);

//exec($createZip);


try {

    // Upload database backup to Dropbox

    $uploader = new DropboxUploader($dropbox_user, $dropbox_password);

    @$uploader->upload('backup/backupdb'.date('Y-m-d').'.sql', $dropbox_dest,'backup/backupdb'.date('Y-m-d').'.sql');

} catch(Exception $e) {

    die($e->getMessage());

}
 @$backupfile = 'backup/backupdb'.date('Y-m-d').'.sql';
 echo "<script> window.location='admin/dashboard/admin_dashboard';alert('Successfully Backup Database');</script>";

// Delete the temporary files

//unlink($sqlFile);

unlink($backupfile);


?>
