package br.usjt.projetoWeb.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.usjt.projetoWeb.model.Usuario;
import br.usjt.projetoWeb.service.UsuarioService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UsuarioService usuarioService;

	/**
	 * Default constructor.
	 */
	public Login() {
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
		usuarioService = new UsuarioService();

		String email = request.getParameter("email");
		String senha = request.getParameter("password");

		Usuario usuario = usuarioService.consultar(email);

		if (usuario != null &&
				usuario.getSenha() != null && senha.equals(usuario.getSenha())) {
			request.getSession().setAttribute("usuario", usuario);
        	RequestDispatcher menu = request.getRequestDispatcher("/index.jsp");
        	menu.forward(request, response);
		} else {
        	request.getSession().invalidate();
        	RequestDispatcher menu = request.getRequestDispatcher("/index.jsp");
        	menu.forward(request, response);
		}
	}

}
