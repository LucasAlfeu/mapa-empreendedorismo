<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS -->
    	<link rel="stylesheet" href="./assets/styles/permissoes.css">
        <link rel="stylesheet" href="./assets/styles/header.css">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <link rel="icon" href="./assets/images/rural_logo03.png">
	    <title>Permissões</title>

</head>
<body>
	<header class="cabecalho">
		<img class="logo" alt="" src="./assets/images/rural_logo04.png">
		<div class="caixa">
			<a class="link" href="./paginaInicial.jsp">Inicio</a>
		</div>
	</header>

    <h1 class="title">Permissões</h1>

    <aside class="filters-section">
        <div class="filter-title">
            <img src="./assets/images/filter.png" alt="Filter icon" class="filter-icon">
            <span class="filtro-title">Filtros</span>
        </div>
        <div class="filter-options">
            <label>
                <input type="checkbox" checked> Todos
            </label>
            <label>
                <input type="checkbox"> Administrador(a)
            </label>
            <label>
                <input type="checkbox"> Assistente
            </label>
        </div>
        <button class="filter-button">Filtrar</button>
    </aside>

    <main class="main-content">
        <div class="search-bar">
            <input type="text" placeholder="Buscar por nome" class="search-input">
            <button class="search-button">Buscar</button>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Matrícula</th>
                    <th class="checkbox-column">Administrador(a)</th>
                    <th class="checkbox-column">Assistente</th>
                    <th class="checkbox-column">Ator Responsável</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Amanda Oliveira Ferreira</td>
                    <td>20194827394</td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td>
                    	<select>
                    		<option selected>Fomento</option>
                    		<option>Institucional</option>
                    		<option>Empresarial</option>
                    		<option>Habitats de Inovação</option>
                    		<option>Conhecimento</option>
                    		<option>Público</option>
                    	</select>
                    </td>
                </tr>
                <tr>
                    <td>Lucas Andrade Melo</td>
                    <td>20205631842</td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td>
                    	<select>
                    		<option>Fomento</option>
                    		<option>Institucional</option>
                    		<option selected>Empresarial</option>
                    		<option>Habitats de Inovação</option>
                    		<option>Conhecimento</option>
                    		<option>Público</option>
                    	</select>
                    </td>
                </tr>
                <tr>
                    <td>Fernanda Sousa Araújo</td>
                    <td>20219074521</td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td>
                    	<select>
                    		<option>Fomento</option>
                    		<option selected>Institucional</option>
                    		<option>Empresarial</option>
                    		<option>Habitats de Inovação</option>
                    		<option>Conhecimento</option>
                    		<option>Público</option>
                    	</select>
                    </td>
                </tr>
                <tr>
                    <td>Gustavo Pereira Lima</td>
                    <td>20223186540</td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td>
                    	<select>
                    		<option>Fomento</option>
                    		<option>Institucional</option>
                    		<option>Empresarial</option>
                    		<option>Habitats de Inovação</option>
                    		<option selected>Conhecimento</option>
                    		<option>Público</option>
                    	</select>
                    </td>
                </tr>
                <tr>
                    <td>Renato Nogueira Fonseca</td>
                    <td>20231764925</td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td>
                    	<select>
                    		<option>Fomento</option>
                    		<option>Institucional</option>
                    		<option>Empresarial</option>
                    		<option>Habitats de Inovação</option>
                    		<option>Conhecimento</option>
                    		<option selected>Público</option>
                    	</select>
                    </td>
                </tr>
                <tr>
                    <td>Mariana Barbosa Costa</td>
                    <td>20242596376</td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td>
                    	<select>
                    		<option>Fomento</option>
                    		<option>Institucional</option>
                    		<option>Empresarial</option>
                    		<option>Habitats de Inovação</option>
                    		<option selected>Conhecimento</option>
                    		<option>Público</option>
                    	</select>
                    </td>
                </tr>
                <tr>
                    <td>Juliana Ramos Teixeira</td>
                    <td>20196704832</td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td>
                    	<select>
                    		<option>Fomento</option>
                    		<option>Institucional</option>
                    		<option>Empresarial</option>
                    		<option selected>Habitats de Inovação</option>
                    		<option>Conhecimento</option>
                    		<option>Público</option>
                    	</select>
                    </td>
                </tr>
                <tr>
                    <td>Felipe Cardoso Albuquerque</td>
                    <td>20201485763</td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td>
                    	<select>
                    		<option>Fomento</option>
                    		<option selected>Institucional</option>
                    		<option>Empresarial</option>
                    		<option>Habitats de Inovação</option>
                    		<option>Conhecimento</option>
                    		<option>Público</option>
                    	</select>
                    </td>
                </tr>
                <tr>
                    <td>Camila Rocha Figueiredo</td>
                    <td>20212390481</td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td class="checkbox-column"><input type="checkbox"></td>
                    <td>
                    	<select>
                    		<option selected>Fomento</option>
                    		<option>Institucional</option>
                    		<option>Empresarial</option>
                    		<option>Habitats de Inovação</option>
                    		<option>Conhecimento</option>
                    		<option>Público</option>
                    	</select>
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="action-buttons">
            <button class="btn btn-cancel">Cancelar</button>
            <button class="btn btn-confirm">Confirmar</button>
        </div>
    </main>
</body>
</html>