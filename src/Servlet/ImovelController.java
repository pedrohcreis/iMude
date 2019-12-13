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

import DAO.ImovelDAO;
import Model.Imovel;

@WebServlet(urlPatterns = {"/imoveis", "/imoveis-new", "/imoveis-insert", "/imoveis-delete", "/imoveis-edit", "/imoveis-update", "/imoveis-list-gerente", "/imoveis-new-gerente"})
public class ImovelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ImovelDAO imovelDAO;
	
	public void init() {
		imovelDAO = new ImovelDAO();
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
			case "/imoveis-new":
				mostrarImovel(request, response);
				break;
			case "/imoveis-insert":
				insertImovel(request, response);
				break;
			case "/imoveis-delete":
				deleteImovel(request, response);
				break;
			case "/imoveis-edit":
				showEditForm(request, response);
				break;
			case "/imoveis-update":
				updateImovel(request, response);
				break;
			case "/imoveis-list-gerente":
				listImovelGerente(request, response);
				break;
			case "/imoveis-new-gerente":
				showNewForm(request, response);
				break;
			default:
				listImovel(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
// Listar imoveis
	private void listImovel(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Imovel> listImovel = imovelDAO.selectAllImoveis();
		request.setAttribute("listImovel", listImovel);
		RequestDispatcher dispatcher = request.getRequestDispatcher("imovel-list.jsp");
		dispatcher.forward(request, response);
	}
	
	// Listar imoveis gerente
		private void listImovelGerente(HttpServletRequest request, HttpServletResponse response)
				throws SQLException, IOException, ServletException {
			List<Imovel> listImovel = imovelDAO.selectAllImoveis();
			request.setAttribute("listImovel", listImovel);
			RequestDispatcher dispatcher = request.getRequestDispatcher("imovel-list-gerente.jsp");
			dispatcher.forward(request, response);
		}
// Mostrar imovel
private void showNewForm(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	RequestDispatcher dispatcher = request.getRequestDispatcher("imovel-form.jsp");
	dispatcher.forward(request, response);
}

// Mostrar imovel
	private void mostrarImovel(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("imovel.jsp");
		dispatcher.forward(request, response);
	}
// Mostrar imovel para edição
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Imovel existingUser = imovelDAO.selectImovel(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("imovel-form.jsp");
		request.setAttribute("imovel", existingUser);
		dispatcher.forward(request, response);

	}
// Inserção de imovel
	private void insertImovel(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		System.out.println("Chegou aqui");
		Float preco = Float.valueOf(request.getParameter("preco"));
		System.out.println("Preço: " + preco);
		String endereco = request.getParameter("endereco");
		System.out.println("Endereco: " + endereco);
		String status = request.getParameter("status");
		System.out.println("Status: " + status);
		String descricao = request.getParameter("descricao");
		System.out.println("Descricao: " + descricao);
		String foto = request.getParameter("foto");
		System.out.println("Foto: " + foto);
		String tipo = request.getParameter("tipo");
		System.out.println("tipo: " + tipo);
		int dataInicial = Integer.parseInt(request.getParameter("dataInicial"));
		System.out.println("Data Inicial: " + dataInicial);
		int dataFinal = Integer.parseInt(request.getParameter("dataFinal"));
		System.out.println("Data Final: " + dataFinal);
		Imovel newImovel = new Imovel(preco, endereco, status, descricao, foto, tipo, dataInicial, dataFinal);
		imovelDAO.insertImovel(newImovel);
		response.sendRedirect("/iMude/imoveis-list-gerente");
	}
// Atualização de imovel
	private void updateImovel(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Float preco = Float.valueOf(request.getParameter("preco"));
		String endereco = request.getParameter("endereco");
		String status = request.getParameter("status");
		String descricao = request.getParameter("descricao");
		String foto = request.getParameter("foto");
		String tipo = request.getParameter("tipo");
		int dataInicial = Integer.parseInt(request.getParameter("dataInicial"));
		int dataFinal = Integer.parseInt(request.getParameter("dataFinal"));
		Imovel imovel = new Imovel(id, preco, endereco, status, descricao, foto, tipo, dataInicial, dataFinal);
		imovelDAO.updateImovel(imovel);
		response.sendRedirect("/iMude/imoveis-list-gerente");
	}
// Eliminar imovel
	private void deleteImovel(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		imovelDAO.deleteImovel(id);
		response.sendRedirect("/iMude/imoveis-list-gerente");

	}

}
