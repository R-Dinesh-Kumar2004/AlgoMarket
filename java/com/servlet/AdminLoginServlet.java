package com.servlet;

import java.io.IOException;

import com.administrator.Administerator;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	Administerator administerator=new Administerator();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		if(administerator.adminLogin(email,password)) {
			request.setAttribute("dinesh", "hello World!");
			HttpSession session=request.getSession();
			session.setAttribute("email", email);
			RequestDispatcher rsDispatcher = request.getRequestDispatcher("adminDashboard.jsp");
			rsDispatcher.forward(request, response);
			return;
//			response.sendRedirect("");
		}
//		else response.sendRedirect("adminlogin.jsp");

	}
}
