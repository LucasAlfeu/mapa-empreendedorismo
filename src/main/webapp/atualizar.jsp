<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--  CSS -->
    <link rel="stylesheet" href="./assets/styles/atualizar.css">
    <link rel="stylesheet" href="./assets/styles/header.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" href="./assets/images/rural_logo03.png">
    
    <title>Atualizar</title>
</head>
<body>
	<header class="cabecalho">
		<img class="logo" alt="" src="./assets/images/rural_logo04.png">
		<div class="caixa">
			<a class="link" href="./paginaInicial.jsp">Inicio</a>
		</div>
	</header>

    <main class="container">
        <div class="update-card">
            <h1 class="card-title">Atualizar</h1>
            
            <form class="section">
                <h2 class="section-title">Novo Ator</h2>
                <div class="form-group">
                    <label for="new-actor">Ator:</label>
                    <input type="text" id="new-actor" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-secondary">Cadastrar Ator</button>
                </div>
            </form>

            <form class="section">
                <h2 class="section-title">Nova Categoria</h2>
                <div class="form-group">
                    <label for="category-actor">Ator:</label>
                    <select id="category-actor" class="form-control">
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
                    <label for="category">Categoria:</label>
                    <input type="text" id="category" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-secondary">Cadastrar Categoria</button>
                </div>
            </form>

            <div class="button-group">
                <button class="btn btn-secondary" onclick="voltarPaginaInicial()">Cancelar</button>
                <button class="btn btn-primary" onclick="voltarPaginaInicial()">Finalizar</button>
            </div>
        </div>
    </main>
</body>
<script src="./assets/scripts/voltar.js"></script>
</html>