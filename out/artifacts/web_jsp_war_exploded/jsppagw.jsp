
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.util.*, java.sql.*" session="true" buffer="8kb" autoFlush="true" isThreadSafe="true"
info="jsp에 대한 문서정보" errorPage="error.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
페이지 지시에는 jsp문서 상단에 기술함.

<p>년도 출력</p>
<%
    Calendar cal = Calendar.getInstance();
    out.println("올해는 " + cal.get(Calendar.YEAR));
%>
<br>
<%=this.getServletInfo()%>
<hr>
<%=10/0%>
</body>
</html>
