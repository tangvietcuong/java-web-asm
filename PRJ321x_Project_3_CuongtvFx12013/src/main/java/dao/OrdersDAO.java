package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.LocalDateTime;

import context.DBContext;
import model.CartModel;
import model.Customer;
import model.Product;

public class OrdersDAO {
	
	DBContext dbContext = new DBContext();
	
	String SQL1 = "INSERT INTO OrderProduct VALUES (?,?,?,?)";
	
	// insert infomation of Order to data source: ORDERPRODUCT table
	public void addOrder(Customer u, CartModel cart) {
		
		LocalDateTime curDate = java.time.LocalDateTime.now();
		String date = curDate.toString();
		
		try {
			
			PreparedStatement ps = dbContext.getConnection().prepareStatement(SQL1);
			
			ps.setInt(1, u.getId());
			ps.setString(2, date);
			ps.setString(3, u.getName());
			ps.setDouble(4, cart.getAmount());
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
}
