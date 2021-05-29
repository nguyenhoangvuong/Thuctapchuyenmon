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
		$baddress=$_POST['billingaddress'];
		$bstate=$_POST['bilingstate'];
		$bcity=$_POST['billingcity'];
		// $bpincode=$_POST['billingpincode'];
        $bpincode=mt_rand(1000, 9999);
		$query=mysqli_query($con,"update tblusers set Diachithanhtoan='$baddress',Trangthaithanhtoan='$bstate',Thanhphothanhtoan='$bcity',Mapinthanhtoan='$bpincode' where Id='".$_SESSION['id']."'");
		if($query)
		{
echo "<script>alert('Địa chỉ thanh toán đã được cập nhật');</script>";
		}
	}


	if(isset($_POST['shipupdate']))
	{
		$saddress=$_POST['shippingaddress'];
		$sstate=$_POST['shippingstate'];
		$scity=$_POST['shippingcity'];
		$spincode=$_POST['shippingpincode'];
		$query=mysqli_query($con,"update users set shippingAddress='$saddress',shippingState='$sstate',shippingCity='$scity',shippingPincode='$spincode' where id='".$_SESSION['id']."'");
		if($query)
		{
echo "<script>alert('Shipping Address has been updated');</script>";
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
                                            <span>1</span>Địa chỉ thanh toán
                                        </a>
                                    </h4>
                                </div>

                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12 already-registered-login">
                                                <?php
													$query=mysqli_query($con,"select * from tblusers where Id='".$_SESSION['id']."'");
													while($row=mysqli_fetch_array($query))
													{
												?>
                                                <form class="register-form" role="form" method="post">
                                                    <form class="register-form" role="form" method="post">
                                                        <div class="form-group">
                                                            <label class="info-title" for="Billing Address">Địa chỉ
                                                                thanh toán<span>*</span></label>
                                                            <textarea
                                                                class="form-control unicase-form-control text-input"
                                                                name="billingaddress"
                                                                required="required"><?php echo $row['Diachithanhtoan'];?></textarea>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="info-title" for="Billing State ">Trạng thái
                                                                thanh toán
                                                                <span>*</span></label>
                                                            <input type="text"
                                                                class="form-control unicase-form-control text-input"
                                                                id="bilingstate" name="bilingstate"
                                                                value="<?php echo $row['Trangthaithanhtoan'];?>"
                                                                required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="info-title" for="Billing City">Thành phố
                                                                <span>*</span></label>
                                                            <input type="text"
                                                                class="form-control unicase-form-control text-input"
                                                                id="billingcity" name="billingcity" required="required"
                                                                value="<?php echo $row['Thanhphothanhtoan'];?>">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="info-title" for="Billing Pincode">Mã pin
                                                                <span>*</span></label>
                                                            <input type="text"
                                                                class="form-control unicase-form-control text-input"
                                                                id="billingpincode" name="billingpincode" readonly
                                                                value="<?php echo $bpincode;?>">
                                                        </div>


                                                        <button type="submit" name="update"
                                                            class="btn-upper btn btn-primary checkout-page-button">Cập
                                                            nhật</button>
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
                                            <span>2</span>Địa chỉ giao hàng
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">

                                        <?php
$query=mysqli_query($con,"select * from tblusers where Id='".$_SESSION['id']."'");
while($row=mysqli_fetch_array($query))
{
?>

                                        <form class="register-form" role="form" method="post">
                                            <div class="form-group">
                                                <label class="info-title" for="Shipping Address">Địa chỉ giao hàng<span>*</span></label>
                                                <textarea class="form-control unicase-form-control text-input" name="
                                                    shippingaddress"
                                                    required="required"><?php echo $row['Diachigiaohang'];?></textarea>
                                            </div>



                                            <div class="form-group">
                                                <label class="info-title" for="Billing State ">Trạng thái giao hàng
                                                    <span>*</span></label>
                                                <input type="text" class="form-control unicase-form-control text-input"
                                                    id="shippingstate" name="shippingstate"
                                                    value="<?php echo $row['Trangthaivanchuyen'];?>" required>
                                            </div>
                                            <div class="form-group">
                                                <label class="info-title" for="Billing City">Thành phố giao hàng
                                                    <span>*</span></label>
                                                <input type="text" class="form-control unicase-form-control text-input"
                                                    id="shippingcity" name="shippingcity" required="required"
                                                    value="<?php echo $row['Thanhphovanchuyen'];?>">
                                            </div>
                                            <div class="form-group">
                                                <label class="info-title" for="Billing Pincode">Mã pin
                                                    <span>*</span></label>
                                                <input type="text" class="form-control unicase-form-control text-input"
                                                    id="shippingpincode" name="shippingpincode" readonly
                                                    value="<?php echo $bpincode;?>">
                                            </div>


                                            <button type="submit" name="shipupdate"
                                                class="btn-upper btn btn-primary checkout-page-button">Cập nhật</button>
                                        </form>
                                        <?php } ?>




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