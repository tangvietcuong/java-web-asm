package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html,charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		try {
			// Connect to Form in login.jsp
			String userID = request.getParameter("username");
			String password = request.getParameter("password");
			// read info in web.xml
			String uID = getServletContext().getInitParameter("username");
			String uPW = getServletContext().getInitParameter("password");
			// check condition
			if (userID != null && userID.equalsIgnoreCase(uID) && password.equalsIgnoreCase(uPW)) {
				response.sendRedirect("home.jsp");
			} else {
				// if condition fail: username or password invalid
				String message = "Username or Password is invalid";
				request.setAttribute("message", message);
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}
		} catch (Exception ex) {
			// TODO: handle exception
			response.getWriter().println(ex);
		}
	}
	


}
