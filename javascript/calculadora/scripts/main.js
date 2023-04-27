function escolheNumero(numero_escolhido){
    alert(numero_escolhido);

        //ir buscar o operador
    operador = document.querySelector("input[name=operador]").value;

    if(operador !=""){
        document.querySelector("input[name=parcela2").value=numero_escolhido;

    } else{

        numero_antigo = document.querySelector("input[name=parcela1]").value;
        numero_novo =  numero_antigo + numero_escolhido;
        document.querySelector("input[name=parcela1]").value=numero_novo;

    }

    document.querySelector(".resultado")+=numero_escolhido;
}

function atribuiOperador(operacao){
    document.querySelector("input[name=operador]").value=operacao;

}

function fazConta(){
    //ir busvar a parcela 1
    p1 = document.querySelctor("input[name=parcela1]").value;
    //ir busvar a parcela 2
    p2 = document.querySelctor("input[name=parcela2]").value;
    //ir busvar a operador
    operador = document.querySelctor("input[name=operador]").value;

    p1 = parseFloat(p1);
    p2 = parseFloat(p2);

    switch(operador){
        case '+': {resultador = p1 + p2} break;
        case '-': {resultador = p1 - p2} break;
        case '/': {resultador = p1 / p2} break;
        case 'x': {resultador = p1 * p2} break;
    }

    document.querySelector(".resultado").innerText += "=" + resultado;
    document.querySelector("input[name=parcela1]").value = resultado;
    document.querySelector("input[name=parcela2]").value = "";

}

function limpa(){
    document.querySelector("input[name=operador]").value"";
    document.querySelector("input[name=parcela1]").value"";
    document.querySelector("input[name=parcela2]").value"";
    document.querySelector("resultado]").innerText = "";
}