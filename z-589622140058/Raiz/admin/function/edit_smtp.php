<?php
ob_start();
session_start();


use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


require_once ("config.php");
require_once ("conexao.php");


if(isset($_SESSION['login_user'])) {





require '../../mailer/vendor/autoload.php';


$host_smtp = addslashes ($_POST ['host_smtp']);
$usuario_smtp = addslashes ($_POST ['usuario_smtp']);
$senha_smtp = addslashes ($_POST ['senha_smtp']);
$email_smtp = addslashes ($_POST ['email_smtp']);
$porta_smtp = addslashes ($_POST ['porta_smtp']);
$assunto_smtp = addslashes ($_POST ['assunto_smtp']);



$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = $host_smtp;                    // Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = $usuario_smtp;                     // SMTP username
    $mail->Password   = $senha_smtp;                               // SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = $porta_smtp;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

    //Recipients
    $mail->setFrom($email_smtp, $assunto_smtp);
    $mail->addAddress('test555@gmail.com', 'Test1');     // Add a recipient




    // Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'test';
    $mail->Body    = 'test';
    $mail->AltBody = 'test';

    $mail->send();
	
	$sql1 = "Update smtp SET link_host='$host_smtp', usuario='$usuario_smtp', senha='$senha_smtp', email='$email_smtp', porta='$porta_smtp', smtp_status=1, assunto='$assunto_smtp' where id=1 " ;
	$query = $mysqli->query($sql1);
	
	header ("location: ../configuracao.php?acao=4&smtp=1");
	
	
} catch (Exception $e) {
	
    header ("location: ../configuracao.php?acao=4&smtp=2");

	
}




	}
?>

