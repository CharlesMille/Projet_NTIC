<?php
	require_once("php/db.php");
	require_once("php/fonctions.php");

	if ($_GET['page'] <= 2)
	{
		setCookie('flags', "");
		setCookie('score', 0);
	}
?>

<head>
	<title>Projet NTIC</title>

	<!-- IMPORT JS -->
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/libs/jquery-ui.min.js"></script>
	<script type="text/javasécript" src="js/libs/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/fonctions.js"></script>
	<script type="text/javascript" src="js/cookie.js"></script>
	
	<!-- Import CSS -->
	<link type="text/css" rel="stylesheet" href="css/jquery-ui.css"/>
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<?php include("contenu/header.php"); ?>	
	<div class="container">

		<?php

		$selectID = "SELECT * FROM scenario WHERE id_scenario = ?;";
		$stmt = $conn->prepare($selectID);
		$stmt->bind_param("i", $_GET['scenario']);
		$stmt->execute();
		$result = $stmt->get_result();

		$affiche = false;

		if ($result->num_rows > 0)
		{
			while($row = $result->fetch_assoc())
			{
		?>
				<h1>Scénario : <?php echo $row['nom']?> </h1>        		
		<?php
				$selectPage = 'SELECT * FROM page WHERE id_scenario = ? AND numero = ? ORDER BY requis DESC;';
				$stmt = $conn->prepare($selectPage);
				$stmt->bind_param("ii", $_GET['scenario'], $_GET['page']);
				$stmt->execute();
				$resultPage = $stmt->get_result();

				while($rowPage = $resultPage->fetch_assoc())
				{
					if (!$affiche && ($rowPage['requis'] == NULL || ($rowPage['requis'] != NULL && contientFlag($rowPage['requis']))))
					{
						$affiche = true;

		?>
							<h3><?php echo $rowPage['titre']?></h3>
							</br>
							<div class="row">			
								<img class = "col-sm-6" src="<?php echo $rowPage['image']?>" alt="Image"></img>			

							<div class="col-sm-6">
								<span>
									<?php echo $rowPage['texte'];?>
								</span>
							</div>
						</div>
						</br>
		<?php
						$selectButton = 'SELECT * FROM bouton WHERE id_page ='.$rowPage['id_page'].';';
						$resultButton = $conn->query($selectButton);
						$i = 0;
						while($rowButton = $resultButton->fetch_assoc())
						{
							if($i % 2 == 0)
							{
		?>
								<div class = "row">
									<div class="col-sm-6">
										<input type="button" onclick="rediriger(this);" class="btn btn-block btn-lg btn-info btnScenar" redirScenar="scenario=<?php echo $row['id_scenario'];?>&page=<?php echo $rowButton['go_to_page'];?>" value = "<?php echo $rowButton['texte']?>" flag="<?php echo $rowButton['flag']; ?>" score="<?php echo $rowButton['score']; ?>"/>
									</div>
		<?php
							}
							else if($i % 2 == 1)
							{
		?>
									<div class="col-sm-6">
										<input type="button" onclick="rediriger(this);" class="btn btn-block btn-lg btn-info btnScenar" redirScenar="scenario=<?php echo $row['id_scenario'];?>&page=<?php echo $rowButton['go_to_page'];?>" value = "<?php echo $rowButton['texte']?>" flag="<?php echo $rowButton['flag']; ?>" score="<?php echo $rowButton['score']; ?>"/>
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
		}		
		?>
	</br>            
	</div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>