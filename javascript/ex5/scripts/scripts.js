function ValidaIdade{
    alert("entrei na função");
    ano = document.getElementById("ano").value;

    dataAtual = new Date ();
    anoAtual = dataAtual.getFullYear();

    idade = anoAtual - ano;

    if (idade < 18){
        document.getElementById("erros").innerText="idade insuficiente";
        return false;
        
    } else{
        return true;
    }
}