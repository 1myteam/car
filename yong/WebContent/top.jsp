<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


</head>

<body bgcolor="yellow">
<div class="div1">
欢迎您：<s:property value="#session.existuser.account"/>
</div>
</body>
</html>
