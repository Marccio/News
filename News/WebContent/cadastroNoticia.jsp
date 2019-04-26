<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Real News here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container-fluid " style="heigth:100%">
		<div class="row">
			<div class="col-md-12">
				<div class="card-group" id="accordion">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><span class="glyphicon glyphicon-file">
								</span>Nova Noticia</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Titulo"
												required />
										</div>
										<div class="form-group">
											<textarea class="form-control" placeholder="Resumo" rows="3"
												required></textarea>
										</div>
										<div class="form-group">
											<textarea class="form-control" placeholder="Texto" rows="7"
												required></textarea>
										</div>
										<div class="col-md-12 text-center ">
											<button type="submit"
												class=" btn btn-block mybtn btn-primary tx-tfm"
												style="margin-left: 25%; width: 50%;">Cadastrar noticia</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>