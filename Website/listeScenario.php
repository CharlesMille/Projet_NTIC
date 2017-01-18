<?php
	require_once("php/db.php");
	$selectID = 'SELECT * FROM scenario;';
	$result = $conn->query($selectID);
?>

<!DOCTYPE html>
<head>
	<title>Projet NTIC</title>

	<!-- IMPORT JS -->
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/libs/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/libs/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/fonctions.js"></script>
	
	<!-- Import CSS -->
	<link type="text/css" rel="stylesheet" href="css/jquery-ui.css"/>
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<?php include("contenu/header.php"); ?>	
	<div class="container">
		<h3>Liste des scénarios</h3>
		<br/>
		<div id="liste">
		<?php
			if ($result->num_rows > 0)
			{
				while($row = $result->fetch_assoc())
			    {
		?>
				<div class="row">
					<div class="col-sm-6">
						<h4><?php echo $row['nom']; ?></h4>
					</div>

					<div class="col-sm-2">
						<input class="btn btn-lg btn-block btn-success" type="button" value="Sélectionner" onclick="window.location='pageScenario.php?scenario=<?php echo $row['id_scenario']; ?>'"/>
					</div>

					<div class="col-sm-2">
						<input type="button" class="btn btn-lg btn-block btn-info" value="Editer" onclick="window.location='editionScenario.php?scenario=<?php echo $row['id_scenario']; ?>'"/>
					</div>

					<div class="col-sm-2">
						<input type="button" class="btn btn-lg btn-block btn-danger" id="supprimer" value="Supprimer" onclick="window.location='php/supprimerScenario.php?scenario=<?php echo $row['id_scenario']; ?>'"/>
					</div>
				</div>
				<hr/>
		<?php
			    }
			}
			else
				echo "Aucun scénario n'a été créé.";
		?>
		</div>
	</div>
	<br/>
	<?php include("contenu/footer.php"); ?>
</body>
</html>