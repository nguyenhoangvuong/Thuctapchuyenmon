<?php
    session_start();
    require_once 'configfb.php';
    include("../includes/dbconnection.php");
    $_SESSION['login']=="";
    date_default_timezone_set("Asia/Bangkok");
    $ldate=date( 'd-m-Y h:i:s A', time () );
    mysqli_query($con,"update tblnhatkynguoidung  set Thoigianlogout = '$ldate' WHERE Emailnguoidung = '".$_SESSION['login']."' ORDER BY Id DESC LIMIT 1");
    unset($_SESSION['facebook_access_token']);
    unset($_SESSION['id']);
    unset($_SESSION['username']);
    session_unset();
    session_destroy();
    $_SESSION['errmsg']="Đăng xuất thành công !";
?>
<script language="javascript">
    document.location="login.php";
</script>
