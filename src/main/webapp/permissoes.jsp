<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="ufrrj.si.model.Usuario" %>
<%@ page import="ufrrj.si.DAO.UsuarioDAO" %>
<%@ page import="java.util.List" %>
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
        
        <%
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			List<Usuario> usuarios = usuarioDAO.buscarDiscentesDocentes();
		%>

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
            <jsp:useBean id="usuario" class="ufrrj.si.model.Usuario"/>
            <tbody>
            	<% for(Usuario u : usuarios) {%>
				    <tr>
	                    <td><%= u.getNome() %></td>
	                    <td><%= u.getIdentificacao() %></td>
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
	              <%} %>
            </tbody>
        </table>

        <div class="action-buttons">
            <button class="btn btn-cancel">Cancelar</button>
            <button class="btn btn-confirm">Confirmar</button>
        </div>
    </main>
</body>
</html>