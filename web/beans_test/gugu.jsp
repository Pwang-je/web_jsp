<%@ page import="Bean_pack.Gugudan" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
** 현재 나의 기술로 할 수 있는 방법. **
<%
    int dan = Integer.parseInt(request.getParameter("dan"));
    out.println(dan + " 단 출력<p>");

//    Gugudan gugudan = new Gugudan();    // 클래스 포함 관계
    Gugudan gugudan = Gugudan.getInstance();
    System.out.println(gugudan.toString());
    int re[] = gugudan.compute(dan);

    for (int a = 0; a < 9; a++) {
        out.println(dan + "*" + (a + 1) + "=" + re[a] + "&nbsp;&nbsp;&nbsp;");
    }
%>
<hr>
** beans 기술로 ** <br>
<jsp:useBean id="gugu" class="Bean_pack.Gugudan" scope="session" />     <!-- Gugudan gugu 는 new Gugudan ! -->
<!-- id="객체변수" class="">
<%
int re2[] = gugu.compute(dan);

for (int a = 0; a < 9; a++) {
out.println(dan + "*" + (a + 1) + "=" + re2[a] + "&nbsp;&nbsp;&nbsp;");
}
%>
</body>
</html>
