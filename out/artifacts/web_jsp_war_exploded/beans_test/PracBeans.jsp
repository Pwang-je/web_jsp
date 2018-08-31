<%@ page import="Bean_pack.PracDto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="usePrac" class="Bean_pack.PracConn" />
<%--<jsp:setProperty name="buser" property="usePrac" />--%>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%--<h2>전체</h2>

<table border="1">
    <tr>
        <th>사번</th>
        <th>직원명</th>
        <th>부서번호</th>
        <th>직급</th>
        <th>연봉</th>
        <th>성별</th>
    </tr>
    <%
        ArrayList<PracDto> list = usePrac.getJikwon();
        for (int i = 0; i < list.size(); i++) {
            PracDto dto = list.get(i);
    %>
    <tr>
        <th><%= dto.getNo() %></th>
        <th><%= dto.getName() %></th>
        <th><%= dto.getNum() %></th>
        <th><%= dto.getJik() %></th>
        <th><%= dto.getPay() %></th>
        <th><%= dto.getGen() %></th>
    </tr>
    <%
    }
    %>
</table>--%>

<table border="1">
    <tr>
        <th>사번</th>
        <th>이름</th>
        <th>부서</th>
        <th>성별</th>
    </tr>

    <%
        String bb = request.getParameter("buser");

        ArrayList<PracDto> list = usePrac.getBuser(bb);
        for (int i = 0; i < list.size(); i++) {
            PracDto bdto = list.get(i);

    %>
    <tr>
        <td><%= bdto.getNo() %></td>
        <td><%= bdto.getName() %></td>
        <td><%= bdto.getBuser() %></td>
        <td><%= bdto.getGen() %></td>
    </tr>
    <%
        }
    %>
    <a href="Prac_1.html">부서 입력 다시하기</a>
</table>


</body>
</html>
