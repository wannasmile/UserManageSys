package com.service.impl;

import com.dao.AdminInfoDao;
import com.model.AdminInfo;

import com.service.AdminInfoService;

public class AdminInfoServiceImpl implements AdminInfoService {
	private AdminInfoDao adminInfoDao;
	//getter and setter
	

	public AdminInfoDao getAdminInfoDao() {
		return adminInfoDao;
	}

	public void setAdminInfoDao(AdminInfoDao adminInfoDao) {
		this.adminInfoDao = adminInfoDao;
	}

	//methods
	public boolean InsertAdmin(AdminInfo adm) {
		return adminInfoDao.InsertAdmin(adm);
	}

	public AdminInfo FindAdmin(String AdminName, String AdminPassword) {
		return adminInfoDao.FindAdmin(AdminName, AdminPassword);
	}

	public AdminInfo FindAdminById(Integer AdminID) {
		return adminInfoDao.FindAdminById(AdminID);
	}

}
