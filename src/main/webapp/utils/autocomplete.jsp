<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%--
  Created by IntelliJ IDEA.
  User: Simone
  Date: 10/10/17
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="application/json;charset=UTF-8" language="java" %>
<%
    Database database = new Database();
    String parameter = request.getParameter("term");
    String json = database.getAutocompleteJson(parameter);
    database.close();
    response.setHeader("Content-Disposition", "inline");
%>
<%=json%>