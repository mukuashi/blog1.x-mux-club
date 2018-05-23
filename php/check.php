<?php
session_start();
header("content-type:image/png");//创建图像格式
$image_width=70;//图像宽度
$image_height=18;//图像高度
srand(microtime()*100000);//设置随机数的种子
for ($i=0; $i < 4; $i++) { 
	$new_number=dechex(rand(0,15));
}
$_SESSION[check_checks]=$new_number;//将随机获取的数字写入到SESSION变量中
$num_image=imagecreate($image_width, $image_height);//创建画布
imagecolorallocate($num_image,255,255,255);//画布颜色
for ($i=0 ; $i < strlen($_SESSION[check_checks]); $i++ ) { 
	$font=mt_rand(3,5);//随机字体
	$x=mt_rand(1,8)+$image_width*$i/4;//随机字符X坐标
    $y=mt_rand(1,$image_height/4);//随机字符Y坐标
    $color=imagecolorallocate($num_image, mt_rand(0,100),mt_rand(0,150),mt_rand(0,200));//设置字符的颜色
    imagestring($num_image, $font, $x, $y, $_SESSION[check_checks][$i], $color);//水平输出字符
}
imgagepng($num_image);//生成png图像
imagedestroy($num_image)//释放图像资源
?>