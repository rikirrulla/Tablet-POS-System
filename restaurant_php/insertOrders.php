<?php
	
    require "connection.php";

	$type = $_POST["type"];
	$order_date = $_POST["order_date"];
	$date_modified = $_POST["date_modified"];
	$table_ID = $_POST["table_ID"];
	$product_ID = $_POST["product_ID"];
	

	$sql = "INSERT INTO orders(type,order_date,date_modified, table_ID, product_ID) VALUES ('$type','$order_date','$date_modified','$table_ID','$product_ID')";

	$result = mysqli_query($connection,$sql);

	if($result){
		echo "Data Inserted";
	} else {
		echo "Failed";
	}

	mysqli_close($connection);

?>