<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="logdao" class="secure_pack.LoginDao" />
<%
    request.setCharacterEncoding("UTF-8");
    String no = request.getParameter("no");
    String name = request.getParameter("name");

    boolean check = logdao.loginCheck(no, name);

    if (check) {
        session.setAttribute("namekey", name);
        response.sendRedirect("logok.jsp");
    } else {
        response.sendRedirect("logfail.jsp");
    }


%>