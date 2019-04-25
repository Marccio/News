package br.usjt.projetoWeb.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.usjt.projetoWeb.model.Noticia;
import br.usjt.projetoWeb.service.NoticiaService;

/**
 * Servlet implementation class PegarNoticias
 */
@WebServlet("/PegarNoticias.do")
public class PegarNoticias extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PegarNoticias() {
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
		
		ArrayList<Integer> lista = noticiaService.listarNoticias();
		ArrayList<Noticia> noticias = new ArrayList<>();
		
		for (int i=lista.size(); i>=lista.size()-8; i--) {
			Noticia noticia = noticiaService.consultar(lista.get(i));
			noticias.add(noticia);
		}
		
		request.getSession().setAttribute("arrayNoticia", noticias);
	}

}
