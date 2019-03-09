<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<head>
   <style>
    .button {
    background-color: #4CAF50;
    border: none;
    color: black;
    padding: 10px 26px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
}
     td{
     align:center
     }
</style>

  </head> 
  <body>
   <table border="0" width="900px">
<tr>
<td align="left" width="39%" style="font-size:24px; color:#999"> 个人信息管理</td>
<td width="57%" align="right">
     <a href="${ pageContext.request.contextPath }/user_saveUI.action" class="button">添加</a>
</td>
</tr>
</table>

 <br/>
  <table cellspacing="0" border="1" class="table1">
<thead>
   <tr><th width="10%">账号</th>
   <th width="10%">用户名</th>
   <th width="10%">钱包</th>
   <th width="10%">性别</th>
   <th width="10%">身份证</th>
   <th width="10%">电话</th>
   <th width="10%">驾驶证号</th>
   <th width="10%">邮箱</th>
   <th width="10%">地址</th>
   <th  width="5%">编辑</th>
   <th  width="5%">删除</th>
   </tr>
</thead>
<tbody>
<s:iterator value="list" var="u">
<tr>
<td ><s:property value="#u.account"/></td>
<td ><s:property value="#u.name"/></td>
<td ><s:property value="#u.wallet"/></td>
<td ><s:property value="#u.six"/></td>
<td ><s:property value="#u.idCard"/></td>
<td ><s:property value="#u.phone"/></td>
<td ><s:property value="#u.drive"/></td>
<td ><s:property value="#u.email"/></td>
<td ><s:property value="#u.address"/></td>
<td ><a href="${ pageContext.request.contextPath }/user_edit.action?user_id=<s:property value="#u.user_id"/>">修改 </a></td>
<td ><a href="${ pageContext.request.contextPath }/user_delete.action?user_id=<s:property value="#u.user_id"/>">删除</a></td>
</tr>
</s:iterator>
</tbody>
</table>
<br/>


<table border="0" cellspacing="0" cellpadding="0"  width="900px">
<tr>
<td align="right">
   <span>第<s:property value="currPage"/>/<s:property value="totalPage"/>页</span>
   <span>总记录数:<s:property value="totalCount"/>&nbsp;&nbsp;每页显示:<s:property value="pageSize"/></span>
   
   <s:if test="currPage != 1">
   
      <a href="${ pageContext.request.contextPath }/user_findAll.action?currPage=1" class="button">[首页]</a>&nbsp;&nbsp;
      <a href="${ pageContext.request.contextPath }/user_findAll.action?currPage=<s:property value="currPage-1"/>" class="button">[上一页]</a>&nbsp;&nbsp;
       </s:if>
       <s:if test="currPage != totalpage">
       <a href="${ pageContext.request.contextPath }/user_findAll.action?currPage=<s:property value="currPage+1"/>" class="button">[下一页]</a>&nbsp;&nbsp;
       <a href="${ pageContext.request.contextPath }/user_findAll.action?currPage=<s:property value="totalPage"/>" class="button">[尾页]</a>&nbsp;&nbsp;
       </s:if>
       </ul>
</td>
</tr>
</table>
</body>
</html>