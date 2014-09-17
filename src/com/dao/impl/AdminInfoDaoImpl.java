package com.dao.impl;

import java.util.List;

import org.hibernate.SQLQuery;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.AdminInfoDao;
import com.model.AdminInfo;

public class AdminInfoDaoImpl extends HibernateDaoSupport implements AdminInfoDao {

	@SuppressWarnings("unused")
	public boolean InsertAdmin(AdminInfo adm) {
		String sql = "insert into admin_info value( '"+adm.getAdminName()+"','"+adm.getAdminPassword()+"')";
		int sqlQuery = this.getSession().createSQLQuery(sql).executeUpdate(); 
		if(FindAdmin(adm.getAdminName(),adm.getAdminPassword()) != null)
			return true;
		else
			return false;
	}

	@SuppressWarnings("unchecked")
	public AdminInfo FindAdmin(String AdminName, String AdminPassword) {
		String sql = "select * from admin_info where admin_name = '"+AdminName+"' and  admin_password = '"+AdminPassword+"'";
		SQLQuery sqlQuery = this.getSession().createSQLQuery(sql).addEntity(AdminInfo.class);
		List<AdminInfo> list = sqlQuery.list();
		if(list.size()>0) {
			System.out.println("Dao查找到管理员！");
			return (AdminInfo)list.get(0);
		}
		else {
			System.out.println("Dao查找不到管理员！");
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public AdminInfo FindAdminById(Integer AdminNo) {
		String sql = "select * from LibrarySys..AdminInfo where admin_no = '"+AdminNo+"'";
		SQLQuery sqlQuery = this.getSession().createSQLQuery(sql).addEntity(AdminInfo.class);
		List<AdminInfo> list = sqlQuery.list();
		if(list.size()>0) {
			System.out.println("Dao查找到管理员！");
			return (AdminInfo)list.get(0);
		}
		else {
			System.out.println("Dao查找不到管理员！");
			return null;
		}
	}

}
