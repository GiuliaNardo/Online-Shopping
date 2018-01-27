<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 24/09/2017
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="it.unitn.progettoweb.utils.Database" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.util.SimpleTimeZone" %>
<%@ page import="java.util.logging.SimpleFormatter" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="it.unitn.progettoweb.Objects.*" %>

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css" href="styles/orderstyle.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">


<%
    Database db = new Database();
    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
    ArrayList<Ordine> ordini = null;

    if (cookies.length != 0) {
        Database database = new Database();
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("SessioneUtente")) {
                if (!(database.getUserSession(cookies[i].getValue()) == null)) {
                    sessione = database.getUserSession(cookies[i].getValue());
                    utente = database.getUtente(sessione.getIdUtente());
                    isLogged = true;
                    ordini = db.getUserOrders(utente);
                    System.out.println(ordini.size());
                }
            }
        }
        database.close();
    }
/*
se sei loggato puoi vedere la pagina degli ordini altrimenti vieni mandato alla pagina del login
 */
    if (isLogged) {

%>
<body>
<div class="container " style="height: 100%">
    <div class="page-header">
        <div class="title">My orders</div>
    </div>
    <div class="" id="contentmain">
        <div class="row" id="content">

            <%
                if (ordini.size() == 0) {


            %>
            <div id="noOrders">
                Nessun ordine
            </div>
            <%
            } else {
                for (Ordine o : ordini) {


            %>
            <div>
                <div class="row align-items-center">
                    <div class="col-12 col-md-10 col-sm-12">
                        <div class="row titolo">
                            <%=o.getTipoOrdine()%>
                        </div>
                        <div class="row"><%=o.getDataOrdine()%>
                        </div>
                        <div class="row titolo">
                            Totale: <%=o.getPrezzoTot() * 100.0 / 100.0%> euro
                        </div>
                    </div>
                    <div class="row col-12 col-md-2 col-sm-12">
                        <div class="">
                            <button class="btn btn-sm " id="delete-button"
                                    onclick="vedere(<%=o.getIdOrdine()%>)">
                                <i class="zmdi zmdi-notifications"></i> <span id="delete">Send ticket</span>
                            </button>
                        </div>
                    </div>
                </div>

            </div>
            <div id="<%=o.getIdOrdine()%>" style="display: none">
                <form action="../../ticket.jsp">
                    <div class="ticket" id="ticket">
                        <div class="row up-ticket">
                            <select class="select custom-select" name="tipoTicket">
                                <option class="selected">Rimborso</option>
                                <option>Ordine in ritardo</option>
                                <option>Oggetto danneggiato</option>
                                <option>Altro</option>
                            </select>
                        </div>
                        <div class="row down-ticket">
                            <textarea name="testo" class="textarea" id="testoTick"></textarea>
                        </div>
                        <div class="row ">
                            <input type="hidden" name="idOrdine" value="<%=o.getIdOrdine()%>">
                            <button class="btn btn-ticket" type="submit">Send</button>
                        </div>
                    </div>
                </form>
            </div>

            <%
                    }
                }
            %>

        </div>
    </div>
</div>
</body>
<%
    } else {
        String redirectURL = "../../login.jsp";
        response.sendRedirect(redirectURL);

    }
%>

<script type="text/javascript">


    /*
        $(document).ready(function () {
            htmlbodyHeightUpdate()
            $(window).resize(function () {
                htmlbodyHeightUpdate()
            });
            $(window).scroll(function () {
                height2 = $( .main').height()
                htmlbodyHeightUpdate()
            });
        });
    */
    //TODO: query per restituire gli articoli relativi all'ordine di un utente


    function vedere(id) {
        console.log(id);
        var elem = document.getElementById(id);
        if (elem.style.display === "block") {
            elem.style.display = "none"
        } else {
            elem.style.display = "block"
        }
    }


</script>



