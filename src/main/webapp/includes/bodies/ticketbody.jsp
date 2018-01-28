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
    String user = request.getParameter("user");
    boolean isUpdate = false;

    String idString = request.getParameter("id");

    boolean isInsert = true;

    if(idString != null && !idString.equals("")) {
        if(request.getParameter("edit") != null) {
            isUpdate = true;
        }
        isInsert = false;
    }

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

        if(isInsert || isUpdate) {
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
            if(isUpdate && (utente.getTipo() == TipoUtente.ADMIN) && (request.getParameter("stato") != null)) {
                int id = Integer.parseInt(idString);
                int idUser=0;
                StatoTicket statoTicket = StatoTicket.LAVORAZIONE;

                switch (request.getParameter("stato")) {
                    case "Aperto":
                        statoTicket = StatoTicket.APERTO;
                        break;
                    case "Lavorazione":
                        statoTicket = StatoTicket.LAVORAZIONE;
                        break;
                    case "Chiuso":
                        statoTicket = StatoTicket.CHIUSO;
                        break;
                    case "Annullato":
                        statoTicket = StatoTicket.ANNULATO;
                        break;

                }
                if(user!=null && !user.equals("")){
                    idUser = Integer.parseInt(user);
                }

                ticket = new Ticket(id,idO,idUser,tipo,testo,statoTicket);
                db.updateTicket(ticket);

            } else {
                ticket = new Ticket(idO, utente.getId(), tipo, testo, StatoTicket.APERTO);
                db.insertTicket(ticket);
            }


        } else {
            int id = Integer.parseInt(idString);
            System.out.println("trovato");
            ticket = db.getTicket(id, utente);
        }
        db.close();
    }

/*
se sei loggato puoi vedere la pagina degli ordini altrimenti vieni mandato alla pagina del login
 */
    if (isLogged && ticket != null) {

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
                                     <span class="titolo">Tipo ticket: </span><%=ticket.getTipoTicket().toString()%>
                                 </div>

                                         <div class="row">
                                            <span class="titolo">Descrizione: </span><%=ticket.getTesto()%>
                                         </div>
                                     <%if(!isInsert) {%>
                                         <div class="row">
                                             <span class="titolo">Stato: </span><%=ticket.getStatoTicket().toString()%>
                                         </div>
                                     <%}%>





                                     </div>
                             <%if(isInsert && !utente.getTipo().equals(TipoUtente.ADMIN)) {%>
                                 <div class="row col-12 col-md-2 col-sm-12" style="float:left">
                                             <button class="btn btn-sm edit-button">
                                                 <label id="edit" >Edit</label>
                                             </button>
                                     </div>
                             <div class="row col-12 col-md-2 col-sm-12" style="float:left">
                                 <button class="btn btn-sm delete-button" >
                                     <label id="delete" >Delete</label>
                                 </button>
                             </div>
                         </div>
                             <%}%>

                             <%if(utente.getTipo().equals(TipoUtente.ADMIN)) {%>
                             <div class="row admin">
                             <form action="../../ticket.jsp">
                                 <div class="input-group">
                                     <select class="custom-select" id="inputGroupSelect04" name="stato">
                                         <option selected value="Lavorazione">Lavorazione</option>
                                         <option value="Annullato">Annullato</option>
                                         <option value="Chiuso">Chiuso</option>
                                     </select>
                                     <input type="hidden" name="edit" value="1">
                                     <input type="hidden" name="tipoTicket" value="<%=ticket.getTipoTicket()%>">
                                     <input type="hidden" name="idOrdine" value="<%=ticket.getIdOrdine()%>">
                                     <input type="hidden" name="testo" value="<%=ticket.getTesto()%>">
                                     <input type="hidden" name="id" value="<%=ticket.getId()%>">
                                     <input type="hidden" name="user" value="<%=ticket.getIdUtente()%>">
                                     <div class="input-group-append">
                                         <button class="btn btn-outline" type="submit" onclick="alert('Inviato')">Submit</button>
                                     </div>
                                 </div>
                             </form>
                             </div>
                             <%}%>
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


