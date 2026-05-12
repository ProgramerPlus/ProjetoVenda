<?php 
//incluir a conexão do banco de dados
include 'conexao.php';

//guardar a instrução do mysql na variavel
$insert = "insert into tb_cliente values (null,'Lucas Miguel Abbate','13905487864','Gabriel Adams')";

//função query irá executar a instrução sql dentro do banco
$resultado = $conexao->query($insert);

if($resultado == true){

echo "<script> alert('Cliente cadastrado com sucesso') </script>";

}




?>