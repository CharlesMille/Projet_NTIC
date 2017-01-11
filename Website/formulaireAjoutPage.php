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
		<div class="main">
			<h1 class="p1">Ajouter une nouvelle page :</h1>
			<form method="POST" action="php/ajoutPage.php">
				<label for="titre" class="row bl">
					<span class="inbl w15 alignright pr1">Titre :</span>
					<input class="w80" type="text" name="titre" id="titre" placeholder="Titre"/>
				</label>
				<label for="numero" class="row bl">
					<span class="inbl w15 alignright pr1">Page n° :</span>
					<input class="w80" type="text" name="numero" id="numero" placeholder="Numéro de la page"/>
				</label>
				<label for="image" class="row bl">
					<span class="inbl w15 alignright pr1">Image :</span>
					<input class="w80" type="file" name="image" id="image" onchange ="putImage();"/>
					<br/>
					<img id="img" src="#" alt ="Image" class="inbl w15 alignright pr1"/>					
				</label>												
				<label for="situation" class="row bl">
					<span class="inbl w15 alignright pr1">Texte décrivant une situation :</span><br/>
					<textarea class="w100" name="situation" id="situation"></textarea>
				</label>
				<label for="NbChoix" class="row bl">
					<span class="inbl w15 alignright pr1">Nombre de choix :</span>
					<input type="number" name="nbBoutons" value ="1" max ="4" min ="0" id="nbbtn" onchange="addChampText();"/>
				</label>
				<span id = "textRep">
					<div class = "rep">
						<label for="titre" class="row bl">
							<span class="inbl w15 alignright pr1">Réponse 1 :</span>
							<input class="w80" type="text" name="rep[]" id="rep" placeholder="Réponse 1"/>
						</label>
						<label for="titre" class="row bl">
							<span class="inbl w15 alignright pr1">Lien :</span>
							<select class="w80" name="goToPage[]">
								<option value = "1">1</option>
								<option value = "2">2</option>
								<option value = "3">3</option>
							</select> 
							<label for="poid" class="row bl">
								<span class="inbl w15 alignright pr1">Poids du choix :</span>
								<input type="number" name="poids[]" value ="0" max ="10" min ="0" id="poids"/>
							</label>
						</label>
					</div>
				</span>
				<br/>
				<input type="submit" value="Suivant"/> 				 
			</form> 
			</br>
			<input type="button" value="Terminer" onclick="window.location='index.php'"/>
		</div>
	</div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>