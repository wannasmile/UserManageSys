<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="error.jsp" %>
<%@taglib prefix="s" uri="/struts-tags"   %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
	<title>管理员注册</title> 
	  <link rel="stylesheet" type="text/css" href="css/jsp.css">
  </head>
  
  <link rel="stylesheet" type="text/css" href="css/jsp.css">
  <script type="text/javascript">
	function AdminRegisterCheck() {	
		var js_Name = document.getElementById("adminName").value;
		var js_Password = document.getElementById("adminPassword").value;
		if(js_Name == "") {
			alert("管理员名不能空！");
			return false;
		}
		if((js_Name.length > 0) && (js_Name.length > 20)){
			alert("管理员名长度不能超过20！");
			return false;
		}
		if(js_Password == "") {
			alert("密码不能为空！");
			return false;
		}
		if((js_Password.length > 0) && (js_Password.length > 20)){
			alert("密码长度不能超过20！");
			return false;
		}		
		else {
			return true;
		}
	}
</script>
  
  <body>
  <h1 align="center" class=form-signin-heading>管理员注册</h1><hr>
  <form class=form-signin method="post" action="AddAdmin">
	<label class=input-label for="AdminName">登录名</label> 
	<input class="input-block-level required" name="admin.AdminName" id="adminName"> 
	<label class=input-label for="password">密码</label> 
	<input class="input-block-level required" type=password name="admin.AdminPassword" id="adminPassword"> 	
			
	<input class="btn btn-large btn-primary" value="提交注册" type="submit" onClick="return AdminRegisterCheck();">
	</form>
  </body>
</html>
