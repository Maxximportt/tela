<?php

ob_start();
session_start();

if(isset($_SESSION['login_user']))
	{

if (isset($_POST ['button'] )) {


error_reporting(0);
ini_set(“display_errors”, 0 );


$CUPOM_A = filter_var($_POST ['cupom'], FILTER_SANITIZE_URL);
$DESCONTO_A = filter_var($_POST ['desconto'], FILTER_SANITIZE_NUMBER_INT);



$CUPOM =  addslashes($CUPOM_A);
$DESCONTO =  addslashes($DESCONTO_A);

	




require_once ("config.php");
require_once ("conexao.php");



$sql = "INSERT INTO cupoms (codigo, desconto, usados) VALUES ('$CUPOM', '$DESCONTO', '0' )";
 $query = $mysqli->query($sql);

  if(!$query)
    die (header("Location: ../configuracao.php?cupom=2"));
  else
    echo (header("Location: ../configuracao.php?cupom=1"));

}

	}

?>

