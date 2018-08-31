<%@ page import="Bean_pack.GuestDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String code = request.getParameter("code");
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="guest" class="Bean_pack.ConnBeanGuest" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    GuestDto gdto = guest.updateList(code);
%>
<h2>수정 페이지</h2>
<form action="beans_guest_ok.jsp" method="post">
    번호 : <%= gdto.getCode() %> <br>
    <input type="hidden" name="code" value="<%= gdto.getCode() %>"> <br><br>
    이름 : <%= gdto.getName() %>
    <input type="hidden" name="code" value="<%= gdto.getName() %>"> <br><br>
    글제목 :
    <input type="text" name="subject" value="<%= gdto.getSubject() %>"> <br> <br>
    <textarea name="contents" id="" cols="30" rows="10"><%= gdto.getContents() %></textarea>
    <br>
    <input type="submit" value="수정하기">
    <input type="button" value="취소하기" onclick="location.href ='beans_guest.jsp'">
</form>

</body>
</html>
