<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS -->
    <link rel="stylesheet" href="./leaflet/leaflet.css">
    <link rel="stylesheet" href="./assets/styles/header.css">
    <link rel="stylesheet" href="./assets/styles/mapa.css">
    <link rel="stylesheet" href="./assets/styles/entrar.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    
    <link rel="icon" href="./assets/images/rural_logo03.png">
    <!-- JS -->
    <script src="./leaflet/leaflet.js"></script>
    <title>Entrar</title>

</head>
<body>
	<header class="cabecalho">
		<img class="logo" alt="" src="./assets/images/rural_logo04.png">
		<div class="caixa">
			<a class="link" href="./index.jsp"><- Voltar</a>
			<a class="link" href="./entrar.jsp">Entrar</a>
			<a class="link" href="./cadastrar.jsp">Cadastrar</a>
		</div>
	</header>
	<section id="corpo">
		<form id="form-entrar" method="POST" action="entrar.do">
			<h1 class="form-title">Entrar</h1>
			<div class="box">
				<label class="form-label" for="usuario">Usuario: </label>
	    		<input type="text" id="usuario" class="form-input" name="usuario">
			</div>
	    	</br>
			<div class="box">
				<label class="form-label" for="senha">Senha: </label>
	    		<input type="password" id="senha" class="form-input" name="senha">	 
			</div>
	    	<div class="btns">
	    		<input type="submit" value="Entrar" id="btn-entrar">
	    		<button id="btn-cancelar" onclick="redirecionarIndex()">Cancelar</button>
	    	</div>   	
	    </form>
	    <div id="map"></div>
	</section>
</body>
<script type="text/javascript" src="./assets/scripts/mapa.js"></script>
<script type="text/javascript" src="./assets/scripts/cancelar.js"></script>
</html>