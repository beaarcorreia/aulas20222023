$(document).ready(function(){
    $('nav span').on('click', function(){
        $('nav ul').slideToggle(1500);
    });

    $('button').on('click', animaCaixas)

});

function animaCaixas(){
    const tempo = 3000;
    
    $('.cx1').fadeIn(tempo, function(){
        $('.cx2').fadeIn(tempo, function(){
            $('.cx3').fadeIn(tempo, function(){
                $('.cx4').fadeIn(tempo);
            });
        });
    });
}