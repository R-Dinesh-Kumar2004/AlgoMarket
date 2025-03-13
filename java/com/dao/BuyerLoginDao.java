package com.dao;

import java.nio.channels.SelectableChannel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dbutil.DBUtil;

public class BuyerLoginDao {

	public boolean buyerLogin(String email, String password) {
		Connection connection=DBUtil.getConnection();
		String conPassword="";
		PreparedStatement pStatement;
		try {
			pStatement = connection.prepareStatement("select password from buyer where email=?");
			pStatement.setString(1, email);
			ResultSet rs=pStatement.executeQuery();
			if(rs.next()) {
				conPassword=rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return password.equals(conPassword);
	}
}
