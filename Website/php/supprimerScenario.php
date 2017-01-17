<?php
	require_once("db.php");

	$sql = 'DELETE FROM scenario WHERE id_scenario = ?';
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("i", $_GET['scenario']);
	$stmt->execute();

	$sql = 'DELETE FROM page WHERE id_scenario = ?';
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("i", $_GET['scenario']);
	$stmt->execute();

	header("Location: ../listeScenario.php");
?>