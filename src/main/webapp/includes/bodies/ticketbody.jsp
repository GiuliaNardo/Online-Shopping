<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 26/01/2018
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.util.SimpleTimeZone" %>
<%@ page import="java.util.logging.SimpleFormatter" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="it.unitn.progettoweb.Objects.*" %>
<link rel="stylesheet" type="text/css" href="styles/ticketstyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">


<meta name="viewport" content="width=device-width, initial-scale=1.0">


<%
    Database db = new Database();
    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
    ArrayList<Ordine> ticket = null;

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
        //ticket = db.ticket
        database.close();
    }
/*
se sei loggato puoi vedere la pagina degli ordini altrimenti vieni mandato alla pagina del login
 */
    if (isLogged) {

%>
<body>
<div class="container order-container" id="order-c">

    <div class="row">
            <div class="page-header">
                <div class="title">Your ticket</div>
            </div>

            <!--<div class="row" id="nav-home">-->
            <div class="" id="contentmain">
                <div class="row" id="content">
                    <div id="noOrders">
                        Nessun ticket
                    </div>

                     <div>
                         <div class="row align-items-center">
                                 <div class="col-12 col-md-10 col-sm-12">
                                         <div class="row titolo">   TITOLO
                                             </div>
                                         <div class="row">   testo
                                             </div>
                                     </div>
                                 <div class="row col-12 col-md-2 col-sm-12" style="float:left">
                                             <button class="btn btn-sm " id="delete-button" onclick="alert('inviato')">
                                                 <label id="delete" >Send</label>
                                             </button>
                                     </div>
                             </div>


                </div>

            </div>

        </div>

    </div>

</div>
</body>
<%
    }else{
        String redirectURL = "../../login.jsp";
        response.sendRedirect(redirectURL);

    }
%>
