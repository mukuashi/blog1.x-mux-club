<?php
session_start();//初始化变量
if ($_POST["submit"]) {
	$checks=$_POST["checks"];
	if ($checks=="") {
		echo "<script>alert('验证码不能为空');window.localtion.href='../login/login.html';</script>";
	}
	if ($checks==$SESSION[checks_checks]) {
		echo "<script>alert('用户登录成功！');window.location.href='.../article/index.html';</script>";
	}else{
		echo "<script>alert('您输入的验证码不正确！');window.location.href='./login/login.html';</script>";
	}
}
?>