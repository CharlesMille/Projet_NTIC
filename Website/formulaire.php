<!DOCTYPE html>
<head>
	<title>Ajouter une nouvelle page</title>

	<!-- IMPORT JS -->
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/libs/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/fonctions.js"></script>
	
	<!-- Import CSS -->
	<link type="text/css" rel="stylesheet" href="css/jquery-ui.css"/>
	<link type="text/css" rel="stylesheet" href="css/rocssti-fr.css"/>
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<?php include("contenu/header.php"); ?>	
	<div id="contenu" class="center mw1600e pl2 pr2 content">
		
		<h1 class="p1">Ajouter une nouvelle page :</h1>
		<form method="POST" action="">
			<div class="w100 mb1">
				<div class="w100">
				  	<span class="inbl alignright pr2">Titre</span>
				  	<input class="w70" type="text" name="titre" id="titre"/>
				</div>
			</div>
			<div class="w100 mb2">
				<div class="grid w100">
				  	<span class="inbl alignright pr1d5">Image</span>
				  	<input class="w70" type="file" name="image" id="image"/>
				</div>
			</div>
			<br/>
			<div class="w100">
				<div class="grid w100">
					<span class="inbl w100">Texte décrivant une situation :</span><br/>
					<textarea class="w100" tname="situation" id="situation"></textarea>
				</div>
			</div>
		</form> 
		
	</div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>