<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="guestOk" class="Bean_pack.ConnBeanGuest" />
<jsp:setProperty name="guestOk" property="*" />
<jsp:useBean id="guest" class="Bean_pack.ConnBeanGuest" />
<%
    if (guest.updateData(guestok)) {
        response.sendRedirect("beans_guest.jsp");
    } else {
        response.sendRedirect("beans_guest_fail.jsp");
    }
%>