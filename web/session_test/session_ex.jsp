<%@ page import="pack1.student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    ArrayList<student> list = new ArrayList<>();
    String name = request.getParameter("name");
    int jumsu = Integer.parseInt(request.getParameter("jumsu"));
    int c = 0;

    if(name != null && jumsu != 0){
        list.add(new student(name,jumsu));
        session.setAttribute("data",list);
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="../session_ex.html">자료입력</a>
<a href="session_re.jsp">계산하기</a>
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
    %>

</table>
</body>
</html>
