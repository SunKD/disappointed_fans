function picked() {
    var choice = document.getElementById("firstchoice").value;
    if (choice == "Baseball") {
        $("#none").hide();
        $("#baseball").show();
        $("#soccer").hide();
        $("#hockey").hide();
        $("#basketball").hide();
    } else if (choice == "Soccer") {
        $("#none").hide();
        $("#baseball").hide();
        $("#soccer").show();
        $("#hockey").hide();
        $("#basketball").hide();
    }else if(choice == "Hockey"){
        $("#none").hide();
        $("#baseball").hide();
        $("#soccer").hide();
        $("#hockey").show();
        $("#basketball").hide();
    }else if(choice == "Basketball"){
        $("#none").hide();
        $("#baseball").hide();
        $("#soccer").hide();
        $("#hockey").hide();
        $("#basketball").show();
    }
}

{/* <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> */}