<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Navbar.jsp"%>
<%@ page import="br.usjt.projetoWeb.model.Noticia" %>
<%@ page import="br.usjt.projetoWeb.service.NoticiaService"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>RealNews</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="index.css">
    
</head>
<body>

<% NoticiaService noticiaService = new NoticiaService();
	ArrayList<Integer> lista = noticiaService.listarIds();	
	%>

<div class="container">
    <div class="row mb-2">
        <div class="col-12 text-center pt-3">
        </div>
    </div>
    <div class="row">
        <!--Start include wrapper-->
        <div class="include-wrapper pb-5 col-12">
            <!--SECTION START-->
            <section class="row">
                <!--Start slider news-->
                <div class="col-12 col-md-6 pb-0 pb-md-3 pt-2 pr-md-1">
                    <div id="featured" class="carousel slide carousel" data-ride="carousel">
                        <!--slider navigate-->
                        <ol class="carousel-indicators top-indicator">
                            <li data-target="#featured" data-slide-to="0" class="active"></li>
                            <li data-target="#featured" data-slide-to="1"></li>
                            <li data-target="#featured" data-slide-to="2"></li>
                            <li data-target="#featured" data-slide-to="3"></li>
                        </ol>
                        
                        <!--carousel inner-->
                        <div class="carousel-inner">
                            <!--Item slider-->
                            <%  int id = (int)lista.get(0);
                            Noticia noticia = noticiaService.consultar(id); 
                            %>
                            <div class="carousel-item active">
                                <div class="card border-0 rounded-0 text-light overflow zoom">
                                    <!--thumbnail-->
                                    <div class="position-relative">
                                        <!--thumbnail img-->
                                        <div class="ratio_left-cover-1 image-wrapper">
                                            <a href="noticia.jsp?id=<%=id %>" name="id">
                                                <img class="img-fluid h-75"
                                                     src="<%=noticia.getImg()%>"
                                                     alt=""
                                                     style="">
                                            </a>
                                        </div>
                                        <!--title-->
                                        <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                            <!--title and description-->
                                            <a href="noticia.jsp?id=<%=id %>" name="id">
                                                <h2 class="h3 post-title text-white my-1"><%=noticia.getTitulo() %></h2>
                                            </a>
                                            
                                        </div>
                                        <!--end title-->
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                            </div>
                            <%  int id1 = (int)lista.get(1);
                            Noticia noticia1 = noticiaService.consultar(id1); 
                            %>
                            <!--Item slider-->
                            <div class="carousel-item">
                                <div class="card border-0 rounded-0 text-light overflow zoom">
                                    <!--thumbnail-->
                                    <div class="position-relative">
                                        <!--thumbnail img-->
                                        <div class="ratio_left-cover-1 image-wrapper">
                                            <a href="noticia.jsp?id=<%=id1 %>" name="id">
                                                <img class="img-fluid h-75"
                                                     src="<%=noticia1.getImg()%>"
                                                     alt="">
                                            </a>
                                        </div>
                                        
                                        <!--title-->
                                        <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                            <!--title and description-->
                                            <a href="noticia.jsp?id=<%=id1 %>" name="id">
                                                <h2 class="h3 post-title text-white my-1"><%=noticia1.getTitulo() %></h2>
                                            </a>
                                        </div>
                                        <!--end title-->
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                            </div>
                            <%  int id2 = (int)lista.get(2);
                            Noticia noticia2 = noticiaService.consultar(id2); 
                            %>
                            <!--Item slider-->
                            <div class="carousel-item">
                                <div class="card border-0 rounded-0 text-light overflow zoom">
                                    <!--thumbnail-->
                                    <div class="position-relative">
                                        <!--thumbnail img-->
                                        <div class="ratio_left-cover-1 image-wrapper">
                                            <a href="noticia.jsp?id=<%=id2 %>" name="id">
                                                <img class="img-fluid h-75"
                                                     src="<%=noticia2.getImg()%>"
                                                     alt="">
                                            </a>
                                        </div>

                                        <!--title-->
                                        <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                            <!--title and description-->
                                            <a href="noticia.jsp?id=<%=id2 %>" name="id">
                                                <h2 class="h3 post-title text-white my-1"><%=noticia2.getTitulo() %></h2>
                                            </a>

                                            <!-- meta title -->
                                        </div>
                                        <!--end title-->
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                            </div>
                            <%  int id3 = (int)lista.get(3);
                            Noticia noticia3 = noticiaService.consultar(id3); 
                            %>
                            <!--Item slider-->
                            <div class="carousel-item">
                                <div class="card border-0 rounded-0 text-light overflow zoom">
                                    <!--thumbnail-->
                                    <div class="position-relative">
                                        <!--thumbnail img-->
                                        <div class="ratio_left-cover-1 image-wrapper">
                                            <a href="noticia.jsp?id=<%=id3 %>" name="id">
                                                <img class="img-fluid w-110 h-75"
                                                     src="<%=noticia3.getImg()%>"
                                                     alt="">
                                            </a>
                                        </div>

                                        <!--title-->
                                        <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                            <!--title and description-->
                                            <a href="noticia.jsp?id=<%=id3 %>" name="id">
                                                <h2 class="h3 post-title text-white my-1"><%=noticia3.getTitulo() %></h2>
                                            </a>
                                        </div>
                                        <!--end title-->
                                    </div>
                                    <!--end thumbnail-->
                                </div>
                            </div>
                            <!--end item slider-->
                        </div>
                        <!--end carousel inner-->
                    </div>
                    <!--navigation-->
                    <a class="carousel-control-prev" href="#featured" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Anterior</span>
                    </a>
                    <a class="carousel-control-next" href="#featured" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Próximo</span>
                    </a>
                </div>
                <!--End slider news-->
                
                <!--Start box news-->
                <%  int id4 = (int)lista.get(4);
                    Noticia noticia4 = noticiaService.consultar(id4); 
                    %>
                <div class="col-12 col-md-6 pt-2 pl-md-1 mb-3 mb-lg-4">
                    <div class="row">
                        <!--news box-->
                        <div class="col-6 pb-1 pt-0 pr-1" >
                            <div class="card border-0 rounded-0 text-white overflow zoom">
                                <!--thumbnail-->
                                <div class="position-relative">
                                    <!--thumbnail img-->
                                    <div class="ratio_right-cover-2 image-wrapper">
                                        <a href="noticia.jsp?id=<%=id4 %>" name="id">
                                            <img class="img-fluid h-45"
                                                 src="<%=noticia4.getImg()%>"
                                                 alt="">
                                        </a>
                                    </div>
                                    
                                    <!--title-->
                                    <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                        <!-- category -->
                                        <a class="p-1 badge badge-primary rounded-0" href="#"></a>

                                        <!--title and description-->
                                        <a href="noticia.jsp?id=<%=id4 %>" name="id">
                                            <h2 class="h5 text-white my-1"><%=noticia4.getTitulo() %></h2>
                                        </a>
                                    </div>
                                    <!--end title-->
                                </div>
                                <!--end thumbnail-->
                            </div>
                        </div>
                        <%  int id5 = (int)lista.get(5);
                            Noticia noticia5 = noticiaService.consultar(id5); 
                            %>
                        <!--news box-->
                        <div class="col-6 pb-1 pl-1 pt-0">
                            <div class="card border-0 rounded-0 text-white overflow zoom">
                                <!--thumbnail-->
                                <div class="position-relative">
                                    <!--thumbnail img-->
                                    <div class="ratio_right-cover-2 image-wrapper">
                                        <a href="noticia.jsp?id=<%=id5 %>" name="id">
                                            <img class="img-fluid h-45"
                                                 src="<%=noticia5.getImg()%>"
                                                 alt="">
                                        </a>
                                    </div>
                                    
                                    <!--title-->
                                    <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                        <!-- category -->
                                        <a class="p-1 badge badge-primary rounded-0" href="#"></a>

                                        <!--title and description-->
                                        <a href="noticia.jsp?id=<%=id5 %>" name="id">
                                            <h2 class="h5 text-white my-1"><%=noticia5.getTitulo() %></h2>
                                        </a>
                                    </div>
                                    <!--end title-->
                                </div>
                                <!--end thumbnail-->
                            </div>
                        </div>
                        <%  int id6 = (int)lista.get(6);
                            Noticia noticia6 = noticiaService.consultar(id6); 
                        	%>
                        <!--news box-->
                        <div class="col-6 pb-1 pr-1 pt-1">
                            <div class="card border-0 rounded-0 text-white overflow zoom">
                                <!--thumbnail-->
                                <div class="position-relative">
                                    <!--thumbnail img-->
                                    <div class="ratio_right-cover-2 image-wrapper">
                                        <a href="noticia.jsp?id=<%=id6 %>" name="id">
                                            <img class="img-fluid h-45"
                                                 src="<%=noticia6.getImg()%>"
                                                 alt="">
                                        </a>
                                    </div>
                                    
                                    <!--title-->
                                    <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                        <!-- category -->
                                        <a class="p-1 badge badge-primary rounded-0" href="#"></a>

                                        <!--title and description-->
                                        <a href="noticia.jsp?id=<%=id6 %>" name="id">
                                            <h2 class="h5 text-white my-1"><%=noticia6.getTitulo() %></h2>
                                        </a>
                                    </div>
                                    <!--end title-->
                                </div>
                                <!--end thumbnail-->
                            </div>
                        </div>
                        <%  int id7 = (int)lista.get(7);
                            Noticia noticia7 = noticiaService.consultar(id7); 
                            %>
                        <!--news box-->
                        <div class="col-6 pb-1 pl-1 pt-1">
                            <div class="card border-0 rounded-0 text-white overflow zoom">
                                <!--thumbnail-->
                                <div class="position-relative">
                                    <!--thumbnail img-->
                                    <div class="ratio_right-cover-2 image-wrapper">
                                        <a href="noticia.jsp?id=<%=id7 %>" name="id">
                                            <img class="img-fluid h-50 w-40"
                                                 src="<%=noticia7.getImg()%>"
                                                 alt=""
                                                 width="600"
                                                 height="600">
                                        </a>
                                    </div>
                                    
                                    <!--title-->
                                    <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                        <!-- category -->
                                        <a class="p-1 badge badge-primary rounded-0" href="#"></a>

                                        <!--title and description-->
                                        <a href=""noticia.jsp?id=<%=id7 %>" name="id"">
                                            <h2 class="h5 text-white my-1"><%=noticia7.getTitulo() %></h2>
                                        </a>
                                    </div>
                                    <!--end title-->
                                </div>
                                <!--end thumbnail-->
                            </div>
                        </div>
                        <!--end news box-->
                    </div>
                </div>
                <!--End box news-->
            </section>
            <!--END SECTION-->
        </div>
    </div>
</div>

</body>
</html>
