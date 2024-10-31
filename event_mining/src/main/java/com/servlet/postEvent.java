package com.servlet;

import java.io.IOException;

import com.adminstrator.Adminstrator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


@WebServlet("/postEvent")
@MultipartConfig
public class postEvent extends jakarta.servlet.http.HttpServlet {
	private static Adminstrator adminstrator=new Adminstrator();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String date=request.getParameter("event_date");
		Part filePart=request.getPart("poster");
		
		Adminstrator.addEvent(email,date,filePart);
//		response.getWriter().print(date);
	}

}
