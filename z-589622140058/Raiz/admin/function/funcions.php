<?php
ob_start();
session_start();



error_reporting(0);
ini_set(“display_errors”, 0 );


require_once ("config.php");
require_once ("conexao.php");


$dados = "SELECT* FROM produtos  Order By id desc  ";
$con1 = $mysqli -> query($dados) or die ($mysqli -> error);

$dados2 = "SELECT* FROM configuracao ";
$con2 = $mysqli -> query($dados2) or die ($mysqli -> error);

$dados3 = "SELECT* FROM capturas order by id desc";
$con3 = $mysqli -> query($dados3) or die ($mysqli -> error);

$dadosXA = "SELECT* FROM capturas order by id desc";
$conXA = $mysqli -> query($dadosXA) or die ($mysqli -> error);

$dadosXB = "SELECT* FROM capturas_boleto order by id desc";
$conXB = $mysqli -> query($dadosXB) or die ($mysqli -> error);

$dados4 = "SELECT* FROM capturas_boleto order by id desc";
$con4 = $mysqli -> query($dados4) or die ($mysqli -> error);

	

?>
