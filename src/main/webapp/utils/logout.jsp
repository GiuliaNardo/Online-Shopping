<%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 15/11/2017
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%
    Cookie cookies[] = request.getCookies();
    Database database = new Database();
    for(int i = 0; i < cookies.length; i++){
        if(cookies[i].getName().equals("SessioneUtente")){
            String hash = cookies[i].getValue();
            database.deleteUserSession(hash);
            cookies[i].setMaxAge(0);
            cookies[i].setPath("/");
            response.addCookie(cookies[i]);
        }
    }
    response.sendRedirect("../index.jsp");
%>
