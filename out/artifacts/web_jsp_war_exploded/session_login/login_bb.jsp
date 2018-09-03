<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="bb">
    <form action="login_ok.jsp" method="post">
        <h2>강남센터</h2>
        <%= session.getAttribute("id") + " 님이 로그인 하셨어용" %>
        I D : <input type="hidden" name="id">
        PWD : <input type="hidden" name="pwd">
        <input type="submit" value="로그아웃">
    </form>
    <p><a href="jikwon.jsp" target="frame">자료보기</a></p>
</div>