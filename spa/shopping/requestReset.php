<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
include('../includes/dbconnection.php');

if(isset($_POST['email'])){
    $emailTo = $_POST['email'];
    $code = uniqid(true);
    $query = mysqli_query($con,"insert into tblresetPassword(code,email) values('$code','$emailTo')");
    if(!$query){
        exit("Error");
    }
    $mail = new PHPMailer(true);

    try {
        //Server settings
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'hoangvuong1225@gmail.com';                     //SMTP username
        $mail->Password   = 'Hoangvuong1';                               //SMTP password
        $mail->SMTPSecure = 'ssl';            //Enable implicit TLS encryption
        $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
    
        //Recipients
        $mail->setFrom('hoangvuong1225@gmail.com', 'Mailer');
        $mail->addAddress($emailTo);     //Add a recipient
        $mail->addReplyTo('hoangvuong1225@gmail.com', 'Information');
    
        //Content
        $url = "http://".$_SERVER["HTTP_HOST"].dirname($_SERVER["PHP_SELF"])."/forgot-password.php?code=$code";
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = 'Here is the subject';
        $mail->Body    = "<h1>Bạn đã yêu cầu làm mới mật khẩu</h1> Click <a href='$url'>tại đây</a> để tiếp tục yêu cầu !";
        $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    
        $mail->send();
        echo 'Reset password link has been sento your email';
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
    exit();
}

?>
<form method="post">
    <input type="text" name="email" placeholder="Email" autocomplete="off">
    <br>
    <input type="submit" name="submit" value="Reset email">
</form>