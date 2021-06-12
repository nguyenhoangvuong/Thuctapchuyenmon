

<?php 
session_start();
include('../includes/syle.css');
?>
<div class="top-bar animate-dropdown" style="background-color:#F8D0C2;">
    <div class="container">
        <div class="header-top-inner">
            <div class="cnt-account">
                <ul class="list-unstyled" >
                    <?php if(strlen($_SESSION['login']))
						{   ?>
                    <li><a href="https://www.facebook.com/vuongml0123/" style="color:white"><i class="icon fa fa-key"></i>Xin chào :
                             <?php echo htmlentities($_SESSION['login']);?></a></li>
                    <?php } ?>

                    <li><a href="my-account.php" style="color:white"><i class="icon fa fa-user"></i>Tài khoản của tôi</a></li>
                    <li><a href="my-wishlist.php" style="color:white"><i class="icon fa fa-heart" style="color:red"></i>Yêu thích</a></li>
                    <li><a href="my-cart.php" style="color:white"><i class="icon fa fa-shopping-cart"></i>Giỏ hàng</a></li>
                    <?php if(strlen($_SESSION['login'])==0)
					{   ?>
                    <li><a href="login.php" style="color:white"><i class="icon fa fa-sign-in"></i>Đăng nhập</a></li>
                    <?php }
					else{ ?>

                    <li><a href="logout.php" style="color:white"><i class="icon fa fa-sign-out"></i>Đăng xuất</a></li>
                    <?php } ?>
                </ul>
            </div>
            <div class="cnt-block">
                <ul class="list-unstyled list-inline">
                    <li class="dropdown dropdown-small">
                        <a href="track-orders.php" class="dropdown-toggle" style="color:#ffff00;font-size:15px;font-family:times new roman"><span class="key">THEO DÕI ĐẶT HÀNG</b></a>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>