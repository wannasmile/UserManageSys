package com.service.impl;

import java.util.ArrayList;

import com.dao.UserInfoDao;
import com.model.UserInfo;
import com.service.UserInfoService;


public class UserInfoServiceImpl implements UserInfoService {
	
	private UserInfoDao userinfoDao;

	public UserInfoDao getUserinfoDao() {
		return userinfoDao;
	}

	public void setUserinfoDao(UserInfoDao userinfoDao) {
		this.userinfoDao = userinfoDao;
	}

	public boolean InsertUser(UserInfo user) {
		System.out.println("Service正执行添加用户操作......");
		return userinfoDao.InsertUser(user);		
	}

	public UserInfo FindUser(String UserNo,String UserPassword) {
		System.out.println("Service正执行查找用户操作......");
		return userinfoDao.FindUser(UserNo, UserPassword);
	}

	public ArrayList<UserInfo> FindAllUser() {
		System.out.println("Service正执行查找所有用户操作......");
		return userinfoDao.FindAllUser();
	}

	public void DeleteUser(UserInfo user) {
		System.out.println("Service正执行删除用户操作......");
		userinfoDao.DeleteUser(user);
	}

	public void UpdateUser(UserInfo user) {
		System.out.println("Service正执行更新用户操作......");
		userinfoDao.UpdateUser(user);
	}

	public UserInfo FindUserByNo(String UserNo) {
		System.out.println("Service正执行根据No查找用户操作......");
		return userinfoDao.FindUserByNo(UserNo);
	}

	public UserInfo FindFinalUser() {
		System.out.println("Service正执行查找最新注册的用户操作......");
		return userinfoDao.FindFinalUser();
	}

}
