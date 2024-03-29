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
@WebServlet(urlPatterns = {"/relatorio", "/gerarRelatorio"})
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
			default:
				mostrarFormulario(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	
// Mostrar Relatorio
	private void mostrarRelatorio(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int dataInicial = Integer.parseInt(request.getParameter("dataInicial"));
		int dataFinal = Integer.parseInt(request.getParameter("dataFinal"));
		String tipo = request.getParameter("tipo");
		String status = request.getParameter("status");
		
		
		List<Imovel> listRelatorio = RelatorioDAO.selecionarImoveis(tipo, status, dataInicial, dataFinal);
		request.setAttribute("listRelatorio", listRelatorio);
		RequestDispatcher dispatcher = request.getRequestDispatcher("relatorio-list.jsp");
		dispatcher.forward(request, response);
	}
	
// Mostrar formulario
	private void mostrarFormulario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("relatorio-form.jsp");
		dispatcher.forward(request, response);
	}
}
