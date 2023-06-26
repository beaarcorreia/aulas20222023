<<<<<<< Updated upstream
=======
<?php 
     include('config.php'); 
     include('funcoes.php');
     session_start();
?>
>>>>>>> Stashed changes
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
<title>Livraria Curso PHP</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
<div id="container">
	<div id="header">
<<<<<<< Updated upstream
    <?php include('menu.php');?>
=======

    <?php include('menu.php'); ?>
>>>>>>> Stashed changes

	</div>

	<div id="wrap">
    	<div id="navcontainer">
<<<<<<< Updated upstream
        <?php include('left.php');?>
=======
        <?php include('left.php'); ?>  
>>>>>>> Stashed changes
      </div>
    	
      <div id="content">
    		<?php 

<<<<<<< Updated upstream
          if(isset($GET['area'])){
          
            $area_escolhida = $_GET['area'];

            if($area_escolhida == 'lista-de-livros'){
              include('lista.php');
            } else if($area_escolhida == 'contactos'){
              include('contactos.php');
            } else if($area_escolhida == 'registo'){
              include('registo.php');
            } else{
              include('erro.php');
            } 
            
          } else{
              include('home.php');
          }
          
        ?>
=======
          // verificar se a variavel de GET com o nome Area, existe
          if(isset($_GET['area'])){
            $area_escolhida= $_GET['area'];
          
            if($area_escolhida == 'lista-de-livros'){
              include('lista.php');
            
            } else if($area_escolhida == 'contactos') {
              include('contactos.php');

            } else if($area_escolhida == 'registo'){
              include('registo.php');

            } else {
              include('erro.php'); 

            }
          } else {
            include('home.php'); 
          }
          
        ?>

>>>>>>> Stashed changes
    	</div>


    	<div id="subcontent">
<<<<<<< Updated upstream
    		<?php include('right.php');?>
=======
        <?php include('right.php'); ?>
>>>>>>> Stashed changes
      </div>

    
    	<div id="footer">
<<<<<<< Updated upstream
    		<?php include('footer.php');?>
    	</div>
  </div>
</div>
=======
    		<?php include('footer.php'); ?>
    	</div>
  </div>
</div>
          <script src="scripts/jquery-3.6.4.min.js"></script>
          <script src="scripts/scripts.js"></script>
>>>>>>> Stashed changes
</body>
</html>