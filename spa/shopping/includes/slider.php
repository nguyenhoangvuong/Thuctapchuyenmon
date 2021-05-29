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
    <script src="../css/lightslider.js"></script>
</head>

<body>
    <nav>

    <!-- Full slider -->

    <ul id="adaptive" class="cs-hidden">
        <!-- box 1 -->
        <li class="item-a">
            <div class="full-slider-box f-slider-1">
                <!-- slider text container -->
                <div class="slider-text-container">
                    <div class="f-slider-text">
                        <span>Limited Offer</span>
                        <strong>30% of</br>with <font>promo code</font></strong>
                        <a href="#" class="f-slider-btn">Shop now</a>
                    </div>
                </div>
            </div>
        </li>
        <!-- box 2 -->
        <li class="item-a">
            <div class="full-slider-box f-slider-2">
                <!-- slider text container -->
                <div class="slider-text-container">
                    <div class="f-slider-text">
                        <span>Limited Offer</span>
                        <strong>30% of</br>with <font>promo code</font></strong>
                        <a href="#" class="f-slider-btn">Shop now</a>
                    </div>
                </div>
            </div>
        </li>
        <!-- box 3 -->
        <li class="item-a">
            <div class="full-slider-box f-slider-3">
                <!-- slider text container -->
                <div class="slider-text-container">
                    <div class="f-slider-text">
                        <span>Limited Offer</span>
                        <strong>30% of</br>with <font>promo code</font></strong>
                        <a href="#" class="f-slider-btn">Shop now</a>
                    </div>
                </div>
            </div>
        </li>
        <!-- box 4 -->
        <li class="item-a">
            <div class="full-slider-box f-slider-4">
                <!-- slider text container -->
                <div class="slider-text-container">
                    <div class="f-slider-text">
                        <span>Limited Offer</span>
                        <strong>30% of</br>with <font>promo code</font></strong>
                        <a href="#" class="f-slider-btn">Shop now</a>
                    </div>
                </div>
            </div>
        </li>
        <!-- box 5 -->
        <li class="item-a">
            <div class="full-slider-box f-slider-5">
                <!-- slider text container -->
                <div class="slider-text-container">
                    <div class="f-slider-text">
                        <span>Limited Offer</span>
                        <strong>30% of</br>with <font>promo code</font></strong>
                        <a href="#" class="f-slider-btn">Shop now</a>
                    </div>
                </div>
            </div>
        </li>
    </ul>
    </section>

    <!-- script -->
    <script type="text/javascript">
        //Full slider script
        $(document).ready(function () {
            $('#adaptive').lightSlider({
                adaptiveHeight: true,
                auto: true,
                item: 1,
                slideMargin: 0,
                loop: true
            });
        });
        // for responsive
        $(document).ready(function(){
            $('.toggle').click(function(){
                $('.toggle').toggleClass('active')
                $('.navigation').toggleClass('active')
            })
        })
        
    </script>

</body>

</html>