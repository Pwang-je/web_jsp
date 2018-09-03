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
</body>
</html>
