<?php
session_start();
error_reporting(0);
include('../includes/dbconnection.php');
if (strlen($_SESSION['bpmsaid']==0)) {
  header('location:logout.php');
  } else{
    if(isset($_GET['del']))
              {
                      mysqli_query($con,"delete from tblsanpham where Id = '".$_GET['id']."'");
                      $_SESSION['delmsg']="Xóa thành công !!";
              }
  ?>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <title>SPA || Quản lý dịch vụ</title>
    <script type="application/x-javascript">
    addEventListener("load", function() {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    }
    </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/font-awesome.css" rel="stylesheet">
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
        rel='stylesheet' type='text/css'>
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
    <script>
    new WOW().init();
    </script>
    <script src="js/metisMenu.min.js"></script>
    <script src="js/custom.js"></script>
    <link href="css/custom.css" rel="stylesheet">
    <style>
    .alert-success {
        background: #eaf4e2;
        border-color: #c1dea9;
        color: #61a06f;
    }

    .alert .close {
        position: relative;
        top: 1px;
        right: -10px;
        line-height: 20px;
    }

    button.close {
        padding: 0;
        cursor: pointer;
        background: transparent;
        border: 0;
        -webkit-appearance: none;
    }

    .close {
        float: right;
        font-size: 20px;
        font-weight: bold;
        line-height: 20px;
        color: #000000;
        text-shadow: 0 1px 0 #ffffff;
        opacity: 0.2;
        filter: alpha(opacity=20);
    }

    .alert {
        padding: 8px 35px 8px 14px;
        margin-bottom: 20px;
        text-shadow: 0 1px 0 rgb(255 255 255 / 50%);
        background-color: #fcf8e3;
        border: 1px solid #fbeed5;
        -webkit-border-radius: 4px;
        -moz-border-radius: 4px;
        border-radius: 4px;
    }

    .alert-danger,
    .alert-error {
        background: #f7e7e4;
        border-color: #ecbeb6;
        color: #b55351;
    }
    </style>
</head>

<body class="cbp-spmenu-push">
    <div class="main-content">
        <?php include_once('includes/sidebar.php');?>
        <?php include_once('includes/header.php');?>
        <div id="page-wrapper">
            <div class="main-page">
                <div class="tables">
                    <h3 class="title1">Quản lý sản phẩm /<a href="insert-product.php"><button
                                style="font-size:24px;margin-left:10px;margin-top:-10px;background-color:#FF7235;color:white;border:0px;padding:6px 6px 0px 6px;border-radius:2px;box-shadow:1px 2px 3px #333333;font-family:times new roman">Thêm
                                sản phẩm</button></a></h3>
                    <div class="table-responsive bs-example widget-shadow">
                        <h4>Danh sách:</h4>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Thể loại</th>
                                    <th>Thể loại phụ</th>
                                    <th>Sản phẩm công ty</th>
                                    <th>Ngày tạo</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
							$ret=mysqli_query($con,"select tblsanpham.*,tbltheloai.Tentheloai,tbltheloaiphu.theloaiphu from tblsanpham join tbltheloai on tbltheloai.Id=tblsanpham.TheloaiId join tbltheloaiphu on tbltheloaiphu.Id=tblsanpham.TheloaiphuId");
							$cnt=1;
							while ($row=mysqli_fetch_array($ret)) {
								?>
                                <tr>
                                    <th scope="row"><?php echo $cnt;?></th>
                                    <td><?php  echo $row['Tensanpham'];?></td>
                                    <td><?php  echo $row['Tentheloai'];?></td>
                                    <td><?php  echo $row['theloaiphu'];?></td>
                                    <td><?php  echo $row['Sanphamcongty'];?></td>
                                    <td><?php  echo $row['Ngaydang'];?></td>
                                    <td><a href="edit-products.php?editid=<?php echo $row['Id'];?>">Sửa</a> || <a
                                            href="manage-product.php?id=<?php echo $row['Id'];?>&del=delete"
                                            onClick="return confirm('Bạn chắc chắn muốn xóa ?');">Xóa</a></td>
                                </tr> <?php 
								$cnt=$cnt+1;
								}?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <?php include_once('includes/footer.php');?>
    </div>
    <script src="js/classie.js"></script>
    <script>
    var menuLeft = document.getElementById('cbp-spmenu-s1'),
        showLeftPush = document.getElementById('showLeftPush'),
        body = document.body;

    showLeftPush.onclick = function() {
        classie.toggle(this, 'active');
        classie.toggle(body, 'cbp-spmenu-push-toright');
        classie.toggle(menuLeft, 'cbp-spmenu-open');
        disableOther('showLeftPush');
    };

    function disableOther(button) {
        if (button !== 'showLeftPush') {
            classie.toggle(showLeftPush, 'disabled');
        }
    }
    </script>
    <script src="js/jquery.nicescroll.js"></script>
    <script src="js/scripts.js"></script>
    <script src="js/bootstrap.js"> </script>
</body>

</html>
<?php }  ?>