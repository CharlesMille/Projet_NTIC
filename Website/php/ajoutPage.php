<?php
	session_start();
	require_once("db.php");

	$idScenario = $_POST['idScenario'];
	$titre = $_POST['titre'];
	$situation = $_POST['situation'];
	$nbBoutons = $_POST['nbBoutons'];
	$numero = $_POST['numero'];
	$requis = $_POST['requis'];

	$idPage = -1;

	$request = 'INSERT INTO page (id_scenario, numero, titre, texte, requis) VALUES (?, ?, ?, ?, ?);';
	$stmt = $conn->prepare($request);
	$stmt->bind_param("iisss", $idScenario, $numero, $titre, $situation, $requis);
	$stmt->execute();

	$selectID = 'SELECT id_page as id, titre FROM page GROUP BY id_page ORDER BY id_page DESC;';
	$result = $conn->query($selectID);

	if ($result->num_rows > 0) 
		while($row = $result->fetch_assoc())
	    {
    		$idPage = $row['id'];
    		break;
	    }

	for ($i = 0; $i < $nbBoutons; $i++)
	{
		$request = 'INSERT INTO bouton (id_page, go_to_page, texte, flag, score) VALUES (?, ?, ?, ?, ?);';
		$stmt = $conn->prepare($request);
		$stmt->bind_param("iissi", $idPage, $_POST['goToPage'][$i], $_POST['rep'][$i], $_POST['vari'][$i], $_POST['sco'][$i]);
		$stmt->execute();
	}

	$conn->close();

	echo "OK";
?>