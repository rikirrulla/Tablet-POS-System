<?php
	
    require "connection.php";

	
	$result = array();
	$result['restaurant'] = array();
	$select = "SELECT * from restaurant_table";
	$responce = mysqli_query($connection,$select);

	while ($row = mysqli_fetch_array($responce)) {
	    	$index['table_ID '] = $row['0'];
			$index['no_of_table'] = $row['1'];
            $index['status'] = $row['2'];
			$index['pin_code'] = $row['3'];

			array_push($result['restaurant'], $index);
		}	
		
		$result["succes"] =1;
		echo json_encode($result);

	mysqli_close($connection);


?>