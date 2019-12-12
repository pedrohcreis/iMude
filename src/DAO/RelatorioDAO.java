package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Imovel;

/**
 * AbstractDAO.java This DAO class provides CRUD database operations for the
 * table users in the database.
 *
 */
public class RelatorioDAO {
	private String jdbcURL = "jdbc:mariadb://db-labsoft.ml:3306/t1g5?useSSL=false";
	private String jdbcUsername = "t1g5";
	private String jdbcPassword = "VnzHBEh";

	private static final String SELECT_RELATORIO = "SELECT id, preco, endereco, status, tipo, data_inicial, data_final FROM Imoveis WHERE tipo = ? AND status = ? AND data_inicial <= ? AND data_final >= ?;";

	public RelatorioDAO() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			//Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public List<Imovel> selecionarImoveis(String tipo, String status, int data_inicial, int data_final) {
		System.out.println(SELECT_RELATORIO);
		// Criando array de imoveis
		List<Imovel> imoveis = new ArrayList<>();
		// Passo 1: Estabelecendo conexao
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_RELATORIO);) {
			preparedStatement.setString(1, tipo);
			preparedStatement.setString(2, status);
			preparedStatement.setInt(3, data_inicial);
			preparedStatement.setInt(4, data_final);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				float preco = rs.getFloat("preco");
				String endereco = rs.getString("endereco");
				status = rs.getString("status");
				tipo = rs.getString("tipo");
				data_inicial = rs.getInt("data_inicial");
				data_final = rs.getInt("data_final");
				
				imoveis.add(new Imovel(id, preco, endereco, status, tipo, data_inicial, data_final));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return imoveis;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
