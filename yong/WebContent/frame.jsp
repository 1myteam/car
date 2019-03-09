<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html> 
<head>
<meta content="utf-8"/>
</head>
<frameset rows="80,*">
   <frame name="top" src="${ pageContext.request.contextPath }/top.jsp">
   <frameset cols="150,*" id="main">

      <frame src="${ pageContext.request.contextPath }/left.jsp"> 
     <frame name="right" src="${ pageContext.request.contextPath }/right.jsp">
   </frameset>
</frameset>
</html>