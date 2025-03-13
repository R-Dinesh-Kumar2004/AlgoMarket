package com.servlet;

import java.io.IOException;

import com.administrator.Administerator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SellerRegisterServlet")
public class SellerRegisterServlet extends HttpServlet {
	    Administerator administerator =new Administerator();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String password=request.getParameter("password");
		String conpassword=request.getParameter("conpassword");
		
		if(administerator.newSeller(name,email,phone,address,password,conpassword)) {
			response.sendRedirect("sellerlogin.jsp");
		}
	}
}
