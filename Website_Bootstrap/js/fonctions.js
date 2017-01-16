$ = jQuery;



function afficherTab() {

    if (document.getElementById("tab").className == "invisible")
        document.getElementById("tab").className = "";
    else
        document.getElementById("tab").className = "invisible";
}

//On va chercher l'image pour la placer sur la fenêtre
function showImage(src,target) {
  var fr=new FileReader();
  // when image is loaded, set the src of the image where you want to display it
  fr.onload = function(e) { target.src = this.result; };
  src.addEventListener("change",function() {
    // fill fr with image data    
    fr.readAsDataURL(src.files[0]);
  });
}

function putImage() {
    var src = document.getElementById('image');
    var target = document.getElementById('img');
    showImage(src,target);
}

//Ajout de champs de texte
function addChampText() {

    var nb = parseInt(document.getElementById("nbbtn").value);
    document.getElementById("textRep").innerHTML = '';
    for (i = 1; i < nb + 1; i++) {        
        var boxName="rep";
        var placeholder = "Réponse " + i;         
        document.getElementById("textRep").innerHTML+= '<div class = "rep"><label for="titre" class="row bl"><span class="inbl w15 alignright pr1">'+placeholder+' :</span><input class="w80" type="text" name="'+boxName+'[]" id="'+boxName+'" placeholder="'+placeholder+'"/></label><label for="titre" class="row bl"><span class="inbl w15 alignright pr1">Lien :</span><Select class="w80" name="goToPage[]"><Option value = "1">1</Option><Option value = "2">2</Option><Option value = "3">3</Option></Select> <label for="poids" class="row bl"><span class="inbl w15 alignright pr1">Poids du choix :</span><input type="number" name="poids[]" value ="0" max ="10" min ="0" id="poids'+i+'"/></label></div>';
    }    
}