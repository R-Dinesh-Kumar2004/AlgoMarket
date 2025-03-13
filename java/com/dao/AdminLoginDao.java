package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dbutil.DBUtil;

public class AdminLoginDao {

	public boolean adminLogin(String email, String password) {
		String conPassword="";
		Connection connection =DBUtil.getConnection();
		PreparedStatement pStatement;
		try {
			pStatement = connection.prepareStatement("select password from admin where email=?");
			pStatement.setString(1, email);
			
			ResultSet rs=pStatement.executeQuery();
			if(rs.next())conPassword=rs.getString(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return password.equals(conPassword);
	}
}
