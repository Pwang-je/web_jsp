<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
//    String name = request.getParameter("name");
%>
<jsp:useBean id="bean" class="Bean_pack.FormBean" />
<%--    방법 1. 다 써주기.
<jsp:setProperty name="bean" property="name" />
<jsp:setProperty name="bean" property="kor" />
<jsp:setProperty name="bean" property="eng" />
--%>
<jsp:setProperty name="bean" property="*"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
* 사용자로부터 넘어온 자료 출력 * <br>
이름은 <jsp:getProperty name="bean" property="name" />
국어는 <jsp:getProperty name="bean" property="kor" />
영어는 <jsp:getProperty name="bean" property="eng" />
<br><br>
<jsp:useBean id="examProcess" class="Bean_pack.ExamProcess" />
<jsp:setProperty name="examProcess" property="formBean" value="<%=bean%>" /> <!-- 여기 formbean 은 ExamProcess 의 private FormBean formBean; -->
총점은 : <jsp:getProperty name="examProcess" property="tot" />
평균은:  <jsp:getProperty name="examProcess" property="avg" />



</body>
</html>
