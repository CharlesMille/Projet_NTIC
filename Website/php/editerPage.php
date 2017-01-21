<?php

	define('TARGET','ressources/');
	define('MAX_SIZE', 100000000);    // Taille max en octets du fichier
	define('WIDTH_MAX', 2200);    // Largeur max de l'image en pixels
	define('HEIGHT_MAX', 2200);    // Hauteur max de l'image en pixels
 
	$tabExt= array('jpg','gif','png','jpeg');
	$infoImg = array();

	$extention = '';
	$message = ''; 
	$nomImage = '';

	require_once("db.php");

	$titre = $_POST['titre'];
	$numero = $_POST['numero'];	
	$texte = $_POST['situation'];
	if(!empty($_POST['idBouton']))
		$ids = $_POST['idBouton'];
	if(!empty($_POST['nomBouton']))
		$noms = $_POST['nomBouton'];
	if(!empty($_POST['goTo']))
		$goTo = $_POST['goTo'];
	$nbBoutons = $_POST['nb'];
	$flag = $_POST['flag'];
	$score = $_POST['score'];
	$requis = $_POST['requis'];

	/************************************************************
	* Creation du repertoire cible si inexistant
	*************************************************************/
	if( !is_dir('../'.TARGET) ) {
		if( !mkdir('../'.TARGET, 0755) ) {
			exit('Erreur : le répertoire cible ne peut-être créé ! Vérifiez que vous diposiez des droits suffisants pour le faire ou créez le manuellement !');
		}
	}

	if(!empty($_POST))
	{
		if(!empty($_FILES['image']['name']))
		{
			$extension  = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
		    // On verifie l'extension du fichier
    		if(in_array(strtolower($extension),$tabExt))
    		{
      			// On recupere les dimensions du fichier
      			$infosImg = getimagesize($_FILES['image']['tmp_name']);
 
      			// On verifie le type de l'image
      			if($infosImg[2] >= 1 && $infosImg[2] <= 14)
      			{
        			// On verifie les dimensions et taille de l'image
        			if(($infosImg[0] <= WIDTH_MAX) && ($infosImg[1] <= HEIGHT_MAX) && (filesize($_FILES['image']['tmp_name']) <= MAX_SIZE))
        			{
          				// Parcours du tableau d'erreurs
          				if(isset($_FILES['image']['error']) 
            			&& UPLOAD_ERR_OK === $_FILES['image']['error'])
          				{
            				// On renomme le fichier
            				$nomImage = md5(uniqid()) .'.'. $extension;
 
            				// Si c'est OK, on teste l'upload
            				if(move_uploaded_file($_FILES['image']['tmp_name'], '../'.TARGET.$nomImage))
            				{
              					$message = 'Upload réussi !';
            				}
            				else
            				{
              					// Sinon on affiche une erreur systeme
              					$message = 'Problème lors de l\'upload !';
            				}
          				}
          				else{$message = 'Une erreur interne a empêché l\'uplaod de l\'image';}
					}
        			else
						{
						// Sinon erreur sur les dimensions et taille de l'image
						$message = 'Erreur dans les dimensions de l\'image !';
						}
      			}
      			else
      			{
        			// Sinon erreur sur le type de l'image
        			$message = 'Le fichier à uploader n\'est pas une image !';
      			}
    		}
    		else
    		{
      			// Sinon on affiche une erreur pour l'extension
    	  		$message = 'L\'extension du fichier est incorrecte !';
    		}
  		}
  		else
  		{
			// Sinon on affiche une erreur pour le champ vide
			$message = 'Veuillez remplir le formulaire svp !';
		}
	}

	$pathImage = TARGET.$nomImage;

	if(!empty($_FILES['image']['name']))
	{
		$sql = 'UPDATE page SET titre = ?, texte = ?, image = ?, numero = ?, requis = ? WHERE id_page = ?;';
		$stmt = $conn->prepare($sql);
		$stmt->bind_param("sssisi", $titre, $texte, $pathImage, $numero, $requis, $_POST['idPage']);
		$stmt->execute();
	}
	else
	{
		$sql = 'UPDATE page SET titre = ?, texte = ?, numero = ?, requis = ? WHERE id_page = ?;';
		$stmt = $conn->prepare($sql);
		$stmt->bind_param("ssisi", $titre, $texte, $numero, $requis, $_POST['idPage']);
		$stmt->execute();
	}

	for ($i = 0; $i < $nbBoutons; $i++)
	{
		$sqlBtn = 'UPDATE bouton SET texte = ?, go_to_page = ?, flag = ?, score = ? WHERE id_bouton = ?;';
		$stmt = $conn->prepare($sqlBtn);
		$stmt->bind_param("sisii", $noms[$i], $goTo[$i], $flag[$i], $score[$i], $ids[$i]);
		$stmt->execute();
	}

	$conn->close();
	$url = "Location: ../editionScenario.php?scenario=".$_POST['idScenar'];
	header($url);
	exit;
?>