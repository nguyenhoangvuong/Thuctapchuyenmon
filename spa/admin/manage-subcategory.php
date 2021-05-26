<?php
session_start();
error_reporting(0);
include('../includes/dbconnection.php');
if (strlen($_SESSION['bpmsaid']==0)) {
  header('location:logout.php');
  } else{
    date_default_timezone_set('Asia/Kolkata');
    $currentTime = date( 'd-m-Y h:i:s A', time () );
    
    
    if(isset($_POST['submit']))
    {
        $category=$_POST['category'];
        $subcat=$_POST['sername'];
        $sql=mysqli_query($con,"insert into tbltheloaiphu(TheloaiId,theloaiphu) values('$category','$subcat')");
        $_SESSION['msg']="Tạo thể loại phụ thành công !!";
    
    }
    
    if(isset($_GET['del']))
              {
                      mysqli_query($con,"delete from tbltheloaiphu where Id = '".$_GET['id']."'");
                      $_SESSION['delmsg']="Xóa thành công !!";
              }
    
  ?>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <title>SPA || Quản lý Thể loại phụ</title>
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
            right:-10px;
            line-height: 20px;
        }
        button.close {
            padding: 0;
            cursor: pointer;
            background: transparent;
            border: 0;
            -webkit-appearance: none;
        }.close {
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
        .alert-danger, .alert-error {
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
                <h3 class="title1">Thêm thể loại phụ</h3>
                    <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                        <div class="form-body">

                        <?php if(isset($_POST['submit']))
								{?>
                                <div class="alert alert-success">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <strong>Succesfull !</strong>
                                    <?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?>
                                </div>
                                
                                <?php } ?>

                                <?php if(isset($_GET['del']))
								{?>
                                <div class="alert alert-error"> 
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <strong>Wrong !</strong>
                                    <?php echo htmlentities($_SESSION['delmsg']);?><?php echo htmlentities($_SESSION['delmsg']="");?>
                                </div>
                                <?php } ?>

                                <br />

                            <form method="post">
                                <p style="font-size:16px; color:red" align="center">
                                    <?php if($msg!=''){
									echo $msg;
								}  ?> </p>
                               
                                <div class="form-group"> <label for="exampleInputPassword1">Chọn thể loại</label> 
                                    <div class="controls">
                                        <select name="category" class="form-control" required>
                                            <option value="">Chọn thể loại</option>
                                            <?php $query=mysqli_query($con,"select * from tbltheloai");
                                            while($row=mysqli_fetch_array($query))
                                            {?>
                                            <option value="<?php echo $row['Id'];?>">
                                                <?php echo $row['Tentheloai'];?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group"> <label for="exampleInputPassword1">Tên thể loại phụ</label> <input
                                        type="text" id="sername" name="sername" class="form-control" placeholder="Tên thể loại phụ"
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
                                    <th>Tên thể loại phụ</th>
                                    <th>Thể loại</th>
                                    <th>Ngày tạo</th>
                                    <th>Ngày cập nhật</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
							$ret=mysqli_query($con,"select tbltheloai.Tentheloai,tbltheloaiphu.Id,tbltheloaiphu.theloaiphu,tbltheloaiphu.Ngaytao,tbltheloaiphu.Ngaycapnhat from  tbltheloaiphu join tbltheloai on tbltheloaiphu.TheloaiId = tbltheloai.Id");
							$cnt=1;
							while ($row=mysqli_fetch_array($ret)) {
								?>
                                <tr>
                                
                                    <th scope="row"><?php echo $cnt;?></th>
                                    <td><?php echo htmlentities($row['theloaiphu']);?></td>
                                    <td><?php echo htmlentities($row['Tentheloai']);?></td>
                                    <td> <?php echo htmlentities($row['Ngaytao']);?></td>
                                    <td><?php echo htmlentities($row['Ngaycapnhat']);?></td>
                                    <td><a href="edit-subcategory.php?editid=<?php echo $row['Id'];?>">Sửa</a> || <a
                                     href="manage-subcategory.php?id=<?php echo $row['Id']?>&del=delete" onClick="return confirm('Are you sure you want to delete?')"><i class="icon-remove-sign"></i>Xóa</a></td>
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