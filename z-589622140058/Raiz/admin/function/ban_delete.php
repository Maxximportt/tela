<?php
ob_start();
session_start();

if(isset($_SESSION['login_user']))
	{



error_reporting(0);
ini_set(“display_errors”, 0 );


$ID_A = $_GET ['id'];

$ID =  addslashes($ID_A);	




require_once ("config.php");
require_once ("conexao.php");


   $sql = "DELETE FROM blacklist WHERE id=$ID";
   $query = $mysqli->query($sql);

  if(!$query)
    die (header("Location: ../analise.php?exclui=2"));
  else
    echo (header("Location: ../analise.php?exclui=1"));

	}
?>

