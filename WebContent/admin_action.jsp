<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/jsp.css" >
<title>管理员操作</title>
</head>
<body>
	<jsp:include page="admin_link.jsp"></jsp:include>
	<h2 align="center" class=form-signin-heading>管理员操作</h2>
	<form class=form-signin>			
	<input type="button" value="添加用户" onClick="location.href='user_register.jsp'" class="btn btn-large btn-primary form-signin"><br><br>
	<input type="button" value="所有用户" onClick="location.href='AllUser'" class="btn btn-primary form-signin"><br><br>
	</form>
</body>
</html>