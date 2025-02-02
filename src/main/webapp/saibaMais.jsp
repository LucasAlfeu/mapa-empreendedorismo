<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--  CSS -->
    <link rel="stylesheet" href="./assets/styles/saibaMais.css">
    <link rel="stylesheet" href="./assets/styles/header.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" href="./assets/images/rural_logo03.png">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
     integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <title>Saiba Mais</title>
    <style>
        
    </style>
</head>
<body>
	<header class="cabecalho">
		<img class="logo" alt="" src="./assets/images/rural_logo04.png">
		<div class="caixa">
			<a class="link" href="./paginaInicial.jsp">Inicio</a>
		</div>
	</header>

    <div class="content-container">
        <h1>Saiba Mais</h1>

        <div class="info-section">
            <div class="info-item">Nome do estabelecimento</div>
            <div class="info-item">Telefone do estabelecimento</div>
            <div class="info-item">Site do Estabelecimento se possuir</div>
            <div class="info-item">Email do estabelecimento</div>
            
            <div class="description">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
            </div>
        </div>

        <div class="info-section">
            <h2>Endereço</h2>
            <div class="info-item">CEP do estabelecimento</div>
            <div class="info-item">Rua do estabelecimento</div>
            <div class="info-item">Número em que encontra o estabelecimento</div>
            <div class="info-item">Complemento do estabelecimento se possuir</div>
            <div class="info-item">Bairro onde se localiza o estabelecimento</div>
            <div class="info-item">Município do estabelecimento</div>
        </div>

        <form class="info-section">
            <h2>Informações</h2>
            <div class="form-group">
                <label for="ator" class="label-form">Ator:</label></br>
                <select id="ator" class="input-select">
                	<option>Selecione ...</option>
                	<option>Fomento</option>
                	<option>Institucional</option>
                	<option>Empresarial</option>
                	<option>Habitats de Inovação</option>
                	<option>Conhecimento</option>
                	<option>Público</option>
                </select>
            </div>

            <div class="form-group">
                <label for="categoria" class="label-form">Categoria:</label></br>
                <select id="categoria" class="input-select">
                	<option>Selecione ...</option>
                	<option>Categoria 01</option>
                	<option>Categoria 02</option>
                	<option>Categoria 03</option>
                </select>
            </div>
            
	        <div class="action-button">
	            <button type="submit"><i class="form-button fa fa-circle-check"></i> Aceitar</button>
	            <button type="submit"><i class="form-button fa fa-circle-exclamation"></i> Recusar</button>
	        </div>
        </form>
    </div>
</body>
</html>