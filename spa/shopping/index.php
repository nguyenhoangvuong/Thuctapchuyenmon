<?php
session_start();
error_reporting(0);
include('../includes/dbconnection.php');
if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
        echo "<script>alert('Sản phẩm đã được cập nhật số lượng vào giỏ hàng')</script>";
	}else{
		$sql_p="SELECT * FROM tblsanpham WHERE Id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['Id']]=array("quantity" => 1, "price" => $row_p['Giasanpham']);
					echo "<script>alert('Sản phẩm đã được thêm vào giỏ hàng')</script>";
		}else{
			$message="ID sản phẩm không hợp lệ";
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
    <title>Shopping Portal Home Page</title>
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

</head>

<body class="cnt-home">
    <header class="header-style-1">
        <?php include('includes/top-header.php');?>
        <?php include('includes/main-header.php');?>
        <?php include('includes/menu-bar.php');?>
    </header>

    <div class="body-content outer-top-xs" id="top-banner-and-menu">
        <div class="container">
            <div class="furniture-container homepage-container">
                <div class="row">

                    <div class="col-xs-12 col-sm-12 col-md-3 sidebar">
                    <?php include('includes/side-menu.php');?>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
                        <div id="hero" class="homepage-slider3">
                            <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
                                <div class="full-width-slider">
                                    <div class="item" style="background-image: url(assets/images/sliders/slider1.png);">
                                    </div>
                                </div>

                                <div class="full-width-slider">
                                    <div class="item full-width-slider"
                                        style="background-image: url(assets/images/sliders/slider2.png);">
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="info-boxes wow fadeInUp">
                            <div class="info-boxes-inner">
                                <div class="row">
                                    <div class="col-md-6 col-sm-4 col-lg-4">
                                        <div class="info-box">
                                            <div class="row">
                                                <div class="col-xs-2">
                                                    <i class="icon fa fa-dollar"></i>
                                                </div>
                                                <div class="col-xs-10">
                                                    <h4 class="info-box-heading green">money back</h4>
                                                </div>
                                            </div>
                                            <h6 class="text">30 Day Money Back Guarantee.</h6>
                                        </div>
                                    </div>

                                    <div class="hidden-md col-sm-4 col-lg-4">
                                        <div class="info-box">
                                            <div class="row">
                                                <div class="col-xs-2">
                                                    <i class="icon fa fa-truck"></i>
                                                </div>
                                                <div class="col-xs-10">
                                                    <h4 class="info-box-heading orange">free shipping</h4>
                                                </div>
                                            </div>
                                            <h6 class="text">free ship-on oder over Rs. 600.00</h6>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-sm-4 col-lg-4">
                                        <div class="info-box">
                                            <div class="row">
                                                <div class="col-xs-2">
                                                    <i class="icon fa fa-gift"></i>
                                                </div>
                                                <div class="col-xs-10">
                                                    <h4 class="info-box-heading red">Special Sale</h4>
                                                </div>
                                            </div>
                                            <h6 class="text">All items-sale up to 20% off </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div id="product-tabs-slider" class="scroll-tabs inner-bottom-vs  wow fadeInUp">
                    <div class="more-info-tab clearfix">
                        <h3 class="new-product-title pull-left">Sản phẩm nổi bật</h3>
                        <ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
                            <li class="active"><a href="#all" data-toggle="tab">All</a></li>
                            <li><a href="#kem" data-toggle="tab">Kem</a></li>
                            <li><a href="#suaruamat" data-toggle="tab">Sữa rửa mặt</a></li>
                        </ul>
                    </div>

                    <div class="tab-content outer-top-xs">
                        <div class="tab-pane in active" id="all">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                                    <<?php
										$ret=mysqli_query($con,"select * from tblsanpham");
										while ($row=mysqli_fetch_array($ret)) 
										{
									?>
                                    <div class="item item-carousel">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>">
                                                            <img src="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                data-echo="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                width="180" height="300" alt=""></a>
                                                    </div>
                                                </div>
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                    </h3>
                                                    <div class="rating rateit-small"></div>
                                                    <div class="description"></div>

                                                    <div class="product-price">
                                                        <span class="price">
														VNĐ. <?php echo htmlentities($row['Giasanpham']);?> </span>
                                                        <span
                                                            class="price-before-discount">VNĐ.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>

                                                    </div>

                                                </div>
                                                <div class="action"><a
                                                        href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                        class="lnk btn btn-primary">Thêm vào giỏ hàng</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="kem">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                                    <?php
										$ret=mysqli_query($con,"select * from tblsanpham where TheloaiId=3");
										while ($row=mysqli_fetch_array($ret)) 
										{
									?>
                                    <div class="item item-carousel">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>">
                                                            <img src="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                data-echo="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                width="180" height="300" alt=""></a>
                                                    </div>
                                                </div>
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                    </h3>
                                                    <div class="rating rateit-small"></div>
                                                    <div class="description"></div>

                                                    <div class="product-price">
                                                        <span class="price">
														VNĐ. <?php echo htmlentities($row['Giasanpham']);?> </span>
                                                        <span
                                                            class="price-before-discount">VNĐ.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>

                                                    </div>

                                                </div>
                                                <div class="action"><a
                                                        href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                        class="lnk btn btn-primary">Thêm vào giỏ hàng</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="suaruamat">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
								<?php
										$ret=mysqli_query($con,"select * from tblsanpham where TheloaiId=5");
										while ($row=mysqli_fetch_array($ret)) 
										{
									?>
                                    <div class="item item-carousel">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>">
                                                            <img src="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                data-echo="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                width="180" height="300" alt=""></a>
                                                    </div>
                                                </div>
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                    </h3>
                                                    <div class="rating rateit-small"></div>
                                                    <div class="description"></div>

                                                    <div class="product-price">
                                                        <span class="price">
														VNĐ. <?php echo htmlentities($row['Giasanpham']);?> </span>
                                                        <span
                                                            class="price-before-discount">VNĐ.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>

                                                    </div>

                                                </div>
                                                <div class="action"><a
                                                        href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                        class="lnk btn btn-primary">Thêm vào giỏ hàng</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sections prod-slider-small outer-top-small">
                    <div class="row">
                        <div class="col-md-6">
                            <section class="section">
                                <h3 class="section-title">Smart Phones</h3>
                                <div class="owl-carousel homepage-owl-carousel custom-carousel outer-top-xs owl-theme"
                                    data-item="2">

                                    <?php
										$ret=mysqli_query($con,"select * from tblsanpham where TheloaiId=4 and TheloaiphuId=4");
										while ($row=mysqli_fetch_array($ret)) 
										{
									?>
                                    <div class="item item-carousel">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><img
                                                                src="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                data-echo="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                width="180" height="300"></a>
                                                    </div>
                                                </div>
                                                <div class="product-info text-left">
                                                    <h3 class="name"><a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                    </h3>
                                                    <div class="rating rateit-small"></div>
                                                    <div class="description"></div>

                                                    <div class="product-price">
                                                        <span class="price">
                                                            <?php echo htmlentities($row['Giasanpham']);?> VNĐ </span>
                                                        <span
                                                            class="price-before-discount"><?php echo htmlentities($row['Giasanphamtruockhigiam']);?>VNĐ</span>

                                                    </div>

                                                </div>
                                                <div class="action"><a
                                                        href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                        class="lnk btn btn-primary">thêm vào giỏ hàng</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php }?>
                                </div>
                            </section>
                        </div>
                        <div class="col-md-6">
                            <section class="section">
                                <h3 class="section-title">Laptops</h3>
                                <div class="owl-carousel homepage-owl-carousel custom-carousel outer-top-xs owl-theme"
                                    data-item="2">
                                    <?php
										$ret=mysqli_query($con,"select * from tblsanpham where TheloaiId=4 and TheloaiphuId=6");
										while ($row=mysqli_fetch_array($ret)) 
										{
									?>
                                    <div class="item item-carousel">
                                        <div class="products">

                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><img
                                                                src="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                data-echo="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                width="300" height="300"></a>
                                                    </div>
                                                </div>


                                                <div class="product-info text-left">
                                                    <h3 class="name"><a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                    </h3>
                                                    <div class="rating rateit-small"></div>
                                                    <div class="description"></div>

                                                    <div class="product-price">
                                                        <span class="price">
                                                            <?php echo htmlentities($row['Giasanpham']);?>VNĐ</span>
                                                        <span
                                                            class="price-before-discount"><?php echo htmlentities($row['Giasanphamtruockhigiam']);?>VNĐ</span>

                                                    </div>

                                                </div>
                                                <div class="action"><a
                                                        href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                        class="lnk btn btn-primary">Thêm vào giỏ hàng</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php }?>



                                </div>
                            </section>

                        </div>
                    </div>
                </div>
                <section class="section featured-product inner-xs wow fadeInUp">
                    <h3 class="section-title">Serum trị mụn</h3>
                    <div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
                        <?php
							$ret=mysqli_query($con,"select * from tblsanpham where TheloaiID=6");
							while ($row=mysqli_fetch_array($ret)) 
							{
						?>
                        <div class="item">
                            <div class="products">
                                <div class="product">
                                    <div class="product-micro">
                                        <div class="row product-micro-row">
                                            <div class="col col-xs-6">
                                                <div class="product-image">
                                                    <div class="image">
                                                        <a href="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            data-lightbox="image-1"
                                                            data-title="<?php echo htmlentities($row['Tensanpham']);?>">
                                                            <img data-echo="admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                width="170" height="174" alt="">
                                                            <div class="zoom-overlay"></div>
                                                        </a>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col col-xs-6">
                                                <div class="product-info">
                                                    <h3 class="name"><a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                    </h3>
                                                    <div class="rating rateit-small"></div>
                                                    <div class="product-price">
                                                        <span class="price">
                                                            <?php echo htmlentities($row['Giasanpham']);?> VNĐ
                                                        </span>
                                                    </div>
                                                    <div class="action"><a
                                                            href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                            class="lnk btn btn-primary">Thêm vào giỏ hàng</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><?php } ?>
                    </div>
                </section>
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