package ufrrj.si.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ufrrj.si.DAO.UsuarioDAO;
import ufrrj.si.model.Usuario;

/**
 * Servlet implementation class Entrar
 */
@WebServlet("/entrar.do")
public class Entrar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Entrar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuarioEntrar = request.getParameter("usuario");
		String senhaEntrar = request.getParameter("senha");
		
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		try {
			Usuario u = usuarioDAO.buscarUsuario(usuarioEntrar, senhaEntrar);
			
			if(u != null) {
				HttpSession session = request.getSession();
		        session.setMaxInactiveInterval(3600);
		        session.setAttribute("user", u);
		        response.sendRedirect("./paginaInicial.jsp");
			}
		} catch (ClassNotFoundException e) {
			System.out.println("Erro ao buscar usuario: " + e.getMessage());
			e.printStackTrace();
		}
	}

}
