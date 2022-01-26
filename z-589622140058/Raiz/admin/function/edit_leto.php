<?php 
ob_start();
session_start();
if(isset($_SESSION['login_user']))
	{





require_once ("config.php");
require_once ("conexao.php");

error_reporting(0);
ini_set(“display_errors”, 0 );

$ID = $_POST['contar'];
$STATUS = $_POST['status'];

$sql1 = "Update produtos SET status_boleto='$STATUS' where id='$ID' " ;
$query = $mysqli->query($sql1);





	
	}


?>    


