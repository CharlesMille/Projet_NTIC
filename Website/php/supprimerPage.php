<?php
	require_once("db.php");

	$sql = 'DELETE FROM page WHERE id_page = ?';
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("i", $_GET['page']);
	$stmt->execute();

	header("Location: ../listeScenario.php");
?>