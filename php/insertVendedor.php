<?php 


//incluir a conexão do banco de dados
include 'conexao.php';

//guardar a instrução do mysql na variavel
$insert = "insert into tb_vendedor values (null,'Reinaldo','94875388934',2)";

//função query irá executar a instrução sql dentro do banco
$resultado = $conexao->query($insert);

if($resultado == true){

echo "<script> alert('Vendedor cadastrado com sucesso') </script>";

}




?>


