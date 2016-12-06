<!DOCTYPE html>
<head>
	<title>Ajouter une nouvelle page</title>

	<!-- IMPORT JS -->
	<script type="text/javascript" src="js/fonctions.js"></script>
	
	<!-- Import CSS -->
	<link type="text/css" rel="stylesheet" href="css/rocssti-fr.css"/>
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<?php include("contenu/header.php"); ?>	
	<div id="contenu" class="center mw1600e pl2 pr2 content">
		<div class="main center relative">
			<br/>
			<h1>Ajouter une nouvelle page :</h1>
			<br/> 
			<form method = "post" runat ="server">
			<table class ="w100">
				<tr>
					<td class = "w30">
						<label class = "label" >
							 Titre : 
						</label>
					</td>
					<td>
						<input type="text" name = "titre_page" id="input_title_page"/>
					</td>
				</tr>
				<tr>
					<td class = "w30">
						<label class = "label" >
							 Image : 
						</label>
					</td>
					<td class = "w100">
						<input type="file" name = "image_page" id="input_image_page"/>						
					</td>
					<td>
						<img id="img" src="#" alt="your image"/>
					</td>
				</tr>
				<tr>
					<td class = "w30">
						<label class = "label" >
							 Texte d'écrivant la situation : 
						</label> 
					</td>
					<td>
						<textarea name = "description_text_page" id="input_description_text_page"></textarea>
					</td>
				</tr>
				<tr>
					<td>Titre :</td>
					<td>Titre :</td>
				</tr>
				<tr>
					<td>Titre :</td>
					<td>Titre :</td>
				</tr>
			</table>
				<!--<div class = "row w100">
					<div class="col  alignmiddle w5">
						<label class = "label" >
							Titre :
						</label>   
					</div>
					<div class="col w1 gut"> </div>
					<div class="col aligneft alignmiddle w40 ">
						<input type="text" name = "titre_page" id="input_title_page"/>
					</div>
				</div>
				<div class = "row w100">
					<div class="col alignmiddle w5">
						<label class = "label" >
							Image :
						</label>   
					</div>
					<div class="col w1 gut"> </div>
					<div class="col alignleft alignmiddle w40">
						<input type="file" name = "image_page" id="input_image_page"/>
					</div>
				</div>
				<div class = "row w100">
					<div class="col alignmiddle w5">
						<label class = "label" >
							Texte d'écrivant la situation :
						</label> 
					</div>
				</div>
				<div class = "row w100">
					<div class="w100 aligncenter alignleft">										
						<textarea name = "description_text_page" id="input_description_text_page"></textarea>
					</div>					
				</div>-->

			</form> 
		</div>
	</div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>