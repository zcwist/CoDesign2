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
	<script type="text/javascript">
		var obj={
		s:"这是允许的"
		};
		console.log(obj.s);
		
	</script>
	
	<!-- Ext相关包 -->
	<link rel="stylesheet" type="text/css" href="Ext/resources/css/ext-all.css"/>
	<script type="text/javascript" src="Ext/bootstrap.js"></script>
	
	
  </head>
  
  <body>
  	<script type="text/javascript">
  		Ext.onReady(function(){
  			//Ext.create('Ext.Viewport',{
  				new Ext.Viewport({
  					layout:'fit',
  					item:[{
		  				xtype:"panel",
		  				title:"welcome",
		  				html:"<h1 style='text-align:center; font-size:60px;font-weight:bold;'>Hello World</h1>"
		  				}]
  			});
  		})
  	</script>

  </body>
</html>
