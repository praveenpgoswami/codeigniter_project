<?php
ini_set('memory_limit','1024M');
require('DropboxUploader.php');

// username for Dropbox

$dropbox_user = "vselvakumar04@gmail.com";

// password for Dropbox

$dropbox_password = "permission2696";

// Destination folder in Dropbox (folder will be created if doesn't yet exist)

$dropbox_dest = "db_backups";

@$dest = 'backup/backup'.date('Y-m-d').'.zip';
zipFile('../../backup',$dest, true);


function zipFile($source, $destination, $flag = '')
{
    if (!extension_loaded('zip') || !file_exists($source)) {
        return false;
    }

    $zip = new ZipArchive();
    if (!$zip->open($destination, ZIPARCHIVE::CREATE)) {
        return false;
    }

    $source = str_replace('\\', '/', realpath($source));
    if($flag)
    {
        $flag = basename($source) . '/';
        //$zip->addEmptyDir(basename($source) . '/');
    }

    if (is_dir($source) === true)
    {
        $files = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($source), RecursiveIteratorIterator::SELF_FIRST);
        foreach ($files as $file)
        {
            $file = str_replace('\\', '/', realpath($file));

            if (is_dir($file) === true)
            {
                $zip->addEmptyDir(str_replace($source . '/', '', $flag.$file . '/'));
            }
            else if (is_file($file) === true)
            {
                $zip->addFromString(str_replace($source . '/', '', $flag.$file), file_get_contents($file));
            }
        }
    }
    else if (is_file($source) === true)
    {
        $zip->addFromString($flag.basename($source), file_get_contents($source));
    }
	//echo "Successfully Ziped Folder";
    return $zip->close();
}

try {

    // Upload database backup to Dropbox

    $uploader = new DropboxUploader($dropbox_user, $dropbox_password);

    @$uploader->upload($dest,$dropbox_dest,$dest);

} catch(Exception $e) {

    die($e->getMessage());

}

 echo "<script> window.location='admin/dashboard/admin_dashboard';alert('Successfully Backup Database');</script>";

?>