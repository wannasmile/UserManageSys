<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="css/jsp.css">
  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有用户</title>
</head>
<body>
	<s:if test="#session.adm.AdminName != null">
  		<jsp:include page="admin_link.jsp"></jsp:include>
  	</s:if>
 
	<h1 align="center" class=form-signin-heading>所有用户</h1>
	<table width="800" height="10" align="center">
    		<tr height="10">
    			<td align="center">操作</td>
    			<td align="center">用户No</td>
    			<td align="center">用户名</td>
    			<td align="center">用户密码</td>
    			<td align="center">性别</td>
    			<td align="center">电话号码</td>
    			<td align="center">邮箱</td>
    			<td align="center">所在部门</td>
    			<td align="center">地址</td>
    			<td align="center">注册时间</td>	
    		</tr>
    		
    		<s:iterator value="#session.userList" id="user">
    			<tr height="10">
    				<td>&nbsp;<s:a href="CheckUser?UserNo=%{#user.UserNo}">查看</s:a>
    				<td><s:property value="#user.UserNo" /></td>
    				<td><s:property value="#user.UserName" /></td>
    				<td><s:property value="#user.UserPassword" /></td>
    				<td><s:property value="#user.UserSex" /></td>
    				<td><s:property value="#user.PhoneNum" /></td>
    				<td><s:property value="#user.Email" /></td>
    				<td><s:property value="#user.Department" /></td>
    				<td><s:property value="#user.UserAdress" /></td>
    				<td><s:property value="#user.CreateTime" /></td>
    			
    			</tr>
    		</s:iterator>
    	</table>
</body>
</html>