$(document).ready(function(){
    var howCheck = 1
    var whyCheck = 1
    $('#how').click(function(){
        if (howCheck) {
            $('#how-data').slideToggle();
            howCheck = 0;
        }else{
            $('#how-data').slideToggle();
            howCheck = 1;
        }
    })
    $('#why').click(function(){
        if (whyCheck) {
            $('#why-data').slideToggle();
            whyCheck = 0;
        }else{
            $('#why-data').slideToggle();
            whyCheck = 1;
        }
    })
});