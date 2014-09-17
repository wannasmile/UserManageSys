<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  errorPage="error.jsp"   %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML ><HEAD><TITLE>用户登录</TITLE>



<META name=decorator content=default>
<link rel="stylesheet" type="text/css" href="css/jsp.css">
<script type="text/javascript">
	
</script>
<body>
<s:if test="#session.adm.AdminName != null">
  	<jsp:include page="admin_link.jsp"></jsp:include>
  </s:if>
  <s:else>
  	<jsp:include page="user_link.jsp"></jsp:include>
  </s:else>
<h1 class=form-signin-heading>用户登录</h1>
<form class=form-signin method="post" action="UserLogin">

<label class=input-label>账号</label> 
<input class="input-block-level required" name="userinfo.UserNo"> 
<label class=input-label>密码</label> 
<input class="input-block-level required" type=password name="userinfo.UserPassword"> 

<input class="btn btn-large btn-primary" value="登 录" type="submit">&nbsp;&nbsp;
 </form>
</body>
</HTML>
