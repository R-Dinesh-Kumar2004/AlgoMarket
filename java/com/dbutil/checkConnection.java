package com.dbutil;

import java.sql.Connection;

public class checkConnection {

	public static void main(String[] args) {
		Connection connection=DBUtil.getConnection();
		System.out.println(connection);
	}

}
