<?php 
ob_start();
session_start();
if(isset($_SESSION['login_user']))
	{




error_reporting(0);
ini_set(“display_errors”, 0 );

require_once ("config.php");
require_once ("conexao.php");


$ALTERNA_A = $_POST["alterna"];
$EXIBI_A = $_POST["exibi"];
$QUANTIDADE_A = $_POST["quantidade"];
$TEXTO_A = $_POST["texto"];


$ALTERNA =  addslashes($ALTERNA_A);
$EXIBI =  addslashes($EXIBI_A);
$QUANTIDADE =  addslashes($QUANTIDADE_A);
$TEXTO =  addslashes($TEXTO_A);
	



$sql = "Update configuracao SET alterna='$ALTERNA', limite_engenharia='limit 0,$QUANTIDADE', exibi_preco='$EXIBI', msg_eng='$TEXTO'   where id=1 " ;
$query = $mysqli->query($sql);

  if(!$query)
    die (header("Location: ../configuracao.php?eng=2"));
  else
    echo (header("Location: ../configuracao.php?eng=1"));

	
	}


?>    


