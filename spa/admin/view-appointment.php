<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
    if (strlen($_SESSION['bpmsaid']==0)) {
  header('location:logout.php');
  } else{
if(isset($_POST['submit']))
  {
     
      $cid=$_GET['viewid'];
      $ret1=mysqli_query($con,"select * from tblcuochen where ID='$cid'");
      $row1=mysqli_fetch_array($ret1);
      $maill="5951071124@st.utc2.edu.vn";
      $remark=$_POST['remark'];
      $status=$_POST['status'];
      $subject="From submission";

      $headers ="MIME-Version: 1.0"."\r\n";
      $headers .= "Content-type:text/html;charset=UTF-8"."\r\n";

      $headers .= "From: <hoangvuong1225@gmail.com>"."\r\n";

      if(mail($maill,$subject,$status,$headers)){
          echo "Send mail successfull";
      }
      else{
          echo "fail";
      }
   
      $query=mysqli_query($con, "update  tblcuochen set Nhanxet='$remark',Trangthai='$status' where ID='$cid'");
      if ($query) {
        $msg="Tất cả nhận xét đã được cập nhật.";
      }
  else
    {
      $msg="Đã có lỗi xảy ra. Vui lòng kiểm tra lại !";
    }
}
  ?>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <title>SPA || Xem cuộc hẹn</title>
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
                    <div class="table-responsive bs-example widget-shadow">
                        <p style="font-size:16px; color:red" align="center">
                            <?php if($msg){
                  echo $msg;
                }  
              ?>
                        </p>
                        <h3 class="title1">Chi tiết cuộc hẹn</h3>
                        <?php
              $cid=$_GET['viewid'];
              $ret=mysqli_query($con,"select * from tblcuochen where ID='$cid'");
              $cnt=1;
              while ($row=mysqli_fetch_array($ret)) {
            ?>
                        <table class="table table-bordered">
                            <tr>
                                <th>Số cuộc hẹn</th>
                                <td><?php  echo $row['Socuochen'];?></td>
                            </tr>
                            <tr>
                                <th>Tên khách</th>
                                <td><?php  echo $row['Ten'];?></td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td><?php  echo $row['Email'];?></td>
                            </tr>
                            <tr>
                                <th>Số điện thoại</th>
                                <td><?php  echo $row['Sodienthoai'];?></td>
                            </tr>
                            <tr>
                                <th>Ngày hẹn</th>
                                <td><?php  echo $row['Ngayhen'];?></td>
                            </tr>
                            <tr>
                                <th>Thời gian hẹn</th>
                                <td><?php  echo $row['Giohen'];?></td>
                            </tr>

                            <tr>
                                <th>Dịch vụ</th>
                                <td><?php  echo $row['Dichvu'];?></td>
                            </tr>
                            <tr>
                                <th>Ngày áp dụng</th>
                                <td><?php  echo $row['Ngayapdung'];?></td>
                            </tr>
                            <tr>
                                <th>Trang thái</th>
                                <td>
                                    <?php  
                  if($row['Trangthai']=="1")
                  {
                    echo "Selected";
                  }

                  if($row['Trangthai']=="2")
                  {
                    echo "Rejected";
                  }
                  ?>
                                </td>
                            </tr>
                        </table>
                        <table class="table table-bordered">
                            <?php if($row['Nhanxet']==""){ ?>
                            <form name="submit" method="post" enctype="multipart/form-data">
                                <tr>
                                    <th>Nhận xét :</th>
                                    <td><textarea name="remark" placeholder="" rows="12" cols="14"
                                            class="form-control wd-450" required="true"></textarea></td>
                                </tr>
                                <tr>
                                    <th>Trang thái :</th>
                                    <td>
                                        <select name="status" class="form-control wd-450" required="true">
                                            <option value="1" selected="true">Chấp nhận</option>
                                            <option value="2">Từ chối</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td colspan="2"><button type="submit" name="submit"
                                            class="btn btn-az-primary pd-x-20">Submit</button></td>
                                </tr>
                            </form>
                            <?php } else { ?>
                        </table>
                        <table class="table table-bordered">
                            <tr>
                                <th>Nhận xét</th>
                                <td><?php echo $row['Nhanxet']; ?></td>
                            </tr>
                            <tr>
                                <th>Ngày nhận xét</th>
                                <td>
                                    <?php echo $row['Ngaynhanxet']; ?>
                                </td>
                            </tr>
                        </table>

                        <?php } ?>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
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