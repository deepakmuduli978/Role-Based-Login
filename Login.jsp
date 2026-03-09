<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<div class="container">

    <div class="login-box">

        <h2>Welcome Back</h2>
        <p class="subtitle">Login to your account</p>

        <form action="Login.jsp" method="post">

            <div class="input-group">
                <input type="email" name="Email" required>
                <label>Email Address</label>
            </div>

            <div class="input-group">
                <input type="password" name="pass" required>
                <label>Password</label>
            </div>

            <button type="submit" class="login-btn">Login</button>

        </form>

        <p class="signup-text">
            Don't have an account?
            <a href="#">Sign Up</a>
        </p>

    </div>

</div>
<%
String email=request.getParameter("Email");
String pass=request.getParameter("pass");
if(email!=null&&pass!=null){
    if(email.equals("student@gmail.com")&&pass.equals("student@123")){
        response.sendRedirect("student.jsp");
    }
    else if(email.equals("admin@gmail.com")&&pass.equals("admin@123")){
        response.sendRedirect("admin.jsp");
    }
    else{
        out.println("<h4>invalid user name and password</h4>");
    }
}
%>

</body>
</html>