<?php
error_reporting(0);
ini_set(“display_errors”, 0 );



session_start ();

require_once ("function/config.php");
require_once ("function/conexao.php");
require_once ("function/new_function.php");
include('../../../string.php');




$v = '4.0';

$dadosB = "SELECT* FROM configuracao where id=1";
$conB = $mysqli -> query($dadosB) or die ($mysqli -> error);


while ($consultaB= $conB -> fetch_array()){
	
	$tokken = $consultaB ["tokken"];
	$link_site = $consultaB ["link_site"];
	
}

$URL_ATUAL= "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

	$URL_NEW = explode("".$null2."/Raiz", $URL_ATUAL);
	
$ink_new_a = str_replace ('http://', '', $URL_NEW[0]);
$ink_new = str_replace ('https://', '', $ink_new_a);


$host_api =  $ink_new;
	
$url = "http://$host_api/api/status.txt";

$options = array(
  'http'=>array(
    'method'=>"GET",
    'header'=>"Accept-language: en\r\n" .
              "Cookie: foo=bar\r\n" .  
              "User-Agent: Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.102011-10-16 20:23:10\r\n" // 
  )
);

$url = 'libera.txt';

$context = stream_context_create($options);
$store = file_get_contents($url, false, $context);

$var1 = explode("> status: ",$store);
$status_server = explode(';',$var1[1]);

$var2 = explode("> versao: ",$store);
$versao_server = explode(';',$var2[1]);

$_SESSION ['versao_server'] = $versao_server [0];

	if($status_server[0] ==1  ) {
		$status_url = 1;
	} else {
		$status_url = 2;
	}


if (isset($_SESSION ['tentativa'])) {
	
	
	if ($_SESSION ['tentativa'] < 5) {
		
		$num_tent = 5 - $_SESSION ['tentativa'] ;
			
		$msg_tentativa = '('.$num_tent.') tentativas restantes';
		
	} else if ($_SESSION ['tentativa'] >= 5 ) {
		
	    $msg_tentativa = 'Aguarde uma hora para poder tentar de novo.';

		
	}
	
	
	
}





?>


<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Magazine <?php echo $versao_server[0]; ?> - SINCE</title>
    
    <!-- CSS -->
    <link href="assets/css/fonts/fontawesome/all.min.css" rel="stylesheet">
    <link href="assets/css/fonts/beid.css" rel="stylesheet">
    
    <link href="assets/css/main.css" rel="stylesheet">
    <link href="assets/css/styles.css" rel="stylesheet">

    <!-- JQVMAP -->
    <link href="assets/plugins/jqvmap/jqvmap.min.css" rel="stylesheet">

    <!-- dateRangePicker -->
    <link href="assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="assets/img/apple-touch-icon.png">
    <link rel="icon" href="assets/img/favicon.png">

    <!-- Fonts -->
    <link href="assets/fonts/inter/inter.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">


  </head>
  <body class="body">
  
    <script>

var i = setInterval(function () {
    
    clearInterval(i);
  
    // O código desejado é apenas isto:
    document.getElementById("loading").style.display = "none";
    document.getElementById("conteudo").style.display = "inline";

}, 3100);


</script>

    <!-- main -->
    <main>

      <!-- main content -->
      <div class="main-container app-wow">
        
        <div class="container h-100">
          <div class="row align-items-center h-100">
            <div class="col-12 mx-auto">
              <div class="py-8">
                <div class="auth-box">
                  <div class="row">
                    <div class="col-md-5">
                      <div class="d-flex align-items-center justify-content-center warning-gradient text-secondary px-4 py-6 h-100">
                        <div id="loading" style="display: block" class="text-center">
                          <h5 class="text-uppercase">Servidor :
						  
					

						  <img width="20" src="assets/gif/loader1.gif" >
						  
						  
						  
						  </h5> 
                          <h5 class="text-uppercase">Procurando atualização :<img width="20" src="assets/gif/loader1.gif" ></h5> 
                        </div>
						
						
						  <div id="conteudo" style="display: none" class="text-center">
                          <h5 class="text-uppercase">Servidor :
						  
					
							<?php if ($status_url == 1) { ?>
						  <font color="#0021ed"> ON </font> <img width="20" src="assets/gif/on.gif" >
							<?php } else { ?>
						  <font color="red"> OFF <img width="20" src="assets/gif/off.gif" ></font> 

							<?php } ?>
						  
						  
						  </h5> 
                          <h5 class="text-uppercase">Atualização :
						  <?php if ($v != $versao_server[0]) { ?>
						  <font color="red"> Há uma nova atualização</font>
						  <?php } else { ?>
						  <font color="#0021ed"> Já está na última versão</font>
						  <?php } ?>
						  
						  
						  </h5> 
                        </div>
						
                      </div>
					  
					  
					  
					  
					  
					  
                    </div>
                    <div class="col-md-7">
                      <div class="px-4 pr-md-7 py-6 pl-md-0">
                        <h4 class="mb-6 text-light">Magazine <?php echo $versao_server[0]; ?> by Since2009</h4>
                        <div>
                          <form class="input-light" method="post" action="valida.php">
                              <div class="text-center">
              
                                <span class="hr-text justify-content-center text-uppercase small my-6"><img width="60" src="assets/img/logo_pequena.png" ></span>
                              </div>
							  
						<?php if ($_GET ['pass'] == "error" ) { ?>
						<div class="alert alert-round alert-theme-outline d-flex p-0 overflow-hidden" role="alert">
                        <div class="alert-icon-box d-flex align-items-center px-5">
                          <span class="alert-icon icon-help-button lead-3"></span>
                        </div>
                        <div class="flex-1 d-flex py-4 px-5">
                          <div>
                            <strong>Erro:</strong> Usuario ou senha incorretos !  <?php if (isset($_SESSION ['tentativa'])) { echo $msg_tentativa; }?>
                          </div>
                          <div class="ml-auto">
                            <span class="c-pointer ml-auto" data-dismiss="alert">
                              <span class="fas fa-times lead-1" aria-hidden="true"></span>
                            </span>
                          </div>
                        </div>
                      </div>
						<?php } ?>
						
						
						
					<?php if (isset($_GET ['tokkenInvalid'])) { ?>
						<div class="alert alert-round alert-theme-outline d-flex p-0 overflow-hidden" role="alert">
                        <div class="alert-icon-box d-flex align-items-center px-5">
                          <span class="alert-icon icon-help-button lead-3"></span>
                        </div>
                        <div class="flex-1 d-flex py-4 px-5">
                          <div>
                            <strong>Erro:</strong> Tokken inválido ou desativado! contate o administrador. 
                          </div>
                          <div class="ml-auto">
                            <span class="c-pointer ml-auto" data-dismiss="alert">
                              <span class="fas fa-times lead-1" aria-hidden="true"></span>
                            </span>
                          </div>
                        </div>
                      </div>
						<?php } ?>
							  
							  
					<?php if (isset($_GET ['expirou'])) { ?>
						<div class="alert alert-round alert-theme-outline d-flex p-0 overflow-hidden" role="alert">
                        <div class="alert-icon-box d-flex align-items-center px-5">
                          <span class="alert-icon icon-help-button lead-3"></span>
                        </div>
                        <div class="flex-1 d-flex py-4 px-5">
                          <div>
                            <strong>Erro:</strong> Seu tokken está expirado, contate o administrador para renovar.
                          </div>
                          <div class="ml-auto">
                            <span class="c-pointer ml-auto" data-dismiss="alert">
                              <span class="fas fa-times lead-1" aria-hidden="true"></span>
                            </span>
                          </div>
                        </div>
                      </div>
						<?php } ?>  
						
					<?php if (isset($_GET ['domain'])) { ?>
						<div class="alert alert-round alert-theme-outline d-flex p-0 overflow-hidden" role="alert">
                        <div class="alert-icon-box d-flex align-items-center px-5">
                          <span class="alert-icon icon-help-button lead-3"></span>
                        </div>
                        <div class="flex-1 d-flex py-4 px-5">
                          <div>
                            <strong>Erro:</strong> Esse domínio não foi cadastrado, acesse usando o domínio escolhido na instalação da tela: <?php echo $link_site ?>.
                          </div>
                          <div class="ml-auto">
                            <span class="c-pointer ml-auto" data-dismiss="alert">
                              <span class="fas fa-times lead-1" aria-hidden="true"></span>
                            </span>
                          </div>
                        </div>
                      </div>
						<?php } ?>  
							  
							  
							  
                              <div class="input-group mb-5">
                                <div class="input-group-prepend">
                                  <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input type="text" class="form-control" name="login" placeholder="Usuario">
                              </div>
                              <div class="input-group mb-5">
                                <div class="input-group-prepend">
                                  <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                </div>
                                <input type="password" class="form-control" name="senha" placeholder="Senha">
                              </div>
                              <div class="form-group d-flex justify-content-between">
                             
                              </div>
                              <div class="form-group d-flex mb-0 mt-6">
                                <button class="btn btn-outline-warning" type="submit">Login</button>
                              
                              </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </main>
    <!-- /.main -->

    <!-- preloader -->
    <div class="preloaderWrapper"></div>

    <!-- jQuery -->
    <script src="assets/js/jquery.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>
    
    <!-- User JS -->
    <script src="assets/js/scripts.js"></script>

    <!-- Main JS -->
    <script src="assets/js/main.js" id="_mainJS" data-plugins="load"></script>

    <!-- Modules -->
    <script src="assets/js/modules.js"></script>
    
  </body>

</html>