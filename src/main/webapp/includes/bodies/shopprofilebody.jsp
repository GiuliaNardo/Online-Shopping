<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 13/01/2018
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%@ page import="it.unitn.progettoweb.Objects.Utente" %>
<%@ page import="it.unitn.progettoweb.Objects.Session" %>
<%@ page import="it.unitn.progettoweb.Objects.Venditore" %>
<%@ page import="it.unitn.progettoweb.Objects.TipoUtente" %>

<link rel="stylesheet" type="text/css" href="styles/shopprofile.css">

<%
    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
    Venditore venditore = null;

    if(cookies.length != 0) {
        Database database = new Database();
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("SessioneUtente")) {
                if (!(database.getUserSession(cookies[i].getValue()) == null)) {
                    sessione = database.getUserSession(cookies[i].getValue());
                    utente = database.getUtente(sessione.getIdUtente());
                    isLogged = true;
                }
            }
        }
        venditore = database.getVenditore(utente);
        database.close();
    }
    //if (isLogged && utente.getTipo().equals("Seller")){
    try {
        if ((utente.getTipo().equals(TipoUtente.SELLER))&& isLogged) {

%>


<body>

<div class="container main-container">
    <div class="row title">
        <%=venditore.getNomeNegozio()%>

    </div>
    <div class="container field">
        <div class="row justify-content-between">
            <div class="col col-md-5 col-sm-12 titolo">
                Ragione sociale:
            </div>
            <div class="col col-md-5 col-sm-12">
                <%=venditore.getRagioneSociale()%>
            </div>
        </div>
        <div class="row justify-content-between">
            <div class="col col-md-5 col-sm-12 titolo">
                Partita IVA:
            </div>
            <div class="col col-md-5 col-sm-12">
                <%=venditore.getPartitaIva()%>
            </div>
        </div>
        <div class="row justify-content-between">
            <div class="col col-md-5 col-sm-12 titolo">
                Indirizzo:
            </div>
            <div class="col col-md-5 col-sm-12">
                <%=venditore.getIndirizzo()%>
            </div>
        </div>
        <div class="row justify-content-between">
            <div class="col col-md-5 col-sm-12 titolo">
                Valutazione:
            </div>
            <div class="col col-md-5 col-sm-12">
                <%=venditore.getValutazione()%>
            </div>
        </div>
    </div>



</div>

</body>
<%
        }
    } catch (Exception e){
        System.out.println("" + e);
    }
    //}
%>