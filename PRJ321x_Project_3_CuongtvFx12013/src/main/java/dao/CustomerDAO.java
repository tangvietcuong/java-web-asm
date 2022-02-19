package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import context.DBContext;
import model.Customer;

public class CustomerDAO {
	
	DBContext dbContext = new DBContext();
	
	String SQL = "SELECT * FROM CUSTOMER WHERE USERNAME = ? AND PASSWORD = ?";
	
	public Customer getAcount(String user, String pass) throws SQLException {
		
		try {
			PreparedStatement ps = dbContext.getConnection().prepareStatement(SQL);
			
			ps.setString(1,user);
			ps.setString(2, pass);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				return new Customer(rs.getInt(1), rs.getString(2), rs.getDouble(3),
										rs.getString(4), rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
