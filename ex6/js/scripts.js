function mostraConteudoMenu(){
    if(document.getElementById("items-mobile").style.display=="none"){
        document.getElementById("items-mobile").style.display="block";
        document.getElementById("texto-menu").innerHTML='<i class="fa-solid fa-xmark"></i>';
   } else {
        document.getElementById("texto-menu").innerHTML='<i class="fa-sharp fa-solid fa-bars"></i>';
        document.getElementById("items-mobile").style.display="none";

   }
}

function normalizaMenuMobile(){
    var largura = window.innerWidth;
    console.log(largura);

    if(largura > 850){
        document.getElementById("items-mobile").style.display="none";
        document.getElementById("texto-menu").innerHTML='<i class="fa-sharp fa-solid fa-bars"></i>';
    }
}
