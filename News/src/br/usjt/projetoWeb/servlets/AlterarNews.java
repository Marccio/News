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
 * Servlet implementation class AlterarNews
 */
@WebServlet("/AlterarNews.do")
public class AlterarNews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlterarNews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
NoticiaService noticiaService = new NoticiaService();
		request.getSession();
		
		int idNoticia = Integer.parseInt(request.getParameter("idNoticia"));
		Noticia noticia = noticiaService.consultar(idNoticia);
		
		noticia.setTitulo((String)request.getSession().getAttribute("titulo"));
		noticia.setResumo((String)request.getSession().getAttribute("resumo"));
		noticia.setTexto((String)request.getSession().getAttribute("texto"));
		noticia.setEmail((String)request.getSession().getAttribute("email"));
		noticia.setImg("Resources/Padrao.jpg");
		
		noticiaService.alterar(noticia);
		
		response.sendRedirect("/EditarNoticia.jsp?id="+idNoticia+"name="+"id");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
