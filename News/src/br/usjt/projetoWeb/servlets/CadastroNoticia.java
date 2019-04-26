package br.usjt.projetoWeb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.usjt.projetoWeb.model.Noticia;
import br.usjt.projetoWeb.service.NoticiaService;

/**
 * Servlet implementation class CadastroNews
 */
@WebServlet("/CadastroNoticia.do")
public class CadastroNoticia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroNoticia() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NoticiaService noticiaService = new NoticiaService();
		
		String titulo = request.getParameter("titulo");
		String resumo = request.getParameter("resumo");
		String texto = request.getParameter("texto");
		String email = request.getParameter("email");
		
		Noticia noticia = new Noticia(titulo, resumo, texto, email, "Resources/Padrao.jpg");
		noticiaService.cadastrar(noticia);
		
			response.sendRedirect("index.jsp");
		 
	}

}
