<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean_pack.SangpumDto" %><%--
  Created by IntelliJ IDEA.
  User: kitcoop
  Date: 2018-08-31
  Time: 오전 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="beanPage" class="Bean_pack.ConBean2" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="">상품추가</a>

<%
    // 페이지 번호 받아서 해당 페이지 자료만 출력
    String pa = request.getParameter("pa");
    if (pa == null) {
        pa = "1";
    }

    ArrayList<SangpumDto> list = beanPage.getDatas("pa");
    for (SangpumDto a : list) {
        %>
<%= a.getCode() %>
<%= a.getSang() %>
<%= a.getSu() %>
<%= a.getDan() %>
<br>
<%
    }
%>
<tr>
    <td colspan="4" style="text-align: center;">
        <%= beanPage.prepareTotalPage() %>
        <%
            if (beanPage.prepareTotalPage() > 0) {
                for (int pNo = 1; pNo <= beanPage.prepareTotalPage(); pNo++) {
                    %>
        <a href="beandb2_page.jsp?pa=<%= pNo %>" <%= pNo %>></a>
        <%
                }
            }
        %>
    </td>
</tr>
</body>
</html>
