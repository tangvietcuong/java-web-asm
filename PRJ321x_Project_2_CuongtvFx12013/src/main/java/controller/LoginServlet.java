package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Users;

import java.io.IOException;

import common.CookieUsed;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get Name of Cookie
		String username = CookieUsed.get("username", request);
		// If username exist
		if (username != null) {
			// session object and set Attribute
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			// forward to dashboard.jsp
			request.getRequestDispatcher("dashboard.jsp").forward(request, response);
			return;
		}
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html,charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			String userName = request.getParameter("username");
			String password = request.getParameter("password");
			
			Users user = new Users();
			user.setUserName(userName);
			user.setPassword(password);
			
			HttpSession session = request.getSession();
			
			String uName = getServletContext().getInitParameter("username");
			String uPw = getServletContext().getInitParameter("password");
			
			if (userName != null && user.getUserName().equalsIgnoreCase(uName) && user.getPassword().equalsIgnoreCase(uPw)) {
				session.setAttribute("username", userName);
				response.sendRedirect("dashboard.jsp");
				if (user.isRemember()) {
					CookieUsed.set("username", user.getUserName(), 1, response);
				} else {
					CookieUsed.set("username", user.getUserName(), 0, response);}
			} else {
				session.setAttribute("message", "Username or Password is invalid");
				response.sendRedirect("login.jsp");
			}
		} catch (Exception ex) {
			response.getWriter().println(ex);
		}
	}
}
