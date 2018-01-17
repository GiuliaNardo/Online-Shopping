<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 24/09/2017
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%@ page import="it.unitn.progettoweb.Objects.Utente" %>
<%@ page import="it.unitn.progettoweb.Objects.Session" %>
<%@ page import="it.unitn.progettoweb.Objects.Ordine" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.util.SimpleTimeZone" %>
<%@ page import="java.util.logging.SimpleFormatter" %>
<%@ page import="it.unitn.progettoweb.Objects.StatoNotifica" %>
<%@ page import="java.text.SimpleDateFormat" %>
<link rel="stylesheet" type="text/css" href="styles/orderstyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">


<meta name="viewport" content="width=device-width, initial-scale=1.0">


<%
    Database db = new Database();
    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
    ArrayList<Ordine> ordini = null;

    if(cookies.length != 0) {
        Database database = new Database();
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("SessioneUtente")) {
                if (!(database.getUserSession(cookies[i].getValue()) == null)) {
                    sessione = database.getUserSession(cookies[i].getValue());
                    utente = database.getUtente(sessione.getIdUtente());
                    isLogged = true;
                    ordini = db.getUserOrders(utente);
                }
            }
        }
        database.close();
    }

    if (isLogged) {

    %>
<body>
<div class="container order-container" id="order-c">

    <div class="row">
        <div class="container">
            <div class="page-header">
                <div class="title">My orders</div>
            </div>

            <!--<div class="row" id="nav-home">-->
            <div class="container" id="contentmain">
                <div class="row" id="content">
                    <div id="noOrders">
                        Nessun ordine
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

<script type="text/javascript">


/*
    $(document).ready(function () {
        htmlbodyHeightUpdate()
        $(window).resize(function () {
            htmlbodyHeightUpdate()
        });
        $(window).scroll(function () {
            height2 = $('.main').height()
            htmlbodyHeightUpdate()
        });
    });
*/
//TODO: query per restituire gli articoli relativi all'ordine di un utente

    var titolo="";
    var testo="";

    $(document).ready(function (){

            titolo= "Ciao";
            testo="Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam.";
        <%
            if (ordini.size()==0){
              %>
                document.getElementById("noOrders").style.display = "block";

        <%
            }else{
                %>
        document.getElementById("noOrders").style.display = "none";
        <%
            }
            System.out.println(""+ordini.size());
            for(int i =0;i < ordini.size(); i++ ){
                %>
                $('#content').append(new_ordine(testo,titolo,<%=ordini.get(i).getPrezzoTot()%> ));
                console.log("fatto");
        <%
        }
    %>

    });


function new_ordine(testo,titolo,prezzo){
    return ('<div>\n' +
        '    <div class="row align-items-center">\n' +
        '        <div class="col-12 col-md-9 col-sm-12">\n' +
        '            <div class="row titolo">\n' +titolo+
        '            </div>\n' +
        '            <div class="row">\n' +testo+
        '            </div>\n' +
        '            <div class="row titolo">\n' +'Totale:\n' +prezzo.toFixed(2)+
        '            euro</div>\n' +
        '        </div>\n' +
        '        <div class="row col-12 col-md-3 col-sm-12">\n' +
        '            <div class="col-12 col-sm-12 col-md-6"><button class="btn btn-sm " id="edit-button">\n' +
        '                    <i class="zmdi zmdi-edit"></i><label id="edit">Edit</label>\n' +
        '            </button></div>\n' +
        '            <div class="col-12 col-sm-12 col-md-6"><button class="btn btn-sm " id="delete-button">\n' +
        '                <i class="zmdi zmdi-notifications"></i>\n<label id="delete" onclick="ticket()">Ticket</label>\n' +
        '            </button></div>\n' +
        '        </div>\n' +
        '    </div>\n' +
            '<div class="ticket" id="ticket">\n' +
        '    <div class="row up-ticket">\n' +
        '        <select class="select custom-select">\n' +
        '            <option class="selected">Rimborso</option>\n' +
        '            <option>Ordine in ritardo</option>\n' +
        '            <option>Oggetto danneggiato</option>\n' +
        '            <option>Altro</option>\n' +
        '        </select>\n' +
        '    </div>\n' +
        '    <div class="row down-ticket">\n' +
        '        <textarea class="textarea"></textarea>\n' +
        '    </div>\n' +
            '<div class="row ">\n' +
        '    <button class="btn btn-ticket" type="submit">Send</button>\n' +
        '</div>'+
        '</div>'+
        '</div>');
}

function ticket() {
        document.getElementById("ticket").style.display = "block";
}

</script>



