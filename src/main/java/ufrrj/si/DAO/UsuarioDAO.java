package ufrrj.si.DAO;

import java.sql.PreparedStatement;
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
            System.out.println("Erro ao cadastrar carona: " + e.getMessage());
            e.printStackTrace();
		}
	}
}
