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
        header('location:index.php');
        echo "<script>alert('Sản phẩm đã được cập nhật số lượng vào giỏ hàng')</script>";
        
	}else{
		$sql_p="SELECT * FROM tblsanpham WHERE Id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['Id']]=array("quantity" => 1, "price" => $row_p['Giasanpham']);
            header('location:index.php');
            echo "<script>alert('Sản phẩm đã được thêm vào giỏ hàng')</script>";
		}else{
			$message="ID sản phẩm không hợp lệ";
		}
	}
}
$pid=intval($_GET['pid']);
if(isset($_GET['pid']) && $_GET['action']=="wishlist" ){
	if(strlen($_SESSION['login'])==0)
    {   
header('location:login.php');
}
else
{
mysqli_query($con,"insert into tblyeuthich(UserId,SanphamId) values('".$_SESSION['id']."','$pid')");
header('location:my-wishlist.php');
echo "<script>alert('Đã thêm vào danh sách yêu thich');</script>";
}
}
if(isset($_POST['submit']))
{
	$qty=$_POST['quality'];
	$price=$_POST['price'];
	$value=$_POST['value'];
	$name=$_POST['name'];
	$summary=$_POST['summary'];
	$review=$_POST['review'];
	mysqli_query($con,"insert into tbldanhgiasanpham(SanphamId,Chatluong,Gia,Giatri,Ten,Tomluoc,Review) values('$pid','$qty','$price','$value','$name','$summary','$review')");
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
    <title>Chi tiết sản phẩm</title>
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
    <link rel="stylesheet" type="text/css" href="css/style1.css">
    <link type="text/css" rel="stylesheet" href="css/lightslider.css" />
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0&appId=148977787268045&autoLogAppEvents=1" nonce="iJxzgNiV"></script>
</head>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v10.0&appId=110064847734070&autoLogAppEvents=1" nonce="1EoTn8vC"></script>

<body class="cnt-home">
    <header class="header-style-1">
        <?php include('includes/top-header.php');?>
        <?php include('includes/main-header.php');?>
        <?php include('includes/menu-bar.php');?>
    </header>
    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <?php
					$ret=mysqli_query($con,"select tbltheloai.Tentheloai as catname,tbltheloaiphu.theloaiphu as subcatname,tblsanpham.Tensanpham as pname from tblsanpham join tbltheloai on tbltheloai.Id=tblsanpham.TheloaiId join tbltheloaiphu on tbltheloaiphu.Id=tblsanpham.TheloaiphuId where tblsanpham.Id='$pid'");
					while ($rw=mysqli_fetch_array($ret)) {
				?>
                <ul class="list-inline list-unstyled">
                    <li><a href="index.php">Home</a></li>
                    <li><?php echo htmlentities($rw['catname']);?></a></li>
                    <li><?php echo htmlentities($rw['subcatname']);?></li>
                    <li class='active'><?php echo htmlentities($rw['pname']);?></li>
                </ul>
                <?php }?>
            </div>
        </div>
    </div>
    <div class="body-content outer-top-xs">
        <div class='container'>
            <div class='row single-product outer-bottom-sm '>
                <div class='col-md-3 sidebar'>
                    <div class="sidebar-module-container">
                        <div class="sidebar-widget outer-bottom-xs wow fadeInUp">
                            <h3 class="section-title" style="font-family:times new roman">Thể loại</h3>
                            <div class="sidebar-widget-body m-t-10">
                                <div class="accordion">
                                    <?php $sql=mysqli_query($con,"select Id,Tentheloai  from tbltheloai");
										while($row=mysqli_fetch_array($sql))
										{
									?>
                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a href="category.php?cid=<?php echo $row['Id'];?>"
                                                class="accordion-toggle collapsed">
                                                <?php echo $row['Tentheloai'];?>
                                            </a>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar-widget hot-deals wow fadeInUp">
                            <h3 class="section-title" style="font-family:times new roman">Sản phẩm nổi bật</h3>
                            <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-xs">
                                <?php
								$ret=mysqli_query($con,"select tblsanpham.*,tblctod.SanphamId,count(*) as sl from tblctod join tblsanpham on tblsanpham.Id = tblctod.SanphamId group by tblctod.SanphamId order by sl desc limit 10");
								while ($rws=mysqli_fetch_array($ret)) {
								?>
                                <div class="item" style="margin-left:10px">
                                    <div class="products">
                                        <div class="hot-deal-wrapper product-box-1">
                                            <div class="image">
                                                <img src="../admin/productimages/<?php echo htmlentities($rws['Id']);?>/<?php echo htmlentities($rws['Hinhanh1']);?>"
                                                    width="200" height="334" alt="">
                                            </div>
                                        </div>
                                        <div class="product-info text-left m-t-20">
                                            <h3 class="name"><a style="font-family:times new roman"
                                                    href="product-details.php?pid=<?php echo htmlentities($rws['Id']);?>"><?php echo htmlentities($rws['Tensanpham']);?></a>
                                            </h3>
                                            <div class="rating rateit-small"></div>

                                            <div class="product-price">
                                                <span class="price">
                                                    <?php echo currency_format(htmlentities($rws['Giasanpham']));?>
                                                </span>
                                                <span
                                                    class="price-before-discount"><?php echo currency_format(htmlentities($rws['Giasanphamtruockhigiam']));?>
                                                   </span>
                                            </div>
                                        </div>
                                        <div class="cart clearfix animate-effect">
                                            <div class="action">

                                                <div class="add-cart-button btn-group">
                                                    <button class="btn btn-primary icon" data-toggle="dropdown"
                                                        type="button">
                                                        <?php if($rws['Sanphamcosan']=='In Stock'){?>
                                                        <button class="btn btn-primary icon" data-toggle="dropdown"
                                                            type="button">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </button>
                                                        <a
                                                            href="product-details.php?page=product&action=add&id=<?php echo $rws['Id']; ?>">
                                                            <button class="btn btn-primary" type="button">Thêm vào giỏ
                                                                hàng</button></a>
                                                        <?php } else {?>
                                                        <div class="action" style="color:red">Hết hàng</div>
                                                        <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
                <?php 
					$ret=mysqli_query($con,"select * from tblsanpham where Id='$pid'");
					while($row=mysqli_fetch_array($ret))
					{
				?>
                <div class='col-md-9'>
                    <div class="row  wow fadeInUp">
                        <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
                            <div class="product-item-holder size-big single-product-gallery small-gallery">

                                <div id="owl-single-product">

                                    <div class="single-product-gallery-item" id="slide1">
                                        <a data-lightbox="image-1"
                                            data-title="<?php echo htmlentities($row['Tensanpham']);?>"
                                            href="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>">
                                            <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                width="370" height="350" />
                                        </a>
                                    </div>
                                    <div class="single-product-gallery-item" id="slide1">
                                        <a data-lightbox="image-1"
                                            data-title="<?php echo htmlentities($row['Tensanpham']);?>"
                                            href="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>">
                                            <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>"
                                                width="370" height="350" />
                                        </a>
                                    </div>
                                    <div class="single-product-gallery-item" id="slide2">
                                        <a data-lightbox="image-1" data-title="Gallery"
                                            href="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh2']);?>">
                                            <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh2']);?>" />
                                        </a>
                                    </div>
                                    <div class="single-product-gallery-item" id="slide3">
                                        <a data-lightbox="image-1" data-title="Gallery"
                                            href="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh3']);?>">
                                            <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh3']);?>" />
                                        </a>
                                    </div>
                                </div>
                                <div class="single-product-gallery-thumbs gallery-thumbs">

                                    <div id="owl-single-product-thumbnails">
                                        <div class="item">
                                            <a class="horizontal-thumb active" data-target="#owl-single-product"
                                                data-slide="1" href="#slide1">
                                                <img class="img-responsive" alt="" src="assets/images/blank.gif"
                                                    data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh1']);?>" />
                                            </a>
                                        </div>
                                        <div class="item">
                                            <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="2"
                                                href="#slide2">
                                                <img class="img-responsive" width="85" alt=""
                                                    src="assets/images/blank.gif"
                                                    data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh2']);?>" />
                                            </a>
                                        </div>
                                        <div class="item">

                                            <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="3"
                                                href="#slide3">
                                                <img class="img-responsive" width="85" alt=""
                                                    src="assets/images/blank.gif"
                                                    data-echo="../admin/productimages/<?php echo htmlentities($row['Id']);?>/<?php echo htmlentities($row['Hinhanh3']);?>"
                                                    height="200" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class='col-sm-6 col-md-7 product-info-block'>
                            <div class="product-info">
                                <h1 class="name"><?php echo htmlentities($row['productName']);?></h1>
                                <?php $rt=mysqli_query($con,"select * from tbldanhgiasanpham where SanphamId='$pid'");
									$num=mysqli_num_rows($rt);
									{
								?>
                                <div class="rating-reviews m-t-20">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <div class="rating rateit-small"></div>
                                        </div>
                                        <div class="col-sm-8">
                                            <div class="reviews">
                                                <a href="#" class="lnk">(<?php echo htmlentities($num);?> Nhận xét)</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
                                <div class="stock-container info-container m-t-10">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <div class="stock-box">
                                                <span class="label" style="font-family:times new roman">Khả dụng :</span>
                                            </div>
                                        </div>
                                        <div class="col-sm-9">
                                            <div class="stock-box">
                                                <span
                                                    class="value"><?php echo htmlentities($row['Sanphamcosan']);?></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="stock-container info-container m-t-10">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <div class="stock-box">
                                                <span class="label" style="font-family:times new roman">Thương hiệu :</span>
                                            </div>
                                        </div>
                                        <div class="col-sm-9">
                                            <div class="stock-box">
                                                <span
                                                    class="value"><?php echo htmlentities($row['Sanphamcongty']);?></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="stock-container info-container m-t-10">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <div class="stock-box">
                                                <span class="label" style="font-family:times new roman">Phí giao hàng :</span>
                                            </div>
                                        </div>
                                        <div class="col-sm-9">
                                            <div class="stock-box">
                                                <span class="value"><?php if($row['Phivanchuyen']==0)
											{
												echo "Free";
											}
											else
											{
												echo currency_format(htmlentities($row['Phivanchuyen']));
											}

											?></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-container info-container m-t-20">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="price-box">
                                                <span class="price">
                                                    <?php echo currency_format(htmlentities($row['Giasanpham']));?></span>
                                                <span
                                                    class="price-strike"><?php echo currency_format(htmlentities($row['Giasanphamtruockhigiam']));?>
                                                    </span>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="favorite-button m-t-10">
                                                <a class="btn btn-primary" data-toggle="tooltip" data-placement="right"
                                                    title="Wishlist"
                                                    href="product-details.php?pid=<?php echo htmlentities($row['Id'])?>&&action=wishlist">
                                                    <i class="fa fa-heart"></i>
                                                </a>

                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="quantity-container info-container">
                                    <div class="row">

                                        <div class="col-sm-2">
                                            <span class="label" style="font-family:times new roman">Số lượng :</span>
                                        </div>
                                        <div class="col-sm-2">
                                            <div class="cart-quantity">
                                                <div class="quant-input">
                                                    <input type="text" value="1" readonly style="outline:none">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-7">
                                            <?php if($row['Sanphamcosan']=='In Stock'){?>
                                            <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                <i class="fa fa-shopping-cart"></i>
                                            </button>
                                            <a
                                                href="index.php?page=product&action=add&id=<?php echo $row['Id']; ?>">
                                                <button class="btn btn-primary" type="button" style="font-family:times new roman">Thêm vào giỏ
                                                    hàng</button></a>
                                            <?php } else {?>
                                            <div class="action" style="color:White" style="font-family:times new roman">Hết hàng</div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>

                                <div class="product-social-link m-t-20 text-right">
                                    <div class="social-icons">
                                        <ul class="list-inline">
                                        <div class="fb-share-button" data-href="https://hovuotsax12.000webhostapp.com/spa/shopping/product-details.php?pid=<?php echo $pid?>" data-layout="button_count" data-size="small"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fhovuotsax12.000webhostapp.com%2Fspa%2Fshopping%2Fproduct-details.php%3Fpid%3D61&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Chia sẻ</a></div>
                                            <li><a class="fa fa-facebook" href="http://facebook.com/vuongml0123"></a>
                                            </li>
                                            <li><a class="fa fa-twitter" href="#"></a></li>
                                            <li><a class="fa fa-linkedin" href="#"></a></li>
                                            <li><a class="fa fa-rss" href="#"></a></li>
                                            <li><a class="fa fa-pinterest" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="product-tabs inner-bottom-xs  wow fadeInUp">
                        <div class="row">
                            <div class="col-sm-3">
                                <ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
                                    <li class="active"><a data-toggle="tab" href="#description" style="font-family:times new roman">Mô tả</a></li>
                                    <li><a data-toggle="tab" href="#review" style="font-family:times new roman">Nhận xét</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-9">
                                <div class="tab-content">
                                    <div id="description" class="tab-pane in active" style="font-size:1.7rem">
                                        <div class="product-tab">
                                            <p class="text"><?php echo $row['Motasanpham'];?></p>
                                        </div>
                                    </div>

                                    <div id="review" class="tab-pane">
                                        <div class="product-tab">

                                            <div class="product-reviews">
                                                <h4 class="title" style="font-family:times new roman">Tất cả nhận xét</h4>
                                                <?php $qry=mysqli_query($con,"select * from tbldanhgiasanpham where SanphamId='$pid'");
											while($rvw=mysqli_fetch_array($qry))
											{
											?>
                                                <div class="reviews" style="border: solid 1px #EEEEEE; padding-left: 2% ">
                                                    <div class="review">
                                                    <div class="fb-share-button" data-href="https://www.youtube.com/" data-layout="button_count" data-size="small"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.youtube.com%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Chia sẻ </a></div>
                                                        <div class="text">"<?php echo htmlentities($rvw['Review']);?>"
                                                        </div>
                                                        <div class="text"><b>Quality :</b>
                                                            <?php echo htmlentities($rvw['Chatluong']);?> Star<b>   Price :</b><?php echo htmlentities($rvw['Gia']);?> Star<b>   value :</b><?php echo htmlentities($rvw['Giatri']);?> Star
                                                        </div>
                                                        <div class="author m-t-15"><i class="fa fa-pencil-square-o"></i>
                                                            <span
                                                                class="name"><?php echo htmlentities($rvw['Ten']);?></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <?php } ?>
                                            </div>
                                            <form role="form" class="cnt-form" name="review" method="post">
                                                <div class="product-add-review">
                                                    <p></p>
                                                    <h4 class="title" style="font-family:times new roman">Viết nhận xét của bạn</h4>
                                                    <div class="review-table">
                                                        <div class="table-responsive">
                                                            <table class="table table-bordered">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="cell-label">&nbsp;</th>
                                                                        <th>1 star</th>
                                                                        <th>2 stars</th>
                                                                        <th>3 stars</th>
                                                                        <th>4 stars</th>
                                                                        <th>5 stars</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="cell-label">Quality</td>
                                                                        <td><input type="radio" name="quality"
                                                                                class="radio" value="1"></td>
                                                                        <td><input type="radio" name="quality"
                                                                                class="radio" value="2"></td>
                                                                        <td><input type="radio" name="quality"
                                                                                class="radio" value="3"></td>
                                                                        <td><input type="radio" name="quality"
                                                                                class="radio" value="4"></td>
                                                                        <td><input type="radio" name="quality"
                                                                                class="radio" value="5"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="cell-label">Price</td>
                                                                        <td><input type="radio" name="price"
                                                                                class="radio" value="1"></td>
                                                                        <td><input type="radio" name="price"
                                                                                class="radio" value="2"></td>
                                                                        <td><input type="radio" name="price"
                                                                                class="radio" value="3"></td>
                                                                        <td><input type="radio" name="price"
                                                                                class="radio" value="4"></td>
                                                                        <td><input type="radio" name="price"
                                                                                class="radio" value="5"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="cell-label">Value</td>
                                                                        <td><input type="radio" name="value"
                                                                                class="radio" value="1"></td>
                                                                        <td><input type="radio" name="value"
                                                                                class="radio" value="2"></td>
                                                                        <td><input type="radio" name="value"
                                                                                class="radio" value="3"></td>
                                                                        <td><input type="radio" name="value"
                                                                                class="radio" value="4"></td>
                                                                        <td><input type="radio" name="value"
                                                                                class="radio" value="5"></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="review-form">
                                                        <div class="form-container">
                                                            <div class="row">
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label for="exampleInputName" style="font-family:times new roman;font-size:1.5rem">Họ tên <span
                                                                                class="astk">*</span></label>
                                                                        <input type="text" class="form-control txt"
                                                                            id="exampleInputName" placeholder=""
                                                                            name="name" required="required">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="exampleInputSummary" style="font-family:times new roman;font-size:1.5rem">Tóm lược <span
                                                                                class="astk">*</span></label>
                                                                        <input type="text" class="form-control txt"
                                                                            id="exampleInputSummary" placeholder=""
                                                                            name="summary" required="required">
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="exampleInputReview" style="font-family:times new roman;font-size:1.5rem" >Nhận xét <span
                                                                                class="astk">*</span></label>

                                                                        <textarea class="form-control txt txt-review"
                                                                            id="exampleInputReview" rows="5"
                                                                            placeholder="" name="review"
                                                                            required="required"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="action text-right">
                                                                <button name="submit"
                                                                    class="btn btn-primary btn-upper" style="font-family:times new roman">Gửi nhận xét
                                                                </button>
                                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php $cid=$row['TheloaiId'];
			$subcid=$row['TheloaiphuId']; } ?>
        <section class="section featured-product wow fadeInUp">
            <h3 class="section-title" style="font-family:times new roman">Sản phẩm liên quan </h3>
            <div class="owl-carousel home-owl-carousel upsell-product custom-carousel owl-theme outer-top-xs">
                <?php 
                    $qry=mysqli_query($con,"select * from tblsanpham where TheloaiphuId='$subcid' and TheloaiId='$cid'");
                    while($rw=mysqli_fetch_array($qry))
                    {
			    ?>
                <div class="item item-carousel" style="margin-left:10px">
                    <div class="products">
                        <div class="product">
                            <div class="product-box-1">
                                <div class="image">
                                    <a href="product-details.php?pid=<?php echo htmlentities($rw['Id']);?>"><img
                                            src="assets/images/blank.gif"
                                            data-echo="../admin/productimages/<?php echo htmlentities($rw['Id']);?>/<?php echo htmlentities($rw['Hinhanh1']);?>"
                                            width="150" height="240" alt=""></a>
                                </div>
                            </div>
                            <div class="product-info text-left">
                                <h3 class="name"><a style="font-family:times new roman"
                                        href="product-details.php?pid=<?php echo htmlentities($rw['Id']);?>"><?php echo htmlentities($rw['Tensanpham']);?></a>
                                </h3>
                                <div class="rating rateit-small"></div>
                                <div class="description"></div>

                                <div class="product-price">
                                    <span class="price">
                                        <?php echo currency_format(htmlentities($rw['Giasanpham']));?></span>
                                    <span class="price-before-discount">
                                        <?php echo currency_format(htmlentities($rw['Giasanphamtruockhigiam']));?></span>
                                </div>
                            </div>
                            <div class="cart clearfix animate-effect">
                                <div class="action">
                                    <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                            <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                <i class="fa fa-shopping-cart"></i>
                                            </button>
                                            <a href="product-details.php?page=product&action=add&id=<?php echo $rw['Id']; ?>"
                                                class="lnk btn btn-primary" style="font-family:times new roman;font-size:1.6rem">Thêm vào giỏ hàng</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <?php } ?>
            </div>
        </section>
    </div>
    <div class="clearfix"></div>
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