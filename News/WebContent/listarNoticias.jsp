<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp"%>	
<%@ page import="br.usjt.projetoWeb.model.Noticia"%>
<%@ page import="br.usjt.projetoWeb.service.NoticiaService"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Real news</title>
<!-- Latest compiled and minified CSS -->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
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


</head>
<body>
	<div class="container-fluid">
		<div class="row">


			<div class="col-md-12">
				<h4>Noticias cadastradas</h4>
				<div class="table-responsive">


					<table id="mytable" class="table table-bordred table-striped">

						<thead>
							<th>Id</th>
							<th>Titulo</th>
							<th>Autor</th>
							<th>Editar</th>
							<th>Delete</th>
						</thead>
						<tbody>
							<%
								NoticiaService noticiaService = new NoticiaService();
								ArrayList<Integer> lista = noticiaService.listarIds();
								for (int i = 0; i < lista.size(); i++) {
									int id = lista.get(i);
									Noticia noticia = noticiaService.consultar(id);
							%>
							<tr>
								<td><%=id%></td>
								<td><%=noticia.getTitulo()%></td>
								<td><%=noticia.getEmail()%></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Editar" action="/AlterarNews.do" method="post">
										<button class="btn btn-primary btn-xs" data-title="Edit"
											data-toggle="modal" data-target="#edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
									</p></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Deletar" action="/ExcluirNews.do" method="post">
										<button class="btn btn-danger d-flex" data-title="Delete"
											data-toggle="modal" data-target="#modalExcluir" >
										</button>
									</p></td>
							</tr>
							<%
								}
							%>

						</tbody>

					</table>
				</div>

			</div>
		</div>
	</div>
<div class="modal fade" id="modalExcluir">
            <div class="modal-dialog modal-dialog-centered" role="document">
                 <div class="modal-content">
                     <div class="modal-header">
                        <h1 class="logo mb-3">Excluir</h1>
                         <button type="button" class="close" data-dismiss="modal">
							<span>
								&times;							
							</span>
						 </button>
                     </div>
                     <div class="modal-body">
                            <div class="container">
                                    <div class="row">
                                            <div id="first">
                                                <div class="myform form ">
                                                    <form action="ExcluirNews.do" method="post" name="Cadastro">
															<div class="modal-body">
       									 							<p>Tem certeza que deseja excluir?</p>
      														</div>
                                                        <div class="modal-footer ">
                                                            <button type="submit"
                                                                class=" btn btn-primary " >Exluir</button>
                                                                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                        </div>
                                                        	
                                                    </form>
                            						
                                                </div>
                                            </div>
                                        
                                    </div>
                                </div>
                     </div>
                 </div>
             </div>
         </div>

	<script>
		$(document).ready(function() {
			$("#mytable #checkall").click(function() {
				if ($("#mytable #checkall").is(':checked')) {
					$("#mytable input[type=checkbox]").each(function() {
						$(this).prop("checked", true);
					});

				} else {
					$("#mytable input[type=checkbox]").each(function() {
						$(this).prop("checked", false);
					});
				}
			});

			$("[data-toggle=tooltip]").tooltip();
		});
	</script>

</body>
</html>