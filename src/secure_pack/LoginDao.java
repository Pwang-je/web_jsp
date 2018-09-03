package secure_pack;

import java.sql.*;

public class LoginDao {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public LoginDao() {
        try {
            String orcDriver = "oracle.jdbc.driver.OracleDriver";
            Class.forName(orcDriver);   // Driver loading.

        } catch (Exception e) {
            System.out.println("DB Connection Err " + e);
        }
    }

    public boolean loginCheck(String no, String name) {
        boolean b = false;

        try {
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
                    "scott", "tiger");
            /*String sql = "SELECT * FROM JIKWON WHERE JIKWON_NO='" + no + "' AND JIKWON_NAME='" + name + "'";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();*/

            String sql = "SELECT * FROM JIKWON WHERE JIKWON_NO=? AND JIKWON_NAME=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, no);
            pstmt.setString(2, name);
            rs = pstmt.executeQuery();


            b = rs.next();
        } catch (Exception e) {
            System.out.println("loginCheck err: " + e);
        }
        return b;
    }


}
