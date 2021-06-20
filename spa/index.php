<?php 
include('includes/dbconnection.php');
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['submit']))
  {
	
    $name=$_POST['name'];
    $email=$_POST['email'];
    $services=$_POST['services'];
    $adate=$_POST['adate'];
    $atime=$_POST['atime'];
    $phone=$_POST['phone'];
    $aptnumber = mt_rand(100000000, 999999999);
	$today = date("Y-m-d");
	if(strtotime($today) < strtotime($adate)){
		$q = mysqli_query($con,"select * from tblkhachhang where Email = '$email'");
		$a = mysqli_num_rows($q);
		if($a == 0){
			mysqli_query($con,"insert into tblkhachhang(Ten,Email,Sodienthoai) values('$name','$email','$phone')");
		}
		$query=mysqli_query($con,"insert into tblcuochen(Socuochen,Ten,Email,Sodienthoai,Ngayhen,Giohen,Dichvu) value('$aptnumber','$name','$email','$phone','$adate','$atime','$services')");
		if ($query) {
			$ret=mysqli_query($con,"select Socuochen from tblcuochen where Email='$email' and  Sodienthoai='$phone'");
			$result=mysqli_fetch_array($ret);
			$_SESSION['aptno']=$result['Socuochen'];
			echo "<script>window.location.href='thank-you.php'</script>";	
		}
		else
		{
		$msg="Lỗi";
		}
	}
	else
	{
		echo "<script>alert('Ngày hẹn đã qua.Vui lòng chọn ngày khác !!!');</script>";
	}
  
}

?>
<!DOCTYPE html>
<html lang="en">
  <head>

    <title>BPMS||Trang chủ</title>
        
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/style1.css">
    <link type="text/css" rel="stylesheet" href="css/lightslider.css" />
	<style>
		.shopping-now{
			background-color:#006666;color:white;width:170px;outline:none;border:0px;box-shadow:1px 3px 4px #333333;height:50px;border-radius:4px;font-size:1.2rem;
			font-family: SourceSansPro-Bold;
		}
		.shopping-now:hover{
			background-color:#336666;
			color:#001100;
		}
	</style>
  </head>
  <body>
  
	  <?php include_once('includes/header.php');?>
    <!-- END nav -->

    <section id="home-section" class="hero" style="background-image: url(images/bg.jpg);" data-stellar-background-ratio="0.5">
		  <div class="home-slider owl-carousel">
	      <div class="slider-item js-fullheight">
	      	<div class="overlay"></div>
	        <div class="container-fluid p-0">
	          <div class="row d-md-flex no-gutters slider-text align-items-end justify-content-end" data-scrollax-parent="true">
	          	<img class="one-third align-self-end order-md-last img-fluid" src="images/bg_1.png" alt="">
		          <div class="one-forth d-flex align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
		          	<div class="text mt-5">
		          		<span class="subheading">Dịch vụ làm đẹp</span>
			            <h1 class="mb-4">Làm cho vẻ ngoài trở nên xinh đẹp</h1>
			            <p class="mb-4">Chúng tôi tự hào về công việc chất lượng cao và sự chú ý đến từng chi tiết. Sản phẩm chúng tôi sử dụng là những sản phẩm có thương hiệu chất lượng hàng đầu.</p>
						<a href="./shopping/index.php"><button class="shopping-now">Shopping Now</button></a>
		            </div>
		          </div>
	        	</div>
	        </div>
	      </div>

	      <div class="slider-item js-fullheight">
	      	<div class="overlay"></div>
	        <div class="container-fluid p-0">
	          <div class="row d-flex no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
	          	<img class="one-third align-self-end order-md-last img-fluid" src="images/bg_2.png" alt="">
		          <div class="one-forth d-flex align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
		          	<div class="text mt-5">
		          		<span class="subheading">Vẻ đẹp tự nhiên</span>
			            <h1 class="mb-4">Beauty Salon</h1>
			            <p class="mb-4">Spa cung cấp cơ sở vật chất khổng lồ với thiết bị công nghệ tiên tiến và chất lượng dịch vụ tốt nhất. Tại đây chúng tôi cung cấp phương pháp điều trị tốt nhất mà bạn có thể chưa từng trải qua.</p>
			            <a href="./shopping/index.php"><button class="shopping-now">Shopping Now</button></a>
		            </div>
		          </div>
	        	</div>
	        </div>
	      </div>
	    </div>
    </section>


<br>
    <section class="ftco-section ftco-no-pt ftco-booking">
    	<div class="container-fluid px-0">
    		<div class="row no-gutters d-md-flex justify-content-end">
    			<div class="one-forth d-flex align-items-end">
    				<div class="text">
    					<div class="overlay"></div>
    					<div class="appointment-wrap">
    						<span class="subheading">Đặt lịch</span>
								<h3 class="mb-2">Đặt cuộc hẹn</h3>
		    				<form action="#" method="post" class="appointment-form">
			            <div class="row">
			              <div class="col-sm-12">
			                <div class="form-group">
					              <input type="text" class="form-control" id="name" placeholder="Tên" name="name" required="true">
					            </div>
			              </div>
			              <div class="col-sm-12">
			                <div class="form-group">
					              <input type="email" class="form-control" id="appointment_email" placeholder="Email" name="email" required="true">
					            </div>
			              </div>
				            <div class="col-sm-12">
			                <div class="form-group">
					              <div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="services" id="services" required="true" class="form-control">
		                      	<option value="">Chọn dịch vụ</option>
		                      	<?php $query=mysqli_query($con,"select * from tbldichvu");
              while($row=mysqli_fetch_array($query))
              {
              ?>
		                       <option value="<?php echo $row['Tendichvu'];?>"><?php echo $row['Tendichvu'];?></option>
		                       <?php } ?> 
		                      </select>
		                    </div>
					            </div>
			              </div>
			              <div class="col-sm-12">
			                <div class="form-group">
			                  <input type="text" class="form-control appointment_date" placeholder="Ngày" name="adate" id='adate' required="true">
			                </div>    
			              </div>
			              <div class="col-sm-12">
			                <div class="form-group">
			                  <input type="text" class="form-control appointment_time" placeholder="Thời gian" name="atime" id='atime' required="true">
			                </div>
			              </div>
			              <div class="col-sm-12">
			                <div class="form-group">
			                  <input type="text" class="form-control" id="phone" name="phone" placeholder="Số điện thoại" required="true" maxlength="10" pattern="[0-9]+">
			                </div>
			              </div>
				          </div>
				          <div class="form-group">
			              <input type="submit" name="submit" value="Tạo cuộc hẹn" class="btn btn-primary">
			            </div>
			          </form>
		          </div>
						</div>
    			</div>
					<div class="one-third">
						<div class="img" style="background-image: url(images/bg-1.jpg);">
						</div>
					</div>
    		</div>
    	</div>
    </section>

		
		<br>


   <?php include_once('includes/footer.php');?>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>