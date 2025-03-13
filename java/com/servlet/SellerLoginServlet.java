package com.servlet;

import java.io.IOException;

import com.administrator.Administerator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SellerLoginServlet")
public class SellerLoginServlet extends HttpServlet {
	    Administerator administerator=new Administerator();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		if(administerator.sellerLogin(email,password)) {
			response.sendRedirect("sellerDashBoard.jsp");
			HttpSession session=request.getSession();
			session.setAttribute("email", email);
		}
	}

}
