<?php

ob_start();
session_start();

if(isset($_SESSION['login_user']))
	{



$ID_A = $_GET ['codigo'];

$ID =  addslashes($ID_A);
	


error_reporting(0);
ini_set(“display_errors”, 0 );

require_once ("config.php");
require_once ("conexao.php");


		
$sql = "DELETE FROM cupoms WHERE codigo = '$ID'";
   $query = $mysqli->query($sql);

  if(!$query)
    die (header("Location: ../configuracao.php?delete_cupom=2"));
  else
    echo (header("Location: ../configuracao.php?delete_cupom=1"));

	}	
		
		
?>

