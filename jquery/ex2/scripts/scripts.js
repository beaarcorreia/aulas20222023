$(document).ready(function(){
    $('.botaoAdicionar').on('click', function(){
        console.log('carreguei no botao');

        item_inserido = $('input[name=item]').val();
        itemAInserirNoHTML = '<li>' + item_inserido + '</li>';

        $('.lista ul').append(itemAInserirNoHTML);
    });

    $('.botaoLimpar').on('click', function(){
        $('.lista ul').text('');
    });
});