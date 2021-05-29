<?php
	session_start();
	error_reporting(0);
	include('../includes/dbconnection.php');
	if(isset($_POST['submit']))
	{
		$name=$_POST['fullname'];
		$email=$_POST['emailid'];
		$contactno=$_POST['contactno'];
		$password=md5($_POST['password']);
		$query=mysqli_query($con,"insert into tblusers(Ten,Email,Lienhe,Matkhau) values('$name','$email','$contactno','$password')");
	if($query)
	{
		echo "<script>alert('Bạn đã đăng ký thành công');</script>";
	}
	else{
		echo "<script>alert('Đăng ký đã gặp lỗi.Thử lại !');</script>";
	}
}

// Login
if(isset($_POST['login']))
{
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	$query=mysqli_query($con,"SELECT * FROM tblusers WHERE Email='$email' and Matkhau='$password'");
	$num=mysqli_fetch_array($query);
	if($num>0)
	{
		$_SESSION['login']=$_POST['email'];
		$_SESSION['id']=$num['Id'];
		$_SESSION['username']=$num['name'];
		$uip=$_SERVER['REMOTE_ADDR'];
		$status=1;
		$log=mysqli_query($con,"insert into tblnhatkynguoidung(Emailnguoidung,Ipnguoidung,Trangthai) values('".$_SESSION['login']."','$uip','$status')");
		$host=$_SERVER['HTTP_HOST'];
		$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
		header("location:http://$host$uri/my-cart.php");
		exit();
	}
	else
	{
		$email=$_POST['email'];
		$uip=$_SERVER['REMOTE_ADDR'];
		$status=0;
		$log=mysqli_query($con,"insert into tblnhatkynguoidung(Emailnguoidung,Ipnguoidung,Trangthai) values('$email','$uip','$status')");
		$host  = $_SERVER['HTTP_HOST'];
		$uri  = rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
		header("location:http://$host$uri/login.php");
		$_SESSION['errmsg']="Tài khoản hoặc mật khẩu không đúng";
		exit();
	}
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="MediaCenter, Template, eCommerce">
    <meta name="robots" content="all">
    <title>SPA Shopping | Đăng nhập | Đăng ký</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/green.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/owl.transitions.css">
    <link href="assets/css/lightbox.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/rateit.css">
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="assets/css/config.css">
    <link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
    <link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
    <link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
    <link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
    <link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="css/style1.css">
    <link type="text/css" rel="stylesheet" href="css/lightslider.css" />
    <script type="text/javascript">
    
    function valid() {
        if (document.register.password.value != document.register.confirmpassword.value) {
            alert("Mật khẩu và trường xác nhận mật khẩu không khớp !!");
            document.register.confirmpassword.focus();
            return false;
        }
        return true;
    }
    </script>
    <script>
    function userAvailability() {
        $("#loaderIcon").show();
        jQuery.ajax({
            url: "check_availability.php",
            data: 'email=' + $("#email").val(),
            type: "POST",
            success: function(data) {
                $("#user-availability-status1").html(data);
                $("#loaderIcon").hide();
            },
            error: function() {}
        });
    }
    </script>



</head>

<body class="cnt-home">
    <header class="header-style-1">
        <?php include('includes/top-header.php');?>
        <?php include('includes/main-header.php');?>
        <?php include('includes/menu-bar.php');?>
    </header>
    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="home.html">Home</a></li>
                    <li class='active'>Xác thực</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content outer-top-bd">
        <div class="container">
            <div class="sign-in-page inner-bottom-sm">
                <div class="row">
                    <div class="col-md-6 col-sm-6 sign-in">
                        <h4 class="">Login</h4>
                        <p class="">Chào mừng đến với Spa.</p>
                        <form class="register-form outer-top-xs" method="post">
                            <span style="color:red;">
                                <?php
									echo htmlentities($_SESSION['errmsg']);
								?>
                                <?php
									echo htmlentities($_SESSION['errmsg']="");
								?>
                            </span>
                            <p></p>
                            <div class="form-group">
                                <label class="info-title" for="exampleInputEmail1">Địa chỉ Email <span>*</span></label>
                                <input type="email" name="email" class="form-control unicase-form-control text-input"
                                    id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label class="info-title" for="exampleInputPassword1">Mật khẩu <span>*</span></label>
                                <input type="password" name="password"
                                    class="form-control unicase-form-control text-input" id="exampleInputPassword1">
                            </div>
                            <div class="radio outer-xs">
                                <a href="forgot-password.php" class="forgot-password pull-right">Quên mật khẩu?</a>
                            </div>
                            <button type="submit" class="btn-upper btn btn-primary checkout-page-button"
                                name="login">Đăng nhập</button>
                        </form>
                    </div>


                    <div class="col-md-6 col-sm-6 create-new-account">
                        <h4 class="checkout-subtitle">create a new account</h4>
                        <p class="text title-tag-line">Tạo tài khoản mua sắm cho riêng bạn.</p>
                        <form class="register-form outer-top-xs" role="form" method="post" name="register"
                            onSubmit="return valid();">
                            <div class="form-group">
                                <label class="info-title" for="fullname">Họ tên đầy đủ <span>*</span></label>
                                <input type="text" class="form-control unicase-form-control text-input" id="fullname"
                                    name="fullname" required="required">
                            </div>


                            <div class="form-group">
                                <label class="info-title" for="exampleInputEmail2">Địa chỉ Email. <span>*</span></label>
                                <input type="email" class="form-control unicase-form-control text-input" id="email"
                                    onBlur="userAvailability()" name="emailid" required>
                                <span id="user-availability-status1" style="font-size:12px;"></span>
                            </div>

                            <div class="form-group">
                                <label class="info-title" for="contactno">Liên hệ. <span>*</span></label>
                                <input type="text" class="form-control unicase-form-control text-input" id="contactno"
                                    name="contactno" maxlength="10" required>
                            </div>

                            <div class="form-group">
                                <label class="info-title" for="password">Mật khẩu. <span>*</span></label>
                                <input type="password" class="form-control unicase-form-control text-input"
                                    id="password" name="password" required>
                            </div>

                            <div class="form-group">
                                <label class="info-title" for="confirmpassword">Xác nhận mật khẩu. <span>*</span></label>
                                <input type="password" class="form-control unicase-form-control text-input"
                                    id="confirmpassword" name="confirmpassword" required>
                            </div>


                            <button type="submit" name="submit" class="btn-upper btn btn-primary checkout-page-button"
                                id="submit">Đăng ký</button>
                        </form>
                        <span class="checkout-subtitle outer-top-xs">Đăng ký ngay hôm nay bạn có thể : </span>
                        <div class="checkbox">
                            <label class="checkbox">
								Tăng tốc theo cách của bạn thông qua thanh toán.
                            </label>
                            <label class="checkbox">
								Theo dõi đơn đặt hàng của bạn một cách dễ dàng.
                            </label>
                            <label class="checkbox">
								Giữ một bản ghi tất cả các giao dịch mua của bạn.
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <?php include('includes/brands-slider.php');?>
        </div>
    </div>
    <?php include('includes/footer.php');?>
    <script src="assets/js/jquery-1.11.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/echo.min.js"></script>
    <script src="assets/js/jquery.easing-1.3.min.js"></script>
    <script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/scripts.js"></script>
    <script src="switchstylesheet/switchstylesheet.js"></script>
    <script>
    $(document).ready(function() {
        $(".changecolor").switchstylesheet({
            seperator: "color"
        });
        $('.show-theme-options').click(function() {
            $(this).parent().toggleClass('open');
            return false;
        });
    });

    $(window).bind("load", function() {
        $('.show-theme-options').delay(2000).trigger('click');
    });
    </script>
</body>

</html>