<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>xss sample</h2>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");

    // xss 방지용 추가 코딩.,  "<" ==> &lt;
    if (name != null) {
        name = name.replaceAll("<", "&lt");
        name = name.replaceAll(">", "&lt");
    } else {
        return;
    }

%>


이름은 <%= name %>


</body>
</html>
