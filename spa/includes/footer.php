 <?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
 <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2 logo">SK3NWOC</h2>
              <?php
                $ret=mysqli_query($con,"select * from tbltrang where Loaitrang='aboutus'");
                $cnt=1;
                while ($row=mysqli_fetch_array($ret)) {
              ?>
              <p><?php  echo substr($row['Motatrang'],0,200);?> <a href="about.php">More.......</a></p><?php } ?>
            </div>
          </div>
         
          <div class="col-md" style="padding-left: 150px">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Links</h2>
              <ul class="list-unstyled">
                <li><a href="index.php" class="py-2 d-block">Trang chủ</a></li>
                <li><a href="about.php" class="py-2 d-block">Về chúng tôi</a></li>
                <li><a href="services.php" class="py-2 d-block">Dịch vụ</a></li>
                <li><a href="admin/index.php" class="py-2 d-block">Admin</a></li>
                <li><a href="contact.php" class="py-2 d-block">Liên hệ</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
                <?php
                  $ret=mysqli_query($con,"select * from tbltrang where Loaitrang='contactus'");
                  $cnt=1;
                  while ($row=mysqli_fetch_array($ret)) {
                ?>
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text"><?php  echo $row['Motatrang'];?></span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+<?php  echo $row['Sodienthoai'];?></span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text"><?php  echo $row['Email'];?></span></a></li>
	              </ul>
	            </div>
               <?php } ?>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p>2021 &copy; Hệ thống quản lý Spa Sk3nwOc  </p>
          </div>
        </div>
      </div>
    </footer>