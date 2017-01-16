<?php
	session_start();
	require_once("db.php");

	$idScenario = $_SESSION['id'];
	$titre = $_POST['titre'];
	$situation = $_POST['situation'];
	$nbBoutons = $_POST['nbBoutons'];
	$numero = $_POST['numero'];

	$idPage = -1;

	$request = 'INSERT INTO page (id_scenario, numero, titre, texte) VALUES (?, ?, ?, ?);';
	$stmt = $conn->prepare($request);
	$stmt->bind_param("iiss", $idScenario, $numero, $titre, $situation);
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
		$request = 'INSERT INTO bouton (id_page, go_to_page, texte) VALUES (?, ?, ?);';
		$stmt = $conn->prepare($request);
		$stmt->bind_param("iis", $idPage, $_POST['goToPage'][$i], $_POST['rep'][$i]);
		$stmt->execute();
	}

	$conn->close();

	echo "OK";
?>