<?php
require "inc/cabecalho.php"; 
require "inc/funcoes-noticias.php"; 

$idNoticia = $_GET['id'];

$dadosDaNoticia = lerDetalhes($idNoticia, $conexao)



?>


<div class="row my-1 mx-md-n1">

    <article class="col-12">
        <h2> <?=$dadosDaNoticia['titulo']?> </h2>
        <p class="font-weight-light">
            <time><?=$dadosDaNoticia['data']?> </time> - <span><?=$dadosDaNoticia['autor']?> </span>
        </p>
        <img src="imagens/<?=$dadosDaNoticia['imagem']?> " alt="" class="float-start pe-2 img-fluid">
        <p><?=$dadosDaNoticia['texto']?> </p>
    </article>

</div>        

<?php 
require_once "inc/rodape.php";
?>

