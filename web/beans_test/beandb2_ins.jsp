<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="test2" class="Bean_pack.ConBean2" />
<jsp:useBean id="form"  class="Bean_pack.SangpumForm" />
<jsp:setProperty name="form" property="*" />
<%
    test2.SangInser(form);

    // 상품추가 후 목록보기 호출.
//    request.getRequestDispatcher("beandb2_page.jsp").forward(request, response); // 새로고침하면 상품이 계속 추가되서 쓰면 안됨.
    response.sendRedirect("beandb2_page.jsp");
%>


<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
