<?php
header("Content-Type:text/html;charset=utf-8");
$dbms="mysql";
$dbName='db_database19';
$user='kuashi';
$pwd='lm5201314';
$host='localhost';
$dsn="$dbms:host=$host;dbname=$dbName";
try{
	$pdo=new PDO($dsn,$user,$pwd);
	echo "PDO连接MySQL成功";
}catch(Exception $e){
	echo $e->getMessage()."<br>";
}
?>