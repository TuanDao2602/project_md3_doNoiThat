<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/23/2022
  Time: 11:13 AM
  To change this template use File | Settings | File Templates.
--%>




<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/login.css">
</head>
<body>
<div class="login-box">
  <h2>Login</h2>
  <form action="<%=request.getContextPath()%>/UserServlet?action=login" method="post" id="loginForm">

  <div class="user-box">
      <input type="text" name="userName" required="">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="password" required="">
      <label>Password</label>
    </div>
    <p style="color: red"><c:if test="${errorLogin!=null}">${errorLogin}</c:if></p>

    <a onclick="document.getElementById('loginForm').submit()">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Login
    </a>
    <a href="<%=request.getContextPath()%>/views/user/register.jsp" class="login2">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Register
    </a>
    <a href="<%=request.getContextPath()%>/HomeServlet?action=Home" class="login2">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      HOME PAGE
    </a>
  </form>
</div>

</body>
</html>