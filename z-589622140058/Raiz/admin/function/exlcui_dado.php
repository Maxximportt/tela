<?php
ob_start();
session_start();
if(isset($_SESSION['login_user']))
	{




$ID_A = filter_var($_GET ['id'], FILTER_SANITIZE_NUMBER_INT);


$ID =  addslashes($ID_A);
	








		
require_once ("config.php");
require_once ("conexao.php");


   $sql = "DELETE FROM capturas WHERE id = $ID";
   $query = $mysqli->query($sql);

  if(!$query)
    die("<center><br><br><br><strong><font color='red'>Falha</font> ao deletar a info.</strong> " );
  else
    echo "<center><br><br><br><strong> <font color='green'>Sucesso</font> ao deletar a info.</strong>";
	}
?>

<meta http-equiv="refresh" content=0;url="../info.php?delete=1">