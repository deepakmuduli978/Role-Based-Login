<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<jsp:useBean id="user" class="com.RoleBasedLogin.bean.userbean" scope="session"/>
<jsp:setProperty name="user" property="*"/>

<%
int n1 = (int)(Math.random()*10);
int n2 = (int)(Math.random()*10);
session.setAttribute("sum", n1+n2);
%>

<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<div class="login-container">

<h2>Login</h2>

<form action="authenticate.jsp" method="post">

<label>Email</label>
<input type="email" name="mail" required>

<label>Password</label>
<input type="password" name="pass" required>

<label>Captcha: <b><%=n1%> + <%=n2%> = ?</b></label>
<input type="text" name="captcha" required>

<button type="submit">Login</button>

</form>

</div>

</body>
</html>