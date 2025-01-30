<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS -->
    <link rel="stylesheet" href="./assets/styles/buscarEmpreendimento.css">    
    <link rel="stylesheet" href="./assets/styles/header.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" href="./assets/images/rural_logo03.png">
    <title>Busca de Registro</title>
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

    <main class="container">
        <div class="search-card">
            <h1 class="search-title">Busca de Registro</h1>
            
            <form>
                <div class="form-group">
                    <label class="form-text" for="nome">Nome:</label>
                    <input type="text" id="nome" class="form-control">
                </div>

                <div class="form-group">
                    <label class="form-text" for="cidade">Cidade:</label>
                    <input type="text" id="cidade" class="form-control">
                </div>

                <div class="filters-section">
                    <h2 class="filters-title form-text">Filtros</h2>
                    
                    <div class="checkbox-group">
                        <label class="checkbox-item">
                            <input type="checkbox" name="ator" value="fomento">
                            Fomento
                        </label>
                        <label class="checkbox-item">
                            <input type="checkbox" name="ator" value="institucional">
                            Institucional
                        </label>
                        <label class="checkbox-item">
                            <input type="checkbox" name="ator" value="empresarial">
                            Empresarial
                        </label>
                        <label class="checkbox-item">
                            <input type="checkbox" name="ator" value="habitats">
                            Habitats de inivação
                        </label>
                        <label class="checkbox-item">
                            <input type="checkbox" name="ator" value="conhecimento">
                            Conhecimento
                        </label>
                        <label class="checkbox-item">
                            <input type="checkbox" name="ator" value="publico">
                            Público
                        </label>
                    </div>
                </div>

                <label class="map-option">
                    <input type="checkbox" name="mostrar_mapa">
                    Mostrar resultado no mapa
                </label>

                <button type="submit" class="search-button">Buscar</button>
            </form>
        </div>
    </main>
</body>
</html>