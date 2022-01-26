<?php
ob_start();
session_start();


if(isset($_SESSION['login_user']))
	{


require_once ("config.php");
require_once ("conexao.php");






if (isset($_POST ['confirma_smtp'] ) and ($_SESSION['login_user'] ))  {



if ($_POST ['status_smtp'] == 1) {
	
	
	$sql1 = "Update smtp SET smtp_status=1 where id=1" ;
	$query = $mysqli->query($sql1);
		

header("Location: ../configuracao.php?smtp=1");


} else if ($_POST ['status_smtp'] == 2) {

$STATUS_SMTP_A = filter_var($_POST ['status_smtp'], FILTER_SANITIZE_URL);
$STATUS_SMTP =  addslashes($STATUS_SMTP_A);

$HOST_A = filter_var($_POST ['host'], FILTER_SANITIZE_URL);
$PORTA_A = filter_var($_POST ['porta'], FILTER_SANITIZE_URL);
$USUARIO_A = filter_var($_POST ['usuario'], FILTER_SANITIZE_URL);
$SENHA_A = filter_var($_POST ['senha'], FILTER_SANITIZE_URL);
$REMETENTE_A = filter_var($_POST ['remetente'], FILTER_SANITIZE_URL);

$HOST =  addslashes($HOST_A);
$PORTA =  addslashes($PORTA_A);
$USUARIO =  addslashes($USUARIO_A);
$SENHA =  addslashes($SENHA_A);
$REMETENTE =  addslashes($REMETENTE_A);


	require '../../phpmailer/PHPMailerAutoload.php';

 
	$Mailer = new PHPMailer();
	$Mailer->IsSMTP();
	$Mailer->isHTML(true);
	$Mailer->Charset = 'UTF-8';
	$Mailer->SMTPAuth = true;
	$Mailer->SMTPSecure = 'tls';
	$Mailer->Host = $HOST;
	$Mailer->Port = $PORTA;
	$Mailer->Username = $USUARIO;
	$Mailer->Password = $SENHA;
	$Mailer->From = $REMETENTE;
	$Mailer->FromName = 'Celke';
	$Mailer->Subject = 'Titulo - Recuperar Senha';
	$Mailer->Body = 'Email de Teste - ZK';
	$Mailer->AltBody = 'conteudo do E-mail em texto';
	$Mailer->AddAddress('yonirudac@just-email.com');
	
	if($Mailer->Send()){
		
		$sql2 = "Update smtp SET link_host='$HOST', porta='$PORTA', usuario='$USUARIO', email='$REMETENTE', senha='$SENHA', smtp_status=2 where id=1 " ;
		$query = $mysqli->query($sql2);
		

		
		
	 header("Location: ../configuracao.php?smtp=1");
		
		
	}else{
		
	 header("Location: ../configuracao.php?smtp=2");
	 
	}
	

}

}


	}
?>

