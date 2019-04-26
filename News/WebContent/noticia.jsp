<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.usjt.projetoWeb.service.NoticiaService"%>
<%@ page import="br.usjt.projetoWeb.model.Noticia"%>
<%@ page import="br.usjt.projetoWeb.service.ComentarioService"%>
<%@ page import="br.usjt.projetoWeb.model.Comentario"%>
<%@ page import="java.util.ArrayList"%>
<%@ include file="Navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="Resources/css/style.css">
</head>
<body>
	<%
		int id = (int) Integer.parseInt(request.getParameter("id"));
		NoticiaService ns = new NoticiaService();
		Noticia noticia = ns.consultar(id);
	%>

	<div class="container-fluid padding">
		<div class="row text-center">
			<div class="col-12">
				<h1 class="display-4"><%=noticia.getTitulo()%></h1>
				<br>
			</div>
			<hr />
		</div>
	</div>
	<div align="center">
		<p>
			<img class="card-img-mid" src=<%=noticia.getImg()%>>
		</p>
	</div>
	<br>
	<div class="container-fluid padding" style="width: 75%">
		<div class="row text-center">
			<div class="col-12">
				<h4>
					<b><%=noticia.getResumo()%></b>
				</h4>
				<br>
			</div>
			<hr />
		</div>
	</div>
	<div class="container-fluid padding" style="width: 75%">
		<div class="row text-center">
			<div class="col-12">
				<h5><%=noticia.getTexto()%></h5>
			</div>
			<hr />
		</div>
	</div>

	<hr>


	<div>
		<div class="container-fluid">
			<div>
				<h3 align="center">Comentarios</h3>
				<br>
			</div>
			<%String email="";
			if(usuario!=null){
				email = usuario.getEmail();
			}	
			%>
			<div align="center">

				<%
					ComentarioService cs = new ComentarioService();
					ArrayList<Comentario> lista = cs.listarComentarios(id);
					for (Comentario comentario : lista) {
						String emailC = comentario.getEmail();
						String textoC = comentario.getTexto();
				%>
		
				<div ><img src="Resources/avatar.png" alt="avatar" style= "vertical-align:middle; width: 50px; height: 50px ;border-radius: 50%; text-aling:center;">  <%=emailC%></div>
				<br>
				<p style= "font-size:22"><%=textoC%></p>
				<%
					}
				%>
				<hr>
				
				<%if(usuario !=null && usuario.getPerfil().toLowerCase().equals("administrador")){ %>
					<hr>
						<div style="text-align:center">
							<button type="buton" class=" btn btn-primary " style="margin-rigth:15px" onclick="">Exlcuir a notica</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal" >Editar a noticia</button>
						</div><br>
					<hr>	
				<%} %>
							
				<form action="CadastroComentario.do?id=<%=id%>&email=<%=email%>"
					method="post" name="id" name="email">
					<div class="form-group" style="text-align:center">
						<%	if (usuario == null) { %>
							<hr>
								<div ><h4 href="#">Faça o login ou cadastre-se para comentar</h4></div><br>
							
							<% }%>
							
						<%
							if (usuario != null) {
						%>
						<div ><img src="Resources/avatar.png" alt="avatar" style= "vertical-align:middle; width: 50px; height: 50px ;border-radius: 50%; text-aling:center;">  <%= usuario.getEmail()%></div>
						<input type="text" id=comentario name="texto" style="width: 500px"><br>
						<button type="submit"
							class=" btn btn-block mybtn btn-primary tx-tfm" name="Comenta" style="width: 500px;text-align:center; margin-top:5px;margin-left:25%;width: 50%;" >Comenta</button><br>
						<%
							}
						%>
					</div>
				</form>

			</div>
		</div>
	</div>

</body>
</html>