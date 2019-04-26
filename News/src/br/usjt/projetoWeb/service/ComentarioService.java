package br.usjt.projetoWeb.service;

import java.util.ArrayList;

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
	
	public Comentario consultar(int id) {
		return this.comentarioDAO.consultar(id);
	}
	
	public void excluir(int id) {
		this.comentarioDAO.excluir(id);
	}
	
	public void alterar(Comentario comentario) {
		this.comentarioDAO.alterar(comentario);
	}
	
	public ArrayList<Comentario> listarComentarios(int idNoticia){
		return this.comentarioDAO.listarComentarios(idNoticia);
	}
}
