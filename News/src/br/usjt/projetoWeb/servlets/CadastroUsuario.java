package br.usjt.projetoWeb.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.usjt.projetoWeb.model.Usuario;
import br.usjt.projetoWeb.service.UsuarioService;

/**
 * Servlet implementation class CadastroUsuario
 */
@WebServlet("/CadastroUsuario.do")
public class CadastroUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroUsuario() {
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
		UsuarioService usuarioService = new UsuarioService();
		
		String email = request.getParameter("email");
		String nome = request.getParameter("nomeCompleto");
		String senha = request.getParameter("senha");
		String perfil = "Visitante";
		
		Usuario usuario = new Usuario(email, nome, senha, perfil);
		usuarioService.cadastrar(usuario);
		
		
    	response.sendRedirect("index.jsp");
	}

}
