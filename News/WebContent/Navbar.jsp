<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.usjt.projetoWeb.model.Usuario"%>

<head>
<meta charset="ISO-8859-1">
<title>Real News</title>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><h1>RealNews</h1></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive">
				<span class="navbar-toggler-icon"></span>
			</button>
			<%
				
				Usuario usuario = (Usuario) session.getAttribute("usuario");
				if (usuario == null) {
			%>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="nav navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#"
						data-toggle="modal" data-target="#loginModal">Login</a></li>
					<li class="nav-item active"><a class="nav-link" href="#"
						data-toggle="modal" data-target="#cadastroModal">Cadastre-se</a></li>
				</ul>
			</div>
			<%
				} else if(usuario.getPerfil()=="Administrador"){
			%>
				<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="nav navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link">Logado como ${usuario.nome}</a></li>
					<li class="nav-item active"><a class="nav-link" href="#" >Criar Notícia</a></li>
					<li class="nav-item active"><a class="nav-link" href="logout.do" >Sair</a></li>
					
				</ul>
			</div>

			<%
				} else{
			%>
				<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="nav navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link">Logado como ${usuario.nome}</a></li>
					<li class="nav-item active"><a class="nav-link" href="logout.do" >Sair</a></li>
					
				</ul>
			</div>
			
			<%} %>
		</div>
	</nav>
</body>