<?php
	
    require "connection.php";

	$type = $_POST["type"];	

	$result = array();
	$result['products'] = array();
	$select = "SELECT * from products where type = '$type'";
	$responce = mysqli_query($connection,$select);

	while ($row = mysqli_fetch_array($responce)) {
			$index['productID'] = $row['0'];
			$index['product_name'] = $row['1'];
			$index['unit_price'] = $row['2'];
			$index['description'] = $row['3'];
			$index['category'] = $row['4'];
			$index['type'] = $row['5'];
			$index['date_created'] = $row['6'];
			$index['date_modified'] = $row['7'];


			array_push($result['products'], $index);
		}	
		
		$result["succes"] =1;
		echo json_encode($result);

	mysqli_close($connection);

?>