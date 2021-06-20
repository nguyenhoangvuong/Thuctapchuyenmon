<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
            <div class="col-xs-12 col-sm-12 col-md-3 logo-holder" style="margin-top:-5px">
                <img width=200 height=67 src="http://localhost:8080/Manage_Spa/spa/shopping/img/logospa.png" alt="abc" srcset="">
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
                <div class="search-area">
                    <form method="post" action="search-result.php">
                        <div class="control-group">
                            <input class="search-field" id="search" placeholder="Search here..." name="search" autocomplete="off"
                                required="required" />
                            <button class="search-button" type="submit" name="submit" value="Search"></button>
                        </div>
                    </form>
                </div>
                <div class="col-md-5" style="position:absolute;margin-left:-16px;z-index: 99;">
                   <div class="list-group" id="show-list" style="width:506px" style="position:absolute"></div>
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
                                    <div class="col-xs-12" style="font-size:1.5rem">
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
<script>
  $(document).ready(function () {
  // Send Search Text to the server
  $("#search").keyup(function () {
    let searchText = $(this).val();
    if (searchText != "") {
      $.ajax({
        url: "includes/action.php",
        method: "post",
        data: {
          query: searchText,
        },
        success: function (response) {
          $("#show-list").html(response);
        },
      });
    } else {
      $("#show-list").html("");
    }
  });
  // Set searched text in input field on click of search button
  $(document).on("click", "a", function () {
    $("#search").val($(this).text());
    $("#show-list").html("");
  });
});
  </script>