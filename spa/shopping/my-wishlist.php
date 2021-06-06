<?php
session_start();
error_reporting(0);
include('../includes/dbconnection.php');
if(strlen($_SESSION['login'])==0)
    {   
header('location:index.php');
}
else{
$wid=intval($_GET['del']);
if(isset($_GET['del']))
{
$query=mysqli_query($con,"delete from tblyeuthich where Id='$wid'");
}

if (!function_exists('currency_format')) {
    function currency_format($number, $suffix = 'đ') {
        if (!empty($number)) {
            return number_format($number, 0, ',', '.') . "{$suffix}";
        }
    }
}
if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	$query=mysqli_query($con,"delete from tblyeuthich where SanphamId='$id'");
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
        echo "<script>alert('Sản phẩm đã được thêm vào giỏ hàng')</script>";
	}else{
		$sql_p="SELECT * FROM tblsanpham WHERE Id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['Id']]=array("quantity" => 1, "price" => $row_p['Giasanpham']);	
            echo "<script>alert('Sản phẩm đã được thêm vào giỏ hàng')</script>";
            header('location:my-wishlist.php');
}
		else{
			$message="ID sản phẩm không tồn tại";
		}
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

    <title>Yêu thích</title>
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
                    <li><a href="home.html">Home</a></li>
                    <li class='active'>Sản phẩm yêu thích</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="body-content outer-top-bd">
        <div class="container">
            <div class="my-wishlist-page inner-bottom-sm">
                <div class="row">
                    <div class="col-md-12 my-wishlist">
                        <div class="table-responsive">
                            <table class="table" style="margin-top:-50px">
                                <thead>
                                    <tr>
                                        <th colspan="4" style="font-family:times new roman;">sản phẩm yêu thích</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
										$ret=mysqli_query($con,"select tblsanpham.Tensanpham as pname,tblsanpham.Giasanphamtruockhigiam as pprice1,tblsanpham.Hinhanh1 as pimage,tblsanpham.Giasanpham as pprice,tblyeuthich.SanphamId as pid,tblyeuthich.Id as wid from tblyeuthich join tblsanpham on tblsanpham.Id=tblyeuthich.SanphamId where tblyeuthich.UserId='".$_SESSION['id']."'");
										$num=mysqli_num_rows($ret);
											if($num>0)
											{
										while ($row=mysqli_fetch_array($ret)) {
									?>
                                    <tr>
                                        <td class="col-md-2"><img
                                                src="admin/productimages/<?php echo htmlentities($row['pid']);?>/<?php echo htmlentities($row['pimage']);?>"
                                                alt="<?php echo htmlentities($row['pname']);?>" width="60" height="100">
                                        </td>
                                        <td class="col-md-6">
                                            <div class="product-name"><a
                                                    href="product-details.php?pid=<?php echo htmlentities($pd=$row['pid']);?>"><?php echo htmlentities($row['pname']);?></a>
                                            </div>
                                            <?php $rt=mysqli_query($con,"select * from tlbdanhgiasanpham where SanphamId='$pd'");
												$num=mysqli_num_rows($rt);
												{
											?>
                                            <div class="rating">
                                                <i class="fa fa-star rate"></i>
                                                <i class="fa fa-star rate"></i>
                                                <i class="fa fa-star rate"></i>
                                                <i class="fa fa-star rate"></i>
                                                <i class="fa fa-star non-rate"></i>
                                                <span class="review">( <?php echo htmlentities($num);?> Nhận xét
                                                    )</span>
                                            </div>
                                            <?php } ?>
                                            <div class="price">
                                                <?php echo currency_format(htmlentities($row['pprice']));?>
                                                <span><?php echo currency_format(htmlentities($row['pprice1']));?></span>
                                            </div>
                                        </td>
                                        <td class="col-md-2">
                                            <a href="my-wishlist.php?page=product&action=add&id=<?php echo $row['pid']; ?>"
                                                class="btn-upper btn btn-primary">Thêm vào giỏ hàng</a>
                                        </td>
                                        <td class="col-md-2 close-btn">
                                            <a href="my-wishlist.php?del=<?php echo htmlentities($row['wid']);?>"
                                                onClick="return confirm('Bạn chắc chắn muốn xóa?')" class=""><i
                                                    class="fa fa-times"></i></a>
                                        </td>
                                    </tr>
                                    <?php } } else{ ?>
                                    <tr>
                                        <td style="font-size: 18px; font-weight:bold ">Không có sản phẩm yêu thích nào !
                                        </td>

                                    </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
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