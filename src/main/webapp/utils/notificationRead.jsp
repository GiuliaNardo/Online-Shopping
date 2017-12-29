<%@ page import="it.unitn.progettoweb.Objects.Utente"%>
<%@ page import="it.unitn.progettoweb.Objects.Session"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="it.unitn.progettoweb.Objects.Notifica"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%--
  Created by IntelliJ IDEA.
  User: Simone
  Date: 29/12/17
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="application/json;charset=UTF-8" language="java" %>
<%
    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    String json = "{success: false}";
    if(cookies.length != 0) {
        Database database = new Database();
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("SessioneUtente")) {
                if (!(database.getUserSession(cookies[i].getValue()) == null)) {
                    sessione = database.getUserSession(cookies[i].getValue());
                    utente = database.getUtente(sessione.getIdUtente());
                    boolean operationDone = database.setNotificationAsRead(Integer.parseInt(request.getParameter("idNotifica")),utente);
                    if (operationDone) {
                        json = "{success: true}";
                    }
                }
            }
        }
        database.close();
    }
%>
<%=json%>
