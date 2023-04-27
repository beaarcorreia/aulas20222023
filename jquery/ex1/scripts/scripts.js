$(document).ready(function(){
    $('.button').click(function(){
        console.log('carreguei no botao');
    });

    $('input').mouseenter(function(){
        console.log('meti o rato em cima');
    });

    $('input').mouseleave(function(){
        console.log('tirei o rato em cima');
    });

    $('input').focus(function(){
        console.log('tirei o rato em cima');
    });

    $('input').focus(function(){
        $(this).addClass('inputSelecionado');
        $('.zona-de-erro').text('');
    });

    $('input').blur(function(){
        $(this).removeClass('inputSelecionado');

        valor_inserido = $(this).val();
        console.log(valor_inserido);

        if(valor_inserido == ''){
            $('.zona-de-erro').text('Por favor preencha o campo.');
        }
    });



});