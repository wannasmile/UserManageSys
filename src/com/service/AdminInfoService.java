package com.service;

import com.model.AdminInfo;

public interface AdminInfoService {
	//添加管理员
	public boolean InsertAdmin(AdminInfo admin);
		
	//查找管理员
	public AdminInfo FindAdmin(String AdminName,String AdminPassword);
		
	//根据管理员id查找管理员
	public AdminInfo FindAdminById(Integer AdminID);
}
