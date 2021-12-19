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
    public StringBuffer query() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/django";
            String username = "root";
            String password = "a93161012";
            Connection conn = DriverManager.getConnection(url, username, password);

            if (conn != null) {

                Statement stmt = null;
                ResultSet rs = null;
                String sql = "SELECT *FROM myapp_user;";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);

                StringBuffer json = new StringBuffer();
                json.append("[");
                while (rs.next()) {
                    json.append("{");
                    json.append('"' + "username" + '"' + ":" + '"' + rs.getString("username") + '"');
                    json.append(",");
                    json.append('"' + "password" + '"' + ":" + '"' + rs.getString("password") + '"');

                    json.append("}");

                    json.append(",");
                }
                StringBuffer s = new StringBuffer(json.substring(0, json.length() - 1));
                s.append("]");

                return s;
            } else {
                return (new StringBuffer("连接失败"));
            }
        } catch (Exception e) {
            return (new StringBuffer("连接异常"));
        }
    }
}
