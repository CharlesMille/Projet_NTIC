<?php
	require_once("php/db.php");
	require_once("php/fonctions.php");

	ini_set('display_errors', 1);
	ini_set('log_errors', 1);
	ini_set('error_log', dirname(__file__) . '/log_error_php.txt');

	if ($_GET['page'] <= 2)
	{
		setCookie('flags', "");
		setCookie('score', 0);
	}
?>

<head>
	<title>Projet NTIC</title>
	<link rel="shortcut icon" href="img/favicon.ico"/>

	<!-- IMPORT JS -->
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/libs/jquery-ui.min.js"></script>
	<script type="text/javasécript" src="js/libs/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/fonctions.js"></script>
	<script type="text/javascript" src="js/cookie.js"></script>
	
	<!-- Import CSS -->
	<link type="text/css" rel="stylesheet" href="css/jquery-ui.min.css"/>
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<?php include("contenu/header.php"); ?>	
	<div class="container" id="contenu">

		<?php

		$selectID = "SELECT id_scenario, nom FROM scenario WHERE id_scenario = ?;";
		$stmt->prepare($selectID);
		$stmt->bind_param("i", $_GET['scenario']);
		$stmt->bind_result($idS, $nom);
		$stmt->execute();

		$affiche = false;

		while($stmt->fetch())
		{
		?>
			<h1>Scénario : <?php echo $nom; ?> </h1>        		
		<?php
			$selectPage = 'SELECT requis, image, id_page, titre, texte FROM page WHERE id_scenario = ? AND numero = ? ORDER BY requis DESC;';
			$stmt->prepare($selectPage);
			$stmt->bind_param("ii", $_GET['scenario'], $_GET['page']);
			$stmt->bind_result($requis, $image, $idP, $titre, $texte);
			$stmt->execute();

			while($stmt->fetch())
			{
				if (!$affiche && ($requis == NULL || ($requis != NULL && contientFlag($requis))))
				{
					$affiche = true;

		?>
						<h3><?php echo $titre?></h3>
						</br>
						<div class="row">			
							<img class = "col-sm-6" src="<?php echo $image; ?>" alt="Image"></img>			

						<div class="col-sm-6">
							<span>
								<?php echo $texte; ?>
							</span>
						</div>
					</div>
					</br>
		<?php
					$selectButton = 'SELECT go_to_page, flag, texte, score FROM bouton WHERE id_page = ?;';
					$stmt->prepare($selectButton);
					$stmt->bind_param("i", $idP);
					$stmt->bind_result($goTo, $flag, $texteB, $score);
					$stmt->execute();

					$i = 0;

					while($stmt->fetch())
					{
						if($i % 2 == 0)
						{
		?>
							<div class = "row">
								<div class="col-sm-6">
									<input type="button" onclick="rediriger(this);" class="btn btn-block btn-lg btn-info btnScenar" redirScenar="scenario=<?php echo $idS; ?>&page=<?php echo $goTo;?>" value = "<?php echo $texteB; ?>" flag="<?php echo $flag; ?>" score="<?php echo $score; ?>"/>
								</div>
		<?php
						}
						else if($i % 2 == 1)
						{
		?>
								<div class="col-sm-6">
									<input type="button" onclick="rediriger(this);" class="btn btn-block btn-lg btn-info btnScenar" redirScenar="scenario=<?php echo $idS; ?>&page=<?php echo $goTo;?>" value = "<?php echo $texteB; ?>" flag="<?php echo $flag; ?>" score="<?php echo $score; ?>"/>
								</div>
							</div>
							<br/>
		<?php
						}

						$i++;
					}
		?>		
		<?php
					if($i % 2 == 1)
					{
		?>
						</div>
					</div>
		<?php
					} 
					else if($i ==0)
					{
		?>
						<div class = "row">
							<div class="col-sm-12">
								<input type="button" class="btn btn-lg btn-block btn-danger" id="retour" value="Retour à l'accueil" onclick="window.location='index.php'"/>
							</div>
						</div>
		<?php
					}
				}
			}
		}		
		?>
	</br>            
	</div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>