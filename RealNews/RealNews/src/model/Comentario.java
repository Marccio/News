package br.usjt.projetoWeb.model;

public class Comentario {
	
	int idComentario, idNoticia;
	String email, texto;
	
	public Comentario() {
		
	}
	
	public Comentario(int idComentario, int idNoticia, String email, String texto) {
		this.idComentario = idComentario;
		this.idNoticia = idNoticia;
		this.email = email;
		this.texto = texto;
	}

	public int getIdComentario() {
		return idComentario;
	}

	public void setIdComentario(int idComentario) {
		this.idComentario = idComentario;
	}

	public int getIdNoticia() {
		return idNoticia;
	}

	public void setIdNoticia(int idNoticia) {
		this.idNoticia = idNoticia;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}
	
	
}
