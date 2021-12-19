package bean;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;

public class info {
    private String emil;
    private String name;
    private String password;

    public String getEmil() {
        return emil;
    }

    public void setEmil(String emil) {
        this.emil = emil;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
//    public void query(){
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            String url = "jdbc:mysql://localhost:3306/django";
//            String username = "root";
//            String password = "a93161012";
//            Connection conn = DriverManager.getConnection(url, username, password);
//
//            if(conn != null){
//                out.print("数据库连接成功！");
//                out.print("<br />");
//                Statement stmt = null;
//                ResultSet rs = null;
//                String sql = "SELECT *FROM myapp_user;";
//                stmt = conn.createStatement();
//                rs = stmt.executeQuery(sql);
//                out.print("查询结果：");
//                out.print("<br />");
//                out.println("姓名"+"  "+"性别 "+"  "+"年龄");
//                out.print("<br />");
//                while (rs.next()) {
//                    out.println(rs.getString("username")+"   &nbsp  "+rs.getString("password")+"  &nbsp "+rs.getInt("id")); //将查询结果输出
//                }
//            }
//            else{
//                out.print("连接失败！");
//            }
//        }catch (Exception e) {
//            out.print("数据库连接异常！");
//        }
//    }
}
