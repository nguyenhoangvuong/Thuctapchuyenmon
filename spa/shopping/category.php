<?php
session_start();
error_reporting(0);
include('../includes/dbconnection.php');
$cid=intval($_GET['cid']);
if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
		header('location:my-cart.php');
		echo "<script>alert('Sản phẩm đã được cập nhật số lượng vào giỏ hàng')</script>";
	}else{
		$sql_p="SELECT * FROM tblsanpham WHERE Id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['Id']]=array("quantity" => 1, "price" => $row_p['Giasanpham']);
			header('location:my-cart.php');
			echo "<script>alert('Sản phẩm đã được thêm vào giỏ hàng')</script>";
		}else{
			$message="ID sản phẩm không hợp lệ";
		}
	}
}

if(isset($_GET['pid']) && $_GET['action']=="wishlist" ){
	if(strlen($_SESSION['login'])==0)
    {   
		header('location:login.php');
	}
	else
	{
		mysqli_query($con,"insert into tblyeuthich(UserId,SanphamId) values('".$_SESSION['id']."','".$_GET['pid']."')");
		echo "<script>alert('Đã thêm vào danh sách yêu thích');</script>";
		header('location:my-wishlist.php');
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
    <title>Thể loại sản phẩm</title>
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
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <link type="text/css" rel="stylesheet" href="css/lightslider.css" />
</head>

<body class="cnt-home">

    <header class="header-style-1">
        <?php include('includes/top-header.php');?>
        <?php include('includes/main-header.php');?>
        <?php include('includes/menu-bar.php');?>
    </header>
    </div>
    <div class="body-content outer-top-xs">
        <div class='container'>
            <div class='row outer-bottom-sm'>
                <div class='col-md-3 sidebar'>
                    <div class="side-menu animate-dropdown outer-bottom-xs">
                        <div class="side-menu animate-dropdown outer-bottom-xs">
                            <div class="head" style="font-family:times new roman"><i class="icon fa fa-align-justify fa-fw"></i>Thể loại phụ</div>
                            <nav class="yamm megamenu-horizontal" role="navigation">

                                <ul class="nav">
                                    <li class="dropdown menu-item">
                                        <?php $sql=mysqli_query($con,"select Id,Theloaiphu  from tbltheloaiphu where TheloaiId='$cid'");
											while($row=mysqli_fetch_array($sql))
											{
										?>
                                        <a href="sub-category.php?scid=<?php echo $row['Id'];?>"
                                            class="dropdown-toggle"><i class="icon fa fa-desktop fa-fw"></i>
                                            <?php echo $row['Theloaiphu'];?></a>
                                        <?php }?>

                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="sidebar-module-container">
                        <h3 class="section-title" style="font-family:times new roman">shop by</h3>
                        <div class="sidebar-filter">
                            <div class="sidebar-widget wow fadeInUp outer-bottom-xs ">
                                <div class="widget-header m-t-20">
                                    <h4 class="widget-title">Thể loại</h4>
                                </div>
                                <div class="sidebar-widget-body m-t-10">
                                    <?php $sql=mysqli_query($con,"select Id,Tentheloai  from tbltheloai");
										while($row=mysqli_fetch_array($sql))
										{
									?>
                                    <div class="accordion">
                                        <div class="accordion-group">
                                            <div class="accordion-heading">
                                                <a href="category.php?cid=<?php echo $row['Id'];?>"
                                                    class="accordion-toggle collapsed">
                                                    <?php echo $row['Tentheloai'];?>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='col-md-9'>
                    <div id="category" class="category-carousel hidden-xs">
                        <div class="item">
                            <div class="image">

                                <div class="full-width-slider">
                                    <div class="item" style="background-image: url(assets/images/sliders/slider1.png);">
                                    </div>
                                </div>
                            </div>
                            <div class="container-fluid">
                                <div class="caption vertical-top text-left">
                                    <div class="big-text">
                                        <br />
                                    </div>

                                    <?php $sql=mysqli_query($con,"select Tentheloai  from tbltheloai where Id='$cid'");
										while($row=mysqli_fetch_array($sql))
										{
									?>

                                    <?php } ?>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="search-result-container">
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane active " id="grid-container">
                                <div class="category-product  inner-top-vs">
                                    <div class="row">
                                        <?php
											$ret=mysqli_query($con,"select * from tblsanpham where TheloaiId='$cid'");
											$num=mysqli_num_rows($ret);
											if($num>0)
											{
											while ($row=mysqli_fetch_array($ret)) 
										{?>
                                        <div class="col-sm-6 col-md-4 wow fadeInUp">
                                            <div class="products">
                                                <div class="product">
                                                    <div class="product-image">
                                                        <div class="image">
                                                            <a
                                                                href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><img
                                                                    src="assets/images/blank.gif"
                                                                    data-echo="http://localhost:8080/manage_Spa/spa/admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                    alt="" width="200" height="300"></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info text-left">
                                                        <h3 class="name" style="font-family:times new roman"><a
                                                                href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                        </h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="description"></div>

                                                        <div class="product-price">
                                                            <span class="price">
                                                                <?php echo htmlentities($row['Giasanpham']);?> VNĐ
                                                            </span>
                                                            <span class="price-before-discount">
                                                                <?php echo htmlentities($row['Giasanphamtruockhigiam']);?>
                                                                VNĐ</span>
                                                        </div>
                                                    </div>
                                                    <div class="cart clearfix animate-effect">
                                                        <div class="action">
                                                            <ul class="list-unstyled">
                                                                <li class="add-cart-button btn-group">
                                                                    <button class="btn btn-primary icon"
                                                                        data-toggle="dropdown" type="button">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </button>
                                                                    <a
                                                                        href="category.php?page=product&action=add&id=<?php echo $row['Id']; ?>">
                                                                        <button class="btn btn-primary"
                                                                            type="button" style="font-family:times new roman">Thêm vào giỏ hàng</button>
                                                                    </a>
                                                                </li>
                                                                <li class="lnk wishlist">
                                                                    <a class="add-to-cart"
                                                                        href="category.php?pid=<?php echo htmlentities($row['Id'])?>&&action=wishlist"
                                                                        title="Wishlist">
                                                                        <i class="icon fa fa-heart"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <?php } } else {?>
                                        <div class="col-sm-6 col-md-4 wow fadeInUp">
                                            <h3 style="font-family:times new roman">Không tìm thấy sản phẩm nào</h3>
                                        </div>

                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php include('includes/brands-slider.php');?>

        </div>
    </div>
        <?php include('includes/foooter1.php');?>
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