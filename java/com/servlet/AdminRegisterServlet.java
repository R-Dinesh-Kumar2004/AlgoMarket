package com.servlet;

import java.io.IOException;

import com.administrator.Administerator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/AdminRegisterServlet")
public class AdminRegisterServlet extends HttpServlet {
	    Administerator administerator=new Administerator();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		if(administerator.newAdmin(name,email,password)) {
			response.sendRedirect("adminlogin.jsp");
		}	
	}

}
