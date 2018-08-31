<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
jsp 가 넘긴 메시지 :
<%
    // 1.
//    String data = request.getParameter("data");
//    out.println("결과: " + data);

    // 2.
    String data = (String) request.getAttribute("data_key");
    out.println("결과(forward): " + data);

    ArrayList<String> flist = (ArrayList<String>) request.getAttribute("friends");
    out.println("결과(array forward): ");
    for (String f : flist) {
        out.println(f);
    }
%>
</body>
</html>
