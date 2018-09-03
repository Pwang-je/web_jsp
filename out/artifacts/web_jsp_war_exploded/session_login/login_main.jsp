<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" style="width: 80%;">
    <tr>
        <td>
            <%
                if (session.getAttribute("id") == null) {
                %>
                    <%@ include file="login_aa.jsp" %>
            <%
                } else {
              %>
                    <%@ include file="login_bb.jsp" %>
            <%
                }
            %>
        </td>
    </tr>
    <tr>
        <td>
            <iframe src="" name="frame" width="100%;" style="border-style: none;"></iframe>
        </td>
    </tr>
</table>
</body>
</html>
