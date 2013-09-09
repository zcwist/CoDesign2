<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<!-- Ext相关包 -->
	<script src="http://cdn.sencha.com/ext/gpl/4.2.1/ext-all.js"></script>
    <link rel="stylesheet" href="http://cdn.sencha.com/ext/gpl/4.2.1/resources/ext-theme-classic/ext-theme-classic-all.css">
    <script type="text/javascript" src="Ext/CoDesign/HelloWorld.js"></script>
	
  </head>
  
  <body>
  	

  </body>
</html>
