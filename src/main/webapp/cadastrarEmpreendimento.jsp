<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--  CSS -->
    <link rel="stylesheet" href="./assets/styles/sujerirEmpreendimento.css">
    <link rel="stylesheet" href="./assets/styles/header.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" href="./assets/images/rural_logo03.png">
    
    <title>Cadastrar Empreendimento</title>
    
</head>
<body>
	<header class="cabecalho">
		<img class="logo" alt="" src="./assets/images/rural_logo04.png">
		<div class="caixa">
			<a class="link" href="./paginaInicial.jsp">Inicio</a>
		</div>
	</header>
    
    <div class="form-container">
        <h1>Cadastrar Empreendimento</h1>
        <form>
            <div class="form-group">
                <label for="nome">Nome:</label>
                <input type="text" id="nome" name="nome" required class="input-form">
            </div>

            <div class="form-group">
                <label for="telefone">Telefone:</label>
                <input type="tel" id="telefone" name="telefone" required class="input-form">
            </div>

            <div class="form-group">
                <label for="site">Site:</label>
                <input type="text" id="site" name="site" class="input-form">
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required class="input-form">
            </div>

            <div class="form-group">
                <label for="descricao">Descreva o serviço oferecido:</label>
                <textarea id="descricao" name="descricao" required></textarea>
            </div>

            <div class="form-group">
                <label for="cep">CEP:</label>
                <input type="text" id="cep" name="cep" required class="input-form">
            </div>

            <div class="form-group">
                <label for="rua">Rua:</label>
                <input type="text" id="rua" name="rua" required class="input-form">
            </div>

            <div class="form-group">
                <label for="numero">Número:</label>
                <input type="text" id="numero" name="numero" required class="input-form">
            </div>

            <div class="form-group">
                <label for="complemento">Complemento:</label>
                <input type="text" id="complemento" name="complemento" class="input-form">
            </div>

            <div class="form-group">
                <label for="bairro">Bairro:</label>
                <input type="text" id="bairro" name="bairro" required class="input-form">
            </div>

            <div class="form-group">
                <label for="municipio">Município:</label>
                <input type="text" id="municipio" name="municipio" required class="input-form">
            </div>

            <div class="form-group">
                <label for="ator">Ator:</label>
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
                <label for="categoria">Categoria:</label>
                <select id="categoria" class="input-select">
                	<option>Selecione ...</option>
                	<option>Categoria 01</option>
                	<option>Categoria 02</option>
                	<option>Categoria 03</option>
                </select>
            </div>

            <div class="form-button">
            	<button type="submit">Cadastrar</button>
            </div>
        </form>
    </div>
</body>
</html>