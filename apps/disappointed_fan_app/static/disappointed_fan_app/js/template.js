function picked() {
    var choice = document.getElementById("firstchoice").value;
    if (choice == "NBA - Basketball") {
        $("#none").hide();
        $("#baseball").show();
        $("#soccer").hide();
        $("#hockey").hide();
    } else if (choice == "MLS - Soccer") {
        $("#none").hide();
        $("#baseball").hide();
        $("#soccer").show();
        $("#hockey").hide();
    }else if(choice == "NHL - Hockey"){
        $("#none").hide();
        $("#baseball").hide();
        $("#soccer").hide();
        $("#hockey").show();
    }
}

{/* <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> */}