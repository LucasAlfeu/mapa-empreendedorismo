package ufrrj.si.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufrrj.si.DAO.UsuarioDAO;
import ufrrj.si.model.Usuario;

/**
 * Servlet implementation class Cadastrar
 */
@WebServlet("/cadastrar.do")
public class Cadastrar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cadastrar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tipoUsuario = request.getParameter("tipo-usuario");
		String nome = request.getParameter("nome-usuario");
		String curso = request.getParameter("curso-usuario");
		String identificacao = request.getParameter("identificacao-usuario");
		String email = request.getParameter("email-usuario");
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha-usuario");
		String confirmaSenha = request.getParameter("confirma-senha");
		
		if(confirmaSenha.equals(senha)) {
			Usuario u = new Usuario(nome, usuario, senha, null, identificacao, tipoUsuario, curso, email);
			
			if(u.getTipo().equals("docente")) {
				u.setCargo("administrador");
			}
			
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			try {
				usuarioDAO.cadastrarUsuario(u);
				response.sendRedirect("./entrar.jsp");
			} catch (ClassNotFoundException e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
				response.sendRedirect("./cadastrar.jsp");
			}
		} else {
			response.sendRedirect("./cadastrar.jsp");
		}
	}

}
