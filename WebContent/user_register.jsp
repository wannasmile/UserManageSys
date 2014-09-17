<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="error.jsp" %>
<%@taglib prefix="s" uri="/struts-tags"   %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
	<title>用户注册界面</title> 
	  <link rel="stylesheet" type="text/css" href="css/jsp.css">
  </head>
  
  <link rel="stylesheet" type="text/css" href="css/jsp.css">
  <script type="text/javascript">
  
  	function UserRegisterCheck(){ 		
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
  
  <body>
  <s:if test="#session.adm.AdminName != null">
  	<jsp:include page="admin_link.jsp"></jsp:include>
  </s:if>
  <s:else>
  	<jsp:include page="user_link.jsp"></jsp:include>
  </s:else>
  <h2 align="center" class=form-signin-heading>欢迎注册帐号</h2><hr>
  <form class=form-signin method="post" action="AddUser">
  	<label class=input-label>用户昵称</label> 
	<input class="input-block-level required" name="userinfo.UserNick" id="userNick"> 
	<label class=input-label>真实姓名</label> 
	<input class="input-block-level required" name="userinfo.UserName" id="userName"> 
	<label class=input-label>密&nbsp;&nbsp;&nbsp;&nbsp;码</label> 
	<input class="input-block-level required" type=password name="userinfo.UserPassword" id="userPassword">
	<label class=input-label>性&nbsp;&nbsp;&nbsp;&nbsp;别</label><br>
	<label class=input-label>男：</label>
	<input type="radio" name="userinfo.UserSex" value="男" id="userSexMale"> &nbsp;&nbsp;&nbsp;
	<label class=input-label>女：</label>
	<input type="radio" name="userinfo.UserSex" value="女" id="userSexFemale"><br>
	 <label class=input-label>院系</label> 
	<input class="input-block-level required" name="userinfo.UserDepartment" id="userDepartment">
	<label class=input-label>班级</label> 
	<input class="input-block-level required" name="userinfo.UserClass" id="userClass">	
	<label class=input-label>电话号码</label> 
	<input class="input-block-level required" name="userinfo.UserPhone" id="userPhone"> 	
	<label class=input-label>E-mail</label> 
	<input class="input-block-level required" name="userinfo.UserEmail" id="userEmail"> 
	<label class=input-label>地&nbsp;&nbsp;&nbsp;&nbsp;址</label> 
	<input class="input-block-level required" name="userinfo.UserAddress" id="userAddress">  		
	<input class="btn btn-large btn-primary" value="提交注册" type="submit" onClick="return UserRegisterCheck();">
	</form>
  </body>
</html>
