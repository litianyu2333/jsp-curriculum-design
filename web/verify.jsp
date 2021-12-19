<%--
  Created by IntelliJ IDEA.
  User: 天宇
  Date: 2021/12/13
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%--<%@ page import="" %>--%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" scope="page" class="bean.info">
<jsp:setProperty name="user" property="*"  />
</jsp:useBean>
<%= user.getName()%>
<%user.query();%>

</body>
</html>
