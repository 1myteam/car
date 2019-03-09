<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>登陆</title>
<script type="text/javascript" src="jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function checkusrn() { 
	 var check = false; 
	 var username = document.getElementById("username").value; 
	 if (username.length > 10) { 
	  document.getElementById("checktext1").innerHTML = "❌不要多于10位"; 
	  check = false; 
	 } else { 
	  document.getElementById("checktext1").innerHTML = "✔"; 
	  check = true; 
	 } 
	 return check; 
	} 
	  
	function checkpwd() { 
	 var check = false; 
	 var password = document.getElementById("password").value; 
	 if (password.length < 6) { 
	  document.getElementById("checktext2").innerHTML = "❌不要少于6位"; 
	  check = false; 
	 } else { 
	  document.getElementById("checktext2").innerHTML = "✔"; 
	  check = true; 
	 } 
	 return check; 
	} 
		  
	function check() { 
	 var check = checkusrn() && checkpwd();
	 return check; 
	  
	} 
</script>
<style type="text/css">
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 6px 3px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; 
    transition-duration: 0.4s;
    cursor: pointer;
    width:280px;
    height:40px;
}
.button2 {
    
	background-color: #5a5aad;
    color: white;
}
</style>
</head>

<body>
			<h3 class="welcome_title">欢迎登陆</h3>	
<s:form action="user_login" method="post" namespace="/" onsubmit="return check()">
<s:actionerror/>
       <table table="0">
       <tr><td>用户名:<input type="text" name="account"  id="username" onchange="checkusrn()" /></td><td id="checktext1"> </td></tr>
       <tr><td>密码:<input type="password"  name="password" id="password" onchange="checkpwd()" /></td><td id="checktext2"> </td></tr>
       <tr><td><button class="button button2" type="submit">登录</button></td><td></td></tr>
     </table>
     </s:form>
     </body>
     </html>