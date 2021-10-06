<?php

	function sms_sales_form() {

		if( isset($_GET['page']) && $_GET['page'] === 'edit' ) {
			$submit_btn_name = "sms_udpate";
			$submit_btn_text = "Update";
		} else {
			$submit_btn_name = "sms_submit";
			$submit_btn_text = "Submit";
		}

?>		

		<form class="sms-sales-form" action="" method="post">
			<fieldset>
				<label for="sms-customer-name">Customer Name:</label>
				<input id="sms-customer-name" value="" name="sms-customer-name" required type="text">
			</fieldset>

			<fieldset>
				<label for="sms-customer-phone">Customer Phone Number:</label>
				<input id="sms-customer-phone" name="sms-customer-phone" required type="text">
			</fieldset>

			<fieldset>
				<label for="sms-product-name">Product Name:</label>
				<input id="sms-product-name" name="sms-product-name" required type="text">
			</fieldset>

			<fieldset>
				<label for="sms-product-quantity">Product Quantity:</label>
				<input id="sms-product-quantity" name="sms-product-quantity" required type="text">
			</fieldset>

			<fieldset>
				<label for="sms-sales-man-name">Sales Man Name:</label>
				<input id="sms-sales-man-name" name="sms-sales-man-name" required type="text">
			</fieldset>

			<fieldset>
				<label for="sms-product-price">Product:</label>
				<input id="sms-product-price" name="sms-product-price" required type="text">
			</fieldset>

			<fieldset>
				<label for="sms-sales-date">Date:</label>
				<input id="sms-sales-date" name="sms-sales-date" required type="date">
			</fieldset>

			<fieldset>
				<label for="sms-customer-address" >Address:</label>
				<textarea cols="50" rows="5" id="sms-customer-address" name="sms-customer-address" required ></textarea>
			</fieldset>

			
			<button class="sms-submit-btn" name="<?php echo $submit_btn_name; ?>"  type="Submit"><?php echo $submit_btn_text; ?></button>
			
		</form>
<?php	

	}

	function get_sales_management_info(){
		include 'database_connection.php';


		$sql = "SELECT product_info.id,product_info.price,sales_managment_table.customer_name,sales_managment_table.customer_phone_number,sales_managment_table.product_name,sales_managment_table.product_quantity,sales_managment_table.product_id,sales_managment_table.sales_man_name,sales_managment_table.date FROM product_info INNER JOIN sales_managment_table ON product_info.id=sales_managment_table.product_id";
		$result = $connection->query($sql);

		return $result;
	}

	// delete fucntion 
	function delete_sales_managment_info_by_id(){
		include 'database_connection.php';

		if (isset($_GET['id']) && isset($_GET['page']) && $_GET['page'] == "delete" ) {
			$productid = $_GET['id'];
			$query = "DELETE FROM sales_managment_table WHERE product_id={$productid}";
			$deletequery = mysqli_query($connection,$query);

			header('Location: http://sms.test/index.php');
			exit;
		}
	}

	// Product information 
	function get_product_info(){
		include 'database_connection.php';

		$sql_query = "SELECT * FROM product_info ";
		$result = $connection->query($sql_query);

		return $result;

	}

	// update 
	function get_update_data(){
		include 'database_connection.php';

		if (isset($_GET['update'])) {
			$update_data = $_GET['update'];
			$update_query = " SELECT * FROM product_info WHERE id={$update_data}";
			$get_data = mysqli_query($connection,$query);
		}
	}







