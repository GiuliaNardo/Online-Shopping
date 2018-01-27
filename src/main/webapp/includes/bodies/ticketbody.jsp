<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 26/01/2018
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%@ page import="it.unitn.progettoweb.Objects.*" %>

<link rel="stylesheet" type="text/css" href="styles/ticketstyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">


<meta name="viewport" content="width=device-width, initial-scale=1.0">


<%
    String tipoTicket = request.getParameter("tipoTicket");
    String idOrdine = request.getParameter("idOrdine");
    String testoTicket = request.getParameter("testo");

    String testo ="";

    Ticket ticket =null;
    TipoTicket tipo = TipoTicket.RIMBORSO;
    int idO=0;

    Database db = new Database();
    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
    Ordine ordine1=null;

    if(cookies.length != 0) {

        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("SessioneUtente")) {
                if (!(db.getUserSession(cookies[i].getValue()) == null)) {
                    sessione = db.getUserSession(cookies[i].getValue());
                    utente = db.getUtente(sessione.getIdUtente());
                    isLogged = true;
                }
            }
        }


    }

    if(utente!=null) {


        if (testoTicket != null) {
            if (!testoTicket.equals("")) {
                testo = testoTicket;
            }
        }
        if (tipoTicket != null) {
            if (!tipoTicket.equals("")) {
                if (tipoTicket.equals("Ordine in ritardo")) {
                    tipo = (TipoTicket.RITARDO);
                } else if (tipoTicket.equals("Ordine danneggiato")) {
                    tipo = (TipoTicket.DANNEGGIATO);
                } else if (tipoTicket.equals("Rimbordo")) {
                    tipo = (TipoTicket.RIMBORSO);
                } else if (tipoTicket.equals("Altro")) {
                    tipo = (TipoTicket.ALTRO);
                }
            }

        }

        if (idOrdine != null) {
            if (!idOrdine.equals("")) {
                idO = (Integer.parseInt(idOrdine));

            }
        }
        ticket = new Ticket(idO,utente.getId(),tipo,testo,StatoTicket.APERTO);
        db.insertTicket(ticket);
        db.close();
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
                                     <div class="row titolo">
                                     <span class="titolo">Tipo ticket: </span><%=tipo%>
                                 </div>

                                         <div class="row">
                                            <span class="titolo">Descrizione: </span><%=testo%>
                                         </div>



                                     </div>
                                 <div class="row col-12 col-md-2 col-sm-12" style="float:left">
                                             <button class="btn btn-sm delete-button" onclick="alert('inviato')">
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
