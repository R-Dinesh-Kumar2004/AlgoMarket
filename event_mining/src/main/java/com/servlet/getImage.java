package com.servlet;

import java.awt.Image;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.DBUtil.DBUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/getImage")
public class getImage extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection con=DBUtil.getConnection();
			
		    PreparedStatement pStatement=con.prepareStatement("select poster_image from event_table where college_email=?");
		    pStatement.setString(1,"dummy@gmail.com");
		    
		    ResultSet rs=pStatement.executeQuery();
		    if(rs.next()) {
		    	Blob blob=rs.getBlob(1);
		    	byte imageByte[]=blob.getBytes(1, (int)blob.length());
		    	
		    	response.setContentType("image/jpeg");
		    	OutputStream out=response.getOutputStream();
		    	out.write(imageByte);
		    	out.flush();
		    }
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
