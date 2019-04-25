<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.usjt.projetoWeb.service.NoticiaService"%>
<%@ page import="br.usjt.projetoWeb.model.Noticia"%>
<%@ include file="Navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="Resources/css/style.css">
</head>
<body>
<%NoticiaService ns = new NoticiaService();
	Noticia noticia = ns.consultar(1);
	%>

<div class="container-fluid padding">
    <div class="row text-center">
        <div class="col-12">
            <h1 class="display-4"><u><%=noticia.getTitulo() %></u></h1><br>
        </div>
        <hr/>
    </div>
</div>
<div align="center">
	<p><img class="card-img-mid" src=<%=noticia.getImg()%>></p>
</div><br>
<div class="container-fluid padding" style = width:75%>
    <div class="row text-center">
        <div class="col-12">
            <h4><b><%=noticia.getResumo() %></b></h4><br>
        </div>
        <hr/>
    </div>
</div>
<div class="container-fluid padding" style = width:75%>
    <div class="row text-center">
        <div class="col-12">
            <h5><%=noticia.getTexto() %></h5>
        </div>
        <hr/>
    </div>
</div>			

<hr>

<div>
<div class="container-fluid">
	<div>
		<h3 align="center"> Comentarios </h3><br>
	</div>	
	<div align="center" >
		<label for="comentario" ><h4> ${usuario.nome}</h4></label><br>
		<input type="text" id=comentario style=width:500px>
	</div>
</div>

</div>

</body>
</html>