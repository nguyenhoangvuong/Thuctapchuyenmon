<?php
require_once(__DIR__.'/Facebook/autoload.php');

define('APP_ID', '148977787268045');
define('APP_SECRET', '1eefb24d1733372f21d055933c9a393a');
define('API_VERSION', 'v2.5');
define('FB_BASE_URL', 'http://localhost:8080/Manage_Spa/spa/shopping/login.php');

define('BASE_URL', 'http://localhost:8080/Manage_Spa/spa/shopping/login.php');

if(!session_id()){
    session_start();
}

$fb = new Facebook\Facebook([
 'app_id' => APP_ID,
 'app_secret' => APP_SECRET,
 'default_graph_version' => API_VERSION,
]);
$fb_helper = $fb->getRedirectLoginHelper();
try {
    if(isset($_SESSION['facebook_access_token']))
		{$accessToken = $_SESSION['facebook_access_token'];}
	else
		{$accessToken = $fb_helper->getAccessToken();}
} catch(FacebookResponseException $e) {
     echo 'Facebook API Error: ' . $e->getMessage();
      exit;
} catch(FacebookSDKException $e) {
    echo 'Facebook SDK Error: ' . $e->getMessage();
      exit;
}
?>