package controller;

import dao.OrdersDAO;
import model.CartModel;
import model.Customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("home.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession(true);
		CartModel cart = null;
		
		
		if (session.getAttribute("cart") != null) {
			cart = (CartModel)session.getAttribute("cart");
		} else {
			cart = new CartModel();
		}
		
		Customer acount = null;
			if (session.getAttribute("acount") != null) {
				
				acount = (Customer)session.getAttribute("acount");
				OrdersDAO oDao = new OrdersDAO();
				oDao.addOrder(acount, cart);
				// remove cart and reset size
				session.removeAttribute("cart");
				session.setAttribute("size", 0);
				
				response.sendRedirect("home.jsp");
			} else {
				response.sendRedirect("login.jsp");
			}
	}

}
