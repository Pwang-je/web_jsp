package Bean_pack;

import java.sql.*;
import java.util.ArrayList;

public class ConBean2 {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

//    private recTotal = 0;   // 전체 행 수.
//    private pageSize = 5;   // 각 페이지 당 출력 행 수
//    private totalPage = 0;  // 전체 페이지 수

    public ConBean2() {
        try {
            String orcDriver = "oracle.jdbc.driver.OracleDriver";
            Class.forName(orcDriver);   // Driver loading.

        } catch (Exception e) {
            System.out.println("DB Connection Err " + e);
        }
    }

    public ArrayList<SangpumDto> getDatas(String pa) throws SQLException {

        ArrayList<SangpumDto> list = new ArrayList<>();
        try {
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
                    "scott", "tiger");
            pstmt = conn.prepareStatement("SELECT * FROM SANGDATA ORDER BY desc");
//            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            // page 번호 처리하는법.
            /*int startNum = (Integer.parseInt(pa) - 1) * pageSize + 1;
            for (int p = 1; p < startNum; p++) {
                rs.next();  // rec pointer 위치 : pa 가 1일때 0, pa 가 2일때 5, pa 가 3일때 10...
            }

            int i = 1;
            while (rs.next() && i <= pageSize) {
                SangpumDto dto = new SangpumDto();
                dto.setCode(rs.getString("code"));
                dto.setSang(rs.getString("sang"));
                dto.setSu(rs.getInt("su"));
                dto.setDan(rs.getInt("dan"));
                list.add(dto);
                i++;
            }*/

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

    /*public int prepareTotalPage() {

        try {
            String orcDriver = "oracle.jdbc.driver.OracleDriver";
            Class.forName(orcDriver);   // Driver loading.
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
                    "scott", "tiger");
            String sql = "SELECT COUNT(*) FROM SANGDATA";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            *//*if (rs.next()) {
                recTotal = rs.getInt(1);

                // 전체 페이지 수 얻기
                totalPage = recTotal / pageSize;
                if (recTotal % pageSize != 0) {
                    totalPage += 1;     // 남아있는것 계산.

                }*//*
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
        return totalPage;
    }*/


    public void SangInser(SangpumForm form) {
        try {
            String orcDriver = "oracle.jdbc.driver.OracleDriver";
            Class.forName(orcDriver);   // Driver loading.
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
                    "scott", "tiger");
            pstmt = conn.prepareStatement("SELECT MAX(CODE) FROM SANGDATA");
            rs = pstmt.executeQuery();
            rs.next();
            int maxCode = rs.getInt(1);
//            System.out.println(maxCode);

            // 신상등록
            String insSql = "INSERT INTO SANGDATA VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(insSql);
            pstmt.setInt(1, maxCode + 1);
            pstmt.setString(2, form.getSang());
            pstmt.setInt(3, form.getSu());
            pstmt.setInt(4, form.getDan());
            pstmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("sangInsert err: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                System.out.println();
            }
        }
    }



}
