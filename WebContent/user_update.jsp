<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@taglib prefix="s" uri="/struts-tags"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
	<title>用户信息更新</title> 
	  <link rel="stylesheet" type="text/css" href="css/jsp.css">
  </head>
  <script type="text/javascript">
  
  	function UserUpdateCheck(){ 		
 //*
 	var js_UserNick = document.getElementById("userNick").value;
 	var js_UserName = document.getElementById("userName").value;
	var js_UserPassword = document.getElementById("userPassword").value;
	var js_UserPhone = document.getElementById("userPhone").value;
	var js_UserEmail = document.getElementById("userEmail").value;
	var js_UserDepartment = document.getElementById("userDepartment").value;
	var js_UserClass = document.getElementById("userClass").value;
	var js_UserAddress = document.getElementById("userAddress").value;
	if((js_UserNick.length > 20) || (js_UserNick == "")){
		alert("请输入长度在20位内的用户名！");
		return false;
	}
	if((js_UserName.length > 20) || (js_UserName == "")){
		alert("请输入长度在20位内的用户名！");
		return false;
	}
	if((js_UserPassword.length > 20) || (js_UserPassword == "")) {
		alert("请输入长度在20位内的密码！");
		return false;
	}
	if((!document.getElementById("userSexMale").checked)&&(!document.getElementById("userSexFemale").checked)){
		alert("性别不能为空！");
		return false;
	}
	if((js_UserPhone == "") || (js_UserPhone.length > 20)){
		alert("请输入长度不大于20的电话号码！");
		return false;
	}
	if(!/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(js_UserEmail)){
		alert("请输入正确的邮箱格式！");
		return false;
 	}
	if((js_UserDepaerment.length > 20) || (js_UserDepartment == "")){
		alert("请输入长度不大于20的部门名称！");
		return false;
	}
	if((js_UserClass.length > 20) || (js_UserClass == "")){
		alert("请输入长度不大于20的班级名称！");
		return false;
	}
	
	if((js_UserAddress.length > 50) || (js_UserAddress == "")){
		alert("请输入长度不大于50的地址！");
		return false;
	}
	else{ 
		return true;
	}
	//*/  
  }
  </script>
  <link rel="stylesheet" type="text/css" href="css/jsp.css">
  
  
  <body>
  <h1 align="center" class=form-signin-heading>更新帐号信息</h1><hr>
  <form class=form-signin method="post" action="UpdateUser">
	<label class=input-label>用户昵称</label> 
	<input class="input-block-level required" name="userinfo.UserNick" value=<s:property value="#session.user.UserNick"/>  id="userNick"> 
	<label class=input-label>真实姓名</label> 
	<input class="input-block-level required" name="userinfo.UserName" value=<s:property value="#session.user.UserName"/> id="userName"> 
	<label class=input-label>密&nbsp;&nbsp;&nbsp;&nbsp;码</label> 
	<input class="input-block-level required" type="password" name="userinfo.UserPassword" value=<s:property value="#session.user.UserPassword"/> id="userPassword">
	<label class=input-label>性&nbsp;&nbsp;&nbsp;&nbsp;别</label><br>
	<label class=input-label>男：</label>
	<input type="radio" name="userinfo.UserSex" value="男" id="userSexMale"> &nbsp;&nbsp;&nbsp;
	<label class=input-label>女：</label>
	<input type="radio" name="userinfo.UserSex" value="女" id="userSexFemale"><br>
	 <label class=input-label>院系</label> 
	<input class="input-block-level required" name="userinfo.UserDepartment" value=<s:property value="#session.user.UserDepartment"/> id="userDepartment">
	<label class=input-label>班级</label> 
	<input class="input-block-level required" name="userinfo.UserClass" value=<s:property value="#session.user.UserClass"/> id="userClass">	
	<label class=input-label>电话号码</label> 
	<input class="input-block-level required" name="userinfo.UserPhone" value=<s:property value="#session.user.UserPhone"/> id="userPhone"> 	
	<label class=input-label>E-mail</label> 
	<input class="input-block-level required" name="userinfo.UserEmail" value=<s:property value="#session.user.UserEmail"/> id="userEmail"> 
	<label class=input-label>地&nbsp;&nbsp;&nbsp;&nbsp;址</label> 
	<input class="input-block-level required" name="userinfo.UserAddress"   value=<s:property value="#session.user.UserAddress"/>  id="userAddress">  		
	
	<input class="btn btn-large btn-primary" value="提交注册" type="submit" onClick="return UserUpdateCheck();">
	
	</form>
  </body>
</html>
