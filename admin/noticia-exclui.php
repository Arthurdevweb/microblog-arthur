<?php
require "../inc/funcoes-noticias.php";
require "../inc/funcoes-sessao.php";


verificaAcesso();

// PEGANDO O ID DA NOTICIA (DA URL) QUE VAI EXCLUIR
$idNoticia = $_GET['id'];


$tipoUsuario = $_SESSION['tipo'];


$idUsuario = $_SESSION['id'];

// Executar função
excluirNoticia($conexao, $idNoticia, $idUsuario, $tipoUsuario);


// Redirecionameto para noticias.php
header("location:noticias.php");
