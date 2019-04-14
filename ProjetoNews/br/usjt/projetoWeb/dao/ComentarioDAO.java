package br.usjt.projetoWeb.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import br.usjt.projetoWeb.model.Comentario;

public class ComentarioDAO {

	Connection conexao;

	public int cadastrar(Comentario comentario) {

		try {
			this.conexao = ConnectionFactory.conectar();

			String sql = "INSERT INTO comentario (id_noticia, email, texto) VALUES (?,?,?)";

			PreparedStatement ps = this.conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			ps.setInt(1, comentario.getIdNoticia());
			ps.setString(2, comentario.getEmail());
			ps.setString(3, comentario.getTexto());

			ps.execute();

			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				int idGerado = rs.getInt(1);
				return idGerado;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return -1;
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
				comentario.setTexto(rs.getString("texto"));

				return comentario;
			} else
				return null;
		} catch (SQLException ex) {
			ex.printStackTrace();
		} return null;
	}

	public void excluir(int id) {
		try {
			String sql = "DELETE FROM comentario WHERE id=?";

			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setInt(1, id);
			ps.execute();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	public void alterar(Comentario comentario) {
		try {
			String sql = "UPDATE comentario SET id_noticia=?, email=?, texto=? WHERE id=?";

			PreparedStatement ps = this.conexao.prepareStatement(sql);

			ps.setInt(1, comentario.getIdNoticia());
			ps.setString(2, comentario.getEmail());
			ps.setString(3, comentario.getTexto());
			ps.setInt(4, comentario.getIdComentario());

			ps.execute();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}
}
