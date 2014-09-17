<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html><head><title>管理员登录</title>

<link rel="stylesheet" type="text/css" href="css/jsp.css">
</head>
	<script type="text/javascript">
	function AdminLoginCheck() {	
		var js_Name = document.getElementById("adminName").value;
		var js_Password = document.getElementById("adminPassword").value;
		if(js_Name == "") {
			alert("管理员名不能空！");
			return false;
		}
		if(js_Name.length > 20){
			alert("管理员名长度不能超过20！");
			return false;
		}
		if(js_Password == "") {
			alert("密码不能为空！");
			return false;
		}
		if(js_Password.length > 20){
			alert("密码长度不能超过20！");
			return false;
		}		
		else {
			return true;
		}
	}
</script>
<body>

<h1 class=form-signin-heading>管理员登录</h1>
<form class=form-signin method="post" action="AdminLogin">

<label class=input-label for="AdminName">登录名</label> 
<input class="input-block-level required" name="adminInfo.AdminName" id="adminName"> 
<label class=input-label for="AdminPassword">密码</label> 
<input class="input-block-level required" type=password name="adminInfo.AdminPassword" id="adminPassword"> 

<input class="btn btn-large btn-primary" value="登 录" type="submit" onClick="return AdminLoginCheck();" >&nbsp;&nbsp;
 </form>
</body>
</html>
