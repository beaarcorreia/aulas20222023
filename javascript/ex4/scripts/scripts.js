function validFormulario(){
    alert("entrei");

    nome_inserido = document.getElementById("nome").value;
    morada_inserida = document.getElementById("morada").value;

    console.log(nome_inserido);
    console.log(morada_inserida);

    //alert("já li os valores");

    if(nome_inserido !="" && morada_inserida !=""){
        alert("dados corretos");
        return true;
    } else{
        document.getElementById("zona-de-erro").innerText="Dados incorretos";
        //alert("DADOS INCORRETOS!");
        return false;
    }

}

function validFormularioMelhor(){
    nome_inserido = document.getElementById("nome").value;
    morada_inserida = document.getElementById("morada").value;

    document.getElementById("obrigatorio_nome").style.display="none";
    document.getElementById("obrigatorio_morada").style.display="none";
    document.getElementById("zona-de-erro").innerText="";



    if(nome_inserido==""){
        document.getElementById("obrigatorio_nome").style.display="block";
    }

    if(morada_inserida==""){
        document.getElementById("obrigatorio_morada").style.display="block";
    }

    if(nome_inserido=="" || morada_inserida==""){
        document.getElementById("zona-de-erro").innerText="preencha os campos assinalados";
        return false
    } else{
        return true;
    }

}

