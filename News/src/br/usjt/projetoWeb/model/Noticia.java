package br.usjt.projetoWeb.model;

public class Noticia {
	
	private int idNoticia;
	private String titulo, resumo, texto, email, img;
	
	public Noticia() {
		
	}
	
	public Noticia(int idNoticia, String titulo, String resumo, String texto, String email, String img) {
		this.idNoticia = idNoticia;
		this.titulo = titulo;
		this.resumo = resumo;
		this.texto = texto;
		this.email = email;
		this.img = img;
	}
	
	public Noticia(String titulo, String resumo, String texto) {
		this.titulo = titulo;
		this.resumo = resumo;
		this.texto = texto;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getIdNoticia() {
		return idNoticia;
	}

	public void setIdNoticia(int idNoticia) {
		this.idNoticia = idNoticia;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getResumo() {
		return resumo;
	}

	public void setResumo(String resumo) {
		this.resumo = resumo;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
}
