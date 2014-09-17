package com.service;

import java.util.ArrayList;

import com.model.UserInfo;

public interface UserInfoService {
	public boolean InsertUser(UserInfo user);
	public UserInfo FindUser(String UserNo,String UserPassword);
	public UserInfo FindUserByNo(String UserNo);
	public ArrayList<UserInfo> FindAllUser();
	public void DeleteUser(UserInfo user);
	public void UpdateUser(UserInfo user);
	public UserInfo FindFinalUser();
}
