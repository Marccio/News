package br.usjt.projetoWeb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import br.usjt.projetoWeb.model.Comentario;

public class ComentarioDao {

	Connection conexao;

	public void cadastrar(Comentario comentario) {

		try {
			this.conexao = ConnectionFactory.conectar();

			String sql = "INSERT INTO comentario (id_noticia, email, texto) VALUES (?,?,?)";

			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setInt(1, comentario.getIdNoticia());
			ps.setString(2, comentario.getEmail());
			ps.setString(3, comentario.getTexto());

			ps.execute();
			ps.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	public Comentario consultar(int id) {

		try {
			this.conexao = ConnectionFactory.conectar();

			String sql = "SELECT * FROM comentario WHERE id= ?";
			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				Comentario comentario = new Comentario();
				comentario.setIdNoticia(rs.getInt("id_noticia"));
				comentario.setEmail(rs.getString("email"));
				comentario.setTexto(rs.getTexto("texto"));

				return comentario;
			} else
				return null;
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	public void excluir(int id) {
		try {
			String sql = "DELETE * FROM comentario WHERE id=?";

			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setInt(1, id);
			ps.execute();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	public void alterar(Comentario novo) {
		try {
			String sql = "UPDATE comentario SET id_noticia=?, email=?, texto=? WHERE id=?";

			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setInt(1, novo.getIdNoticia());
			ps.setString(2, novo.getEmail());
			ps.setString(3, novo.getTexto());
			ps.setInt(4, novo.getIdComentario());

			ps.execute();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}
}
