<?php
require_once 'google-api-php-client-master/src/Google/Client.php';
require_once 'google-api-php-client-master/src/Google/DriveService.php';

$client = new Google_Client();
// Get your credentials from the console
$client->setClientId('1003605815729-tmbqgu8hlu26pih5eg35fc0e1rm50dt8.apps.googleusercontent.com');
$client->setClientSecret('N7Z4LJkcPkjnYVmkSWNBnxN6');
$client->setRedirectUri('http://airbnb.zoplay.com/googlelogin/googleRedirect');
$client->setScopes(array('https://www.googleapis.com/auth/drive'));

$service = new Google_DriveService($client);

$authUrl = $client->createAuthUrl();

//Request authorization
print "Please visit:\n$authUrl\n\n";
print "Please enter the auth code:\n";
$authCode = trim(fgets(STDIN));

// Exchange authorization code for access token
$accessToken = $client->authenticate($authCode);
$client->setAccessToken($accessToken);

//Insert a file
$file = new Google_DriveFile();
$file->setTitle('My document');
$file->setDescription('A test document');
$file->setMimeType('text/plain');

$data = file_get_contents('sample.txt');

$createdFile = $service->files->insert($file, array(
      'data' => $data,
      'mimeType' => 'text/plain',
    ));

print_r($createdFile);
?>