package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Vendedor;

public class VendedorDAO {
	private String jdbcURL = "jdbc:mariadb://db-labsoft.ml:3306/t1g5?useSSL=false";
	private String jdbcUsername = "t1g5";
	private String jdbcPassword = "VnzHBEh";
	
	private static final String INSERT_VENDEDOR_SQL = "INSERT INTO Vendedor" + "  (id, nome, email, CPF) VALUES "
			+ " (?, ?);";

	private static final String SELECT_VENDEDOR_BY_ID = "select id, nome, email, CPF from Vendedor where id =?";
	private static final String SELECT_ALL_VENDEDORES = "select * from Vendedor";
	private static final String DELETE_VENDEDOR_SQL = "delete from Vendedor where id = ?;";
	private static final String UPDATE_VENDEDOR_SQL = "update Vendedor set nome= ?, email= ?, CPF= ? where id = ?;";
	
	public VendedorDAO() {
		
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
	
	public void insertVendedor(Vendedor vendedor) throws SQLException {
		System.out.println(INSERT_VENDEDOR_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_VENDEDOR_SQL)) {
			preparedStatement.setString(1, vendedor.getCPF());
			preparedStatement.setString(2, vendedor.getNome());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public Vendedor selectVendedor(int id) {
		Vendedor vendedor = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_VENDEDOR_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id1 = rs.getInt("id");
				String nome = rs.getString("nome");
				String email = rs.getString("email");
				String CPF = rs.getString("CPF");
				vendedor = new Vendedor(id1, nome, email, CPF);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return vendedor;
	}

	public List<Vendedor> selectAllVendedores() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Vendedor> vendedores = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_VENDEDORES);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String nome = rs.getString("nome");
				String email = rs.getString("email");
				String CPF = rs.getString("CPF");
				vendedores.add(new Vendedor(id, nome, email, CPF));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return vendedores;
	}

	public boolean deleteVendedor(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_VENDEDOR_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateVendedor(Vendedor vendedor) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_VENDEDOR_SQL);) {
			statement.setString(1, vendedor.getCPF());
			statement.setString(2, vendedor.getNome());
			statement.setInt(3, vendedor.getId());

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
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
