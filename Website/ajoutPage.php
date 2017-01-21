<!DOCTYPE html>
<head>
	<title>Ajouter une nouvelle page</title>

	<!-- IMPORT JS -->
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/libs/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/libs/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/fonctions.js"></script>
	<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
	
	<!-- Import CSS -->
	<link type="text/css" rel="stylesheet" href="css/jquery-ui.css"/>
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body onload="init();">
	<?php include("contenu/header.php"); ?>	
	<div class="container">
		<h3>Ajouter une page au scénario :</h3>
		<br/>
		<form class="form-horizontal" role="form" enctype="multipart/form-data" method="POST" action="php/ajoutPage.php" id="formPage">
			<input class="invisible abs" name="idScenario" value="<?php echo $_GET['scenario']; ?>"/>

			<div class="form-group">
				<label class="control-label col-sm-2" for="titre">Titre :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" id="titre" name="titre" type="text" placeholder="Titre de la page"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="numero">Page n° :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" id="numero" name="numero" type="number" placeholder="Numéro de la page"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="image">Image n° :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="btn-sm" id="image" name="image" type="file" onchange ="putImage();"/>
					<br/>
					<img id="img" src="#" alt="Aperçu de l'image"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="situation">Texte décrivant la situation :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<textarea class="form-control" id="situation" name="situation" type="text"></textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="requis">Variable requise pour accéder à la page :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" id="requis" name="requis" type="text" value="<?php echo $row['requis'] ?>" placeholder="score:valeur OU variable"></input>
				</div>
			</div>

			<hr/>

			<h3>Choix : lien vers les autres pages</h3>
			<br/>
			<div class="form-group">
				<label class="control-label col-sm-2" for="nbChoix">Nombre de choix :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" type="number" name="nbBoutons" value="1" max="4" min="0" id="nbbtn" onchange="addChampText();"/>
				</div>
			</div>

			<div id="boutons">
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion" href="#btn1">Bouton 1</a>
							</h4>
						</div>
						<div id="btn1" class="panel-collapse collapse in">
							<div class="panel-body">
								<br/>
								<div class="form-group">
									<label class="control-label col-sm-2">Réponse 1 :</label>
									<div class="col-lg-6 col-sm-6 col-12">
										<input class="form-control" name="rep[]" type="text" placeholder="Réponse 1"/>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-sm-2">Lien vers la page du scénario n° :</label>
									<div class="col-lg-6 col-sm-6 col-12">
										<input class="form-control" name="goToPage[]" type="number" value="0" min="0"/>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-sm-2">Donner variable :</label>
									<div class="col-lg-6 col-sm-6 col-12">
										<input class="form-control" name="vari[]" type="text"/>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-sm-2">Score donné :</label>
									<div class="col-lg-6 col-sm-6 col-12">
										<input class="form-control" name="sco[]" type="number"/>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-4">
					<input class="btn btn-lg btn-block btn-danger" type="button" value="Annuler" onclick="window.location='index.php'"/>
				</div>

				<div class="col-sm-8">
					<input class="btn btn-lg btn-block btn-primary" type="submit" id="ajouter" value="Ajouter la page au scénario"/>
				</div>
			</div>
			<br/>
		</form>
	</div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>
<script>CKEDITOR.replace('situation');</script>