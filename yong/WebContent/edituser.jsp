<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'edituser.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	
</script>
<style type="text/css">
.button {
	background-color: #8080c0;
	border: none;
	color: white;
	padding: 10px 26px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
</head>

<body>

	<a href="javascript:document.getElementById('saveForm').submit()"
		class="button">保存</a> &nbsp;&nbsp;
	<a href="javascript:history.go(-1)" class="button">退回</a>
	<s:form action="user_update" method="post" namespace="/" id="saveForm"
		theme="simple">
		<s:hidden name="user_id" value="%{model.user_id}" />

		<table border="0" width="300" height="500">
			<tr>
				<td>账号：</td>
				<td><s:textfield name="account" value="%{model.account}"
						readonly="true" /></td>
				<td>用户名：</td>
				<td><s:textfield name="name" value="%{model.name}" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><s:password name="password" value="%{model.password}"
						showPassword="true" /></td>
				<td>性别：</td>
				<td><s:radio name="six" list="{'男','女'}" value="%{model.six}" /></td>
			</tr>
			<tr>
				<td>钱包：</td>
				<td><s:textfield name="wallet" value="%{model.wallet}" /></td>
				<td>电话：</td>
				<td><s:textfield name="phone" value="%{model.phone}" /></td>
			</tr>
			<tr>
				<td>身份证：</td>
				<td><s:textfield name="idCard" value="%{model.idCard}" /></td>
				<td>驾驶证号：</td>
				<td><s:textfield name="drive" value="%{model.drive}" /></td>
			</tr>
			<tr>
				<td>邮箱：</td>
				<td><s:textfield name="email" value="%{model.email}" /></td>
				<td>地址：</td>
				<td><s:textfield name="address" value="%{model.address}" /></td>
			</tr>

			</s:form>
		</table>
</body>
</html>
