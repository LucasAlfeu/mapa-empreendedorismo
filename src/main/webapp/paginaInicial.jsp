<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="ufrrj.si.model.Usuario" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS -->
    <link rel="stylesheet" href="./leaflet/leaflet.css">
    <link rel="stylesheet" href="./assets/styles/header.css">
    <link rel="stylesheet" href="./assets/styles/corpo.css">
    <link rel="stylesheet" href="./assets/styles/menu.css">
    <link rel="stylesheet" href="./assets/styles/mapa.css">
    <link rel="stylesheet" href="./assets/styles/filtro.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" 
    integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="./assets/images/rural_logo03.png">
    <!-- JS -->
    <script src="./leaflet/leaflet.js"></script>
    <title>Mapa Empreendedorismo</title>

</head>
<body>
	<%Usuario usuario = (Usuario) session.getAttribute("user");%>
	<header class="cabecalho">
		<img class="logo" alt="" src="./assets/images/rural_logo04.png">
		<div class="caixa">
			<a class="link" href="#"><%= usuario.getNome() %></a>
			<a class="link" href="./index.jsp">Sair</a>
		</div>
	</header>
    <section id="corpo">
    	<button id="btn-menu" onclick="menuOpen()"></button>
		<div class="menu">
			<div id="header-menu">
				<h3 class="title-menu"><i class="fas fa-bars-staggered"></i> Menu</h3>
				<button id="close-menu" onclick="menuClose()"><i class="fas fa-close"></i></button>
			</div>
			<ul id="lista-menu">
	    		<li class="item-menu"><button id="filtro" onclick="filtroOpen()"><i class="fas fa-filter"></i> Filtrar Empreendimentos</button>
	    		<li class="item-menu"><i class="fas fa-tv"> </i><a class="link-menu" href="./sujerirEmpreendimento.jsp"> Sujerir Estabelecimento</a>
	    		<% if(usuario.getCargo() != null && (usuario.getCargo().equals("administrador") || usuario.getCargo().equals("auxiliar"))){ %>

		    		<li class="item-menu"><i class="fas fa-magnifying-glass-location"> </i><a class="link-menu" href="./buscarEmpreendimento.jsp"> Buscar Empreendimento</a>
		    		<li class="item-menu"><i class="fas fa-address-book"></i><a class="link-menu" href="./cadastrarEmpreendimento.jsp"> Cadastrar Estabelecimento</a>
		    		<li class="item-menu"><i class="fas fa-folder"></i><a class="link-menu" href="./sujestoes.jsp"> Painel de Sujestão</a>
		    		<li class="item-menu"><i class="fas fa-object-group"></i><a class="link-menu" href="./atualizar.jsp"> Novo(a) Ator/Categoria</a>
		    		
		    	<% }%>
	    		<% if(usuario.getCargo() != null && usuario.getCargo().equals("administrador") ){ %>
	    			<li class="item-menu"><i class="fas fa-cogs"></i><a class="link-menu" href="./permissoes.jsp"> Permissões</a>
	    		<% }%>
	    	</ul>
		</div>
		<section class="aba-filtro">
			<div class="filtro-header">
				<h2 class="filtro-title"><i class="fas fa-filter"></i> Filtro</h2>
				<button id="btn-close" onclick="filtroClose()"><i class="fas fa-close"></i></button>
			</div>
			<form class="form-filtro">
				<div class="encapsular">
					<label class="form-label" for="nome-estabeleciemnto">Nome Estabelecimento: </label>
		    		<input type="text" id="nome-estabeleciemnto" >	 
				</div>
				<div class="encapsular">
					<label class="form-label" for="cidade-estabeleciemnto">Cidade: </label>
		    		<input type="text" id="cidade-estabeleciemnto" >	 
				</div>
				<p class="ator-title">Atores</p>
				<div class="atores-opcao">
					<div class="separar">
			    		<input type="checkbox" id="" class="form-checkbox">	 
						<label class="form-label" for="">Fomento </label>
					</div>
					<div class="separar">
			    		<input type="checkbox" id="" class="form-checkbox">	 
						<label class="form-label" for="">Institucional </label>
					</div>
					<div class="separar">
			    		<input type="checkbox" id="" class="form-checkbox">	 
						<label class="form-label" for="">Empresarial </label>
					</div>
					<div class="separar">
			    		<input type="checkbox" id="" class="form-checkbox">	 
						<label class="form-label" for="">Habitatis de Inovação </label>
					</div>
					<div class="separar">
			    		<input type="checkbox" id="" class="form-checkbox">	 
						<label class="form-label" for="">Conhecimento </label>
					</div>
					<div class="separar">
			    		<input type="checkbox" id="" class="form-checkbox">	 
						<label class="form-label" for="">Público </label>
					</div>
				</div>
				<input type="submit" id="fechar-filtro" value="Aplicar Filtro">
			</form>
		</section>
    	<div id="map"></div>
    </section>
</body>
<script type="text/javascript" src="./assets/scripts/mapaLogin.js"></script>
<script type="text/javascript" src="./assets/scripts/abrirFechar.js"></script>
</html>