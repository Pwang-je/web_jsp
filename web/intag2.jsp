
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<b style="color: aquamarine">
<% String msg = request.getParameter("msg"); %>
<%= "메세지는 : " + msg %>
</b>