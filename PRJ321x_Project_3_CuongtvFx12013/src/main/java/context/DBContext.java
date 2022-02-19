package context;

import java.sql.*;

public class DBContext {
	
	private final String DB_URL = "jdbc:mysql://localhost/ShoppingDB";
	private final String USER = "root";
	private final String PASS = "admin123";
	
	public Connection getConnection() throws Exception {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
			
			return conn;
		} catch (Exception ex) {
			System.out.println("Database.getConnection() is Error - " + ex.getMessage());
			return null;
		}
	}
	
	public void close(Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
