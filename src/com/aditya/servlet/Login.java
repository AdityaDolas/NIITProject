package com.aditya.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aditya.dao.UserDao;
import com.aditya.pojo.User;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	User u = new User();
	UserDao ud = new UserDao();

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.invalidate();
		response.sendRedirect("HomePageDemo.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");

		if (uname != null && uname.equals("admin") && pass.equals("123")) {
			session.setAttribute("adminName", uname);
			response.sendRedirect("AdminHP.jsp");
		} else {

			User u = ud.getLogin(uname, pass);
			if (u != null) {
				
				System.out.println(" ====> " + u.getEmail() + " " + u.getPassword());
				
				
				if (u.getEmail().equals(uname) && u.getPassword().equals(pass)) {
					session.setAttribute("username", uname);
					System.out.println("name ===> " + u.getName());
					session.setAttribute("name", u.getName());
					response.sendRedirect("HomePageDemo.jsp");
				}
			 else {
				 System.out.println("else ====>");
				request.setAttribute("loginmsg", "Invalid Username or Password");
				RequestDispatcher rd = request.getRequestDispatcher("LoginPage.jsp");
				rd.include(request, response);

			}
		}
	}
		/*
		 * else if (dao.check(uname, pass)) { session.setAttribute("username", uname);
		 * response.sendRedirect("HomePageDemo.jsp"); } else {
		 * request.setAttribute("loginmsg", "Invalid Username or Password");
		 * RequestDispatcher rd = request.getRequestDispatcher("LoginPage.jsp");
		 * rd.include(request, response); }
		 */
	}
}
