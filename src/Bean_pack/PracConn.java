package Bean_pack;

import java.sql.*;
import java.util.ArrayList;

public class PracConn {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;


    // using beans.
    private PracDto pracDto;

    // Const
    public PracConn() {

        try {
            String orcDriver = "oracle.jdbc.driver.OracleDriver";
            Class.forName(orcDriver);   // Driver loading.
        } catch (Exception e) {
            System.out.println("DB Connection Err " + e);
        }
    }

    // OBJ
/*
    public ArrayList<PracDto> getJikwon() {

        // 오브젝트 생성
        ArrayList<PracDto> jList = new ArrayList<>();

        try {
            // SQL 접속.
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
                    "scott", "tiger");
            String sql = "SELECT * FROM JIKWON";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                PracDto pDto = new PracDto();

                pDto.setNo(rs.getInt(1));
                pDto.setName(rs.getString(2));
                pDto.setNum(rs.getInt(3));
                pDto.setJik(rs.getString(4));
                pDto.setPay(rs.getInt(5));
                pDto.setGen(rs.getString(6));
                jList.add(pDto);
            }

        } catch (Exception e) {

        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {

            }
        }
        return jList;
    }   // getJikwon Ends;
*/


    public ArrayList<PracDto> getBuser(String buser) throws SQLException {

        ArrayList<PracDto> bList = new ArrayList<>();

        try {
            // SQL 접속.
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
                    "scott", "tiger");
            pstmt = conn.prepareStatement("SELECT JIKWON_NO, JIKWON_NAME, BUSER_NAME, JIKWON_GEN FROM JIKWON " +
                    "INNER JOIN BUSER ON BUSER_NUM = BUSER_NO WHERE BUSER_NAME = ?");
            pstmt.setString(1, buser);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                PracDto bDto = new PracDto();

                bDto.setNo(rs.getInt(1));
                bDto.setName(rs.getString(2));
                bDto.setBuser(rs.getString(3));
                bDto.setGen(rs.getString(4));
                bList.add(bDto);
            }

        } catch (Exception e) {

        } finally {
            try {

            } catch (Exception e) {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            }
        }
        return bList;
       }   // getBuser Ends;

    public void setPracDto(PracDto Pbean) {
        this.pracDto = Pbean;
    }



}
