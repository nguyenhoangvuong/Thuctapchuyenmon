<?php
session_start();
error_reporting(0);
include('include/config.php');
if (strlen($_SESSION['bpmsaid']==0)) {
  header('location:logout.php');
  } else{
    date_default_timezone_set('Asia/Kolkata');
    $currentTime = date( 'd-m-Y h:i:s A', time () );
    
    
    if(isset($_POST['submit']))
    {
        $category=$_POST['sername'];
        $description=$_POST['description'];
    $sql=mysqli_query($con,"insert into category(categoryName,categoryDescription) values('$category','$description')");
    $_SESSION['msg']="Category Created !!";
    
    }
    
    if(isset($_GET['del']))
              {
                      mysqli_query($con,"delete from category where id = '".$_GET['id']."'");
                      $_SESSION['delmsg']="Category deleted !!";
              }
    
  ?>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <title>SPA || Quản lý Thể loại</title>
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
</head>

<body class="cbp-spmenu-push">
    <div class="main-content">
        <?php include_once('includes/sidebar.php');?>
        <?php include_once('includes/header.php');?>
        <div id="page-wrapper">
            <div class="main-page">
                <div class="tables">
                <h3 class="title1">Thêm dịch vụ</h3>
                    <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                        <div class="form-body">
                            <form method="post">
                                <p style="font-size:16px; color:red" align="center">
                                    <?php if($msg){
									echo $msg;
								}  ?> </p>
                                <div class="form-group"> <label for="exampleInputPassword1">Tên thể loại</label> <input
                                        type="text" id="sername" name="sername" class="form-control" placeholder="Tên thể loại"
                                        value="" required="true"> </div>
                                <div class="form-group"> <label for="exampleInputPassword1">Mô tả</label> <input
                                        type="text" id="description" name="description" class="form-control" placeholder="Mô tả"
                                        value="" required="true"> </div>
                                <button type="submit" name="submit" class="btn btn-default">Thêm</button>
                            </form>
                        </div>
                    </div>
                    <br>
                    <h3 class="title1">Quản lý thể loại</h3>
                    <div class="table-responsive bs-example widget-shadow">
                        <h4>Cập nhật thể loại:</h4>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Tên thể loại</th>
                                    <th>Mô tả</th>
                                    <th>Ngày tạo</th>
                                    <th>Ngày cập nhật cuối</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
							$ret=mysqli_query($con,"select * from  category");
							$cnt=1;
							while ($row=mysqli_fetch_array($ret)) {
								?>
                                <tr>
                                    <th scope="row"><?php echo $cnt;?></th>
                                    <td><?php  echo $row['categoryName'];?></td>
                                    <td><?php  echo $row['categoryDescription'];?></td>
                                    <td><?php  echo $row['creationDate'];?></td>
                                    <td><?php  echo $row['updationDate'];?></td>
                                    <td><a href="edit-services.php?editid=<?php echo $row['id'];?>">Sửa</a> || <a
                                     href="manage-category.php?id=<?php echo $row['id']?>&del=delete" onClick="return confirm('Are you sure you want to delete?')"><i class="icon-remove-sign"></i>Xóa</a></td>
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