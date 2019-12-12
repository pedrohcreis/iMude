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

import DAO.RelatorioDAO;
import Model.Imovel;


/**
 * ControllerServlet.java
 * This servlet acts as a page controller for the application, handling all
 * requests from the user.
 */

@WebServlet("/relatorio")
public class RelatorioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RelatorioDAO RelatorioDAO;
	
	public void init() {
		RelatorioDAO = new RelatorioDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);

		try {
			switch (action) {
			case "/gerarRelatorio":
				mostrarRelatorio(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	
// Mostrar Relatorio
	private void mostrarRelatorio(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		System.out.println("boa");
		List<Imovel> listRelatorio = RelatorioDAO.selecionarImoveis();
		request.setAttribute("listRelatorio", listRelatorio);
		RequestDispatcher dispatcher = request.getRequestDispatcher("relatorio-list.jsp");
		dispatcher.forward(request, response);
	}
}
