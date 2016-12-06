<?php
	require_once("db.php");

	/*$result = $conn->query("SELECT COUNT(*) count FROM page;");
	$idPage = -1;

	if ($result->num_rows > 0) 
	    while($row = $result->fetch_assoc())
	        $idPage = $row["count"] + 1;

	$idScenario = $_POST['id_scenario'];
	$numero = $_POST['numero'];
	$texte = $_POST['texte'];
	$image = $_POST['image'];*/

	for ($i = 1; $i <= 4; ++$i)
	{
		eval('$bouton = (isset($_GET["go_to_page'.$i.'"])) ? $_GET["go_to_page'.$i.'"] : null;');

		if ($bouton != null)
		{
			echo "Coucou";
		}
		else
		{
			echo "Non.";
		}
	}

	/*
		Ajouter les boutons en BDD, et stocker les IDs dans $boutonNb
	*/
/*
	$bouton1 = $idBouton1;
	$bouton2 = $idBouton2;
	$bouton3 = $idBouton3;
	$bouton4 = $idBouton4;

	$query = 'INSERT INTO page (idScenario, numero, texte, image, bouton1, bouton2, bouton3, bouton4) VALUES (?, ?, ?, ?, ?, ?, ?, ?);';

	$stmt = $conn->prepare($query);
	$stmt->bind_param("iissssss", $idScenario, $numero, $texte, $image, $bouton1, $bouton2, $bouton3, $bouton4);
	$stmt->execute();*/
?>