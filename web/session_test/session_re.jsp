<%@ page import="pack1.student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<student> list =(ArrayList<student>)session.getAttribute("data");

    int c = 0;
    int t = 0;
    int a = 0;
    a = jumsu / 2;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="../session_ex.html">자료입력</a>
<br>
<table>
    <tr>
        <td>번호</td><td>이름</td><td>점수</td>
    </tr>

    <%
        for(int i=0; i< list.size();i++){
            c++;
    %>
    <tr>
        <td><%= c %></td><td><%= list.get(i).getName() %></td><td><%= list.get(i).getJumsu() %></td>
    </tr>
    <%
        }
        list.clear();
        session.invalidate();
    %>
    <tr>
        <td>인원수 :<%= c %></td><td>총점 : <%= t %></td><td>평균 : <%= a %></td>
    </tr>
</table>
</body>
</html>


