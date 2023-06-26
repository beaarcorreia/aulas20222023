<<<<<<< Updated upstream
Eu sou a lista
=======
<div class="conteudo-lista">
<?php

    
    $query_a_executar ="select * from livros 
    inner join editoras on id_editora = fk_id_editora
    where stock_livro >0 ;"; 
    $resultado = mysqli_query($ligacao,$query_a_executar);

    //print_r($resultado);

    while($linha = mysqli_fetch_assoc($resultado))
    {
 // print_r($linha);
  ?>  

    <div class="detalhe-livro">
        <div class="capa">
            <img src="imagens/<?php echo $linha['capa_livro'];?>">
        </div>
        <div class="informacao">
            <h2>
                <?php echo  $linha['titulo_livro']; ?>
            </h2>
            <p>
                <?php echo $linha['descricao_livro']; ?>
            </p>
            <p>
            <?php echo $linha['nome_editora']; ?>
            </p>
            <p><?php echo $linha['preco_livro']; ?> Eur</p>

            <?php 
                $lista_autores= getAutores($ligacao, $linha['id_livro']);
                //print_r($lista_autores);
            ?>

            <ul>
                <?php 
                    for($i=0;$i< count($lista_autores); $i++ ){
                        echo "<li>$lista_autores[$i]</li>";
                    }
                ?>
            </ul>    
        </div>
    </div>  

    <?php
    }
    ?>

     
</div>
>>>>>>> Stashed changes
