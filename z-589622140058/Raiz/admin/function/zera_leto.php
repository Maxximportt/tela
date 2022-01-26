<?php
ob_start();
session_start();

if(isset($_SESSION['login_user']))
	{



error_reporting(0);
ini_set(“display_errors”, 0 );

$ID_FILTRADO = filter_var($_GET ['id'], FILTER_SANITIZE_NUMBER_INT);
$ID =  addslashes($ID_FILTRADO);
	





require_once ("config.php");
require_once ("conexao.php");


   $sql = "DELETE FROM boletos WHERE id_produto = '$ID'";
   $query = $mysqli->query($sql);

  if(!$query)
    die (header("Location: ../boletos.php?id=$ID&zerar=2"));
  else
    echo (header("Location: ../boletos.php?id=$ID&zerar=1"));

	}
		
?>

