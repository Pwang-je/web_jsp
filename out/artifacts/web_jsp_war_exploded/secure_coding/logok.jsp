<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>

<h2> 로그인 성공된 페이지 </h2>
<%
    String name = (String) session.getAttribute("namekey");
%>
<%=name%> 님 환영합니다. <br>
<a href="logout.jsp">로그아웃</a>
</body>
</html>
