<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head> 
  <body>
  <a href="index.jsp">主页</a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="AdminLogout">退出</a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="admin_action.jsp"><s:property value="#session.adm.AdminName"/></a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <a href="javascript:history.go(-1)">上一步</a>
  
		
  </body>
</html>
