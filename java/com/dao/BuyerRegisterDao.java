package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dbutil.DBUtil;

public class BuyerRegisterDao {

	public boolean newBuyer(String name, String address, String email, String phone, String password,String conPassword) {
		if(!password.equals(conPassword))return false;
		int rowAffected=0;
		Connection connection=DBUtil.getConnection();
		try {
			PreparedStatement pStatement=connection.prepareStatement("insert into buyer values(?,?,?,?,?)");
			pStatement.setString(1, name);
			pStatement.setString(2, email);
			pStatement.setString(3, phone);
			pStatement.setString(4, address);
			pStatement.setString(5, password);
			
			rowAffected=pStatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowAffected!=0;
	}

}
