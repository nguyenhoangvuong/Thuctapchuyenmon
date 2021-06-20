<?php
    session_start();
    include('includes/config.php');
    $qu  = mysqli_query($con,"update tblorders set Phuongthucthanhtoan='Internet Banking' where UserId='".$_SESSION['id']."' and Phuongthucthanhtoan is null");
    if($qu){
        echo "<script>alert('Thanh cong!')</script>";
    }
    unset($_SESSION['cart']);
    header('location:order-history.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Successful</title>
    <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: url("../images/success.jpg");
  background-color: #cccccc;
  height: 100vh;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}
</style>
</head>
<body>
<div class="hero-image">
  <div class="hero-text">
    <a style="background-color: white;padding:10px 20px;font-size:1.6rem;color:black;font-family:roboto;text-decoration:none;border-radius:10px" href="http://localhost:8080/Manage_Spa/spa/shopping">Trở về trang chủ</a>
  </div>
</div>
</body>
</html>
