<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/23/2022
  Time: 11:21 AM
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
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/views/css/register.css">
</head>
<body>
<div class="login-box">
  <h2>Register</h2>
  <form action="<%=request.getContextPath()%>/UserServlet?action=register" method="post" id="register">
    <div class="user-box">
      <input type="text" name="userName" required="" placeholder=" ">
      <label>  User Name </label>
    </div>
    <div class="user-box">
      <input type="password" name="passwood" required="" placeholder="">
      <label>Password</label>
    </div>
    <div class="user-box">
      <input type="password" name="comfim" required="" placeholder="">
      <label>Comfirm Password</label>
    </div>
    <div class="user-box">
      <input type="text" name="fullName" required="" placeholder="">
      <label>Full Name</label>
    </div>

    <a onclick="document.getElementById('register').submit()" >
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Register
    </a>
    <a href="../user/login.jsp" class="login2">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      Login
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


