<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
error_reporting(0);

if(isset($_POST['submit']))
  {
    $contactno=$_SESSION['contactno'];
    $email=$_SESSION['email'];
    $password=md5($_POST['newpassword']);
        $query=mysqli_query($con,"update tbladmin set Matkhau='$password'  where  Email='$email' && Sodienthoai='$contactno' ");
   if($query)
   {
echo "<script>alert('Thay đổi mật khẩu thành công');</script>";
session_destroy();
   }
  }
  ?>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <title>SPA | Làm mới mật khẩu </title>

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
    <script type="text/javascript">
    function checkpass() {
        if (document.changepassword.newpassword.value != document.changepassword.confirmpassword.value) {
            alert('Mật khẩu Mới và Xác nhận Mật khẩu không khớp');
            document.changepassword.confirmpassword.focus();
            return false;
        }
        return true;
    }
    </script>
</head>

<body>
        <div id="page-wrapper" style="background-image:url(images/spa.png);background-repeat: no-repeat;background-size: cover;">
            <div class="main-page login-page ">
                <div class="widget-shadow"  style="border-radius:10px;box-shadow:1px 3px 4px #333333">
                    <div class="login-top">
                        <h3 class="title1">Làm mới mật khẩu</h3>
                        <h4>Welcome back to Sk3nwOC SPA ! </h4>
                    </div>
                    <div class="login-body">
                        <form role="form" method="post" action="" name="changepassword" onsubmit="return checkpass();">
                            <p style="font-size:16px; color:red" align="center">
                                <?php 
									if($msg){
										echo $msg;
									} 
								?>
                            </p>
                            <input type="password" name="newpassword" class="lock" placeholder="New Password"
                                required="true">
                            <input type="password" name="confirmpassword" class="lock" placeholder="Confirm Password"
                                required="true">
                            <input type="submit" name="submit" value="Xác nhận">
                            <div class="forgot-grid">

                                <div class="forgot">
                                    <a href="index.php">Bạn đã có tài khoản</a>
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