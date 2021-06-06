<?php
require 'sdk/facebook.php';

$facebook = new Facebook(array(
  'appId'  => '401343546691700', //App ID
  'secret' => '5eddecdeb74652781378e0a6ea271b13', //App Secret
));

// Get User ID
$user = $facebook->getUser();

if ($user) {
  try {
    $user_profile = $facebook->api('/me');
  } catch (FacebookApiException $e) {
    error_log($e);
    $user = null;
  }
}

if ($user) {
  $logoutUrl = $facebook->getLogoutUrl();
} else {
  $loginUrl = $facebook->getLoginUrl();
}

// Save to mysql
if ($user) {
 if($_GET["code"] != "")
 {
    $objConnect = mysql_connect("localhost","root","root") or die(mysql_error());
    $objDB = mysql_select_db("mydb");
    mysql_query("SET NAMES UTF8");
    $strSQL ="  INSERT INTO  tb_facebook (FACEBOOK_ID,NAME,LINK,CREATE_DATE) 
     VALUES
     ('".trim($user_profile["id"])."',
     '".trim($user_profile["name"])."',
     '".trim($user_profile["link"])."',
     '".trim(date("Y-m-d H:i:s"))."')";
    $objQuery  = mysql_query($strSQL);
    mysql_close();
    header("location:index.php");
    exit();
 }
}

// Logout
if($_GET["Action"] == "Logout")
{
 $facebook->destroySession();
 header("location:index.php");
 exit();
}

?>
<!doctype html>
<html xmlns:fb="http://www.facebook.com/2008/fbml">
  <head>
    <title>php-sdk</title>
    <style>
      body {
        font-family: 'Lucida Grande', Verdana, Arial, sans-serif;
      }
      h1 a {
        text-decoration: none;
        color: #3b5998;
      }
      h1 a:hover {
        text-decoration: underline;
      }
    </style>
  </head>
  <body>
    <h1>php-sdk</h1>

    <?php if ($user): ?>
      <a href="page2.php">Page 2</a> | <a href="?Action=Logout">Logout</a>
    <?php else: ?>
      <div>
        <a href="<?php echo $loginUrl; ?>">Login with Facebook</a>
      </div>
    <?php endif ?>

    <h3>PHP Session</h3>
    <pre><?php print_r($_SESSION); ?></pre>

    <?php if ($user): ?>
      <h3>You</h3>
      <img src="https://graph.facebook.com/<?php echo $user; ?>/picture">

      <h3>Your User Object (/me)</h3>
      <pre><?php print_r($user_profile); ?></pre>
    <?php else: ?>
      <strong><em>You are not Connected.</em></strong>
    <?php endif ?>

  </body>
</html>