<?php
if(isset($_GET['send'])){
    echo $b = $_GET['send'];
    $a = mysqli_query($con,"INSERT INTO `tblgopy`(`Gopy`) VALUES ('".$b."')");
    if($a){
        echo '<script>alert("Gửi thành công ! Cảm ơn bạn đã góp ý");</script>';
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Website</title>
    <link rel="shortcut icon" href="images/android_os_30px.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/style1.css">
    <link type="text/css" rel="stylesheet" href="../css/lightslider.css" />
    <script src="../css/JQuery.js"></script>
</head>

<body>
    <!-- Banner -->

    <div class="banner-box" style="background-image: url(../images/slides2.jpg);">
        <!-- slider text container -->
        <div class="banner-text-container">
            <div class="banner-text">
                <span>Limited Offer</span>
                <strong>30% of</br>with <font>pro</font></strong>
                <a href="index.php" class="banner-btn">Shop now</a>
            </div>
        </div>
    </div>


    <!-- Services -->
    <section class="services">
        <!-- services box -->
        <div class="services-box">
            <i class="fa fa-truck"></i>
            <span>Free Shipping</span>
            <p>Free Shiping For All Us Orders </p>
        </div>

        <div class="services-box">
            <i class="fa fa-phone"></i>
            <span>Support 24/7</span>
            <p>We support 24h a day</p>
        </div>

        <div class="services-box">
            <i class="fa fa-refresh"></i>
            <span>100% Money Back</span>
            <p>You have 30 day to Return</p>
        </div>

    </section>


    <!-- Footer -->
    <footer>
        <!-- address -->
        <span class="copyright">
            Địa chỉ : 41/58A , Cầu Xây , Quận 9
        </span>
        <!-- subcribe -->
        <div class="subcribe">
            <form method="post">
                <input style="width:500px;font-family:times new roman;font-size:1.7rem" type="text" placeholder="Góp ý của bạn..." name="send" id="" required>
                <input type="submit" name="sendgopy" id="" value="Send">
            </form>
        </div>
    </footer>

</body>

</html>