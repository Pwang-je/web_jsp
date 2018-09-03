<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    if (id.equals("aa") && pwd.equals("11")) {
        session.setAttribute("id", id);
    } else {
        session.removeAttribute("id");
    }
    response.sendRedirect("login_main.jsp");
%>