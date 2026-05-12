<?php 


//incluir a conexão do banco de dados
include 'conexao.php';

//guardar a instrução do mysql na variavel
$insert = "insert into tb_venda values (null,'2026-04-03',5,3000.00,10,20,5,'Paraíba')";

//função query irá executar a instrução sql dentro do banco
$resultado = $conexao->query($insert);

if($resultado == true){

echo "<script> alert('Venda cadastrada com sucesso') </script>";

}




?>







