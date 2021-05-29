<?php 
    session_start();
    error_reporting(0);
    include('../includes/dbconnection.php');
    if (strlen($_SESSION['id']==0)) {
        header('location:login.php');
    } 
    if(isset($_POST['submit'])){
        if(!empty($_SESSION['cart'])){
        foreach($_POST['quantity'] as $key => $val){
            if($val==0){
                unset($_SESSION['cart'][$key]);
            }else{
                $_SESSION['cart'][$key]['quantity']=$val;
            }
        }
            echo "<script>alert('Giỏ hàng của bạn đã được cập nhật');</script>";
        }
    }
    if(isset($_POST['remove_code']))
        {
        if(!empty($_SESSION['cart'])){
            foreach($_POST['remove_code'] as $key){
                    unset($_SESSION['cart'][$key]);
            }
                echo "<script>alert('Giỏ hàng của bạn đã được cập nhật');</script>";
            }
    }
    if(isset($_POST['ordersubmit'])) 
    {
        if(strlen($_SESSION['login'])==0)
            {   
                header('location:login.php');
            }
        else{
            $quantity=$_POST['quantity'];
            $pdd=$_SESSION['pid'];
            $value=array_combine($pdd,$quantity);
                foreach($value as $qty=> $val34){
                    mysqli_query($con,"insert into tblorders(UserId,SanphamId,Soluong) values('".$_SESSION['id']."','$qty','$val34')");
                    header('location:bill-ship-addresses2.php');
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
    <title>Giỏ hàng của tôi</title>
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
                    <li class='active'>Giỏ hàng</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content outer-top-xs">
        <div class="container">
            <div class="row inner-bottom-sm">
                <div class="shopping-cart">
                    <div class="col-md-12 col-sm-12 shopping-cart-table ">
                        <div class="table-responsive">
                            <form name="cart" method="post">
                                <?php
if(!empty($_SESSION['cart'])){
	?>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th class="cart-romove item">Xóa</th>
                                            <th class="cart-description item">Hình ảnh</th>
                                            <th class="cart-product-name item">Tên sản phẩm</th>

                                            <th class="cart-qty item">Số lượng</th>
                                            <th class="cart-sub-total item">Giá mỗi sản phẩm</th>
                                            <th class="cart-sub-total item">Phí vận chuyển</th>
                                            <th class="cart-total last-item">Tổng</th>
                                        </tr>
                                    </thead><!-- /thead -->
                                    <tfoot>
                                        <tr>
                                            <td colspan="7">
                                                <div class="shopping-cart-btn">
                                                    <span class="">
                                                        <a href="index.php"
                                                            class="btn btn-upper btn-primary outer-left-xs">Tiếp tục mua
                                                            sắm
                                                        </a>
                                                        <input type="submit" name="submit" value="Cập nhật giỏ hàng"
                                                            class="btn btn-upper btn-primary pull-right outer-right-xs">
                                                    </span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php
 $pdtid=array();
    $sql = "select * from tblsanpham where Id IN(";
			foreach($_SESSION['cart'] as $id => $value){
			$sql .=$id. ",";
			}
			$sql=substr($sql,0,-1) . ") ORDER BY Id ASC";
			$query = mysqli_query($con,$sql);
			$totalprice=0;
			$totalqunty=0;
			if(!empty($query)){
			while($row = mysqli_fetch_array($query)){
				$quantity=$_SESSION['cart'][$row['Id']]['quantity'];
				$subtotal= $_SESSION['cart'][$row['Id']]['quantity']*$row['Giasanpham']+$row['Phivanchuyen'];
				$totalprice += $subtotal;
				$_SESSION['qnty']=$totalqunty+=$quantity;

				array_push($pdtid,$row['Id']);
	?>

                                        <tr>
                                            <td class="romove-item"><input type="checkbox" name="remove_code[]"
                                                    value="<?php echo htmlentities($row['Id']);?>" /></td>
                                            <td class="cart-image">
                                                <a class="entry-thumbnail" href="detail.html">
                                                    <img src="../admin/productimages/<?php echo $row['Id'];?>/<?php echo $row['Hinhanh1'];?>"
                                                        alt="" width="114" height="146">
                                                </a>
                                            </td>
                                            <td class="cart-product-name-info">
                                                <h4 class='cart-product-description'><a
                                                        href="product-details.php?pid=<?php echo htmlentities($pd=$row['Id']);?>"><?php echo $row['Tensanpham'];

$_SESSION['sid']=$pd;
						 ?></a></h4>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="rating rateit-small"></div>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <?php $rt=mysqli_query($con,"select * from tbldanhgiasanpham where SanphamId='$pd'");
$num=mysqli_num_rows($rt);
{
?>
                                                        <div class="reviews">
                                                            ( <?php echo htmlentities($num);?> Nhận xét )
                                                        </div>
                                                        <?php } ?>
                                                    </div>
                                                </div><!-- /.row -->

                                            </td>
                                            <td class="cart-product-quantity">
                                                <div class="quant-input">
                                                    <div class="arrows">
                                                        <div class="arrow plus gradient"><span class="ir"><i
                                                                    class="icon fa fa-sort-asc"></i></span></div>
                                                        <div class="arrow minus gradient"><span class="ir"><i
                                                                    class="icon fa fa-sort-desc"></i></span></div>
                                                    </div>
                                                    <input type="text"
                                                        value="<?php echo $_SESSION['cart'][$row['Id']]['quantity']; ?>"
                                                        name="quantity[<?php echo $row['Id']; ?>]">

                                                </div>
                                            </td>
                                            <td class="cart-product-sub-total"><span
                                                    class="cart-sub-total-price"><?php echo $row['Giasanpham'];?> VNĐ</span>
                                            </td>
                                            <td class="cart-product-sub-total"><span
                                                    class="cart-sub-total-price"><?php echo $row['Phivanchuyen']; ?> VNĐ</span>
                                            </td>

                                            <td class="cart-product-grand-total"><span
                                                    class="cart-grand-total-price"><?php echo ($_SESSION['cart'][$row['Id']]['quantity']*$row['Giasanpham']+$row['Phivanchuyen']); ?> VNĐ</span>
                                            </td>
                                        </tr>

                                        <?php } }
$_SESSION['pid']=$pdtid;
				?>

                                    </tbody><!-- /tbody -->
                                </table><!-- /table -->

                        </div>
                    </div><!-- /.shopping-cart-table -->
                    <div class="col-md-4 col-sm-12 estimate-ship-tax">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>
                                        <span class="estimate-title">Địa chỉ giao hàng</span>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <?php $qry=mysqli_query($con,"select * from tblusers where Id='".$_SESSION['id']."'");
while ($rt=mysqli_fetch_array($qry)) {
	echo htmlentities($rt['Diachigiaohang'])."<br />";
	echo htmlentities($rt['Thanhphovanchuyen'])."<br />";
	echo htmlentities($rt['Trangthaivanchuyen'])."<br />";
	echo htmlentities($rt['Mapinvanchuyen']);
}

						?>

                                        </div>

                                    </td>
                                </tr>
                            </tbody><!-- /tbody -->
                        </table><!-- /table -->
                    </div>

                    <div class="col-md-4 col-sm-12 estimate-ship-tax">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>
                                        <span class="estimate-title">Địa chỉ thanh toán</span>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <?php $qry=mysqli_query($con,"select * from tblusers where Id='".$_SESSION['id']."'");
while ($rt=mysqli_fetch_array($qry)) {
	echo htmlentities($rt['Diachithanhtoan'])."<br />";
	echo htmlentities($rt['Thanhphothanhtoan'])."<br />";
	echo htmlentities($rt['Trangthaithanhtoan'])."<br />";
	echo htmlentities($rt['Mapinthanhtoan']);
}

						?>

                                        </div>

                                    </td>
                                </tr>
                            </tbody><!-- /tbody -->
                        </table><!-- /table -->
                    </div>
                    <div class="col-md-4 col-sm-12 cart-shopping-total">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>

                                        <div class="cart-grand-total">
                                            Tổng tiền<span
                                                class="inner-left-md"><?php echo $_SESSION['tp']="$totalprice". " VNĐ"; ?></span>
                                        </div>
                                    </th>
                                </tr>
                            </thead><!-- /thead -->
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="cart-checkout-btn pull-right">
                                            <button type="submit" name="ordersubmit" class="btn btn-primary">Thanh
                                                toán</button>

                                        </div>
                                    </td>
                                </tr>
                            </tbody><!-- /tbody -->
                        </table>
                        <?php } else {
                        echo "Giỏ hàng trống !";
                                }?>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
    <?php include('includes/footer1.php');?>
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