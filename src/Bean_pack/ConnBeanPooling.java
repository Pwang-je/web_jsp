package Bean_pack;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

public class ConnBeanPooling {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    private DataSource ds;

    public ConnBeanPooling() {
        try {
            Context context = new InitialContext();
            ds = (DataSource) context.lookup("java:comp/env/jdbc_oracle");
        } catch (Exception e) {
            System.out.println("연결 실패: " + e);
        }
    }

    public ArrayList<SangpumDto> getDatas() throws SQLException {

        ArrayList<SangpumDto> list = new ArrayList<>();
        try {
            conn = ds.getConnection();
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

    public SangpumDto updateList(String code) {
        SangpumDto dto = null;
//        System.out.println(code);

        try {
            String sql = "SELECT * FROM SANGDATA WHERE CODE = ?";
            conn = ds.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, code);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                dto = new SangpumDto();
                dto.setCode(rs.getString(1));
                dto.setSang(rs.getString(2));
                dto.setSu(rs.getInt(3));
                dto.setDan(rs.getInt(4));
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
        return dto;
    }

    public boolean updateData(SangpumDto form) {
        boolean b = false;
        try {
            conn = ds.getConnection();
            String sql = "UPDATE SANGDATA SET SANG=?, SU=?, DAN=? WHERE CODE=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, form.getSang());
            pstmt.setInt(2, form.getSu());
            pstmt.setInt(3, form.getDan());
            pstmt.setString(4, form.getCode());

            if (pstmt.executeUpdate() > 0) b = true;

        } catch (Exception e) {
            System.out.println("updateData err: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {

            }
        }
        return b;
    }

    public boolean delData(String code) {
        boolean b = false;
        try {
            conn = ds.getConnection();
            String sql = "DELETE FROM SANGDATA WHERE CODE=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, code);

            if (pstmt.executeUpdate() > 0) b = true;

        } catch (Exception e) {
            System.out.println("updateData err: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {

            }
        }
        return b;
    }




}
