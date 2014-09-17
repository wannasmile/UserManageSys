<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@taglib prefix="s" uri="/struts-tags"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎界面</title>
	
	  <link rel="stylesheet" type="text/css" href="css/jsp.css">
  </head>
	
  <body>
  <s:if test="#session.adm.AdminName != null">
  	<jsp:include page="admin_link.jsp"></jsp:include>
  </s:if>
  <s:elseif test="#session.user.UserName != null">
  	<jsp:include page="user_link.jsp"></jsp:include>
  </s:elseif>
  <h1 align="center"  class=form-signin-heading>大海用户管理DEMO</h1>
  <form class=form-signin>
  	<p align="center">
  	<input type="button" value="管理员登录" onClick="location.href='admin_login.jsp'" class="btn btn-large btn-primary form-signin"><br><br>
	<input type="button" value="用户登录" onClick="location.href='user_login.jsp'" class="btn btn-large btn-primary form-signin"><br><br>
	<input type="button" value="用户注册" onClick="location.href='user_register.jsp'" class="btn btn-large btn-primary form-signin"><br><br>
   </p>
   </form>
  </body>
</html>
