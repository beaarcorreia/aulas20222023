<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercício 2 PHP</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <?php 
        $lista_de_compras = ['cebolas','couves','bananas','cereais','esparguete'];
        //print_r($lista_de_compras);
    ?>


    <h2> Lista de Compras </h2>

    <ul>
        <?php
            $tamanho = count($lista_de_compras);

            for($i=0; $i<$tamanho; $i++){
                //echo '<li>'.$lista_de_compras[$i].'</li>';

                $resto = $i % 2;

                if($resto == 0){
                    $class_a_usar = 'par';
                } else{
                    $class_a_usar = 'impar';
                }
        ?>

        <li class="<?php echo $class_a_usar;?>">
             <?php echo $lista_de_compras[$i];?>
        </li>

        <?php
            }
        ?>
    </ul>

</body>
</html>