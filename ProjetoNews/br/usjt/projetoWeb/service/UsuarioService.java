package br.usjt.projetoWeb.service;

import br.usjt.projetoWeb.DAO.UsuarioDAO;
import br.usjt.projetoWeb.model.Usuario;

public class UsuarioService {
	
	UsuarioDAO usuarioDAO;
	
	public UsuarioService() {
		this.usuarioDAO = new UsuarioDAO();
	}
	
	public int cadastrar(Usuario usuario) {
		return this.usuarioDAO.cadastrar(usuario);
	}
	
	public Usuario consultar(String email) {
		return this.usuarioDAO.consultar(email);
	}
	
	public void excluir(String email) {
		this.usuarioDAO.excluir(email);
	}
	
	public void alterar(Usuario usuario) {
		this.usuarioDAO.alterar(usuario);
	}
}
