<?php
    session_start();
    include("../includes/dbconnection.php");
    $_SESSION['login']=="";
    date_default_timezone_set('Asia/Kolkata');
    $ldate=date( 'd-m-Y h:i:s A', time () );
    mysqli_query($con,"UPDATE tblnhatkynguoidung  SET Thoigianlogout = '$ldate' WHERE Emailnguoidung = '".$_SESSION['login']."' ORDER BY Id DESC LIMIT 1");
    session_unset();
    $_SESSION['errmsg']="Đăng xuất thành công !";
?>
<script language="javascript">
    document.location="login.php";
</script>
