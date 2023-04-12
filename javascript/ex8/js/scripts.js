function pesquisaNumero(){
    alert('entrei');

    lista = document.getElementById("lista").value;
    numero = document.getElementById("numero").value;

    listaConvertida = lista.split(';');
    console.log(listaConvertida);

    tamanhoDaLista = listaConvertida.length;

    numeroEncontrado = 0;

    /*for(i=0; i<tamanhoDaLista; i=i+1){
        numeroLido = listaConvertida[i];

        if (numeroLido == numero){
            numeroEncontrado = numeroEncontrado + 1;
        }
    }*/

    i=0;
    while(numeroEncontrado == 0){
        numeroLido = listaConvertida[i];

        if(numeroLido == numero && i < tamanhoDaLista){
            numeroEncontrado = numeroEncontrado + 1;
        }
        console.log(i);
        i=i+1;
    }

    if(numeroEncontrado >=1){
        document.getElementById('resultado').innerText="O número está na lista!";
    } else {
        document.getElementById('resultado').innerText="O número NÃO está na lista!";
    }

}