<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="probean" class="Bean_pack.ProductBean" />
<jsp:setProperty property="*" name="probean"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
과일명 :  <jsp:getProperty name="probean" property="name" />
<br>
정  가 :  <jsp:getProperty name="probean" property="price" />
<br><br>

<jsp:useBean id="productProcess" class="Bean_pack.ProductProcess" />
<jsp:setProperty name="productProcess" property="productBean" value="<%= probean %>" />
할  인 :  <jsp:getProperty name="productProcess" property="discount" />
</body>
</html>
