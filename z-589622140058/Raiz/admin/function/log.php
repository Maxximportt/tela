<?PHP
error_reporting(0);
ini_set(“display_errors”, 0 );

require_once ('config.php');

$conexao = mysqli_connect(''.$dbhost.'',''.$dbuser.'',''.$dbpass.'') or die("Erro de conexão");
$banco = mysqli_select_db($conexao,''.$dbname.'') or die("Erro ao selecionar o banco de dados");
?>