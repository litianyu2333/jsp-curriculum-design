<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/django"; //数据库名
        String username = "root";  //数据库用户名
        String password = "a93161012";  //数据库用户密码
        Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

        if(conn != null){
//            out.print("数据库连接成功！");
//            out.print("<br />");
            Statement stmt = null;
            ResultSet rs = null;
            String sql = "SELECT *FROM myapp_user;";  //查询语句
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
//            out.print("查询结果：");
//            out.print("<br />");
//            out.println("姓名"+"  "+"性别 "+"  "+"年龄");
            StringBuffer json = new StringBuffer() ;
            json.append("[");
            while (rs.next()) {
                json.append("{"); //将查询结果输出
                json.append('"'+"username"+'"'+":"+'"'+rs.getString("username")+'"');
                json.append(",");
                json.append('"'+"password"+'"'+":"+'"'+rs.getString("password")+'"');
//                json.append(":"); //将查询结果输出
//                json.append('"'+rs.getString("username")+'"'); //将查询结果输出
                json.append("}"); //将查询结果输出

                json.append(","); //将查询结果输出
            }
            StringBuffer s= new StringBuffer(json.substring(0, json.length() - 1));
            s.append("]");
//            json.substring(0, json.length()-1);

            out.print(s);
        }
        else{
            out.print("连接失败！");
        }
    }catch (Exception e) {
        out.print("数据库连接异常！");
    }
%>
