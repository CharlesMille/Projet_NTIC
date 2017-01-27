<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbName = "db_ntic";

	$conn = new mysqli($servername, $username, $password, $dbName);
	$stmt = mysqli_;

	if ($conn->connect_error) 
	{
    	die("Connection failed: ".$conn->connect_error);
    }
?>