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
        case "shop":
            RequestDispatcher rd1 = request.getRequestDispatcher("/includes/bodies/shopbody.jsp");
            rd1.include(request, response);
            break;
        case "profile":
            RequestDispatcher rd2 = request.getRequestDispatcher("/includes/bodies/profilebody.jsp");
            rd2.include(request, response);
            break;
        case "orders":
            RequestDispatcher rd3 = request.getRequestDispatcher("/includes/bodies/ordersbody.jsp");
            rd3.include(request, response);
            break;
        case "cart":
            RequestDispatcher rd4 = request.getRequestDispatcher("/includes/bodies/cartbody.jsp");
            rd4.include(request, response);
            break;
        case "item":
            RequestDispatcher rd5 = request.getRequestDispatcher("/includes/bodies/itembody.jsp");
            rd5.include(request, response);
            break;
        case "login":
            RequestDispatcher rd6= request.getRequestDispatcher("/includes/bodies/loginbody.jsp");
            rd6.include(request, response);
            break;
        case "register":
            RequestDispatcher rd7= request.getRequestDispatcher("/includes/bodies/registerbody.jsp");
            rd7.include(request, response);
            break;

    }
%>

