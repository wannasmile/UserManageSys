<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理员操作</title>  
	<link rel="stylesheet" type="text/css" href="css/jsp.css">
  </head>
  
  <body>
  <jsp:include page="admin_link.jsp"></jsp:include>
	<h1 align="center"  class=form-signin-heading>管理员操作</h1>
  <form class=form-signin> 
  	<label class=input-label for="AdminName">登录名：</label><br> 
  	<s:property value="#session['adm'].AdminName"/> <br> 	
	<label class=input-label for="AdminPassword">密码：</label><br>  
	<s:property value="#session['adm'].AdminPassword"/><br>
	<input type="button" value="添加用户" onClick="localtion.href='user_register.jsp'" class="btn btn-large btn-primary form-signin"><br><br>
	<input type="button" value="所有用户" onClick="localtion.href='AllUser'" class="btn btn-primary form-signin"><br><br>
	 <hr>
	 <s:a href="AdminLogout">退出帐号</s:a> <br>
	</form>
  </body>
</html>
