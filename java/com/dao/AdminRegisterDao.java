package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dbutil.DBUtil;

public class AdminRegisterDao {

	public boolean adminRegister(String name, String email, String password) {
		int rowAffected=0;
		name=name.replace(" ", "-");
		Connection connection=DBUtil.getConnection();
		try {
			PreparedStatement pStatement=connection.prepareStatement("insert into admin values(?,?,?)");
			pStatement.setString(1, name);
			pStatement.setString(2, email);
			pStatement.setString(3, password);
			
			rowAffected= pStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowAffected!=0;
	}

}
