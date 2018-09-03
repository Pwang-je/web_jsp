<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String no = (String) session.getAttribute("nokey");
    String name = (String) session.getAttribute("namekey");
%>
<form action="test_login.jsp">
    <span>HB물산 직원 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
    <%=no %> <%= name %>
    <a href="test_logout.jsp">로그아웃</a>
</form>

<br><br>
<span>전체 고객</span> &nbsp; &nbsp;
<span>내 관리 고객</span> &nbsp; &nbsp;
<span>홈페이지</span> &nbsp; &nbsp;
<br><br>
<table border="1">
    <tr>
        <td>고객번호</td>
        <td>고객명</td>
        <td>주민번호</td>
        <td>고객전화</td>
    </tr>
</table>
</body>
</html>
