package com.administrator;

import com.dao.AdminLoginDao;
import com.dao.AdminRegisterDao;
import com.dao.BuyerLoginDao;
import com.dao.BuyerRegisterDao;
import com.dao.SellerLoginDao;
import com.dao.SellerRegisterDao;

public class Administerator {

	
	AdminRegisterDao adminRegisterDao=new AdminRegisterDao();
	AdminLoginDao adminLoginDao=new AdminLoginDao();
	BuyerRegisterDao buyerRegisterDao=new BuyerRegisterDao();
	BuyerLoginDao buyerLoginDao=new BuyerLoginDao();
	SellerRegisterDao sellerRegisterDao=new SellerRegisterDao();
	SellerLoginDao sellerLoginDao=new SellerLoginDao();
	
	public boolean newAdmin(String name, String email, String password) {
		return adminRegisterDao.adminRegister(name,email,password);
	}

	public boolean adminLogin(String email, String password) {
		return adminLoginDao.adminLogin(email,password);
	}

	public boolean newBuyer(String name, String address, String email, String phone, String password,String conPassword) {
		return buyerRegisterDao.newBuyer(name,address,email,phone,password,conPassword);
	}

	public boolean buyerLogin(String email, String password) {
		return buyerLoginDao.buyerLogin(email,password);
	}

	public boolean newSeller(String name, String email, String phone, String address, String password,String conpassword) {
		return sellerRegisterDao.newSeller(name,email,phone,address,password,conpassword);
	}

	public boolean sellerLogin(String email, String password) {
		return sellerLoginDao.sellerLogin(email,password);
	}
}
