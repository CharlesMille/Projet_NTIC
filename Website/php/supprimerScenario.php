<?php
	require_once("db.php");

	$rechercheBoutons = 'SELECT id_page FROM page WHERE id_scenario = "'.$_GET['scenario'].'"';
	$result = $conn->query($rechercheBoutons);

	if ($result->num_rows > 0)
	{
		while($row = $result->fetch_assoc())
	    {
	    	$sql = 'DELETE FROM bouton WHERE id_page = ?';
			$stmt = $conn->prepare($sql);
			$stmt->bind_param("i", $row['id_page']);
			$stmt->execute();
	    }
	}

	$sql = 'DELETE FROM page WHERE id_scenario = ?';
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("s", $_GET['scenario']);
	$stmt->execute();

	$sql = 'DELETE FROM scenario WHERE id_scenario = ?';
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("i", $_GET['scenario']);
	$stmt->execute();

	header("Location: ../listeScenario.php");
?>