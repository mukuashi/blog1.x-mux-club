<!DOCTYPE html>
<html>
<head>
  <title>在线留言</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="description" content="@PhotoArtLife留言板" />
  <link rel="shortcut icon" href="../images/logo.ico">
</head>
<body>
<?php
  if (isset($_POST['submit'])) {
    $filename="message.txt";
    $fp=fopen($filename,'at');
    if (!$fp) {
      echo "留言信息保存失败！";
    }else{
      $nickname=$_POST["nickname"];
      $email=$_POST["email"];
      $content=$_POST["content"];
      $message=$nickname."|".$email."|".$content."n";
      if (!fwrite($fp,$message)) {
        echo "<script>alert('您的留言是空的，请重新填写！');</script>";
      }else{
        echo "<script>alert('留言信息保存成功！');</script>";
      }
    }fclose($fp);
  }
?>
<h2>留言列表</h2>
<b><a href="#">点击这里查看所有留言列表</a></b><br>
<table width="100%" class="cart_table">
  <tr class="cart_title">
      <th width="110">昵称</th>
      <th width="149" height="32">邮箱</th>
  </tr>
<?php
  $filename="message.txt";
  $fp=fopen($filename,"r");
  while($ary=fgetcsv($fp,1024,"|"))
  {?>
   <tr>
     <td><?php echo $ary[0];?></td>
     <td><?php echo $ary[1];?></td>
    </tr>
    <tr>
      <td height="27" bgcolor="#dfdfdf"><strong>内容</strong></td>
      <td colspan="2" align="left"><?php echo $ary[2];?></td>
    </tr>
   <?php }
   fclose($fp);
?>
</table>
</body>
</html>
