<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	
  
  <body>
  <jsp:include page="../Top.jsp"></jsp:include>
  			<table class="cxzghvcjhzhjs">
		  				<tr>
		  					<td>产品名字</td>
		  					<td>产品图片</td>
		  					<td>产品价钱</td>
		  					<td>会员价</td>
		  				</tr>
		  				<s:forEach items="${searchName}" var="i">
		  				<tr>
		  					<td>${i.GoodsName}</td>
		  					<td>${i.GoodsUrl}</td>
		  					<td>${i.MarketPrice}</td>
		  					<td>${i.MemberPrice}</td>
		  				</tr>
		  				</s:forEach>
		  			</table>
	</body>
</html>
    
<jsp:include page="../Bottom.jsp"></jsp:include>
</body>
</html>