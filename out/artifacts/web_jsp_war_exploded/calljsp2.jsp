<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String data = request.getParameter("data");
    String msg = "message : " + data;

    // 1. redirect
//    response.sendRedirect("calljsp3.jsp?data=" + msg);

    // 2. forward
    request.setAttribute("data_key", msg);  // data 라는 key 에다가 msg 를 넣어줄꺼다.

    ArrayList<String> list = new ArrayList<>();
    list.add("tom");
    list.add("jane");
    list.add("susan");
    request.setAttribute("friends", list);

    /*
    request.getRequestDispatcher("calljsp3.jsp").forward(request, response);
    */
%>
<jsp:forward page="calljsp3.jsp"/>  <!-- request.getRequestDispatcher("calljsp3.jsp").forward(request, response);  와 같음. -->
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
