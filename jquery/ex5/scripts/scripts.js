$(document).ready(function(){
    $('.content').load('home.html');
});

$(document).click(function(){
    console.log('cliquei na pagina 1');
    $('.content-pagina1').load('pagina1.html');
});

