package br.usjt.projetoWeb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import br.usjt.projetoWeb.model.Noticia;

public class NoticiaDao {

	Connection conexao;

	public void cadastrar(Noticia noticia) {
		try {
			this.conexao = ConnectionFactory.conectar();

			String sql = "INSERT INTO noticia (titulo, resumo, texto) VALUES (?,?,?)";

			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setString(1, noticia.getTitulo());
			ps.setString(2, noticia.getResumo());
			ps.setString(3, noticia.getTexto());

			ps.execute();
			ps.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	public Noticia consultar(int id) {
		this.conexao = ConnectionFactory.conectar();
		
		String sql = "SELECT * FROM noticia WHERE id=?";
		PreparedStatement ps = this.conexao.prepareStatement(sql);
		
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			Noticia noticia = new Noticia();
			noticia.setTitulo(rs.getString("titulo"));
			noticia.setResumo(rs.getString("resumo"));
			noticia.setTexto(rs.getString("texto"));
			
			return noticia;	
		}else return null;
	}catch(

	SQLException ex)
	{
		ex.printStackTrace();
	}

	public void excluir(int id) {
		try {
			String sql = "DELETE * FROM noticia WHERE id=?";
			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setInt(1, id);
			ps.execute();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	public void alterar(Noticia novo) {
		try {
			String sql = "UPDATE noticia SET titulo=?, resumo=?, texto=? WHERE id=?";
			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setString(1, novo.getTitulo());
			ps.setString(2, novo.getResumo());
			ps.setString(3, novo.getTexto());
			ps.setInt(4, novo.getIdNoticia());

			ps.execute();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}
}
