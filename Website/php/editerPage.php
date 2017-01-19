<?php
	require_once("db.php");

	$titre = $_POST['titre'];
	$numero = $_POST['numero'];	
	$texte = $_POST['situation'];

	$sql = 'UPDATE page SET titre = ?, texte = ?, numero = ? WHERE id_page = ?;';
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("ssii", $titre, $texte, $numero, $_POST['idPage']);
	$stmt->execute();

	$conn->close();

	echo "OK";
?>