$ = jQuery;

var src, target, fr;

function afficherTab() {

    if (document.getElementById("tab").className == "invisible")
        document.getElementById("tab").className = "";
    else
        document.getElementById("tab").className = "invisible";
}

//On va chercher l'image pour la placer sur la fenêtre
function showImage(src,target) {
  // when image is loaded, set the src of the image where you want to display it
  fr.onload = function(e) { target.src = this.result; };
 
}

function init()
{
  fr = new FileReader();
  src = document.getElementById('image');
  target = document.getElementById('img');

  src.addEventListener("change",function() {
    // fill fr with image data    
    fr.readAsDataURL(src.files[0]);
  });
}

function putImage() {
    showImage(src,target);
}

//Ajout de champs de texte
function addChampText() {

    var nb = parseInt(document.getElementById("nbbtn").value);
    document.getElementById("boutons").innerHTML = '<div class="panel-group" id="accordion">';

    for (i = 1; i < nb + 1; i++) {
        document.getElementById("boutons").innerHTML += '<div class="panel panel-default"> <div class="panel-heading"> <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#btn' + i + '">Bouton ' + i + '</a> </h4> </div> <div id="btn' + i + '" class="panel-collapse collapse in"> <div class="panel-body"> <br/> <div class="form-group"> <label class="control-label col-sm-2">Réponse ' + i + ' :</label> <div class="col-lg-6 col-sm-6 col-12"> <input class="form-control" name="rep[]" type="text" placeholder="Réponse ' + i + '"/> </div> </div> <div class="form-group"> <label class="control-label col-sm-2">Lien vers la page du scénario n° :</label> <div class="col-lg-6 col-sm-6 col-12"> <input class="form-control" name="goToPage[]" type="number" value="0" min="0"/> </div> </div> <div class="form-group"> <label class="control-label col-sm-2">Donner variable :</label> <div class="col-lg-6 col-sm-6 col-12"> <input class="form-control" name="var[]" type="text"/> </div> </div> <div class="form-group"> <label class="control-label col-sm-2">Score donné :</label> <div class="col-lg-6 col-sm-6 col-12"> <input class="form-control" name="sco[]" type="number" value="0"/> </div> </div></div></div></div>'; 
      }

    document.getElementById("boutons").innerHTML += '</div>';  
}

function rediriger(button)
{
  if (button.getAttribute('flag') != "")
  {
    var flag = button.getAttribute('flag');
    setCookie('flags', flag + '|' + getCookie('flags'));
  }

  var score = button.getAttribute('score');
  setCookie('score', parseInt(getCookie('score')) + parseInt(score));

  window.location = 'pageScenario.php?' + button.getAttribute('redirScenar');
}