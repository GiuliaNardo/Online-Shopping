<%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 05/12/2017
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%@ page import="it.unitn.progettoweb.Objects.Utente"%>
<%@ page import="com.google.common.hash.Hashing" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="it.unitn.progettoweb.Objects.TipoUtente" %>
<%@ page import="it.unitn.progettoweb.Objects.ValidazioneUtente" %>
<%
    String username = request.getParameter("username");
    String firstName = request.getParameter("firstname");
    String lastName = request.getParameter("lastname");
    String email = request.getParameter("youremail");
    String password = request.getParameter("password");
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
    java.util.Date parse = sdf.parse(request.getParameter("date"));
    Date birthDate = new Date(parse.getTime());

    String hashPwd = "faustolibero!!liberatelooooo";
    String hashVal = Hashing.sha256().hashString(""+username+""+password+"DemaliberoHVfc" , StandardCharsets.UTF_8).toString();

    String gender = request.getParameter("sex");

    Database database = new Database();

    String hash = Hashing.sha256().hashString(""+username+""+password+""+hashPwd , StandardCharsets.UTF_8).toString();
    Utente user = new Utente(username, hash, firstName, lastName, email, birthDate, TipoUtente.USER, ValidazioneUtente.FALSE, hashVal);


    database.insertNewUser(user);

    database.close();
%>
<script>
    alert("Registrazione avvenuta con successo");
</script>
<%
    response.sendRedirect("../index.jsp");
%>
