/*
package login_pack;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;

public class LoginDAO {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    private DataSource ds;

    public LoginDAO() {
        try {
            Context context = new InitialContext();
            ds = (DataSource) context.lookup("java:comp/env/jdbc_oracle");

        } catch (Exception e) {
            System.out.println("DB Connection Err " + e);
        }
    }

    public boolean loginCheck(String no, String name) {
        boolean check = false;

        try {
            conn = ds.getConnection();

            String sql = "SELECT * FROM JIKWON WHERE JIKWON_NO=? AND JIKWON_NAME=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, no);
            pstmt.setString(2, name);
            rs = pstmt.executeQuery();

            check = rs.next();
        } catch (Exception e) {
            System.out.println("loginCheck err: " + e);
        }
        return check;
    }

    public void gogekInfo() {   // 전체고객 출력용
        try {
            conn = ds.getConnection();

            String gsql = "";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, no);
            rs = pstmt.executeQuery();

            check = rs.next();
        } catch (Exception e) {
            System.out.println("loginCheck err: " + e);
        }
    }

    public void gogekInfo(String no) {  // 담당고객 출력용
        try {
            conn = ds.getConnection();

            String gsql = "SELECT ";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, no);
            rs = pstmt.executeQuery();

            check = rs.next();
        } catch (Exception e) {
            System.out.println("loginCheck err: " + e);
        }
    }

}
*/
