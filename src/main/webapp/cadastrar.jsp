<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS -->
    <link rel="stylesheet" href="./leaflet/leaflet.css">
    <link rel="stylesheet" href="./assets/styles/header.css">
    <link rel="stylesheet" href="./assets/styles/mapa.css">
    <link rel="stylesheet" href="./assets/styles/cadastrar.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" href="./assets/images/rural_logo03.png">
    <!-- JS -->
    <script src="./leaflet/leaflet.js"></script>
    <title>Cadastrar</title>

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
		<form id="form-cadastrar" method="POST" action="entrar.do">
			<h1 class="form-title">Cadastrar</h1>
			<div class="box separar">
				<label class="form-label" for="tipo-usuario">Informe seu vínculo com a UFRRJ:</label>
	    		<select id="tipo-usuario" class="form-input" name="tipo-usuario">
	    			<option class="item-usuario form-input" value="">Selecione...</option>
	    			<option class="item-usuario form-input" value="docente">Docente</option>
	    			<option class="item-usuario form-input" value="discente">Discente</option>
	    			<option class="item-usuario form-input" value="cidadao">Cidadão</option>
	    		</select>
			</div>
			<div class="box">
				<label class="form-label" for="nome">Nome Completo: </label>
	    		<input type="text" id="nome" class="form-input" name="nome-usuario">
			</div>
			<div class="box">
				<label class="form-label" for="curso">Curso: </label>
	    		<input type="text" id="curso" class="form-input" name="curso-usuario">	 
			</div>
			<div class="box">
				<label class="form-label" for="identificacao" id="label-id">Identificação: </label>
	    		<input type="text" id="identificacao"  class="form-input" name="identificacao-usuario">	  <!-- onfocus="alerta()" -->
			</div>
			<div class="box">
				<label class="form-label" for="email">Email: </label>
	    		<input type="text" id="email" class="form-input" name="email-usuario">	 
			</div>
			<div class="box">
				<label class="form-label" for="usuario">Usuario: </label>
	    		<input type="text" id="usuario" class="form-input"  name="usuario">	 
			</div>
			<div class="box">
				<label class="form-label" for="senha">Senha: </label>
	    		<input type="password" id="senha" class="form-input" name="senha-usuario">	 
			</div>
			<div class="box">
				<label class="form-label" for="confirmaSenha">Confirmar Senha: </label>
	    		<input type="password" id="confirmaSenha" class="form-input" name="confirma-senha">	 
			</div>
	    	<div class="btns">
	    		<input type="submit" value="Cadastrar" id="btn-cadastrar">
	    		<button id="btn-cancelar" onclick="redirecionarIndex()">Cancelar</button>
	    	</div>   	
	    </form>
	    <div id="map"></div>
	</section>
</body>
<script type="text/javascript" src="./assets/scripts/mapa.js"></script>
<script type="text/javascript" src="./assets/scripts/abrirFecharMenu.js"></script>
<script type="text/javascript" src="./assets/scripts/mudarLabel.js"></script>
</html>