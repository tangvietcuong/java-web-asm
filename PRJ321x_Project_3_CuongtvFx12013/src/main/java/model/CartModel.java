package model;

import java.util.ArrayList;
import java.util.List;

public class CartModel {
	private List<Product> items;
	
	public CartModel() {
		items = new ArrayList<Product>();
	}
	
	public Product getProductById(int id) {
		for(Product i : items) {
			if (i.getId() == id) {
				return i;
			}
		}
		return null;
	}
	
	public void addPro(Product p) {
		
		for (Product x : items) {
			if (p.getId() == x.getId()) {
				x.setNumber(x.getNumber() + 1);
				return;
			}
		}
		items.add(p);
	}

	public void remove(int id) {
		for (Product product : items) {
			if (product.getId() == id) {
				items.remove(product);
				return;
			}
		}
	}
	
	public double getAmount() {
		double s = 0;
		for (Product x : items) {
			s += x.getPrice() * x.getNumber();
		}
		return Math.round(s*100.0) / 100.0;
	}
	
	public List<Product> getItems() {
		return items;
	}

	
	
}
