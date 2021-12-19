<%--
  Created by IntelliJ IDEA.
  User: 天宇
  Date: 2021/12/13
  Time: 18:24
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
  <link rel="stylesheet" href="static/login.css">
</head>
<body>
<div class="a">
  <div class="b" style="background-image: url(static/img/fj.jpeg); background-size: cover;")></div>
<div class="c">
  <div class="d">
    <h1>Login/register</h1>
    <form action="verify.jsp" method="post">
    <input type="text" class="e" placeholder="邮箱" name="mail">
    <input type="text" class="e" placeholder="用户名" name="name">
    <input type="password" class="e" placeholder="密码" name="password">
    <p class="f1">{{ no }}</p>
    <a href="#" class="f">foger the password?</a>
<%--    {#                <a href="#" class="g">LOGIN</a>#}--%>
    <input type="submit" value="提交" class="g" onclick="">
    </form>
  </div>
</div>
</div>
</body>
</html>
