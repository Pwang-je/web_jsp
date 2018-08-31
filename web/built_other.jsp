<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    if (id.equals("kor") && pwd.equals("123")) {
        response.sendRedirect("builtin_obj.jsp");
    }
    String[] names = request.getParameterValues("name");
    String job = request.getParameter("job");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
* 입력된 자료 확인 * <br>
아이디 : <% out.println(id + "<br>"); %>
이름 : <% out.println(names[0] + ", 별명은 " + names[1] + "<br>"); %>
직업은 : <% out.println(job + "<br>"); %>

<hr>
기타 정보 : <br>
client ip : <%= request.getRemoteAddr() %> <br>
domain : <%= request.getRemoteHost() %> <br>
protocol : <%= request.getProtocol() %> <br>
server domain : <%= request.getServerName() %>  <br>
<br>
server buffer size : <%= response.getBufferSize() %>  <br>
server char encoding : <%= response.getCharacterEncoding() %> <br>
<br>
context path : <%= application.getContextPath() %> <br>
session : <%= pageContext.getSession() %> <br>

</body>

</html>
