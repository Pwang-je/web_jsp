<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>1</h2>

<table>
    <tr>
        <td>
            <% if (session.getAttribute("no") == null) { %>
                <%@include file="test_login.jsp"%>
            <% } else { %>
                <%@include file="test_login_after.jsp"%>
            <% } %>
        </td>
    </tr>
</table>


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
