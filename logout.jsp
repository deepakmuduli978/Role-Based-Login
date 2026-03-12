<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
    // Destroy the current session
    session.invalidate();

    // Redirect user back to login page
    response.sendRedirect("login.jsp");
%>