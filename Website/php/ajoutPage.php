<?php
	session_start();
	require_once("db.php");

	define('TARGET','ressources/');
	define('MAX_SIZE', 100000000);    // Taille max en octets du fichier
	define('WIDTH_MAX', 2200);    // Largeur max de l'image en pixels
	define('HEIGHT_MAX', 2200);    // Hauteur max de l'image en pixels
 
	$tabExt= array('jpg','gif','png','jpeg');
	$infoImg = array();

	$extention = '';
	$message = ''; 
	$nomImage = '';

	$idScenario = $_POST['idScenario'];
	$titre = $_POST['titre'];
	$situation = $_POST['situation'];
	$nbBoutons = $_POST['nbBoutons'];

	$numero = $_POST['numero'];
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

	$idPage = -1;
	
	if(!empty($_FILES['image']['name']))
	{
		$pathImage = TARGET.$nomImage; 

		$request = 'INSERT INTO page (id_scenario, numero, titre, texte, requis, image) VALUES (?, ?, ?, ?, ?, ?);';
		$stmt = $conn->prepare($request);
		$stmt->bind_param("iissss", $idScenario, $numero, $titre, $situation, $requis, $pathImage);
		$stmt->execute();
		
	}
	else
	{
		$request = 'INSERT INTO page (id_scenario, numero, titre, texte, requis) VALUES (?, ?, ?, ?, ?);';
		$stmt = $conn->prepare($request);
		$stmt->bind_param("iisss", $idScenario, $numero, $titre, $situation, $requis);
		$stmt->execute();
	}
	

	$selectID = 'SELECT id_page as id, titre FROM page GROUP BY id_page ORDER BY id_page DESC;';
	$result = $conn->query($selectID);

	if ($result->num_rows > 0) 
		while($row = $result->fetch_assoc())
	    {
    		$idPage = $row['id'];
    		break;
	    }

	for ($i = 0; $i < $nbBoutons; $i++)
	{
		$request = 'INSERT INTO bouton (id_page, go_to_page, texte, flag, score) VALUES (?, ?, ?, ?, ?);';
		$stmt = $conn->prepare($request);
		$stmt->bind_param("iissi", $idPage, $_POST['goToPage'][$i], $_POST['rep'][$i], $_POST['vari'][$i], $_POST['sco'][$i]);
		$stmt->execute();
	}

	$conn->close();	

	header("Location: ../ajoutPage.php");
?>