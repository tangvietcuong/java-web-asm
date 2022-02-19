package controller;

import java.io.IOException;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ListProductDAO;
import model.Product;


public class ProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html ; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			
			int idd = Integer.parseInt(request.getParameter("id"));
			
			HttpSession session = request.getSession(true);
			
			ListProductDAO list = new ListProductDAO();
			
			Product product = list.getProductById(idd);
			
			session.setAttribute("product", product);
			
			request.getRequestDispatcher("infoProduct.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html ; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			
			int idd = Integer.parseInt(request.getParameter("id"));
			
			HttpSession session = request.getSession(true);
			
			ListProductDAO list = new ListProductDAO();
			
			Product product = list.getProductById(idd);
			
			session.setAttribute("product", product);
			
			request.getRequestDispatcher("infoProduct.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
