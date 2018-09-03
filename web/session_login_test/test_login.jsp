<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<form action="login_proc.jsp" method="post">
    <span>HB물산 직원 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
    사번 : <input type="text" name="no" size=5">
    이름 : <input type="text" name="name" size="8">
    <input type="submit" value="로그인">
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
