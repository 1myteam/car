<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
<a href="javascript:document.getElementById('saveForm').submit()"
				class="button">保存</a> &nbsp;&nbsp;
			<a href="javascript:history.go(-1)" class="button">退回</a>
	    <s:form action="user_update_geren" method="post" namespace="/" id="saveForm"
		theme="simple">
		<s:hidden name="user_id" value="%{model.user_id}" />
		<s:hidden name="password" value="%{model.password}" />
		<table border="0" width="200" height="500">
			<tr>
				<td>账号：</td>
				<td><s:textfield name="account" value="%{model.account}"
						readonly="true" /></td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><s:textfield name="name" value="%{model.name}" /></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td><s:radio name="six" list="{'男','女'}" value="%{model.six}" /></td>
			</tr>
			<tr>
				<td>钱包：</td>
				<td><s:textfield name="wallet" value="%{model.wallet}"
						readonly="true" /></td>
			</tr>
			<tr>
				<td>电话：</td>
				<td><s:textfield name="phone" value="%{model.phone}" /></td>
			</tr>
			<tr>
				<td>身份证：</td>
				<td><s:textfield name="idCard" value="%{model.idCard}" /></td>
			</tr>
			<tr>
				<td>驾驶证号：</td>
				<td><s:textfield name="drive" value="%{model.drive}" /></td>
			</tr>
			<tr>
				<td>邮箱：</td>
				<td><s:textfield name="email" value="%{model.email}" /></td>
			</tr>
			<tr>
				<td>地址：</td>
				<td><s:textfield name="address" value="%{model.address}" /></td>
			</tr>
			</s:form>
			
</body>
</html>