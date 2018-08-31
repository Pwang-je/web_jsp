<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>* 결과보기</h2>
<%
    request.setCharacterEncoding("UTF-8");

    String movie = request.getParameter("movie");
    String id = (String) session.getAttribute("id_key");

    // 세션이 있다면~ 20초가 안지났다면~ != null,
    if (id != null) {
%>
        <%= id %> 님이 선택한 영화는 <%= movie %> 입니다.  <br>
        세션 아이디 : <%= session.getId() %> <br>
        세션 유지시간 : <%= session.getMaxInactiveInterval() %> <br>
<%
        /*
        session.invalidate();
        session.removeAttribute("id_key");
        */
    } else {
        out.println("세션키가 사라짐");
    }
%>
</body>
</html>
