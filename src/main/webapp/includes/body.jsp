<%--
  Created by IntelliJ IDEA.
  User: Simone
  Date: 19/09/17
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String bodyType = request.getParameter("bodytype");
    switch(bodyType) {
        case "index":
            RequestDispatcher rd = request.getRequestDispatcher("/includes/bodies/indexbody.jsp");
            rd.include(request, response);
            break;
    }
%>

