<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    if ( (id.equals("admin") && pwd.equals("123")) || (id.equals("user") && pwd.equals("111")) ) {
        session.setAttribute("id", id);
        response.sendRedirect("login_ok.jsp");
    } else {
//        response.sendRedirect("login_fail.html");
%>
<script>
    alert("로그인 실패");
    location.href="login.html";
</script>
<%
    }
%>