<!DOCTYPE html>
<head>
	<title>Ajouter un nouveau scénario</title>

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

	<div class="container" id="contenu">
		<h3>Ajouter un nouveau scénario :</h3>
		<br/>
		<form class="form-horizontal" method="POST" action="php/ajoutScenario.php">
			<div class="form-group">
				<label class="control-label col-sm-2" for="titre">Titre :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" id="titre" name="titre" type="text" placeholder="Titre du scénario" required/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="situation">Résumé :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<textarea class="form-control" id="situation" name="situation" type="text"></textarea>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-4">
					<input class="btn btn-lg btn-block btn-danger" type="button" value="Annuler" onclick="window.location='index.php'"/>
				</div>

				<div class="col-sm-8">
					<input class="btn btn-lg btn-block btn-primary" type="submit" value="Créer le scénario"/>
				</div>
			</div>
		</form>
		<br/>
	</div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>