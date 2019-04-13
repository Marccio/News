package br.usjt.projetoWeb.service;

import br.usjt.projetoWeb.DAO.NoticiaDAO;
import br.usjt.projetoWeb.model.Noticia;

public class NoticiaService {
	
	NoticiaDAO noticiaDAO;
	
	public NoticiaService() {
		this.noticiaDAO = new NoticiaDAO();
	}
	
	public void cadastrar(Noticia noticia) {
		this.noticiaDAO.cadastrar(noticia);
	}
	
	public void consultar(int id) {
		this.noticiaDAO.consultar(id);
	}
	
	public void excluir(int id) {
		this.noticiaDAO.excluir(id);
	}
	
	public void alterar(Noticia noticia) {
		this.noticiaDAO.alterar(noticia);
	}

}
