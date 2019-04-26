package br.usjt.projetoWeb.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.usjt.projetoWeb.model.Comentario;
import br.usjt.projetoWeb.service.ComentarioService;

/**
 * Servlet implementation class CadastroComentario
 */
@WebServlet("/CadastroComentario.do")
public class CadastroComentario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CadastroComentario() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ComentarioService comentarioService = new ComentarioService();
		String email = request.getParameter("email");
		String texto = request.getParameter("texto");
		
		System.out.println(email);
		System.out.println(texto);
		
		Comentario comentario = new Comentario(Integer.parseInt(request.getParameter("id")), email, texto);
		comentarioService.cadastrar(comentario);
		
		RequestDispatcher menu = request.getRequestDispatcher("/index.jsp");
    	menu.forward(request, response);
		
	}

}
