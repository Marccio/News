package br.usjt.projetoWeb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import br.usjt.projetoWeb.model.Usuario;

public class UsuarioDao {
	Connection conexao;
	
	public void cadastrar(Usuario usuario) {
		try {
			this.conexao = ConnectionFactory.conectar();
			
			String sql = "INSERT INTO usuario (email,nome, senha, perfil) VALUES (?,?,?,?)";
			
			PreparedStatement ps = this.conexao.prepareStatement(sql);
			
			ps.setString(1, usuario.getEmail());
			ps.setString(2, usuario.getNome());
			ps.setString(3, usuario.getSenha());
			ps.setString(4, usuario.getPerfil());
			
			ps.execute();
			ps.close();
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		
		public Usuario consultar(String email) {
			try {
				this.conexao = ConnectionFactory.conectar();
				
				String sql = "SELECT * usuario WHERE email=?";
				PreparedStatement ps = this.conexao.prepareStatement(sql);
				
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				
				if(rs.next()) {
					Usuario usuario = new Usuario();
					usuario.setEmail(rs.getString("email"));
					usuario.setNome(rs.getString("nome"));
					usuario.setSenha(rs.getString("senha"));
					usuario.setPerfil(rs.getString("perfil"));
					
					return usuario;
				}else return null;
			}catch(SQLException ex) {
				ex.printStackTrace();
			}
		}
		
		public void excluir(String email) {
			try {
				String sql = "DELETE * FROM usuario WHERE email=?";
				
				PreparedStatement ps = this.conexao.prepareStatement(sql);
				
				ps.setString(1, email);
				ps.execute();
			}catch(SQLException ex) {
				ex.printStackTrace();
			}
		}
		
		public void alterar(Usuario novo) {
			try {
				String sql = "UPDATE usuario SET nome=?, senha=?,perfil=? WHERE email=?";
				
				PreparedStatement ps = this.conexao.prepareStatement(sql);
				
				ps.setString(1, novo.getNome());
				ps.setString(2, novo.getSenha());
				ps.setString(3, novo.getPerfil());
				
				ps.execute();
			}catch(SQLException ex) {
				ex.printStackTrace();
			}
		}
	}
}
