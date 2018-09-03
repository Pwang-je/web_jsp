<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    function loginChk() {
        //입력자료 검사 후
        document.login.submit();
    }
</script>
<body>
<form action="loginproc.jsp" name="login">
    * 로그인 <br>
    사번 : <input type="text" name="no"> <br>
    이름 : <input type="text" name="name"> <br>
    <br>
    <input type="button" value="로그인" onclick="loginChk()">
</form>
</body>
</html>
