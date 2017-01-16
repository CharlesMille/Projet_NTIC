<?php
  $path = $_SERVER['PHP_SELF'];
  $file = basename ($path);
  $nom = explode('.', $file)[0];
?>
<div>
    <a class="abs" href="#navigation">Navigation</a>
    <a class="abs" href="#contenu">Contenu</a>
</div>

<nav class="navbar navbar-default header">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.php">Le handicap psychologique</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li <?php if ($nom == "index") echo 'class="active"'; ?>><a href="index.php">Accueil</a></li>
        <li <?php if ($nom == "ajoutScenario") echo 'class="active"'; ?>><a href="ajoutScenario.php">Ajout d'un scénario</a></li>
        <li <?php if ($nom == "listeScenario") echo 'class="active"'; ?>><a href="listeScenario.php">Liste des scénarios</a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right vcenter">
        <li><a href="https://www.ensc.fr/" style="padding: 0px;" data-toggle="tooltip" title="Site de l'ENSC"><img src="img/bordeaux_inp_ensc.png" width="70px" alt="Logo ENSC"/></a></li>
      </ul>
    </div>
  </div>
</nav>