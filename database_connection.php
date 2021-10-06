<?php
$hostname = "localhost";
$username = "root";
$password = "";

$dbname = "sms"; 

$connection = new mysqli($hostname,$username,$password, $dbname);

if ($connection->connect_error) {
	die("Connection Faild".$connection->connect_error);
}else{
	// echo "Connection Successfull";
}

?>