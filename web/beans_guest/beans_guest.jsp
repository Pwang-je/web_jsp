<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean_pack.GuestDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="guest" class="Bean_pack.ConnBeanGuest" />
<html>
<head>
    <title>Title</title>

    <script>
        function funcWrite() {
            // alert("write 확인용");

        }
        function funcModify(code) {
            // alert("modify 확인용");
            location.href = "beans_guest_modify.jsp?code=" + code;
        }
    </script>
</head>
<body>

<h2>방명록 글목록</h2>
<a href="javascript:funcWrite()">글쓰기</a> <br><br><br>

<table border="1">
    <tr>
        <th>코드</th>
        <th>작성자</th>
        <th>제목</th>
        <th>내용</th>
    </tr>
    <%
        ArrayList<GuestDto> list = guest.getDatas();
        for (GuestDto g:list) {
    %>
    <tr>
        <td>
            <a href="javascript:funcModify('<%= g.getCode() %>')" >
                <%= g.getCode() %>
            </a>
        </td>
        <td>
                <%= g.getName() %>

        </td>
        <td><%= g.getSubject() %></td>
        <td><%= g.getContents() %></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
