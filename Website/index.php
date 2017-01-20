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
	<?php include("contenu/header.php"); ?>	
	<div class="container">
		<h2>Handicaps psychiques : la question de l’accès aux soins, alcoolisme, suicide etc.</h2>
		<br/>
		<h3>Qu'est ce qu'un handicap psychique ?</h3>
		</br>
		<div class ="row">
			<div class = "col-sm-1">
				<img src="img/Picto-handicap.gif" title = "picto handicap" width = 100%/>
			</div>
			<div class = "col-sm-11">
				<p>D'après la loi du 11 février 2005 : ce qui constitue "<strong>un handicap</strong>", au sens de la présente loi, toute limitation d'activité ou restriction
				de participation à la vie en société subie dans son environnement par une personne en raison d'une altération subtantielle, durable ou définie d'une ou plusieurs fonctions
				<em>physique</em>, <em>sensorielles</em>, <em>mentalles</em>, <em>cognitive</em> ou <em>psychique</em>, d'un polyandicap ou trouble de santé invalidant.</p>
			</div>
		</div>
		<p>Le handicap psychique est une notion récente dans la constitution française. Cette notion a été intégrée par la <em>loi sur le handicap du 11 février 2005</em>. Cette loi a été porté par 
		l'association <a target="_blank" href ="http://www.unafam.org/">Unafam</a>. Elle a permit de <em>différencier</em> handicap mental et handicap psychique et permet donc un meilleur suivit pour les personnes souffrant
		d'un handicap psychique.</p>
		
		<p>
		<div class = "row">
			<div class = "col-sm-1">
				<img src="img/Picto-handicap-mental.gif" title = "picto handicap mental" width = 100%/>
			</div>
			<div class = "col-sm-11">
				Le <strong>handicap mental</strong> est défini par l'Organisation modiale de la Santé comme un arrêt mental ou un développement mental incomplet, caractériq par une insufisance des facultés et du niveau global d'intelligence,
				notement au niveau des fonctions cognitives, du langage, de la motricité et des performances sociales.La <string>trisomie 21 </strong>est l'une des formes les plus connues de handicap
				mental. Il touche 1 à 3% de la population et majoritairement chez les garçons. Les causes du handicap sont multiples :
			</div>
		</div> 
			<ul>
				<li><strong>à la conception:</strong> maladie génétique, aberration chrosommiques, ...</li>
				<li><strong>pendant la grossesse:</strong> radiation, médicaments, virus, ...</li>
				<li><strong>à la naissance:</strong> souffrance cérébrale du nouveau né, prématurité, ...</li>
				<li><strong>après la naissance:</strong> maladie infectieuse, accident, axphyxies, ...</li>
			</ul>   
		</P>

		<p>Le <strong>handicap psychique </strong>est défini par l'Unafam comme un déficit relationnel, des difficultés de concentratons, une grandee variabilité dans la possibillité d'utilisation des capacités alors que la personnne garde des facultés
		intellectuelles normales. Le handicap psychique influt sur la pensée,  la perception, la communication, le comportement, l'humeur, la concience, la vigilence, le sommeil. 
		Le handicap psychique est la conséquence directe des trobles psychique. Le handicape psychique est à la cause :
		<ul>
			<li>Etats psychotiques ou névrotiques</li>
			<li>Troubles dépressifs graves</li>
			<li>Etats limites</li>
			<li>Troubles bipolaires</li>
			<li>Troubles de la personnalités graves</li>			
		</ul>
		En France, <strong>3%</strong> de la population est affectée par ce handicap mal connu du grand publique. 
		</p>
		<p>Ce tableau montre quelques différences notables entre le handicap mental et psychique</p>
		<div class="table-responsive">
  			<table class="table table-bordered">
				<tr>
					<th>Aspects</th>
					<th>Handicap mental</th>
					<th>Handicap psychique</th>
				</tr>
				<tr>
					<th>Caractère des troubles dans le temps</th>
					<td>Stable</td>
					<td>Evolutif</td>
				</tr>
				<tr>
					<th>Déficience intellectuelle associée</th>
					<td> Oui </td>
					<td> Non </td>
				</tr>
				<tr>
					<th>Prise en charge médicamenteuse</th>
					<td>Très modérée</td>
					<td>Souvent indispensable</td>
				</tr>
				<tr>
					<th>Origine des troubles</th>
					<td>Identifiée (traumatisme, anomalie génétique, etc.)</td>
					<td>Non identifiée</td>
				</tr>
				<tr>
					<th>Âge d'apparition des troubles</th>
					<td>Naissance ou petite enfance (sauf dans le cas d'un accident ou un maladie)</td>
					<td>Adolescence ou âge adulte</td>
				</tr>
			</table>
		</div>
		</br>
		<h3>Le but du site</h3>
		<p>Ce site a pour vocation de sensibilisé le publique au handicap psychique au travers de scénarios du type "<em>histoire dont vous êtes le héro</em>".</p>

		<p>Différent scénario vous sont présenté contenant des situation où vous incarnerez des personnages de l'entourage d'un homme ou d'une femme atteint d'un handicap psychique. Vos choix auront des influences dans l'histoire.
		Pour chaque situation, des explications et incation sur la maladie vous seront données afin de sensibiliser sur le handicap psychique.</p>
		<br/>
		<div class="row">
			<div class="col-sm-6">
				<button class="btn btn-block btn-lg btn-info btnScenar" onclick = "window.location = 'listeScenario.php'">Liste des scénarios</button>
			</div>

			<div class="col-sm-6">
				<button class="btn btn-block btn-lg btn-info btnScenar" onclick = "window.location = 'ajoutScenario.php'">Ajouter un scénario</button>
			</div>
		</div>
		<br/>
	</div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>