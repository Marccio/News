package br.usjt.projetoWeb.service;

import br.usjt.projetoWeb.DAO.ComentarioDAO;
import br.usjt.projetoWeb.model.Comentario;

public class ComentarioService {
	
	ComentarioDAO comentarioDAO;
	
	public ComentarioService() {
		this.comentarioDAO = new ComentarioDAO();
	}
	
	public void cadastrar(Comentario comentario) {
		this.comentarioDAO.cadastrar(comentario);
	}
	
	public void consultar(int id) {
		this.comentarioDAO.consultar(id);
	}
	
	public void excluir(int id) {
		this.comentarioDAO.excluir(id);
	}
	
	public void alterar(Comentario comentario) {
		this.comentarioDAO.alterar(comentario);
	}
}
