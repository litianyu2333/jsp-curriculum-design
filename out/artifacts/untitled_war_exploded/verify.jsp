<%--
  Created by IntelliJ IDEA.
  User: 天宇
  Date: 2021/12/13
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@ page import="java.util.Objects" %>
<%--<%@ page import="" %>--%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" scope="page" class="bean.info">
    <jsp:setProperty name="user" property="*"  />
</jsp:useBean>
<%--<%= user.getName()%>--%>
<%--<%= user.getPassword()%>--%>
<% String usn = user.getName(); %>
<% String pwd = user.getPassword(); %>


<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/django"; //数据库名
        String username = "root";  //数据库用户名
        String password = "a93161012";  //数据库用户密码
        Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

        if(conn != null) {
//            out.print("数据库连接成功！");
//            out.print("<br />");
            Statement stmt = null;
            ResultSet rs = null;
            String sql = "SELECT *FROM myapp_user;";  //查询语句
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String x = new String(rs.getString("username"));
                String y = new String(rs.getString("password"));
//                out.print(usn+x);
//                out.print(pwd+y);
//                out.print("<hr>");
                if (usn.equals(x) && pwd.equals(y)) {
                    out.print("登录成功");
                    out.print("<a href=\"index.jsp\">点击这里回到主页</a>");
                    session.setAttribute("user",x);
                    break;

                } else {
                    if (rs.next()) {
                    } else {
                        out.print("登录失败");
                        out.print("<a href=\"login.jsp\">点击重试</a>");
                    }

                }

            }

        }
        else{
            out.print("连接失败！");
        }
    }catch (Exception e) {
        out.print("数据库连接异常！");
    }
%>
</body>
</html>
