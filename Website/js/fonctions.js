$ = jQuery;

function afficherTab() {

    if (document.getElementById("tab").className == "invisible")
        document.getElementById("tab").className = "";
    else
        document.getElementById("tab").className = "invisible";
}

function readURL(input) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('#img').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

$("#input_image_page").change(function() {
    readURL(this);
});