<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
해당 페이지로 이동
<%
    String id = (String) session.getAttribute("id");
    if (id.equals("admin")) {
        out.println("<a href='http://www.google.com'>google</a>");
    } else {
        out.println("<a href='http://www.daum.com'>daum</a>");
    }
%>
</body>
</html>
