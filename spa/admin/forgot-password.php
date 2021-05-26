<?php
session_start();
error_reporting(0);
include('../includes/dbconnection.php');

if(isset($_POST['submit']))
  {
    $contactno=$_POST['contactno'];
    $email=$_POST['email'];
    $query=mysqli_query($con,"select ID from tbladmin where  Email='$email' and Sodienthoai='$contactno' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['contactno']=$contactno;
      $_SESSION['email']=$email;
      header('location:reset-password.php');
    }
    else{
      $msg="Không chính xác. Vui lòng nhập lại !";
    }
  }
  ?>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <title>SPA | Quên mật khẩu </title>

    <script type="application/x-javascript">
    addEventListener("load", function() {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    }
    </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/font-awesome.css" rel="stylesheet">
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
        rel='stylesheet' type='text/css'>
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
    <script>
    new WOW().init();
    </script>
    <script src="js/metisMenu.min.js"></script>
    <script src="js/custom.js"></script>
    <link href="css/custom.css" rel="stylesheet">
</head>

<body >
        <div id="page-wrapper" style="background-image:url(images/spa.png);background-repeat: no-repeat;background-size: cover;">
            <div class="main-page login-page ">
                <div class="widget-shadow">
                    <div class="login-top">
                        <h3 class="title1">Quên mật khẩu</h3>
                        <h4>Welcome back to Sk3nwOc SPA ! </h4>
                    </div>
                    <div class="login-body">
                        <form role="form" method="post" action="">
                            <p style="font-size:16px; color:red" align="center">
                                <?php 
									if($msg){
										echo $msg;
									}  
								?>
                            </p>
                            <input type="text" name="email" class="lock" placeholder="Email" required="true">
                            <input type="text" name="contactno" class="lock" placeholder="Số điện thoại" required="true"
                                maxlength="10" pattern="[0-9]+">
                            <input type="submit" name="submit" value="Reset">
                            <div class="forgot-grid">
                                <div class="forgot">
                                    <a href="index.php">Already have an account</a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
    </div>
    <script src="js/classie.js"></script>
    <script>
    var menuLeft = document.getElementById('cbp-spmenu-s1'),
        showLeftPush = document.getElementById('showLeftPush'),
        body = document.body;

    showLeftPush.onclick = function() {
        classie.toggle(this, 'active');
        classie.toggle(body, 'cbp-spmenu-push-toright');
        classie.toggle(menuLeft, 'cbp-spmenu-open');
        disableOther('showLeftPush');
    };

    function disableOther(button) {
        if (button !== 'showLeftPush') {
            classie.toggle(showLeftPush, 'disabled');
        }
    }
    </script>
    <script src="js/jquery.nicescroll.js"></script>
    <script src="js/scripts.js"></script>
    <script src="js/bootstrap.js"> </script>
</body>

</html>