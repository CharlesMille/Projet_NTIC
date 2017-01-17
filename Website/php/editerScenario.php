<?php
	require_once("db.php");

	$nom = $_POST['titre'];
	$resume = $_POST['situation'];	

	$sql = 'UPDATE scenario SET nom = ?, resume = ? WHERE id_scenario = ?;';
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("ssi", $nom, $resume, $_POST['idScenario']);
	$stmt->execute();

	$conn->close();

	echo "OK";
?>