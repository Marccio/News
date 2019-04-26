<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.usjt.projetoWeb.model.Usuario"%>

<head>
<meta charset="ISO-8859-1">
<title>Real News</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="index.css">
   
    <script>
   function cadastrado() {
      alert( "Cadastrado com sucesso!");
  }
</script>

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
					<li class="nav-item active"><a class="nav-link" href="#"data-toggle="modal" data-target="#loginModal">Login</a></li>
					<li class="nav-item active"><a class="nav-link" href="#" data-toggle="modal" data-target="#cadastroModal">Cadastre-se</a></li>
				</ul>
			</div>
			<%
				} else {
					if (usuario.getPerfil().toLowerCase().equals("administrador")) {
			%>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="nav navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link">Logado como Administrador</a></li>
					<li class="nav-item active"><a class="nav-link" href="#">Criar Notícia</a></li>
					<li class="nav-item active"><a class="nav-link" href="#">Notícias</a></li>
					<li class="nav-item active"><a class="nav-link" href="logout.do">Sair</a></li>
				</ul>
			</div>

			<%
				} else {
			%>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="nav navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link">Logado como ${usuario.nome}</a></li>
					<li class="nav-item active"><a class="nav-link" href="logout.do">Sair</a></li>

				</ul>
			</div>

			<%
				}
			}
			%>
		</div>
	</nav>
			
					 <!-- Modal Login-->

    <div class="modal fade" id="loginModal">
            <div class="modal-dialog modal-dialog-centered" role="document">
                 <div class="modal-content">
                     <div class="modal-header">
                        <h1 class="logo mb-3">Login</h1>
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
                                                    <form action="Login.do" method="post" name="login">
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1" style="width: 50%;text-align:center;margin-left:25%;">Email</label> <input
                                                                type="text" name="email" class="form-control" id="email"
                                                                aria-describedby="emailHelp" placeholder="Email" style="width:300px;margin-left:15%;" >
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1"style="width: 50%;text-align:center;margin-left:25%;">Senha</label> <input
                                                                type="password" name="password" id="password"
                                                                class="form-control" aria-describedby="emailHelp"
                                                                placeholder="Senha" style="width:300px;margin-left:15%;">
                                                        </div>
                                                        <div class="col-md-12 text-center ">
                                                            <button type="submit"
                                                                class=" btn btn-block mybtn btn-primary tx-tfm" style="margin-left:25%;width: 50%;" onclick="<%=response.sendRedirect("index.jsp") %>">Login</button>
                                                        </div>
                                                        <div class="col-md-12 ">
                                                                <div class="login-or">
                                                                    <hr class="hr-or">
                                                                    <span class="span-or">ou</span>
                                                                </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <p class="text-center">
                                                                Você não tem uma conta? <br>
                                                                <a href="#" id="signup" data-toggle="modal" data-target="#cadastroModal" data-dismiss="modal">Cadastre-se agora</a>
                                                            </p>
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
		 <!-- Modal Cadastre-se-->
	<div class="modal fade" id="cadastroModal">
            <div class="modal-dialog modal-dialog-centered" role="document">
                 <div class="modal-content">
                     <div class="modal-header">
                        <h1 class="logo mb-3">Cadastro</h1>
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
                                                    <form action="CadastroUsuario.do" method="post" name="Cadastro">
														<div class="form-group">
                                                            <label for="inputName" style="width: 50%;text-align:center;margin-left:25%;">Nome Completo</label> <input
                                                                type="name" name="nomeCompleto" class="form-control" id="nameC"
                                                                aria-describedby="emailHelp" placeholder="Nome" style="width:300px;margin-left:15%;"  >
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1" style="width: 50%;text-align:center;margin-left:25%;">Email</label> <input
                                                                type="text" name="email" class="form-control" id="emailC"
                                                                aria-describedby="emailHelp" placeholder="Email"style="width:300px;margin-left:15%;"  >
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1" style="width: 50%;text-align:center;margin-left:25%;">Senha</label><input
                                                                type="password" name="senha" id="passwordC"
                                                                class="form-control" aria-describedby="emailHelp"
                                                                placeholder="Senha" style="width:300px;margin-left:15%;">
                                                        </div>
                                                        <div class="col-md-12 text-center ">
                                                            <button type="submit"
                                                                class=" btn btn-block mybtn btn-primary tx-tfm" style="margin-left:25%;width: 50%;" data-toggle="modal" data-target="#loginModal" onclick="cadastrado()" >Cadastre-se</button>
                                                        </div>

                                                        <div class="col-md-12 ">
                                                                <div class="login-or">
                                                                    <hr class="hr-or">
                                                                    <span class="span-or">ou</span>
                                                                </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <p class="text-center" style="">
                                                                Você já tem uma conta? <br>
                                                                <a href="#" id="signup" data-toggle="modal" data-target="#loginModal" data-dismiss="modal" >Acesse agora</a>
                                                            </p>
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

</body>