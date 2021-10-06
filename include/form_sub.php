<?php


	include 'database_connection.php';

	if( isset($_POST['sms_submit']) ) {


		if(isset($_POST['sms-customer-name']) && isset($_POST['sms-customer-phone']) && isset($_POST['sms-product-name']) && isset($_POST['sms-product-quantity']) && isset($_POST['sms-sales-man-name']) && isset($_POST['sms-product-price']) && isset($_POST['sms-sales-date']) && isset($_POST['sms-customer-address'])) {

			$cname = $_POST['sms-customer-name'];
			$cphone = $_POST['sms-customer-phone'];
			$pname = $_POST['sms-product-name'];
			$pquantity = $_POST['sms-product-quantity'];
			$sname = $_POST['sms-sales-man-name'];
			$pid = $_POST['sms-product-price'];
			$sdate = $_POST['sms-sales-date'];
			$caddress = $_POST['sms-customer-address'];



			$sql = "INSERT INTO `sales_managment_table` (`customer_name`, `customer_phone_number`, `product_name`, `product_quantity`, `product_id`, `sales_man_name`, `date`)
			 VALUES('$cname','$cphone','$pname','$pquantity','$pid','$sname','$sdate')";

			 if (mysqli_query($connection, $sql)) {
			 	echo "Inserted";
			 } else{
			 	echo "Not Inserted";
			 };

		}
	}

?>