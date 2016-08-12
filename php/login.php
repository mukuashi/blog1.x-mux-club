<!DOCTYPE html>
<head>
  <title>欢迎登录-密码验证中......</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="description" content="个人社区安全登录" />
  <meta name="keywords" content="@PhotoArtLife-个人社区登录验证 /">
  <link rel="shortcut icon" href="../images/logo.ico">
</head>
<body>
<?php
   session_start();
   $username=trim($_POST['username']);
   $password=trim($_POST['password']);
   if ($username=="PhotoArtLife" && $password=="mukuashi") {
     echo "登录成功！";
     $_SESSION['username']=$username;
     $_SESSION['password']=$password;
       echo "<meta http-equiv=\"refresh\"content=\"2;url=../article/index.html\">2秒后进入页面，请稍等. . . . . ";
   }else{
    echo"<script>alert('不好意思亲，您输入有误，登录失败了!');history.back();</script>";
   }
?>
</body>
</html>
