<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String orcDriver = "oracle.jdbc.driver.OracleDriver";
        Class.forName(orcDriver);   // Driver loading.
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger");
        pstmt = conn.prepareStatement("SELECT * FROM SANGDATA");

        rs = pstmt.executeQuery();
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>* 상품자료 출력 *</h2>
<table border="2">
    <tr>
        <th>code</th>
        <th>sang</th>
        <th>su</th>
        <th>dan</th>
    </tr>
    <%
        while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getString("code") %></td>
        <td><%= rs.getString("sang") %></td>
        <td><%= rs.getString("su") %></td>
        <td><%= rs.getString("dan") %></td>
    </tr>
    <%  }
        rs.close();
        pstmt.close();
        conn.close();
    %>

</table>
</body>
</html>
<%
    } catch (Exception e) {
        System.out.println("err" + e);
        return;
    }
%>