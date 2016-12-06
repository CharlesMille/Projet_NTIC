<!DOCTYPE html>
<head>
	<title>Ajouter une nouvelle page</title>

	<!-- IMPORT JS -->
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/libs/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/fonctions.js"></script>
	
	<!-- Import CSS -->
	<link type="text/css" rel="stylesheet" href="css/rocssti-fr.css"/>
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<?php include("contenu/header.php"); ?>	
	<div id="contenu" class="center mw1600e pl2 pr2 content">
		<div class="main">
			<h1 class="p1">Ajouter une nouvelle page :</h1>
			<form method="POST" action="">
				<label for="titre" class="row bl">
					<span class="inbl w15 alignright pr1">Titre :</span>
					<input class="w80" type="text" name="titre" id="titre" placeholder="Titre"/>
				</label>
				<label for="image" class="row bl">
					<span class="inbl w15 alignright pr1">Image :</span>
					<input class="w80" type="file" name="image" id="image"/>
				</label>
				<br/>
				<label for="situation" class="row bl">
					<span class="inbl w15 alignright pr1">Texte décrivant une situation :</span><br/>
					<textarea class="w100" tname="situation" id="situation"></textarea>
				</label>
			</form> 
		</div>
	</div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>