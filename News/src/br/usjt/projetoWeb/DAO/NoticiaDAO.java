package br.usjt.projetoWeb.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.usjt.projetoWeb.model.Noticia;

public class NoticiaDAO {
	
	private static ArrayList<Integer> repositorio = new ArrayList<>();

	Connection conexao;

	public int cadastrar(Noticia noticia) {
		try {
			this.conexao = ConnectionFactory.conectar();

			String sql = "INSERT INTO noticia (titulo, resumo, texto) VALUES (?,?,?)";

			PreparedStatement ps = this.conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			ps.setString(1, noticia.getTitulo());
			ps.setString(2, noticia.getResumo());
			ps.setString(3, noticia.getTexto());

			ps.execute();

			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				int idGerado = rs.getInt(1);
				repositorio.add(idGerado);
				return idGerado;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return -1;
	}

	public Noticia consultar(int id) {
		try {
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
		} else return null;
		} catch(SQLException ex)	{
		ex.printStackTrace();
		}
		return null;
	}

	public void excluir(int id) {
		try {
			String sql = "DELETE FROM noticia WHERE id=?";
			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setInt(1, id);
			ps.execute();
			
			for(int i=0; i<=repositorio.size(); i++) {
				if(repositorio.get(i) == id) {
				repositorio.remove(i);
				}
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	public void alterar(Noticia noticia) {
		try {
			String sql = "UPDATE noticia SET titulo=?, resumo=?, texto=? WHERE id=?";
			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setString(1, noticia.getTitulo());
			ps.setString(2, noticia.getResumo());
			ps.setString(3, noticia.getTexto());
			ps.setInt(4, noticia.getIdNoticia());

			ps.execute();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}
	
	public ArrayList<Integer> buscarNoticia(String titulo){
		try {
			String sql = "SELECT id FROM noticia WHERE ucase(titulo) LIKE '%?%'";
			PreparedStatement ps = this.conexao.prepareStatement(sql);
			
			ps.setString(1, titulo);
			
			ResultSet rs = ps.executeQuery();
			ArrayList<Integer> lista = new ArrayList<>();
			while(rs.next()) {
				lista.add(rs.getInt("id"));
			}
			return lista;
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<Integer> listarNoticias() {
		return repositorio;
		
	}
}
