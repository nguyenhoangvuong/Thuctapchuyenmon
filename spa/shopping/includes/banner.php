<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Website</title>
    <link rel="stylesheet" type="text/css" href="../css/style1.css">
    <link rel="shortcut icon" href="images/android_os_30px.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- light slider css -->
    <link type="text/css" rel="stylesheet" href="../css/lightslider.css" />
    <!-- jquery -->
    <script src="../js/JQuery.js"></script>
    <!-- light slider js -->
    <script src="../js/lightslider.js"></script>
</head>

<body>

    
    <!-- script -->
    <script type="text/javascript">
        // Featured slider
        $(document).ready(function () {
            $('#autoWidth').lightSlider({
                autoWidth: true,
                loop: true,
                onSliderLoad: function () {
                    $('#autoWidth').removeClass('cS-hidden');
                }
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