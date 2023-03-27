document.querySelector('#nome').addEventListener('focus', mostraConteudoInput);
document.querySelector('#nome').addEventListener('blur', escondeConteudoInput);

document.querySelector('#email').addEventListener('focus', mostraConteudoInput);
document.querySelector('#email').addEventListener('blur', escondeConteudoInput);

document.querySelector('#morada').addEventListener('focus', mostraConteudoInput);
document.querySelector('#morada').addEventListener('blur', escondeConteudoInput);

function mostraConteudoInput(){
    console.log('entrei no add event listener');
    console.log(this.value);
}

function escondeConteudoInput(){
    console.log('entrei no add event listener PARA ESCONDER');
}