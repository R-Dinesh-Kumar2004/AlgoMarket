package com.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.DBUtil.DBUtil;

import jakarta.servlet.http.Part;

public class storeEventDao {

	public void addEvent(String email, String eventdate, Part filePart) {
		try {
			InputStream inputStream=null;
			if(filePart!=null) {
				inputStream=filePart.getInputStream();
			}
			String d[]=eventdate.split("-");
			int year=Integer.parseInt(d[0]);
			int month=Integer.parseInt(d[1]);
			int date=Integer.parseInt(d[2]);
			
			Connection con=DBUtil.getConnection();
			PreparedStatement preparedStatement=con.prepareStatement("insert into event_table values(?,?,?)");
			preparedStatement.setDate(1, new Date(year,month,date));
			if(inputStream!=null) {
				preparedStatement.setBlob(2, inputStream);
			}
			preparedStatement.setString(3, email);
			
			preparedStatement.executeUpdate();
			
			
		} catch (ClassNotFoundException | SQLException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
