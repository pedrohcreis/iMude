package Servlet;

import java.io.IOException;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CompradorDAO;
import Model.Comprador;


@WebServlet(urlPatterns = {"/comprador", "/comprador-insert", "/comprador-delete", "/comprador-update"})
public class CompradorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CompradorDAO compradorDAO;
	
	public void init() {
		compradorDAO = new CompradorDAO();
	}
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println("ACTION: " + action);
		try {
			switch (action) {
			case "/comprador-insert":
				insertComprador(request, response);
				break;
			case "/comprador-delete":
				deleteComprador(request, response);
				break;
			case "/comprador-update":
				updateComprador(request, response);
				break;
			default:
				listComprador(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
// Listar usuarios
	private void listComprador(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Comprador> listContrato = compradorDAO.selectAllCompradores();
		request.setAttribute("listComprador", listContrato);
		RequestDispatcher dispatcher = request.getRequestDispatcher("contrato-list.jsp");
		dispatcher.forward(request, response);
	}

// Inserção de Usuario
	private void insertComprador(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		// String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String CPF = request.getParameter("CPF");
		String password = request.getParameter("password");
		Comprador newComprador = new Comprador(nome, email, CPF,password);
		compradorDAO.insertComprador(newComprador);
	}
// Atualização de Usuario
	private void updateComprador(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String CPF = request.getParameter("CPF");
		String password = request.getParameter("password");
		Comprador book = new Comprador(nome, email, CPF, password);
		compradorDAO.updateComprador(book);	
	}
// Eliminar Usuario
	private void deleteComprador(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		compradorDAO.deleteComprador(id);
	}
}
