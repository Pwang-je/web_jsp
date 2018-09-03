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

</body>
</html>
