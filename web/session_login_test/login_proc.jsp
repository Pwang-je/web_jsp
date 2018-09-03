<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="logDao" class="login_pack.LoginDAO" />
<%
    request.setCharacterEncoding("UTF-8");
    String no = request.getParameter("no");
    String name = request.getParameter("name");

    boolean check = logDao.loginCheck(no, name);

    if (check) {
        session.setAttribute("namekey", name);
        session.setAttribute("nokey", no);
        response.sendRedirect("test_login_ok.jsp");
    } else {
        response.sendRedirect("logfail.jsp");
    }


%>