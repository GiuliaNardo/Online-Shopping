<%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 19/01/2018
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="./includes/header.jsp">
    <jsp:param name="pageTitle" value="Registrazione avvenuta con successo"/>
</jsp:include>
<head>
    <title>Registrazione avvenuta con successo</title>
    <meta http-equiv="refresh" content="15;URL=./login.jsp">
</head>
<body>
<h1>Registrazione avvenuta con successo</h1>
<p>
    Tra 15 secondi avverrà un redirect automatico alla pagina di login del sito.<br>
    Se non vuoi aspettare <a href="./login.jsp">clicca qui</a>.
</p>
</body>
<%@ include file="./includes/footer.jsp"%>
