<%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 07/11/2017
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%@ page import="it.unitn.progettoweb.Objects.Utente"%>
<%@ page import="com.google.common.hash.Hashing" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import=" it.unitn.progettoweb.Objects.Session"%>
<%
    Cookie cookieUtente = null;
    Database database = new Database();
    Session sessioneLogin = null;
    Utente utente = null;
    String hashSha2 = null;
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    String hashPwd = "faustolibero!!liberatelooooo";
    String passwordHash = Hashing.sha256().hashString(""+username+""+password+""+hashPwd , StandardCharsets.UTF_8).toString();
    utente = database.getUtente(username);
    if(!(database.getUtente(username) == null)){
        utente = database.getUtente(username);
        if(utente.getPassword().equals(passwordHash)){
            hashSha2 = Hashing.sha256().hashString(""+username+""+ System.currentTimeMillis(), StandardCharsets.UTF_8).toString();
            sessioneLogin = new Session(utente.getId(), new java.sql.Date(System.currentTimeMillis()), hashSha2 );
            database.insertUserSession(sessioneLogin);
            cookieUtente = new Cookie("SessioneUtente", hashSha2);
            cookieUtente.setMaxAge(60*60*2);
            cookieUtente.setPath("/");
            response.addCookie(cookieUtente);

            database.close();
            response.sendRedirect("../index.jsp");
        }else{
            response.sendRedirect("../login.jsp?error=errore1");
        }
    }else{
        response.sendRedirect("../login.jsp?error=errore2");
        System.out.println("Utente "+username+" inesistente");
    }
%>
