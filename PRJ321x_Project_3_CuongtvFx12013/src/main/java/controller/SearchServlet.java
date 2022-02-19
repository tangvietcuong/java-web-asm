package controller;



import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Product;
import dao.ListProductDAO;

public class SearchServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException {
		
			request.getRequestDispatcher("search.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) { 
		
		try {
			String searchString = request.getParameter("search");
		
			if (searchString != null) {
				//HttpSession session = request.getSession(true);
				
				ListProductDAO listProductDAO = new ListProductDAO();
				
				List<Product> list = listProductDAO.search(searchString);
				
				request.setAttribute("search", searchString);
				request.setAttribute("listProduct", list);
			} else {
				request.getRequestDispatcher("home").forward(request, response);
			}
			request.getRequestDispatcher("search.jsp").forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	



}
