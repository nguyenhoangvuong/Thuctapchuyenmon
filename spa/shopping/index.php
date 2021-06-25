<?php
session_start();
error_reporting(0);
include('../includes/dbconnection.php');
if (!function_exists('currency_format')) {
    function currency_format($number, $suffix = 'đ') {
        if (!empty($number)) {
            return number_format($number, 0, ',', '.') . "{$suffix}";
        }
    }
}

if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
        header('Location:index.php');
        echo "<script>alert('Sản phẩm đã được cập nhật số lượng vào giỏ hàng')</script>";
	}else{
		$sql_p="SELECT * FROM tblsanpham WHERE Id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['Id']]=array("quantity" => 1, "price" => $row_p['Giasanpham']);
                header('Location:index.php');
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
    <title>Shopping Spa</title>
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
    <link rel="stylesheet prefetch" href="http://bootswatch.com/slate/bootstrap.min.css">
    
    <style>
            .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
        background-color: #fefefe;
        margin: auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        }

        /* The Close Button */
        .close {
        color: #aaaaaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
        }

        .close:hover,
        .close:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
        }
    </style>
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
                                    <div class="item" style="background-image: url(../images/slides1.jpg);">
                                    </div>
                                </div>
                                <div class="full-width-slider">
                                    <div class="item full-width-slider"
                                        style="background-image: url(../images/slides2.jpg);">
                                    </div>
                                </div>

                                <div class="full-width-slider">
                                    <div class="item full-width-slider"
                                        style="background-image: url(../images/slides3.jpg);">
                                    </div>
                                </div>

                                <div class="full-width-slider">
                                    <div class="item full-width-slider"
                                        style="background-image: url(../images/slides4.jpg);">
                                    </div>
                                </div>

                                <div class="full-width-slider">
                                    <div class="item full-width-slider"
                                        style="background-image: url(../images/slides5.jpg);">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div id="product-tabs-slider" class="scroll-tabs inner-bottom-vs  wow fadeInUp">
                    <div class="more-info-tab clearfix">
                        <h3 class="new-product-title pull-left" style="font-family:times new roman">Sản phẩm nổi bật
                        </h3>
                        <ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
                            <li class="active"><a href="#all" data-toggle="tab">All</a></li>
                            <li><a href="#kem" data-toggle="tab">Mỹ phẩm</a></li>
                            <li><a href="#vienuong" data-toggle="tab">Viên uống</a></li>
                        </ul>
                    </div>

                    <div class="tab-content outer-top-xs">
                        <div class="tab-pane in active" id="all">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                                    <?php
										$ret=mysqli_query($con,"select tblsanpham.*,tblctod.SanphamId,count(*) as sl from tblctod join tblsanpham on tblsanpham.Id = tblctod.SanphamId group by tblctod.SanphamId order by sl desc limit 10");
										while ($row=mysqli_fetch_array($ret)) 
										{
									?> <div class="item item-carousel">
                                        <div class="products">
                                            <div class="product">
                                                <div class="product-box-1" style="margin-left:8px">
                                                    <div style="margin-top:30px;position:fixed;right:0;margin-right:20px;top:0"><img src="img/new_60px.png" width=30 alt="new" srcset=""></div>
                                                    <div>
                                                        <a
                                                            href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>">
                                                            <img style="margin-left:-10px" src="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                                width="180" height="300" alt="" class="w-100">
                                                        </a>
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
                                                            <?php echo currency_format(htmlentities($row['Giasanpham']));?></span>
                                                        <span
                                                            class="price-before-discount"><?php echo currency_format(htmlentities($row['Giasanphamtruockhigiam']));?></span>

                                                    </div>

                                                </div>
                                                
                                                <div class="action"><a
                                                        href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                        class="lnk btn btn-primary"
                                                        style="font-family:times new roman"><i class="fa fa-shopping-cart"></i>&emsp; Thêm vào giỏ hàng</a></div>
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
                                            <div class="product-box-1">
                                                <div>
                                                <div style="margin-top:30px;position:fixed;right:0;margin-right:20px;top:0"><img src="img/new_60px.png" width=30 alt="new" srcset=""></div>
                                                    <a
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>">
                                                        <img src="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            width="180" height="300" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="product-info text-left">
                                                <h3 class="name"><a style="font-family:times new roman"
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                </h3>
                                                <div class="rating rateit-small"></div>
                                                <div class="description"></div>

                                                <div class="product-price">
                                                    <span class="price">
                                                        <?php echo currency_format(htmlentities($row['Giasanpham']));?></span>
                                                    <span
                                                        class="price-before-discount"><?php echo currency_format(htmlentities($row['Giasanphamtruockhigiam']));?></span>

                                                </div>

                                            </div>
                                            <div class="action"><a
                                                    href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                    class="lnk btn btn-primary"
                                                    style="font-family:times new roman;"><i class="fa fa-shopping-cart"></i>&emsp; Thêm vào giỏ hàng</a></div>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="vienuong">
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
                                            <div class="product-box-1">
                                            <div style="margin-top:30px;position:fixed;right:0;margin-right:20px;top:0"><img src="img/new_60px.png" width=30 alt="new" srcset=""></div>
                                                <div>
                                                    <a
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>">
                                                        <img src="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            width="180" height="300" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="product-info text-left">
                                                <h3 class="name"><a style="font-family:times new roman"
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                </h3>
                                                <div class="rating rateit-small"></div>
                                                <div class="description"></div>

                                                <div class="product-price">
                                                    <span class="price">
                                                        <?php echo currency_format(htmlentities($row['Giasanpham']));?>
                                                    </span>
                                                    <span
                                                        class="price-before-discount"><?php echo currency_format(htmlentities($row['Giasanphamtruockhigiam']));?></span>

                                                </div>

                                            </div>
                                            <div class="action"><a
                                                    href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                    class="lnk btn btn-primary"
                                                    style="font-family:times new roman;"><i class="fa fa-shopping-cart"></i>&emsp; Thêm vào giỏ hàng</a></div>
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
                            <h3 class="section-title" style="font-family:times new roman;">Viên uống trị mụn</h3>
                            <div class="owl-carousel homepage-owl-carousel custom-carousel outer-top-xs owl-theme"
                                data-item="2">

                                <?php
										$ret=mysqli_query($con,"select * from tblsanpham where TheloaiId=5 and TheloaiphuId=18");
										while ($row=mysqli_fetch_array($ret)) 
										{
									?>
                                <div class="item item-carousel">
                                    <div class="products">
                                        <div class="product">
                                            <div class="product-box-1">
                                                <div>
                                                    <a
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><img
                                                            src="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            width="180" height="300"></a>
                                                </div>
                                            </div>
                                            <div class="product-info text-left">
                                                <h3 class="name" style="font-family:times new roman;"><a
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                </h3>
                                                <div class="rating rateit-small"></div>
                                                <div class="description"></div>

                                                <div class="product-price">
                                                    <span class="price">
                                                        <?php echo currency_format(htmlentities($row['Giasanpham']));?></span>
                                                    <span
                                                        class="price-before-discount"><?php echo currency_format(htmlentities($row['Giasanphamtruockhigiam']));?></span>

                                                </div>

                                            </div>
                                            <div class="action"><a
                                                    href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                    class="lnk btn btn-primary" style="font-family:times new roman"><i class="fa fa-shopping-cart"></i>&emsp; Thêm
                                                    vào giỏ hàng</a></div>
                                        </div>
                                    </div>
                                </div>
                                <?php }?>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-6">
                        <section class="section">
                            <h3 class="section-title" style="font-family:times new roman;">Dưỡng da</h3>
                            <div class="owl-carousel homepage-owl-carousel custom-carousel outer-top-xs owl-theme"
                                data-item="2">
                                <?php
										$ret=mysqli_query($con,"select * from tblsanpham where TheloaiId=3 and TheloaiphuId=4");
										while ($row=mysqli_fetch_array($ret)) 
										{
									?>
                                <div class="item item-carousel">
                                    <div class="products">
                                        <div class="product" style="width:235px">
                                            <div class="product-box-1">
                                                <div>
                                                    <a
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><img
                                                            src="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            width="220" height="300"></a>
                                                </div>
                                            </div>


                                            <div class="product-info text-left">
                                                <h3 class="name" style="font-family:times new roman;"><a
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                </h3>
                                                <div class="rating rateit-small"></div>
                                                <div class="description"></div>

                                                <div class="product-price">
                                                    <span class="price">
                                                        <?php echo currency_format(htmlentities($row['Giasanpham']));?></span>
                                                    <span
                                                        class="price-before-discount"><?php echo currency_format(htmlentities($row['Giasanphamtruockhigiam']));?></span>

                                                </div>

                                            </div>
                                            <div class="action"><a
                                                    href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                    class="lnk btn btn-primary"
                                                    style="font-family:times new roman;"><i class="fa fa-shopping-cart"></i>&emsp; Thêm vào giỏ hàng</a></div>
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
                <h3 class="section-title" style="font-family:times new roman;">Mỹ phẩm</h3>
                <div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
                    <?php
							$ret=mysqli_query($con,"select * from tblsanpham where TheloaiID=3");
							while ($row=mysqli_fetch_array($ret)) 
							{
						?>
                    <div class="item">
                        <div class="products">
                            <div class="product">
                                <div class="product-micro">
                                    <div class="row product-micro-row">
                                        <div class="col col-xs-6">
                                            <div class="product-box-1" style="margin-left:10px">
                                                <div>
                                                    <a href="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                        data-lightbox="image-1"
                                                        data-title="<?php echo htmlentities($row['Tensanpham']);?>">
                                                        <img data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            width="170" height="174" alt="">
                                                        <div class="zoom-overlay"></div>
                                                    </a>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col col-xs-6">
                                            <div class="product-info">
                                                <h3 class="name" style="font-family:times new roman;"><a
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                </h3>
                                                <div class="rating rateit-small"></div>
                                                <div class="product-price">
                                                    <span class="price">
                                                        <?php echo currency_format(htmlentities($row['Giasanpham']));?>
                                                        <br>
                                                    </span>
                                                    <span class="price-before-discount">
                                                        <?php echo currency_format(htmlentities($row['Giasanphamtruockhigiam']));?>
                                                    </span>
                                                </div>
                                                <div class="action"><a
                                                        href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                        class="lnk btn btn-primary"
                                                        style="font-family:times new roman;">Thêm vào giỏ hàng</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><?php } ?>
                </div>
            </section>
            <section>
                <div  style="border-bottom:1px solid lightblue"></div>
            </section>
            <section>
                <div class="banner-box" style="background-image: url(../img/Capture.png);">
            </section>
            <section class="new-arrival">
                <div class="arrival-heading">
                    <strong style="font-family:times new roman;font-size:1.8rem">Sản phẩm mới</strong>
                    <p style="font-family:times new roman">Chúng tôi luôn cập nhật những sản phẩm tốt và mới nhất</p>
                </div>
                <div class="product-container">
                    <?php
            $sql = mysqli_query($con,"select * from tblsanpham order by Ngaydang desc limit 5");
            while($row11 = mysqli_fetch_array($sql)){
        ?>
                    <div class="product-box" style="height:50%">
                        <div class="product-img">
                            <div class="action">
                                <a href="index.php?page=product&action=add&id=<?php echo $row11['Id']; ?>"
                                    class="add-cart">
                                    <i class="fa fa-shopping-cart"></i>
                                </a>
                            </div>
                            <img
                                data-echo="../admin/productimages/<?php echo htmlentities($row11['Id']);?>/<?php echo htmlentities($row11['Hinhanh1']);?>">
                        </div>
                        <div class="product-details">
                            <a href="product-details.php?pid=<?php echo htmlentities($row11['Id']);?>"
                                style="font-family:times new roman;font-weight:400"
                                class="p-name"><?php echo $row11['Tensanpham']; ?></a>
                            <span class="p-price" style="font-weight:600;"><?php echo currency_format($row11['Giasanpham']); ?></span>
                        </div>
                    </div>
                    <?php
            }
        ?>
                </div>
            </section>
            <section class="section featured-product inner-xs wow fadeInUp">
            <div class="arrival-heading">
                    <strong style="font-family:times new roman;font-size:1.8rem">Siêu giảm giá</strong>
                    <p style="font-family:times new roman">Rất nhiều mặt hàng được giảm giá sốc !!!</p>
                </div>
                <div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
                    <?php
							$ret=mysqli_query($con,"select * from tblsanpham where (Giasanphamtruockhigiam-Giasanpham) > 50000");
							while ($row=mysqli_fetch_array($ret)) 
							{
						?>
                    <div class="item">
                        <div class="products">
                            <div class="product" style="margin-left:10px">
                                <div class="product-micro">
                                    <div class="row product-micro-row">
                                        <div class="col col-xs-6">
                                            <div class="product-box-1">
                                                <div>
                                                    <div style="margin-top:30px;position:fixed;margin-right:10px;top:0"><img src="img/sale_52px.png" width=30 alt="new" srcset=""></div>
                                                    <a href="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                        data-lightbox="image-1"
                                                        data-title="<?php echo htmlentities($row['Tensanpham']);?>">
                                                        <img data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            width="170" height="174" alt="">
                                                        <div class="zoom-overlay"></div>
                                                    </a>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col col-xs-6">
                                            <div class="product-info">
                                                <h3 class="name" style="font-family:times new roman;"><a
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                </h3>
                                                <div class="rating rateit-small"></div>
                                                <div class="product-price">
                                                    <span class="price">
                                                        <?php echo currency_format(htmlentities($row['Giasanpham']));?>
                                                        <br>
                                                    </span>
                                                    <span class="price-before-discount">
                                                        <?php echo currency_format(htmlentities($row['Giasanphamtruockhigiam']));?>
                                                    </span>
                                                </div>
                                                <div class="action"><a
                                                        href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                        class="lnk btn btn-primary"
                                                        style="font-family:times new roman;">Thêm vào giỏ hàng</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><?php } ?>
                </div>
            </section>
            <section class="section featured-product inner-xs wow fadeInUp">
            <div class="arrival-heading">
                    <strong style="font-family:times new roman;font-size:1.8rem">Miễn phí giao hàng</strong>
                    <p style="font-family:times new roman">Thả ga mua sắm mà không lo phí ship !!!</p>
                </div>
                <div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
                    <?php
							$ret=mysqli_query($con,"select * from tblsanpham where Phivanchuyen = 0");
							while ($row=mysqli_fetch_array($ret)) 
							{
						?>
                    <div class="item">
                        <div class="products">
                            <div class="product" style="margin-left:10px">
                                <div class="product-micro">
                                    <div class="row product-micro-row">
                                        <div class="col col-xs-6">
                                            <div class="product-box-1">
                                                <div>
                                                    <div style="margin-bottom:40px;position:fixed;margin-right:10px;bottom:0"><img src="img/free_shipping_52px.png" width=30 alt="new" srcset=""></div>
                                                    <a href="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                        data-lightbox="image-1"
                                                        data-title="<?php echo htmlentities($row['Tensanpham']);?>">
                                                        <img data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                            width="170" height="174" alt="">
                                                        <div class="zoom-overlay"></div>
                                                    </a>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col col-xs-6">
                                            <div class="product-info">
                                                <h3 class="name" style="font-family:times new roman;"><a
                                                        href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo htmlentities($row['Tensanpham']);?></a>
                                                </h3>
                                                <div class="rating rateit-small"></div>
                                                <div class="product-price">
                                                    <span class="price">
                                                        <?php echo currency_format(htmlentities($row['Giasanpham']));?>
                                                        <br>
                                                    </span>
                                                    <span class="price-before-discount">
                                                        <?php echo currency_format(htmlentities($row['Giasanphamtruockhigiam']));?>
                                                    </span>
                                                </div>
                                                <div class="action"><a
                                                        href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>"
                                                        class="lnk btn btn-primary"
                                                        style="font-family:times new roman;">Thêm vào giỏ hàng</a></div>
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
            <div id="myModal" class="modal">
                <div class="modal-content">
                    <span class="close">&times;</span>
                    <div><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4405475805665!2d106.80599801462142!3d10.854058560724392!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175274f32968a43%3A0x578a57668fc28864!2zNDEsIDU4YSBD4bqndSBYw6J5LCBUw6JuIFBow7osIFF14bqtbiA5LCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1623304564925!5m2!1svi!2s" width="1150" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
                </div>
            </div>
            <button style="position:fixed;bottom:20px;left:10px;left:7px;outline:none;border:0px;font-size:3rem;width:40px;text-align:center" id="myBtn"><img width=53 src="../shopping/img/map.png" alt="" srcset=""></button>
        </div>
        <a href="#"><img style="position:fixed;bottom:70px;left:20px;outline:none;border:0px;font-size:3rem;width:40px;text-align:center" src="../shopping/img/up.png" alt="^" srcset=""></a></div>

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
var modal = document.getElementById("myModal");
var btn = document.getElementById("myBtn");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

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
