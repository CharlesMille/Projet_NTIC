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
	<div id="contenu" class="center mw1600e pl2 pr2 content">
		<div class="main">
			<h1 class="p1">Ajouter un nouveau scénario :</h1>
			<form method="POST" action="php/ajoutScenario.php">
				<label for="titre" class="row bl">
					<span class="inbl w15 alignright pr1">Titre :</span>
					<input class="w80" type="text" name="titre" id="titre" placeholder="Titre"/>
				</label>																
				<label for="situation" class="row bl">
					<span class="inbl w15 alignright pr1">Résumé :</span><br/>
					<textarea class="w100" name="situation" id="situation"></textarea>
				</label>				
				<input type="submit" value="Suivant"/> 				 
			</form> 
            </br>
            <input type="button" value="Annuler" onclick="window.location='index.php'"/>
		</div>
	</div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>