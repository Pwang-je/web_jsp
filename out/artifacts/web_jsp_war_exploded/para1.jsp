<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="my" class="Bean_pack.paraClass"/>
<!doctype html>
<html lang=Bean_pack.paraClass"ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
* 클래스 멤버 필드에 값 설정하고 참조하기 * <br>
<%--<%--%>
    <%--my.setMsg(msg);--%>
    <%--out.println(my.getMsg());--%>
<%--%>--%>
<br>
<br>
* 새기술!
<!-- public void setMsg(String msg) 를 참조함. -->
<jsp:setProperty name="my" property="msg"/> <!-- 초기치를 처음부터 줬음. value = "할말" -->
<jsp:getProperty name="my" property="msg"/>

</body>
</html>