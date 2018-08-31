<%@ page contentType="text/html;charset=UTF-8" language="java" %>
홀수 출력 <br>
<%
    for (int i = 0; i <= 10; i++) {
        if (i%2 == 1) out.print(i+" ");
    }
%>