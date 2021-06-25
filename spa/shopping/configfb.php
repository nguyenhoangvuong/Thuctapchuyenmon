<?php
require_once(__DIR__.'/Facebook/autoload.php');

define('APP_ID', '881606892431106');
define('APP_SECRET', 'beff5f454fc71692310a289d458d86c2');
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