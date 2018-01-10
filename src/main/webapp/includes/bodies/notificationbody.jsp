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
<%@ page import="java.util.ArrayList" %>
<%@ page import="it.unitn.progettoweb.Objects.Notifica" %>
<%@ page import="com.google.gson.Gson" %>

<link rel="stylesheet" type="text/css" href="styles/notificationstyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>
<div class="container order-container" id="order-c">

    <div class="row">
        <div class="container">
            <div class="page-header">
                <span class="title">My notifications</span>
            </div>
            <!--<div class="row" id="nav-home">-->
            <div class="container" id="contentmain">
                <div class="row" id="content">
                    <div class="niente" id="no-notifications-div">There isn't any notification</div>

                </div>

            </div>
            <button class="btn" id="espandi-button" onclick="espandi()">
                View more notification
            </button>
        </div>

    </div>

</div>
<script type="text/javascript">
    <%
    Utente utente = null;
    Session sessione = null;
    Gson gson = new Gson();
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
    ArrayList<Notifica> notifiche = new ArrayList<>();
    if(cookies.length != 0) {
        Database database = new Database();
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("SessioneUtente")) {
                if (!(database.getUserSession(cookies[i].getValue()) == null)) {
                    sessione = database.getUserSession(cookies[i].getValue());
                    utente = database.getUtente(sessione.getIdUtente());
                    isLogged = true;
                    notifiche = database.getUserNotifications(utente);
                }
            }
        }
        database.close();
    }
    %>

    var notifiche = <%= gson.toJson(notifiche)%>;
    var maxRecentFor = 5;

    if (notifiche.length==0){
        document.getElementById('no-notifications-div').style.display = "block";
    } else {
        document.getElementById('no-notifications-div').style.display = "none";
    }


    if(notifiche.length < 5) {
        maxRecentFor = notifiche.length;
        $('#espandi-button').hide();
    }

    window.onload = function (){
        var i=0;
        for(i = 0; i < maxRecentFor; i++){
            var div = new_notification_div(notifiche[i].id,notifiche[i].testo, "Notifica" ,notifiche[i].url);
            console.log(div);
            $('#content').append(div);
        }

    };

    function espandi() {
        for (var i = 5;i < notifiche.length;i++) {
            $('#content').append(new_notification_div(notifiche[i].testo, "Notifica" ,notifiche[i].url));
            console.log('ciao');
        }
    }

    function markAsRead(id) {
        $.ajax({
            type: "POST",
            url: "/utils/notificationRead.jsp",
            data: {
                "idNotifica" : id
            },
            dataType: "html",
            success: function(msg)
            {
                if(msg.success == "true") {
                    alert("Notifica con id " + id + " segnata come letta");
                }
            },
            error: function()
            {
                alert("C'è stato un errore nel segnare una notifica come letta");
            }
        });
    }

    function new_notification_div(id,testo,titolo,url){
        return (
            '<div class="row ann-block align-items-center" id="ann" onmouseleave="markAsRead(' + id + ')">'+
            '<a href="'+url+'">'+
            '<div class="col col-md-9 col-sm-12 col-12 content-block" id="notifica"><span class="titolo">'+titolo +'<br></span>'+ testo+
            '</div></a>'+

            '<div class="col col-md-3 col-sm-12 col-12">'+

            '<button class="btn btn-sm" id="edit-button" onclick="myedit(this.getAttribute(\'data-id\'),this.getAttribute(\'data-tipologia\'))">'+
            '<i class="zmdi zmdi-mail-reply"></i>\n<label id="testo">Reply</label>'+
            '</button>'+


            '</div>'+
            '<div>');
    }

</script>
</body>


