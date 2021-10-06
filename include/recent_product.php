<?php
	


	// delete data by id
	$delete = delete_sales_managment_info_by_id();

	// get sales management data
	$result = get_sales_management_info();

	if ($result->num_rows > 0) {
?>
	<!-- sms recent product list section -->
	<div class="sms-recent-product" >
		<h1>Recent Sales List</h1>
		<div class="sms-recent-product-items" >
			<?php
			// output data of each row
	  		while($row = $result->fetch_assoc()) {
	  		?>
	    	<div class="sms-recent-product-item" >
				<a class="sms-model" href="#"><?php echo $row['id']; ?></a>
				<a class="sms-customer-name" href="#"><?php echo $row['customer_name']; ?></a>
				<a class="sms-product-name" href="#"><?php echo $row['product_name']; ?></a>
				<a class="sms-product-price" href="#"><?php echo $row['price']; ?> Taka</a>
				<a class="sms-download" href="http://sms.test/edit.php?page=edit&id=<?php echo $row['id']; ?>">Edit</a>								
				<a class="sms-review" href="http://sms.test/index.php?page=delete&id=<?php echo $row['id']; ?>">Delete</a>
			</div>
			<?php } ?>
		</div>
	</div>
<?php
	} else {
	  echo "0 results";
	}
?>






