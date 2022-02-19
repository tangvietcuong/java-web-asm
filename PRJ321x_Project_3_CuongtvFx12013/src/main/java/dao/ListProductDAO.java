package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.Product;

public class ListProductDAO {
	
	DBContext dbContext = new DBContext();
	
	List<Product> list = new ArrayList<>();
	
	String QUERY = "SELECT * FROM PRODUCTS WHERE PRODUCT_NAME LIKE ? OR PRODUCT_ID LIKE ?";
	// SEARCH: return the list of products by product name
	public List<Product> search(String characters) throws Exception {
		
		try (PreparedStatement ps = dbContext.getConnection().prepareStatement(QUERY)) 
			{
				ps.setString(1, "%" + characters + "%");
				ps.setString(2, "%" + characters + "%");
				
				try (ResultSet rs = ps.executeQuery();) {
					
					while(rs.next()) {
						
						Product product = new Product();
						
						product.setId(rs.getInt("product_id"));
						product.setName(rs.getString("product_name"));
						product.setDescription(rs.getString("product_des"));
						product.setPrice(rs.getFloat("product_price"));
						product.setSrc(rs.getString("product_img_source"));
						product.setType(rs.getString("product_type"));
						product.setBrand(rs.getString("product_brand"));
						
						list.add(product);
					}
					
					ps.close();
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return list;
	}
	
	// get the product
	public List<Product> getAllProduct() throws Exception {
		try {
			Statement stmt = dbContext.getConnection().createStatement();
			
			ResultSet rs = stmt.executeQuery("SELECT * FROM PRODUCTS");
			
			while(rs.next()) {
				
				Product product = new Product();
				
				product.setId(rs.getInt(1));
				product.setName(rs.getString(2));
				product.setDescription(rs.getString(3));
				product.setPrice(rs.getFloat(4));
				product.setSrc(rs.getString(5));
				product.setType(rs.getString(6));
				product.setBrand(rs.getString(7));
				
				list.add(product);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
		
	public Product getProductById(int id) {
		
		String SQL2 = "SELECT * FROM PRODUCTS WHERE PRODUCT_ID = ?";
		
		try {
			PreparedStatement ps = dbContext.getConnection().prepareStatement(SQL2);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				return new Product(rs.getInt("product_id"),rs.getString("product_name"),rs.getString("product_des"),
									rs.getFloat("product_price"), rs.getString("product_img_source"),
									rs.getString("product_type"), rs.getString("product_brand"),1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	// count
	public int count(String characters) {
		int count = 0;
		try {
			
			PreparedStatement ps = dbContext.getConnection().prepareStatement(QUERY);
			
			ps.setString(1, "%" + characters + "%");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				count++;
			}
			return count;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	
}
