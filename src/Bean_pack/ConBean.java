package Bean_pack;

import java.sql.*;
import java.util.ArrayList;

public class ConBean {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public ConBean() {
        try {
            String orcDriver = "oracle.jdbc.driver.OracleDriver";
            Class.forName(orcDriver);   // Driver loading.

        } catch (Exception e) {
            System.out.println("DB Connection Err " + e);
        }
    }

    public ArrayList<SangpumDto> getDatas() throws SQLException {

        ArrayList<SangpumDto> list = new ArrayList<>();
        try {
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
                    "scott", "tiger");
            pstmt = conn.prepareStatement("SELECT * FROM SANGDATA");
//            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                SangpumDto dto = new SangpumDto();
                dto.setCode(rs.getString("code"));
                dto.setSang(rs.getString("sang"));
                dto.setSu(rs.getInt("su"));
                dto.setDan(rs.getInt("dan"));
                list.add(dto);
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
        return list;
    }
}
