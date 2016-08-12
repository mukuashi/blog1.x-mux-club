<!DOCTYPE HTML>
<html>
  <head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>邮件发送中. . . . . .</title>
  </head>
<body>
<?php
include("class.phpmailer.php");
include("class.smtp.php");
$smtp = "smtp.qq.com";//必填，设置SMTP服务器 QQ邮箱是smtp.qq.com(163或139类似)
$youremail ='mks572512250@foxmail.com'; // 必填，开通SMTP服务的邮箱；也就是发件人Email。
$password = "ocsoqtzhqnhsbefb"; //必填， 以上邮箱对应的密码
$ymail = "mks572512250@foxmail.com"; //收信人的邮箱地址，也就是你自己收邮件的邮箱
$yname = "PhotoArtLife"; //收件人称呼
function get_ip(){
   if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown"))
       $ip = getenv("HTTP_CLIENT_IP");
   else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown"))
       $ip = getenv("HTTP_X_FORWARDED_FOR");
   else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown"))
       $ip = getenv("REMOTE_ADDR");
   else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown"))
       $ip = $_SERVER['REMOTE_ADDR'];
   else
       $ip = "unknown";
   return($ip);
}
$mail = new PHPMailer();
$mail->IsSMTP();
$mail->SMTPAuth = true;
$mail->Host = $smtp;
$mail->Username = $youremail;
$mail->Password = $password; //必填， 以上邮箱对应的密码
$mail->From = $youremail;
$mail->FromName = "驿站留言板";
$mail->AddAddress($ymail,$yname);
if($_POST['yourname']){
  $yourname = $_POST['yourname'];
  $email = $_POST['email'];
  $message = $_POST['message'];
  $ip = get_ip();
  $mail->Subject = $yourname."-【驿站留言板】"; 
  $html = '姓名：'.$yourname.'<br>邮箱：'.$email.'<br>IP地址：'.$ip.'<br>留言信息：'.$message;
  $mail->MsgHTML($html);  
  $mail->IsHTML(true); 
  if(!$mail->Send()) {
    echo '<script>alert("您的信息填写有误提交失败了，请重新填写信息，谢谢啦！");window.history.go(-1);</script>';
  } else {
    echo '<script>alert("您好，我已经收到您的邮件，稍后会给您答复的，谢谢啦！");window.location.href="../project/works/index.html#four";</script>';
  }
}
?>
</body>
</html>