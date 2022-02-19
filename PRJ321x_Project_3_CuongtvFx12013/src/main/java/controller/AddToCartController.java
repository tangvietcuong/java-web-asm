package controller;
import model.CartModel;

import model.Product;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ListProductDAO;

/**
 * Servlet implementation class AddToCartController
 */

public class AddToCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request.getRequestDispatcher("cart.jsp").forward(request, response);
		response.setContentType("text/html; charset=UTF-8");
		CartModel cart = null;
		try {
			
			HttpSession session = request.getSession(true);
			
			String idd = request.getParameter("id");
			String action = request.getParameter("action");
			// action == add to cart
			if (action != null && action.equalsIgnoreCase("add")) {
				// chua co gio hang -> tao moi gio hang
				if (session.getAttribute("cart") == null) {
					session.setAttribute("cart", new CartModel());
				} 
					// get id
					int id = Integer.parseInt(idd);
					// get Product by id
					Product p = new ListProductDAO().getProductById(id);
					// add cart to session
					cart = (CartModel) session.getAttribute("cart");
					// add product to cart
					cart.addPro(new Product(p.getId(),p.getName(),p.getDescription(),
							p.getPrice(),p.getSrc(),p.getType(),p.getBrand(),1));
					response.sendRedirect("home.jsp");
				
			// action = delete from cart	
			} else if (action != null && action.equalsIgnoreCase("delete")) {
				// get id from request
				int id = Integer.parseInt(idd);
				
				cart = (CartModel) session.getAttribute("cart");
				
				cart.remove(id);
			}
			
			List<Product> list = cart.getItems();
			
			session.setAttribute("cart", cart);
			session.setAttribute("size", list.size());
			
			response.sendRedirect("cart.jsp");
			
		} catch (Exception ex) {
			response.getWriter().println(ex);
		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		CartModel cart = null;
		try {
			
			HttpSession session = request.getSession(true);
			
			String idd = request.getParameter("id");
			String action = request.getParameter("action");
			// action == add to cart
			if (action != null && action.equalsIgnoreCase("add")) {
				// chua co gio hang -> tao moi gio hang
				if (session.getAttribute("cart") == null) {
					session.setAttribute("cart", new CartModel());
				} 
					// get id
					int id = Integer.parseInt(idd);
					// get Product by id
					Product p = new ListProductDAO().getProductById(id);
					// add cart to session
					cart = (CartModel) session.getAttribute("cart");
					// add product to cart
					cart.addPro(new Product(p.getId(),p.getName(),p.getDescription(),
							p.getPrice(),p.getSrc(),p.getType(),p.getBrand(),1));
				
			// action = delete from cart	
			} else if (action != null && action.equalsIgnoreCase("delete")) {
				// get id
				int id = Integer.parseInt(idd);
				
				cart = (CartModel) session.getAttribute("cart");
				
				cart.remove(id);
				
			}
			
			List<Product> list = cart.getItems();
			
			session.setAttribute("cart", cart);
			session.setAttribute("size", list.size());
			
			response.sendRedirect("cart.jsp");
			
		} catch (Exception ex) {
			response.getWriter().println(ex);
		}
	}

}
