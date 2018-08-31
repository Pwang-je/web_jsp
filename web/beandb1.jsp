<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean_pack.SangpumDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="test" class="Bean_pack.ConBean" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>상품 자료(beans 사용)</h2>
    <table border="1">
        <tr>
            <th>코드</th>
            <th>품명</th>
            <th>수향</th>
            <th>단가</th>
        </tr>
        <%
            ArrayList<SangpumDto> list = test.getDatas();
            for (int i = 0; i < list.size(); i++) {
                SangpumDto dto = list.get(i);
        %>
        <tr>
            <td><%= dto.getCode() %></td>
            <td><%= dto.getSang() %></td>
            <td><%= dto.getSu() %></td>
            <td><%= dto.getDan() %></td>
        </tr>
        <%
            }
        %>
    </table>
    <hr>
    <br><br>
    <table border="1">
        <tr>
            <th>코드</th>
            <th>품명</th>
            <th>수향</th>
            <th>단가</th>
        </tr>
        <%
            for (SangpumDto s:list) {
        %>
        <tr>
            <td><%= s.getCode() %></td>
            <td><%= s.getSang() %></td>
            <td><%= s.getSu() %></td>
            <td><%= s.getDan() %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
