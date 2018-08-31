<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
안녕 js p세상 <br>
<%
    String ir = "홍길동";
    out.println(ir+ "님의 홈페이지임.");
    for (int i = 0; i < 7; i++) {
        out.print("<h" + i + ">");
        out.print("글자의 모양을 ㅈ절.");
        out.print("</h>" + ">");
    }
%>
<hr>
여긴 html duddur. <br>
<%
    out.println(ir);
%>
<%= out.println(ir + "님의 홈피") %>
<%= new java.util.Date() %>

<%
    int a = 0, sum = 0;
    do {
        a++;
        sum += a;
    } while (a < 10);
%>
<br>
<%= "sum is" + sum %>
<%!
    String tel = "123-123"; // 클래스의 멤버임.
%>
<%= "tel is" + tel %>

<%!
    public int addData(int m, int n) {
        return m + n;
    }
%>
</body>
</html>
