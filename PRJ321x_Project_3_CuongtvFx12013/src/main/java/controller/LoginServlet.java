package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CustomerDAO;
import model.Customer;


/**
 * Servlet implementation class Login
 */

public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html,charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		try {
			// Connect to Form in login.jsp
			String userName = request.getParameter("username").trim();
			String password = request.getParameter("password");
			
			CustomerDAO cDao = new CustomerDAO();
			Customer cus = cDao.getAcount(userName, password);
			
			// call session object
			HttpSession session = request.getSession();
			
			if (cus == null) {
				session.setAttribute("message", "Username or Password is invalid");
				response.sendRedirect("login.jsp");
			} else {
				session.setAttribute("acount", cus);
				request.getRequestDispatcher("home.jsp").forward(request, response);
			}
		} catch (Exception ex) {
			response.getWriter().println(ex);
		}
	}
}
