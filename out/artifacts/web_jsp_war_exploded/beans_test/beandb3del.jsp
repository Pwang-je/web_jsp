<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%
    String code = request.getParameter("code");
%>
<jsp:useBean id="test" class="Bean_pack.ConnBeanPooling" />
<%
    if (test.delData(code)) {
        response.sendRedirect("beandb3.jsp");
    } else {
        response.sendRedirect("beandb3fail.html");
    }
%>
