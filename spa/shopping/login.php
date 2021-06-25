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
    if(isset($_POST['fbsubmit'])){
        $name = $_SESSION['username']; 
        $email = $_SESSION['login']; 
        $query=mysqli_query($con,"SELECT * FROM tblusers WHERE Email='$email'");
        $num=mysqli_fetch_array($query);
        if($num > 0){
            $uip=$_SERVER['REMOTE_ADDR'];
            $status=1;
            $log=mysqli_query($con,"insert into tblnhatkynguoidung(Emailnguoidung,Ipnguoidung,Trangthai) values('".$_SESSION['login']."','$uip','$status')");
            $host=$_SERVER['HTTP_HOST'];
            $uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
            header("location:http://$host$uri/my-cart.php");
            exit();
        }
        else{
            $query=mysqli_query($con,"insert into tblusers(Ten,Email) values('$name','$email')");
            if($query){
                echo "<script>alert('Bạn đã đăng nhập thành công');</script>";
            }
            else{
                echo "<script>alert('Đăng nhập đã gặp lỗi.Thử lại !');</script>";
            }
        }
       

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
		header("location:http://$host$uri/index.php");
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

<?php
	require_once 'configfb.php';
    include('../includes/dbconnection.php');

	$permissions = ['email'];

	if (isset($accessToken))
	{
		if (!isset($_SESSION['facebook_access_token'])) 
		{
			$_SESSION['facebook_access_token'] = (string) $accessToken;
			$oAuth2Client = $fb->getOAuth2Client();
			$longLivedAccessToken = $oAuth2Client->getLongLivedAccessToken($_SESSION['facebook_access_token']);
			$_SESSION['facebook_access_token'] = (string) $longLivedAccessToken;
			$fb->setDefaultAccessToken($_SESSION['facebook_access_token']);
		} 
		else 
		{
			$fb->setDefaultAccessToken($_SESSION['facebook_access_token']);
		}
		
		
		try {
			$fb_response = $fb->get('/me?fields=name,first_name,last_name,email');
			$fb_response_picture = $fb->get('/me/picture?redirect=false&height=200');
			
			$fb_user = $fb_response->getGraphUser();
			$picture = $fb_response_picture->getGraphUser();
            
			$_SESSION['id1'] = $fb_user->getProperty('id');
			$_SESSION['username'] = $fb_user->getProperty('name');
			$_SESSION['login'] = $fb_user->getProperty('email');
			$_SESSION['fb_user_pic'] = $picture['url'];
	
		} catch(Facebook\Exceptions\FacebookResponseException $e) {
			echo 'Facebook API Error: ' . $e->getMessage();
			session_destroy();
			header("Location: ./");
			exit;
		} catch(Facebook\Exceptions\FacebookSDKException $e) {
			echo 'Facebook SDK Error: ' . $e->getMessage();
			exit;
		}

	} 
	else 
	{	
		$fb_login_url = $fb_helper->getLoginUrl('http://localhost:8080/Manage_Spa/spa/shopping/login.php', $permissions);
	}
    
    if(isset($_GET['code'])){
        $email=$_SESSION['login'];
        $username=$_SESSION['username'];
        $qu = mysqli_query($con,"select Email from tblusers where Email = '$email'");
        $row = mysqli_num_rows($qu);
        if($row == 0){
            $query=mysqli_query($con,"insert into tblusers(Ten,Email,id_fb) values('$username','$email','".$_SESSION['id1']."')");
            if($query)
            {
                $_SESSION['id'] = mysqli_insert_id($con);
                $uip=$_SERVER['REMOTE_ADDR'];
                mysqli_query($con,"insert into tblnhatkynguoidung(Emailnguoidung,Ipnguoidung,Trangthai) values('".$_SESSION['login']."','$uip','0')");
                header('Location:index.php');
            }
        }
        else{
            $qurry = mysqli_query($con,"select * from tblusers where id_fb = '".$_SESSION['id1']."'");
            while($r = mysqli_fetch_array($qurry)){
                $a = $r['Id'];
            }
            $_SESSION['id'] =  $a;
            $uip=$_SERVER['REMOTE_ADDR'];
            mysqli_query($con,"insert into tblnhatkynguoidung(Emailnguoidung,Ipnguoidung,Trangthai) values('".$_SESSION['login']."','$uip','1')");
            header('Location:index.php');
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

    <div class="body-content outer-top-bd" style="font-family:times new roman">
        <div class="container">
            <div class="sign-in-page inner-bottom-sm">
                <div class="row">
                    <div class="col-md-6 col-sm-6 sign-in">
                        <h4 class="" style="font-family:times new roman;FONT-WEIGHT:800">ĐĂNG NHẬP</h4>
                        <p class="" style="font-size:1.8rem;color:lightblue" >Chào mừng đến với Spa.</p>
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
                                <label class="info-title" for="exampleInputEmail1" style="font-size:1.8rem">Địa chỉ Email <span>*</span></label>
                                <input type="email" style="font-size:1.8rem" name="email" class="form-control unicase-form-control text-input"
                                    id="exampleInputEmail1">
                            </div>
                            <div class="form-group">
                                <label class="info-title" for="exampleInputPassword1" style="font-size:1.8rem">Mật khẩu <span>*</span></label>
                                <input type="password" name="password"
                                    class="form-control unicase-form-control text-input" id="exampleInputPassword1">
                            </div>
                            <div class="radio outer-xs">
                                <a href="forgot-password.php" class="forgot-password pull-right" style="font-size:1.8rem">Quên mật khẩu?</a>
                            </div>
                            <button type="submit" class="btn-upper btn btn-primary checkout-page-button" name="login">Đăng nhập</button>
                                <form action="" method="post">
                                    <a name="fbsubmit" href="<?php echo $fb_login_url;?>" class="btn btn-primary" style="background-color:#0099FF">Sign in with <b>Facebook</b></a>
                                </form>
                        </form>
                    </div>


                    <div class="col-md-6 col-sm-6 create-new-account">
                        <h4 class="checkout-subtitle" style="font-family:times new roman;FONT-WEIGHT:800">Tạo tài khoản mới</h4>
                        <p class="text title-tag-line" style="font-size:1.8rem;color:lightblue">Tạo tài khoản mua sắm cho riêng bạn.</p>
                        <form class="register-form outer-top-xs" role="form" method="post" name="register"
                            onSubmit="return valid();">
                            <div class="form-group">
                                <label class="info-title" for="fullname" style="font-size:1.8rem">Họ tên đầy đủ <span>*</span></label>
                                <input type="text" class="form-control unicase-form-control text-input" id="fullname"
                                    name="fullname" required="required">
                            </div>


                            <div class="form-group">
                                <label class="info-title" for="exampleInputEmail2" style="font-size:1.8rem">Địa chỉ Email. <span>*</span></label>
                                <input type="email" class="form-control unicase-form-control text-input" id="email"
                                    onBlur="userAvailability()" name="emailid" required>
                                <span id="user-availability-status1" style="font-size:12px;"></span>
                            </div>

                            <div class="form-group">
                                <label class="info-title" for="contactno" style="font-size:1.8rem">Liên hệ. <span>*</span></label>
                                <input type="text" class="form-control unicase-form-control text-input" id="contactno"
                                    name="contactno" maxlength="10" required>
                            </div>

                            <div class="form-group" >
                                <label class="info-title" for="password" style="font-size:1.8rem">Mật khẩu. <span>*</span></label>
                                <input type="password" class="form-control unicase-form-control text-input" style="font-size:1.8rem"
                                    id="password" name="password" required>
                            </div>

                            <div class="form-group">
                                <label class="info-title" for="confirmpassword" style="font-size:1.8rem">Xác nhận mật khẩu.
                                    <span>*</span></label>
                                <input type="password" class="form-control unicase-form-control text-input" style="font-size:1.8rem"
                                    id="confirmpassword" name="confirmpassword" required>
                            </div>


                            <button type="submit" name="submit" class="btn-upper btn btn-primary checkout-page-button"
                                id="submit">Đăng ký</button>
                        </form>
                        <span class="checkout-subtitle outer-top-xs" style="font-family:times new roman">Đăng ký ngay hôm nay bạn có thể : </span>
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