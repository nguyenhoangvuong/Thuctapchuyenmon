<?php 
if (!function_exists('currency_format')) {
    function currency_format($number, $suffix = 'đ') {
        if (!empty($number)) {
            return number_format($number, 0, ',', '.') . "{$suffix}";
        }
    }
}
 if(isset($_Get['action'])){
		if(!empty($_SESSION['cart'])){
		foreach($_POST['quantity'] as $key => $val){
			if($val==0){
				unset($_SESSION['cart'][$key]);
			}else{
				$_SESSION['cart'][$key]['quantity']=$val;
			}
		}
		}
	}
    
?>
<div class="main-header" style="height:90px">
    <div class="container">
        <div class="row" >
            <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
                <div class="logo"  style="height:100px;margin-top:-20px">
                    <a href="index.php">
                        <h2>
                                <a href="index.php" class="image" style="color:#6AC2D6;font-family:courier,arial,helvetica;">
                                    Spa - Shopping
                                </a>
                        </h2>
                    </a>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
                <div class="search-area">
                    <form name="search" method="post" action="search-result.php">
                        <div class="control-group">

                            <input class="search-field" placeholder="Search here..." name="product"
                                required="required" />

                            <button class="search-button" type="submit" name="search"></button>

                        </div>
                    </form>
                </div>
             
            </div>

            <div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
                <?php
if(!empty($_SESSION['cart'])){
	?>
                <div class="dropdown dropdown-cart">
                    <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
                        <div class="items-cart-inner">
                            <div class="total-price-basket">
                                <span class="lbl">Giỏ hàng -</span>
                                <span class="total-price">
                                    <span class="value"><?php echo currency_format($_SESSION['tp']) ?></span>
                                    <span class="sign"></span>
                                </span>
                            </div>
                            <div class="basket">
                                <i class="glyphicon glyphicon-shopping-cart"></i>
                            </div>
                            <div class="basket-item-count"><span class="count"><?php echo $_SESSION['qnty'];?></span>
                            </div>
                        </div>
                    </a>
                    <ul class="dropdown-menu">

                        <?php
    $sql = "SELECT * FROM tblsanpham WHERE Id IN(";
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

                ?>
                        <li>
                            <div class="cart-item product-summary">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <div class="image">
                                            <a href="detail.html"><img
                                                    src="../admin/productimages/<?php echo $row['Id'];?>/<?php echo $row['Hinhanh1'];?>"
                                                    width="35" height="50" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">

                                        <h3 class="name"><a style="font-family:times new roman;font-size:1.5rem"
                                                href="product-details.php?pid=<?php echo htmlentities($row['Id']);?>"><?php echo $row['Tensanpham']; ?></a></h3>
                                        <div class="price">
                                            <?php echo currency_format(($row['Giasanpham']+$row['Phivanchuyen'])); ?> x <?php echo $_SESSION['cart'][$row['Id']]['quantity']; ?>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <?php } }?>
                            <div class="clearfix"></div>
                            <hr>

                            <div class="clearfix cart-total">
                                <div class="pull-right">
                                    <span class="text" style="font-family:times new roman;font-size:1.5rem">Tổng :</span><span
                                        class='price'><?php echo currency_format($_SESSION['tp']="$totalprice". ".00"); ?></span>
                                </div>

                                <div class="clearfix"></div>

                                <a href="my-cart.php" class="btn btn-upper btn-primary btn-block m-t-20">Giỏ hàng</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <?php } else { ?>
                <div class="dropdown dropdown-cart">
                    <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
                        <div class="items-cart-inner">
                            <div class="total-price-basket">
                                <span class="lbl">cart -</span>
                                <span class="total-price">
                                    <span class="sign">00.00</span>
                                    <span class="value">VNĐ</span>
                                </span>
                            </div>
                            <div class="basket">
                                <i class="glyphicon glyphicon-shopping-cart"></i>
                            </div>
                            <div class="basket-item-count"><span class="count">0</span></div>

                        </div>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="cart-item product-summary">
                                <div class="row">
                                    <div class="col-xs-12">
                                        Giỏ hàng của bạn trống
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="clearfix cart-total">
                                <div class="clearfix"></div>
                                <a href="index.php" class="btn btn-upper btn-primary btn-block m-t-20">Tiếp tục mua sắm</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <?php }?>




                <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
            </div><!-- /.top-cart-row -->
        </div><!-- /.row -->

    </div><!-- /.container -->

</div>