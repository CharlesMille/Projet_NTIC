$ = jQuery;

function afficherTab() {

    if (document.getElementById("tab").className == "invisible")
        document.getElementById("tab").className = "";
    else
        document.getElementById("tab").className = "invisible";
}

function readURL(input) {

    console.log("Here");
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $("#image").attr("src", e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

$("#img").change(function() {
    readURL(this);
});

function addChampText() {

    var nb = document.getElementById("nbbtn");

    for (i = 0; i < nb; i++) {
        console.log(i);
    }
}