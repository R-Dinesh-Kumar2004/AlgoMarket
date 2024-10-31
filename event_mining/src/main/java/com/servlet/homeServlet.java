package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.adminstrator.Adminstrator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/homeServlet")
public class homeServlet extends HttpServlet {
	Adminstrator adminstrator=new Adminstrator();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<byte[]> imageList=adminstrator.getHomeImage();
		
		request.setAttribute("images", imageList);
		
		request.getRequestDispatcher("home.jsp").forward(request, response);
	}
}
