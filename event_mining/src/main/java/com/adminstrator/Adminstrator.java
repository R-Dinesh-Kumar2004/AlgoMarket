package com.adminstrator;

import java.util.List;

import com.dao.getHomeImageDao;
import com.dao.storeEventDao;

import jakarta.servlet.http.Part;

public class Adminstrator {

	 static storeEventDao storeEventDao=new storeEventDao();
	 static getHomeImageDao getHomeImageDao=new getHomeImageDao();
	
	public static void addEvent(String email, String date, Part filePart) {
		storeEventDao.addEvent(email,date,filePart);
	}

	public List<byte[]> getHomeImage() {
		return getHomeImageDao.getHomeImage();
	}
}
