<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<jsp:useBean id="user" class="com.RoleBasedLogin.bean.userbean" scope="session"/>
<jsp:setProperty name="user" property="*"/>

<%
String email = user.getMail();
String pass = user.getPass();

int sum = (Integer)session.getAttribute("sum");
int captcha = Integer.parseInt(request.getParameter("captcha"));

if(sum!=captcha){
    out.println("Captcha Incorrect");
    return;
}

if(email.equals("admin@gmail.com") && pass.equals("admin@123")){
    response.sendRedirect("admin.jsp");
}
else if(email.equals("student@gmail.com") && pass.equals("student@123")){
    response.sendRedirect("student.jsp");
}
else{
    out.println("Invalid Login");
}
%>