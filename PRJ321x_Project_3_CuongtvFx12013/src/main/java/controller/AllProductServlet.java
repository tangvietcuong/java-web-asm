package controller;

import model.Product;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ListProductDAO;


public class AllProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException {
		
		try {
			
			ListProductDAO listProductDAO = new ListProductDAO();
			
			List<Product> list = listProductDAO.getAllProduct();
			
			if (list.size() == 0) {
				System.out.println("Data not found");
			} else {
				request.setAttribute("allProduct", list);

				request.getRequestDispatcher("home.jsp").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		
			request.getRequestDispatcher("home.jsp").forward(request, response);


	}

}
