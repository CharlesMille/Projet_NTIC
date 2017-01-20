<?php
	require_once("db.php");

	$titre = $_POST['titre'];
	$numero = $_POST['numero'];	
	$texte = $_POST['situation'];
	$ids = $_POST['idBouton'];
	$noms = $_POST['nomBouton'];
	$goTo = $_POST['goTo'];
	$nbBoutons = $_POST['nb'];

	$sql = 'UPDATE page SET titre = ?, texte = ?, numero = ? WHERE id_page = ?;';
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("ssii", $titre, $texte, $numero, $_POST['idPage']);
	$stmt->execute();

	for ($i = 0; $i < $nbBoutons; $i++)
	{
		$sqlBtn = 'UPDATE bouton SET texte = ?, go_to_page = ? WHERE id_bouton = ?;';
		$stmt = $conn->prepare($sqlBtn);
		$stmt->bind_param("sii", $noms[$i], $goTo[$i], $ids[$i]);
		$stmt->execute();
	}

	$conn->close();

	echo "OK";
?>