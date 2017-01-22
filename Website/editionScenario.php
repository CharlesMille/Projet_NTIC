<?php
	require_once("php/db.php");
	$selectID = 'SELECT * FROM scenario WHERE id_scenario = '.$_GET['scenario'].';';
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
	<div class="alert alert-success" id="success-alert">
	    <button type="button" class="close" data-dismiss="alert">x</button>
	    <strong>La page a bien été mise à jour !</strong>
	</div>
	<?php include("contenu/header.php"); ?>	
	<div class="container" id="contenu">
		<h3>Edition du scénario</h3>
		<br/>
		<form class="form-horizontal" method="POST" id="formPage" action="php/editerScenario.php">
		<?php
			if ($result->num_rows > 0)
			{
				while($row = $result->fetch_assoc())
			    {
		?>
			<input class="invisible abs" name="idScenario" value="<?php echo $_GET['scenario']; ?>" required/>
			<div class="form-group">
				<label class="control-label col-sm-2" for="titre">Titre :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" id="titre" name="titre" type="text" placeholder="Titre du scénario" value="<?php echo $row['nom'] ?>"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="situation">Résumé :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<textarea class="form-control" id="situation" name="situation" type="text"><?php echo $row['resume'] ?></textarea>
				</div>
			</div>
			<br/>
			<input class="btn btn-lg btn-block btn-primary" value="Ajouter une page au scénario" onclick="window.location='ajoutPage.php?scenario=<?php echo $_GET['scenario']; ?>'"/>
			<br/>
		<?php
			$selectPage = 'SELECT * FROM page WHERE id_scenario = '.$_GET['scenario'].' ORDER BY numero ASC;';
			$resultPage = $conn->query($selectPage);

			if ($resultPage->num_rows > 0)
			{
				while($rowPage = $resultPage->fetch_assoc())
			    {

		?>
				<div class="row">
					<div class="col-sm-6">
						<h4><?php echo $rowPage['titre']; ?></h4>
					</div>

					<div class="col-sm-3">
						<input type="button" class="btn btn-lg btn-block btn-info" value="Editer" onclick="window.location='editionPage.php?page=<?php echo $rowPage['id_page']; ?>'"/>
					</div>

					<div class="col-sm-3">
						<input type="button" class="btn btn-lg btn-block btn-danger" id="supprimer" value="Supprimer" onclick="window.location='php/supprimerPage.php?page=<?php echo $rowPage['id_page']; ?>&scenario=<?php echo $_GET['scenario']; ?>'"/>
					</div>
				</div>
				<hr/>
		<?php

			    }
			}
			else
				echo "Aucune page n'a été liée au scénario";
		?>

			<div class="row">
				<div class="col-sm-4">
					<input class="btn btn-lg btn-block btn-danger" type="button" value="Annuler" onclick="window.location='listeScenario.php'"/>
				</div>

				<div class="col-sm-8">
					<input class="btn btn-lg btn-block btn-primary" id="modifier" value="Valider les modifications"/>
				</div>
			</div>
		<?php
			    }
			}
			else
				echo "Ce scénario n'existe pas.";
		?>
		</form>
	</div>
	<br/>
	<?php include("contenu/footer.php"); ?>
</body>
</html>


<script>
	$(document).ready (function(){
	    $("#success-alert").hide();
	    $("#modifier").click(function(e) {
	    		e.stopImmediatePropagation();

	    		$.post(
	    			"php/editerScenario.php", 
	    			$("#formPage").serialize(),
			       	function(response) {
			       		if (response == "OK")
			       		{
			       			$("#success-alert").alert();
					        $("#success-alert").fadeTo(2000, 500).slideUp(500, function() {
					       		$("#success-alert").slideUp(500);
					        });
			       		}
			       		else
			       		{
			       			alert("Erreur");
			       		}
			       	}
			    );
		    }
		);
 	});
</script>