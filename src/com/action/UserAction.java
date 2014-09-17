package com.action;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.model.AdminInfo;
import com.model.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UserInfoService;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	private UserInfoService userinfoService;
	private UserInfo userinfo;
	//getter,setter
		public UserInfoService getUserinfoService() {
			return userinfoService;
		}

		public void setUserinfoService(UserInfoService userinfoService) {
			this.userinfoService = userinfoService;
		}

		public UserInfo getUserinfo() {
			return userinfo;
		}

		public void setUserinfo(UserInfo userinfo) {
			this.userinfo = userinfo;
		}
	

	//用户登录操作
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String UserLogin() throws Exception{
		System.out.println("Action用户正在登录......");
		Map session = (Map)ActionContext.getContext().getSession();
		UserInfo user0 = (UserInfo)session.get("user");
		if(user0 != null)
			session.remove("user");
		UserInfo user = userinfoService.FindUser(userinfo.getUserNo(), userinfo.getUserPassword());
		if(user!=null) {			
			session.put("user", user);
			System.out.println("用户登录成功！");
			return "LoginSuccess";
		}			
		else {
			System.out.println("查找不到用户，登录失败！");
			return "LoginFailure";
		}	
	}
	
	//用户退出操作
	@SuppressWarnings("rawtypes")
	public String UserLogout() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
		session.remove("user");
		return SUCCESS;
	}
	
	//添加用户操作
	@SuppressWarnings({ "unchecked", "rawtypes", "unused" })
	public String AddUser() throws Exception {
		Map request = (Map)ActionContext.getContext().get("request");
		Map session = (Map)ActionContext.getContext().getSession();
		session.remove("user");
		if(userinfo==null) {
			System.out.println("Action添加失败！");
			return "registerFailure";
		}
		else {
			System.out.println("Server添加用户......");
			userinfoService.InsertUser(userinfo);
			System.out.println("用户添加成功！");		
			UserInfo user = userinfoService.FindFinalUser();			
			session.put("user",user);
			return "registerSuccess";
		}	
	}
	
	//删除用户操作
	@SuppressWarnings("rawtypes")
	public String DeleteUser() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
		AdminInfo adm0 = (AdminInfo)session.get("adm");
		if(adm0 == null)	//不是管理员
			return "NoAuthority";	//没有权限	
		UserInfo user0 = (UserInfo)	session.get("user");
		userinfoService.DeleteUser(userinfoService.FindUserByNo(user0.getUserNo()));
		if(userinfoService.FindUserByNo(user0.getUserNo()) == null)
			return "DeleteUserSuccess";
		else 
			return "DeleteUserFailure";
	}
	
	//更新用户操作
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String UpdateUser() throws Exception {
		UserInfo updateUser=null;
		Map session = (Map)ActionContext.getContext().getSession();
		UserInfo user0 = (UserInfo)session.get("user");
		userinfo.setUserNo(user0.getUserNo());
		
		System.out.println("userinfo.UserNo = "+userinfo.getUserNo());
		userinfoService.UpdateUser(userinfo);
		updateUser = userinfoService.FindUserByNo(userinfo.getUserNo());
	
		session.put("user", updateUser);
		return "UpdateUserSuccess";
	}

	
	//查找所有的用户
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String AllUser() throws Exception {
		Map session = (Map)ActionContext.getContext().getSession();
		AdminInfo adm0 = (AdminInfo)session.get("adm");
		if(adm0 == null)	//不是管理员
			return "NoAuthority";	//没有权限
		
		ArrayList<UserInfo> userList0 = (ArrayList<UserInfo>)session.get("userList");
		if(userList0 != null)
			session.remove("userList");
		ArrayList<UserInfo> userList = userinfoService.FindAllUser();
		if(userList != null) {
			System.out.println("Action找到所用用户！");
			
			session.put("userList", userList);
			return "AllUserSuccess";
		}
		else {
			System.out.println("Action找不到所用户！");
			return "AllUserFailure";
		}		
	}
	
	//查看用户信息
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String CheckUser() throws Exception {
		System.out.println("Action正执行Admin查看用户信息操作......");
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("UserNo ="+request.getParameter("UserNo"));
		//Integer UserNo = Integer.parseInt(request.getParameter("UserNo"));
		String UserNo = request.getParameter("UserNo");
		System.out.println("UserNo ="+UserNo);
		UserInfo user = userinfoService.FindUserByNo(UserNo);
		Map session = (Map)ActionContext.getContext().getSession();
		session.put("user", user);
		return "CheckUserSuccess";
	}
	
	
	
}
