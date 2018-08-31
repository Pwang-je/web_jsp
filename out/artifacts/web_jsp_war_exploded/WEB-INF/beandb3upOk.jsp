<%@ page import="Bean_pack.SangpumForm" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="sangForm" class="Bean_pack.SangpumDto"/>
<jsp:setProperty name="sangForm" property="*" />
<jsp:useBean id="test" class="Bean_pack.ConnBeanPooling" />
<%

if (test.updateData(sangForm)) {
    response.sendRedirect("beandb3.jsp");
} else {
    response.sendRedirect("beandb3fail.html");
}
%>
