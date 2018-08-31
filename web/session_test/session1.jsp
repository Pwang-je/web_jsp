<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        if (!id.equals("abc")) {
            response.sendRedirect("session.html");
            return; // service 메소드를 빠져나감.
        }

        session.setAttribute("id_key",id);
        session.setMaxInactiveInterval(10); // 세션 유지 시간. 20초.
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>세션 연습중...</h2>
    <form action="session2.jsp" method="post">
        * 좋아하는 영화는? <br>
        <input type="radio" name="movie" value="인크레더블" checked="checked">인크레더블
        &nbsp;&nbsp;&nbsp;
        <input type="radio" name="movie" value="공작">공작
        &nbsp;&nbsp;&nbsp;
        <input type="radio" name="movie" value="코난">코난
        &nbsp;&nbsp;&nbsp;
        <p></p>
        <input type="submit" value="결과보기">
    </form>
</body>
</html>
