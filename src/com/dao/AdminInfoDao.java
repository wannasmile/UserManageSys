package com.dao;

import com.model.AdminInfo;

public interface AdminInfoDao {
	//添加管理员
	public boolean InsertAdmin(AdminInfo adm);
	
	//查找管理员
	public AdminInfo FindAdmin(String AdminName,String AdminPassword);
	
	//根据管理员id查找管理员
	public AdminInfo FindAdminById(Integer AdminID);
}
