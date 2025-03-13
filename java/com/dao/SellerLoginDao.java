package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dbutil.DBUtil;
import com.mysql.cj.exceptions.RSAException;

public class SellerLoginDao {

	public boolean sellerLogin(String email, String password) {
		String conPassword="";
		Connection connection=DBUtil.getConnection();
		try {
			PreparedStatement pStatement=connection.prepareStatement("select password from seller where email=?");
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
