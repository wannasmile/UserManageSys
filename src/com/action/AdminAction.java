package com.action;

import java.util.Map;

import com.model.AdminInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.AdminInfoService;

public class AdminAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3507905133747639599L;
	private AdminInfoService adminInfoService;
	private AdminInfo adminInfo;
	//getter and setter	
	public AdminInfoService getAdminInfoService() {
		return adminInfoService;
	}

	public void setAdminInfoService(AdminInfoService adminInfoService) {
		this.adminInfoService = adminInfoService;
	}

	public AdminInfo getAdminInfo() {
		return adminInfo;
	}

	public void setAdminInfo(AdminInfo adminInfo) {
		this.adminInfo = adminInfo;
	}

	//action
	//管理员登录操作
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String AdminLogin() throws Exception {
		System.out.println("Action正执行管理员登录操作......");
		Map session = (Map)ActionContext.getContext().getSession();
		AdminInfo adm0 = (AdminInfo)session.get("adm");
		if(adm0 != null)
			session.remove("adm");
		AdminInfo adm = adminInfoService.FindAdmin(adminInfo.getAdminName(), adminInfo.getAdminPassword());
		if(adm != null) {
			
			session.put("adm", adm);
			System.out.println("管理员登录成功！");
			return "AdminLoginSuccess";
		}
		else {
			System.out.println("查找不到管理员，登录失败！");
			return "AdminLoginFailure";
		}	
	}
	
	//管理员添加操作
	@SuppressWarnings({ "unused", "rawtypes" })
	public String AddAdmin() throws Exception {
		Map request = (Map)ActionContext.getContext().get("request");
		if(adminInfo == null) {
			System.out.println("Action添加失败！");
			return "AddAdminFailure";
		}
		else {
			System.out.println("Server添加管理员......");
			adminInfoService.InsertAdmin(adminInfo);
			System.out.println("管理员添加成功！");
			return "AddAdminSuccess";
		}
	}
	
	//管理员退出操作
	@SuppressWarnings("rawtypes")
	public String AdminLogout() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
		session.clear();
		return SUCCESS;
	}
	

}
