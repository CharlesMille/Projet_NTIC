<?php
	require_once("php/db.php");
	$request = 'SELECT * FROM page WHERE id_page = '.$_GET['page'].';';
	$result = $conn->query($request);

	$scenario = -1;
?>

<!DOCTYPE html>
<head>
	<title>Projet NTIC</title>

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
		<h3>Edition de la page</h3>
		<br/>
		<form class="form-horizontal" role="form" enctype="multipart/form-data" method="POST" id="formPage" action="php/editerPage.php">
		<?php
			if ($result->num_rows > 0)
			{
				while($row = $result->fetch_assoc())
			    {
			    	$scenario = $row['id_scenario'];
		?>
			<input class="invisible abs" name="idPage" value="<?php echo $_GET['page']; ?>"/>
			<input class="invisible abs" name="idScenar" type = 'number' value="<?php echo $scenario; ?>"/>
			<div class="form-group">
				<label class="control-label col-sm-2" for="titre">Titre :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" id="titre" name="titre" type="text" placeholder="Titre du scénario" value="<?php echo $row['titre'] ?>"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="numero">Page n° :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" id="numero" name="numero" type="number" placeholder="Numéro de la page" value="<?php echo $row['numero'] ?>" onchange ="putImage();"onload ="putImage();"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="situation">Texte décrivant la situation :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<textarea class="form-control" id="situation" name="situation" type="text"><?php echo $row['texte'] ?></textarea>
				</div>

			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="requis">Variable requise pour accéder à la page :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input class="form-control" id="requis" name="requis" type="text" value="<?php echo $row['requis'] ?>" placeholder="score:valeur OU variable"></input>
				</div>
			</div>
			<br/>
			<div class="form-group">
				<label class="control-label col-sm-2" for="image">image :</label>
				<div class="col-lg-6 col-sm-6 col-12">
					<input type ="file" class="btn-sm" id="image" name="image" value ="<?php echo $row['image']?>" onchange="putImage()"/>
					<br/>
					<img id="img" src="<?php echo $row['image']?>" alt="Aperçu de l'image"/>
				</div>				
			</div>
			</br>
		<?php
			$selectBouton = 'SELECT * FROM bouton WHERE id_page = '.$_GET['page'].';';
			$resultBouton = $conn->query($selectBouton);
			$i = 1;

			if ($resultBouton->num_rows > 0)
			{
				while($rowBouton = $resultBouton->fetch_assoc())
			    {
		?>
				<div class="row">
					<input class="invisible abs" name="idBouton[]" value="<?php echo $rowBouton['id_bouton']; ?>"/>

					<h3>Bouton n°<?php echo $i++; ?></h3>

					<div class="col-sm-1">
						<h4>Texte :</h4>
					</div>

					<div class="col-sm-3">
						<h4><input class="form-control" name="nomBouton[]" value="<?php echo $rowBouton['texte']; ?>"/></h4>
					</div>

					<div class="col-sm-3">
						<h4>Envoie vers la page n°</h4>
					</div>

					<div class="col-sm-2">
						<h4><input class="form-control" type="number" name="goTo[]" value="<?php echo $rowBouton['go_to_page']; ?>"/></h4>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-2">
						<h4>Variable obtenue si choisi :</h4>
					</div>

					<div class="col-sm-4">
						<h4><input class="form-control" name="flag[]" value="<?php echo $rowBouton['flag']; ?>"/></h4>
					</div>

					<div class="col-sm-1">
						<h4>Score :</h4>
					</div>

					<div class="col-sm-2">
						<h4><input class="form-control" type="number" name="score[]" value="<?php echo $rowBouton['score']; ?>"/></h4>
					</div>
				</div>
				<hr/>
		<?php
			    }
			}
			else
				echo "Aucune page n'a été liée au scénario";
		?>
			<input class="invisible abs" name="nb" value="<?php echo ($i - 1); ?>"/>

			<div class="row">
				<div class="col-sm-4">
					<input class="btn btn-lg btn-block btn-danger" type="button" value="Annuler" onclick="window.location='editionScenario.php?scenario=<?php echo $scenario; ?>'"/>
				</div>

				<div class="col-sm-8">
					<input class="btn btn-lg btn-block btn-primary" id="modifier" value="Valider les modifications" type = "submit"/>
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
<script>CKEDITOR.replace('situation');</script>