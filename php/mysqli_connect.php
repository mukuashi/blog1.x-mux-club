<?php
header("Content-type: text/html; charset=utf-8");
$link=mysqli_connect("localhost","kuashi","lm5201314")or die("不能连接到数据库！".mysql_error());
if ($link) {
     echo "数据源连接成功!";
}
?>