<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<script src="jquery-3.1.1.min.js"></script>
<script> 
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow");
  });
});
</script>
 
<style type="text/css"> 
#panel,#flip
{
	
	text-align:center;
	background-color:#pink;
	border:solid 1px #c3c3c3;
}
#panel
{
	
	display:none;
}
</style>
</head>
<body>
      <a href="${ pageContext.request.contextPath }/user_findAll.action" target="right">管理用户</a>
        <div id="flip">个人信息浏览</div>
<div id="panel"><a href="${ pageContext.request.contextPath }/user_edit_geren.action?user_id=<s:property value="#session.existuser.user_id"/>" target="right">修改个人信息 </a><br/>
<a href="${ pageContext.request.contextPath }/user_findAll.action" target="right">修改密码</a>
</div>

</body>
</html>
