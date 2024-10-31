package com.DBUtil;

import java.sql.Connection;
import java.sql.SQLException;

public class checkDB {

	public static void main(String[] args) {
		try {
			Connection con=DBUtil.getConnection();
			System.out.println(con);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}
