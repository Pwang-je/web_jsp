<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="test_login.jsp">
    <span>HB물산 직원 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
    <%= session.getAttribute("id") + " 님이 로그인중입니다." %>
    사번 : <input type="text" name="no" size=5">
    이름 : <input type="text" name="name" size="8">
    <input type="submit" value="로그아웃">
</form>
</body>
</html>
