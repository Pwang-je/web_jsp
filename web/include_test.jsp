<%@ page contentType="text/html;charset=UTF-8" language="java"
    import="java.util.*"
%>
<html>
<head>
    <title>include test</title>
</head>
<body>
<%@ include file="in_top.jsp" %>    <!-- in_top 에 있는 소스들이 그대로 여기로 들어옴 -->
<br>

<h1>파일 포함 연습</h1>
방법 : 2가지. (지시어, action tag)
<br><br>
<jsp:include page="intag1.jsp"/>    <!-- jsp action tag: intag1 에서 실행을 한 결과를 여기에 뿌림 -->
<br>
<jsp:include page="intag2.jsp">
    <jsp:param name="msg" value="korea"/>
</jsp:include>
<pre>






</pre>
<%@ include file="in_bottom.jsp" %>
</body>
</html>
