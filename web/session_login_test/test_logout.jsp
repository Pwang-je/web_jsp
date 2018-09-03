<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();
%>
<script>
    alert("로그아웃 되었음!");
    location.href="test_login.jsp";
</script>
</body>
</html>
