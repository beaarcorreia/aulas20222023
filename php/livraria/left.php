<<<<<<< Updated upstream
<form>
    <ul>
        <li>Login: <input type="text"></li>
        <li>Pass: <input type="text"></li>
    </ul>

    <button>Entrar</Entrar>
</form>
=======
<?php
 
    if(isset($_SESSION['nome_do_cliente'])) {
        echo "Ola Sr(a)".$_SESSION['nome_do_cliente'];
    } 
    else
    { ?>


        <form method="post" action="verificaLogin.php">
            <ul>
                <li>Email: <input type="text" name="email_login"></li>
                <li>Pass: <input type="password" name="pass_login"></li>
            </ul>
            <button>Entrar</button>
        </form> 

        <?php
            if(isset($_GET['login']) && $_GET['login']=='erro' )
                echo "Login Errado";
        ?>

<?php
    }

    ?>
>>>>>>> Stashed changes
