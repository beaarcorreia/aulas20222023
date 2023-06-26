<?php
    include('../config.php');
    $titulo = $_POST['titulo'];
    $preco = $_POST['preco'];
    $stock = $_POST['stock'];
    $descricao = $_POST['descricao'];
    $editora = $_POST['editora'];

    $capa = $_FILES['capa'];
    print_r($capa);
    $origem = $capa['tmp_name'];

    $nome_unico=  uniqid();
    $nome_do_ficheiro =$nome_unico.".jpg"; 
    $destino = "../imagens/".$nome_do_ficheiro;

    move_uploaded_file($origem, $destino);

    $sql = "insert into livros 
    (capa_livro, descricao_livro, fk_id_editora, preco_livro, stock_livro, titulo_livro)
    values
    ('$nome_do_ficheiro', '$descricao',$editora,$preco,$stock,'$titulo')";

    $resultado = mysqli_query($ligacao, $sql);

    //explode()

?>