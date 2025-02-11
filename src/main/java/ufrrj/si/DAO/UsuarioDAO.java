package ufrrj.si.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ufrrj.si.conexao.Conexao;
import ufrrj.si.model.Usuario;

public class UsuarioDAO {
	public void cadastrarUsuario(Usuario u) throws ClassNotFoundException {
		String sql = "INSERT INTO usuario (nome, usuario, senha, cargo, identificacao, tipo, curso)"+
					"values (?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps = Conexao.getConexao().prepareStatement(sql);
			
			ps.setString(1, u.getNome());
			ps.setString(2, u.getUsuario());
			ps.setString(3, u.getSenha());
			ps.setString(4, u.getCargo());
			ps.setString(5, u.getIdentificacao());
			ps.setString(6, u.getTipo());
			ps.setString(7, u.getCurso());
			
			ps.execute();
		} catch (SQLException e) {
            System.out.println("Erro ao cadastrar usuario: " + e.getMessage());
            e.printStackTrace();
		}
	}
	
	public Usuario buscarUsuario(String usuario, String senha) throws ClassNotFoundException {
		
		String sql = "SELECT * FROM Usuario WHERE usuario = ? AND senha = ?";
		
		try {
			PreparedStatement ps = Conexao.getConexao().prepareStatement(sql);
			ps.setString(1, usuario);
			ps.setString(2, senha);
			
			ResultSet rs = ps.executeQuery();
			Usuario u = new Usuario();
			
			rs.next();
			u.setIdUsuario(rs.getInt("idUsuario"));
			u.setNome(rs.getString("nome"));
			u.setUsuario(rs.getString("usuario"));
			u.setSenha(rs.getString("senha"));
			u.setCargo(rs.getString("cargo"));
			u.setIdentificacao(rs.getString("identificacao"));
			u.setTipo(rs.getString("tipo"));
			u.setCurso(rs.getString("curso"));
			
			return u;
			
		} catch (SQLException e) {
            System.out.println("Erro ao buscar usuario: " + e.getMessage());
            e.printStackTrace();
            return null;
		}
		
	}
}
