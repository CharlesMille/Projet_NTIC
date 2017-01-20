<?php
	session_start();
	require_once("db.php");

	$titre = $_POST['titre'];
	$situation = $_POST['situation'];

	$scenario = -1;

	$request = 'INSERT INTO scenario (nom, resume) VALUES (?, ?);';
	$stmt = $conn->prepare($request);
	$stmt->bind_param("ss", $titre, $situation);
	$stmt->execute();

	$selectID = 'SELECT id_scenario as id, nom FROM scenario GROUP BY id_scenario ORDER BY id_scenario DESC;';
	$result = $conn->query($selectID);

	if ($result->num_rows > 0) 
		while($row = $result->fetch_assoc())
	    {
	    	if ($row['nom'] == $titre)
	    	{
	    		$scenario = $row['id'];
	    		break;
	    	}	
	    }

	$conn->close();

    header("Location: ../ajoutPage.php?scenario=".$scenario);
?>