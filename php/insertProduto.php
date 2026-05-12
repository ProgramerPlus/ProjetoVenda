<?php 


//incluir a conexão do banco de dados
include 'conexao.php';

//guardar a instrução do mysql na variavel
$insert = "insert into tb_produto values (null,'câmera pro', 123.00)";

//função query irá executar a instrução sql dentro do banco
$resultado = $conexao->query($insert);

if($resultado == true){

echo "<script> alert('Produto cadastrado com sucesso') </script>";

}




?>


