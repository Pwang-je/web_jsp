package Bean_pack;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

public class ConnBeanGuest {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    private DataSource ds;

    public ConnBeanGuest() {
        try {
            Context context = new InitialContext();
            ds = (DataSource) context.lookup("java:comp/env/jdbc_oracle");
        } catch (Exception e) {
            System.out.println("DB Connection fail : " + e);
        }
    }
    // Const;

    public ArrayList<GuestDto> getDatas() {

        ArrayList<GuestDto> list = new ArrayList<>();

        try {
            conn = ds.getConnection();
            pstmt = conn.prepareStatement("SELECT * FROM GUEST");
            rs = pstmt.executeQuery();
            while (rs.next()) {
                GuestDto gdto = new GuestDto();
                gdto.setCode(rs.getInt("code"));
                gdto.setName(rs.getString("name"));
                gdto.setSubject(rs.getString("subject"));
                gdto.setContents(rs.getString("contents"));
                list.add(gdto);
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
        return list;
    }
    // ArrayList<GuestDto>;


    public GuestDto updateList(String code) {

        GuestDto gdto = null;

        try {
            String sql = "SELECT * FROM GUEST WHERE CODE = ?";
            conn = ds.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, code);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                gdto = new GuestDto();
                gdto.setCode(rs.getInt(1));
                gdto.setName(rs.getString(2));
                gdto.setSubject(rs.getString(3));
                gdto.setContents(rs.getString(4));
            }
        } catch (Exception e) {

        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                System.out.println("updateList err: " + e);
            }
        }
        return gdto;
    }
    // public updateList();

    public boolean updateData(GuestDto guestok) {

        boolean b = false;
        try {
            conn = ds.getConnection();
            String sql = "UPDATE GUEST SET CODE=?, SUBJECT=?, CONTENTS=? WHERE NAME=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, guestok.getCode());
            pstmt.setString(2, guestok.getSubject());
            pstmt.setString(3, guestok.getContents());
            pstmt.setString(4, guestok.getName());

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
    // public updateData();


}   // ConnBeanGuest;
