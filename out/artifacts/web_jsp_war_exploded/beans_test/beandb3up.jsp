<%@ page import="Bean_pack.SangpumDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String code = request.getParameter("code");
%>
<jsp:useBean id="test" class="Bean_pack.ConnBeanPooling" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    SangpumDto dto = test.updateList(code);

    if (dto == null) {
%>
    <script>
    alert("등록된 상품코드가 아닙니다.\n 수정불가");
    location.href = "beandb3.jsp";
    </script>
<%
        return;
    }
%>
** 상품 수정 ** <br>
<form action="beandb3upOk.jsp" method="post">
    코드 : <%= dto.getCode() %> <br>
    <input type="hidden" name="code" value="<%= dto.getCode() %>">
    품명 : <input type="text" name="sang" value="<%= dto.getSang() %>"> <br>
    단가 : <input type="text" name="sang" value="<%= dto.getDan() %>"> <br>
    수량 : <input type="text" name="sang" value="<%= dto.getSu() %>"> <br>
    <br>
    <input type="submit" value="자료수정" onclick="location.href='beandb3upOk.jsp'">
    <input type="button" value="수정취소" onclick="location.href='beandb3.jsp'">
</form>
</body>
</html>
