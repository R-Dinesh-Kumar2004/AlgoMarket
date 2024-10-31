package com.dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.DBUtil.DBUtil;
import com.oracle.wls.shaded.org.apache.regexp.recompile;

public class getHomeImageDao {
	public List<byte[]> getHomeImage(){
		List<byte[]> imageList=new ArrayList<>();
		try {
			Connection con=DBUtil.getConnection();
			String query="Select poster_image from event_table";
			PreparedStatement preparedStatement=con.prepareStatement(query);
			ResultSet rs=preparedStatement.executeQuery();
			
			while(rs.next()) {
				Blob blob=rs.getBlob(1);
				byte[] image=blob.getBytes(1, (int)blob.length());
				imageList.add(image);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return imageList;
	}

}
