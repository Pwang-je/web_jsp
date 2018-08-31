<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
서블릿에 의해 호출된 파일임. <br>
<%
    request.setCharacterEncoding("UTF-8");

    // 1. redirect 방법.
//    String data = request.getParameter("data");
//    out.println("자료는 " + data);

    // 2. forward 방법.
    String data = (String) request.getAttribute("mykey");
    out.println("자료는(forward)" + data);
%>
</body>
</html>
