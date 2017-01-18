<?php
	require_once("php/db.php");
	$selectID = 'SELECT * FROM scenario WHERE id_scenario = '.$_GET['scenario'].';';
	$result = $conn->query($selectID);
?>

<head>
	<title>Projet NTIC</title>

	<!-- IMPORT JS -->
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/libs/jquery-ui.min.js"></script>
	<script type="text/javasécript" src="js/libs/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/fonctions.js"></script>
	
	<!-- Import CSS -->
	<link type="text/css" rel="stylesheet" href="css/jquery-ui.css"/>
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<?php include("contenu/header.php"); ?>	
	<div class="container">

	<?php
			if ($result->num_rows > 0)
			{
				while($row = $result->fetch_assoc())
			    {
		?>
		<h1>Scénario : <?php echo $row['nom']?> </h1>        		
		<?php
					$selectPage = 'SELECT * FROM page WHERE id_scenario = '.$_GET['scenario'].' AND numero = 1;';
					$resultPage = $conn->query($selectPage);
					while($rowPage = $resultPage->fetch_assoc())
					{
		?>
		<h2>Titre de la page : <?php echo $rowPage['titre']?></h2>
		<div class="row">
			<div class="col-sm-6">
				<img src="<?php echo $rowPage['image']?>" alt="Image"></img>
			</div>

			<div class="col-sm-6">
				<span>
					<?php echo $rowPage['texte'];?>
				</span>
			</div>
        </div>
		<?php
		$selectButton = 'SELECT * FROM bouton WHERE id_page ='.$rowPage['id_page'].';';
		$resultButton = $conn->query($selectButton);
		$i = 0;
		while($rowButton = $resultButton->fetch_assoc())
		{
			if($i ==0)
			{
				?>
					<div class = "row">
						<div class="col-sm-4">
							<button class="btn btn-block btn-lg btn-info btnScenar"><?php echo $rowButton['texte']?></button>
						</div>
				<?php
			}else if($i == 1)
			{
				?>
					<div class="col-sm-4">
						<button class="btn btn-block btn-lg btn-info btnScenar"><?php echo $rowButton['texte']?></button>
					</div>
				</div>
				<?php

			}
			$i++;
		}
		?>		
		<?php
					}
				}
			}?>            
    </div>
	<?php include("contenu/footer.php"); ?>
</body>
</html>