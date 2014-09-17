package com.dao;

import java.util.ArrayList;

import com.model.UserInfo;

public interface UserInfoDao {

	//添加用户
	public boolean InsertUser(UserInfo user);	
	//查找用户
	public UserInfo FindUser(String UserNo,String UserPassword);	
	//根据用户编码查找用户
	public UserInfo FindUserByNo(String UserNo);
	//查找所有用户【无分页功能】
	public ArrayList<UserInfo> FindAllUser();
	//删除用户
	public void DeleteUser(UserInfo user);
	//更新用户信息
	public void UpdateUser(UserInfo user);
	//查找最新更新的一个用户
	public UserInfo FindFinalUser();
	

}
