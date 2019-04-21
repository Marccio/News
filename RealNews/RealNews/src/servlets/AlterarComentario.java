package br.usjt.projetoWeb.servlets;

import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.usjt.projetoWeb.model.Comentario;
import br.usjt.projetoWeb.service.ComentarioService;

/**
 * Servlet implementation class AlterarComentario
 */
@WebServlet("/AlterarComentario.do")
public class AlterarComentario extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlterarComentario() {
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
		ComentarioService comentarioService = new ComentarioService();
		
		int idComentario = Integer.parseInt(request.getParameter("idComentario"));
		Comentario comentario = comentarioService.consultar(idComentario);
		
		comentario.setTexto(request.getParameter("texto"));
		
		comentarioService.alterar(comentario);
	}

}
