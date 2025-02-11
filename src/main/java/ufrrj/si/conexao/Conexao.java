package ufrrj.si.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	public static final String url = "jdbc:mysql://localhost:3308/mapa_empreendedorismo";
	public static final String user = "root";
	public static final String password = "root";
	
	private static Connection conn;
	
	public static Connection getConexao() throws ClassNotFoundException {
		try {
			if (conn == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, user, password);
				System.out.println("Conexão feita com sucesso");
				return conn;
			} else {
				return conn;
			}
		} catch (SQLException e) {
			System.out.println("Erro de conexão: "+e.getErrorCode()+", "+e.getMessage());
			return null;
		}
    }
}
