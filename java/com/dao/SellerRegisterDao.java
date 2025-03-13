package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dbutil.DBUtil;

public class SellerRegisterDao {

	public boolean newSeller(String name, String email, String phone, String address, String password,String conpassword) {
		int rowAffected=0;
		if(!password.equals(conpassword))return false;
		Connection connection=DBUtil.getConnection();
		try {
			PreparedStatement pStatement=connection.prepareStatement("insert into seller values(?,?,?,?,?)");
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
