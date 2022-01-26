<?php 
ob_start();
session_start();
if(isset($_SESSION['login_user']))
	{


require_once ("config.php");
require_once ("conexao.php");

error_reporting(0);
ini_set(“display_errors”, 0 );



$sql = "Update contador_2 SET visitas=0  where id=1 " ;
$query = $mysqli->query($sql);

  if(!$query)
    die (header("Location: ../configuracao.php?zerar=2"));
  else
    echo (header("Location: ../configuracao.php?zerar=1"));

	
	}

?>    


