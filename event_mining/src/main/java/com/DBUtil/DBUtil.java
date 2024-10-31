package com.DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

	private static Connection con;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if(con==null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/event_mining";
			con=DriverManager.getConnection(url,"root","root");
		}
		return con;
	}
}
