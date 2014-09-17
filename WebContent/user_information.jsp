<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@taglib prefix="s" uri="/struts-tags"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录成功界面</title>  
	<link rel="stylesheet" type="text/css" href="css/jsp.css">
  </head>
  
  <body>
  
  <h2 align="center" class=form-signin-heading>用户信息</h2>
  <s:if test="#session.adm.AdminName != null">
  	<jsp:include page="admin_link.jsp"></jsp:include>
  </s:if>
  <s:else>
  	<jsp:include page="user_link.jsp"></jsp:include>
  </s:else>
  <form class=form-signin> 
  	<label class=input-label for="UserName">用户昵称：</label><br> 
  	<s:property value="#session.user.UserNick"/> <br> 
  	<label class=input-label for="UserName">真实姓名：</label><br> 
  	<s:property value="#session.user.UserName"/> <br> 	
	<label class=input-label for="password">密码：</label><br>  
	<s:property value="#session.user.UserPassword"/><br>
	<label class=input-label for="password">性别：</label><br>  
	<s:property value="#session.user.UserSex"/><br> 		
	<label class=input-label for="PhoneNum">电话号码：</label><br>  
	<s:property value="#session.user.UserPhone"/> <br>		
	<label class=input-label for="Email">E-mail：</label> <br> 
	<s:property value="#session.user.UserEmail"/> <br> 
	<label class=input-label for="Department">所在院系：</label><br>  
	<s:property value="#session.user.UserDepartment"/> <br>
	<label class=input-label for="Department">所在班级：</label><br>  
	<s:property value="#session.user.UserClass"/> <br>
	<label class=input-label for="UserAddress">地址：</label><br>  
	<s:property value="#session.user.UserAddress"/> <br> 
	<s:if test="#session.adm.AdminName != null">
		<input type="button" value="修改信息" onClick="location.href='user_update.jsp'" class="btn btn-large btn-primary form-signin"><br><br>  		  	
		<input type="button" value="注销用户" onClick="location.href='DeleteUser'" class="btn btn-large btn-primary form-signin"><br><br>  
	</s:if>
	<s:else>
		<input type="button" value="退出账号" onClick="location.href='UserLogout'" class="btn btn-large btn-primary form-signin"><br><br>  
		<input type="button" value="修改信息" onClick="location.href='user_update.jsp'" class="btn btn-large btn-primary form-signin"><br><br>  		  
	</s:else>
	</form>
  </body>
</html>
