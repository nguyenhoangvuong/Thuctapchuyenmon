<?php
session_start();
error_reporting(0);
include('../includes/dbconnection.php');
if(strlen($_SESSION['login'])==0)
    {   
header('location:index.php');
}
else{
	if(isset($_POST['update']))
	{
		$name=$_POST['name'];
		$contactno=$_POST['contactno'];
		$query=mysqli_query($con,"update tblusers set Ten='$name',Lienhe='$contactno' where Id='".$_SESSION['id']."'");
		if($query)
		{
echo "<script>alert('Thông tin của bạn đã được cập nhật');</script>";
		}
	}
date_default_timezone_set('Asia/Kolkata');
$currentTime = date( 'd-m-Y h:i:s A', time () );


if(isset($_POST['submit']))
{
$sql=mysqli_query($con,"SELECT Matkhau FROM  tblusers where Matkhau='".md5($_POST['cpass'])."' && id='".$_SESSION['id']."'");
$num=mysqli_fetch_array($sql);
if($num>0)
{
 $con=mysqli_query($con,"update tblusers set matkhau='".md5($_POST['newpass'])."', Ngaycapnhat='$currentTime' where Id='".$_SESSION['id']."'");
echo "<script>alert('Thay đổi mật khẩu thành công !!');</script>";
}
else
{
	echo "<script>alert('Mật khẩu hiện tại không đúng !!');</script>";
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
    <title>Tài khoản của tôi</title>
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
    <script type="text/javascript">
    function valid() {
        if (document.chngpwd.cpass.value == "") {
            alert("Mật khẩu hiện tại không được bỏ trống !!");
            document.chngpwd.cpass.focus();
            return false;
        } else if (document.chngpwd.newpass.value == "") {
            alert("Mật khẩu mới không được bỏ trống !!");
            document.chngpwd.newpass.focus();
            return false;
        } else if (document.chngpwd.cnfpass.value == "") {
            alert("Xác thực mật khẩu không được bỏ trống !!");
            document.chngpwd.cnfpass.focus();
            return false;
        } else if (document.chngpwd.newpass.value != document.chngpwd.cnfpass.value) {
            alert("Mật khẩu mới và xác thực không giống nhau  !!");
            document.chngpwd.cnfpass.focus();
            return false;
        }
        return true;
    }
    </script>
    <link rel="stylesheet" type="text/css" href="css/style1.css">
    <link type="text/css" rel="stylesheet" href="css/lightslider.css" />

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
                    <li><a href="#">Home</a></li>
                    <li class='active'>Thủ tục thanh toán</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="body-content outer-top-bd">
        <div class="container">
            <div class="checkout-box inner-bottom-sm">
                <div class="row">
                    <div class="col-md-8">
                        <div class="panel-group checkout-steps" id="accordion">
                            <div class="panel panel-default checkout-step-01">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="" data-parent="#accordion" href="#collapseOne">
                                            <span>1</span>Thông tin của tôi
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <div class="row">
                                            <h4>Thông tin cá nhân</h4>
                                            <div class="col-md-12 col-sm-12 already-registered-login">
                                                <?php
													$query=mysqli_query($con,"select * from tblusers where Id='".$_SESSION['id']."'");
													while($row=mysqli_fetch_array($query))
													{
												?>
                                                <form class="register-form" role="form" method="post">
                                                    <div class="form-group">
                                                        <label class="info-title" for="name">Tên<span>*</span></label>
                                                        <input type="text"
                                                            class="form-control unicase-form-control text-input"
                                                            value="<?php echo $row['Ten'];?>" id="name" name="name"
                                                            required="required">
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="info-title" for="exampleInputEmail1">Địa chỉ Email
                                                            <span>*</span></label>
                                                        <input type="email"
                                                            class="form-control unicase-form-control text-input"
                                                            id="exampleInputEmail1" value="<?php echo $row['Email'];?>"
                                                            readonly>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="info-title" for="Contact No.">Liên hệ.
                                                            <span>*</span></label>
                                                        <input type="text"
                                                            class="form-control unicase-form-control text-input"
                                                            id="contactno" name="contactno" required="required"
                                                            value="<?php echo $row['Lienhe'];?>" maxlength="10">
                                                    </div>
                                                    <button type="submit" name="update"
                                                        class="btn-upper btn btn-primary checkout-page-button">Cập nhật</button>
                                                </form>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="panel panel-default checkout-step-02">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion"
                                            href="#collapseTwo">
                                            <span>2</span>Đổi mật khẩu
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <form class="register-form" role="form" method="post" name="chngpwd"
                                            onSubmit="return valid();">
                                            <div class="form-group">
                                                <label class="info-title" for="Current Password">Mật khẩu hiện tại<span>*</span></label>
                                                <input type="password"
                                                    class="form-control unicase-form-control text-input" id="cpass"
                                                    name="cpass" required="required">
                                            </div>
                                            <div class="form-group">
                                                <label class="info-title" for="New Password">Mật khẩu mới
                                                    <span>*</span></label>
                                                <input type="password"
                                                    class="form-control unicase-form-control text-input" id="newpass"
                                                    name="newpass">
                                            </div>
                                            <div class="form-group">
                                                <label class="info-title" for="Confirm Password">Xác thực mật khẩu
                                                    <span>*</span></label>
                                                <input type="password"
                                                    class="form-control unicase-form-control text-input" id="cnfpass"
                                                    name="cnfpass" required="required">
                                            </div>
                                            <button type="submit" name="submit"
                                                class="btn-upper btn btn-primary checkout-page-button">Thay đổi </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php include('includes/myaccount-sidebar.php');?>
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
<?php } ?>