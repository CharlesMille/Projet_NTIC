<?php
	require_once("php/db.php");
	$request = 'SELECT * FROM page WHERE id_page = '.$_GET['page'].';';
	$result = $conn->query($request);
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
	<div class="container">
		<h3>Edition de la page</h3>
		<br/>
		<form class="form-horizontal" method="POST" action="php/editerPage.php">
		<?php
			if ($result->num_rows > 0)
			{
				while($row = $result->fetch_assoc())
			    {
		?>
			<input class="invisible abs" name="idPage" value="<?php echo $_GET['page']; ?>"/>
			<div class="form-group">
				<label class="control-label col-sm-2" for="titre">Titre :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" id="titre" name="titre" type="text" placeholder="Titre du scénario" value="<?php echo $row['titre'] ?>"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="numero">Page n° :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" id="numero" name="numero" type="number" placeholder="Numéro de la page" value="<?php echo $row['numero'] ?>"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="situation">Texte décrivant la situation :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<textarea class="form-control" id="situation" name="situation" type="text"><?php echo $row['texte'] ?></textarea>
				</div>
			</div>
			<br/>
		<?php
			$selectBouton = 'SELECT * FROM bouton WHERE id_page = '.$_GET['page'].';';
			$resultBouton = $conn->query($selectBouton);

			if ($resultBouton->num_rows > 0)
			{
				while($rowBouton = $resultBouton->fetch_assoc())
			    {

		?>
				<div class="row">
					<div class="col-sm-6">
						<h4><?php echo $rowBouton['texte']; ?></h4>
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
					<input class="btn btn-lg btn-block btn-primary" type="submit" value="Valider les modifications"/>
				</div>
			</div>
		<?php
			    }
			}
			else
				echo "Cette page n'existe pas.";
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
	    
 	});
</script>