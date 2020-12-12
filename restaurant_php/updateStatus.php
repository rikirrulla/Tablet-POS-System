<?php
	
    require "connection.php";

	$no_of_table = $_POST["no_of_table"];
	$status = $_POST["status"];

	
	$sql = "UPDATE restaurant_table SET status = '$status' WHERE no_of_table = '$no_of_table'";

	$result = mysqli_query($connection,$sql);

	if($result){
		echo "Data Updated";
	} else {
		echo "Failed";
	}

	mysqli_close($connection);

?>