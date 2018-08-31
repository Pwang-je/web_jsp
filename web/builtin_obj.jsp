<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
** 내장 객체 연습 <br>
** 회원 가입 ** <br>
<form action="built_other.jsp" method="post" name="mem">
    아 이 디 : <input type="text" name="id" size="10" value="kor"> <br>
    비밀번호 : <input type="text" name="pwd" size="10" value="123"> <br>
    작 성 자 : <input type="text" name="name" size="10" value="hihihi">    <br>
    닉 네 임 : <input type="text" name="name" size="10" value="nickname">  <br>
    하 는 일 :
    <select name="job" id="">
        <option value="">선택</option>
        <option value="학생">학생</option>
        <option value="직장인">직장인</option>
        <option value="백수">백수</option>
    </select>
    <p></p>
    <input type="submit" value="등록" id="btnOk">
</form>




</body>
</html>
