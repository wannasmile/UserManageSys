package com.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.hibernate.SQLQuery;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.UserInfoDao;
import com.model.UserInfo;

public class UserInfoDaoImpl extends HibernateDaoSupport implements UserInfoDao {
	//检查用户是否已经存在
	@SuppressWarnings("rawtypes")
	public boolean existUser(String name, String passwd) {
		List list = this.getHibernateTemplate().find("from UserInfo where name=? and passwd=?",name,passwd);
		if(list.size()>0) {
			return true;
		}
		else 
			return false;
	}
	
	//添加用户
	@SuppressWarnings("unused")
	public boolean InsertUser(UserInfo user) {
		//获得注册时间，二是用来给用户安排编号
		String NowDate = new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime());	
		//String DateNum = new SimpleDateFormat("yyyyMM").format(Calendar.getInstance().getTime());
		UserInfo finalUser = FindFinalUser();
		String UserNo="";
		if(finalUser == null)
			UserNo = "u201300001";
		else {
			String UserNum = finalUser.getUserNo().substring(1, 9);
			UserNo ="u"+String.valueOf(Integer.parseInt(UserNum.trim())+1).trim();
			
		}
		System.out.println("正执行用SQL语句添加用户......");
		String sql = "insert into user_info values ('"+UserNo+"','"+user.getUserNick()+"','"+user.getUserName()+"','"+user.getUserPassword()
				+"','"+user.getUserSex()+"','"+user.getUserDepartment()+"','"+user.getUserClass()+"','"+user.getUserPhone()+"','"
				+user.getUserEmail()+"','"+user.getUserAddress()+ "','"+NowDate+"')";
		int sqlQuery = this.getSession().createSQLQuery(sql).executeUpdate();
		UserInfo user0 = null;
		user = FindUser(user.getUserName(),user.getUserPassword());
		if( user == null)
			return false;
		else
			return true;
	}


	//查询用户【sql查询】
	@SuppressWarnings("unchecked")
	public UserInfo FindUser(String UserNo,String UserPassword) {
		System.out.println("正执行用SQL语句查询用户......");
		String sql = "select * from user_info where user_no = '"+UserNo+"' and "+"user_password = '"+UserPassword+"'";
		SQLQuery sqlQuery = this.getSession().createSQLQuery(sql).addEntity(UserInfo.class);
		List<UserInfo> list = sqlQuery.list();
		//System.out.println(list.get(0).getUserNo());
		if(list.size()>0) 
			return (UserInfo)list.get(0);
		return null;	
	}



	//查找所有用户
	@SuppressWarnings("unchecked")
	public ArrayList<UserInfo> FindAllUser() {
		System.out.println("Dao正在查找所有用户......");
		String sql = "select * from user_info";
		SQLQuery sqlQuery = this.getSession().createSQLQuery(sql).addEntity(UserInfo.class);
		ArrayList<UserInfo> userList = (ArrayList<UserInfo>)sqlQuery.list();
		return userList;
	}

	//删除用户
	@SuppressWarnings("unused")
	public void DeleteUser(UserInfo user) {
		String sql = "delete from user_info where user_no = '"+user.getUserNo()+"'";
		int sqlQuery = this.getSession().createSQLQuery(sql).executeUpdate();
		if(FindUser(user.getUserName(),user.getUserPassword()) == null)
			System.out.println("Dao删除用户成功！");
		else
			System.out.println("Dao删除用户失败！");
	}

	//更新用户信息
	public void UpdateUser(UserInfo user) {
		System.out.println("UserNo = "+user.getUserNo());	
		String sql = "update user_info set user_nick = '"+user.getUserNick()+"', user_name = '"+user.getUserName()+"',user_password ='"+user.getUserPassword()+"', user_sex ='"+user.getUserSex()
					+"', user_department = '"+user.getUserDepartment()+"', user_class = '"+user.getUserClass()+"', user_phone = '"
					+user.getUserPhone()+"', user_email = '"+user.getUserEmail()+"', user_address = '"+user.getUserAddress()+"' "+"where user_no = '"
					+user.getUserNo()+"'";
		int sqlQuery = this.getSession().createSQLQuery(sql).executeUpdate();
		if(sqlQuery == 1)
			System.out.println("Dao更新用户成功！");
		else
			System.out.println("Dao更新用户失败！");
		
	}
	
	//根据用户编号查找用户
	@SuppressWarnings("unchecked")
	public UserInfo FindUserByNo(String UserNo) {
		String sql = "select * from user_info where user_no = '"+UserNo+"'";
		SQLQuery sqlQuery = this.getSession().createSQLQuery(sql).addEntity(UserInfo.class);
		List<UserInfo> list = sqlQuery.list();
		if(list.size()>0) {
			System.out.println("Dao根据UserNo查找到用户");
			return (UserInfo)list.get(0);
		}
		return null;
	}
		
	//查找最新注册的一个用户
	@SuppressWarnings("unchecked")
	public UserInfo FindFinalUser() {
		String sql = "select * from user_info order by user_no desc";
		SQLQuery sqlQuery = this.getSession().createSQLQuery(sql).addEntity(UserInfo.class);
		List<UserInfo> list = sqlQuery.list();
		if(list.size() > 0)
			return (UserInfo)list.get(0);
		else
			return null;
	}
	
	
}
