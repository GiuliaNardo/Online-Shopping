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
<link rel="stylesheet" type="text/css" href="styles/notificationstyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>
<div class="container order-container" id="order-c">

    <div class="row">
        <div class="container">
            <div class="page-header">
                <h2 class="title">My notifications</h2>
            </div>
            <!--<div class="row" id="nav-home">-->
            <div class="container" id="contentmain">
                <div class="row" id="content">


                </div>

            </div>
            <button class="btn" id="espandi-button" onclick="espandi()">
                View more notification
            </button>
        </div>

    </div>

</div>
</body>

<script type="text/javascript">

    //TODO: queryper restituire gli ordini di un utente
    var notifiche= 0;
    var notifiche_tot =20;
    var titolo="";
    var testo="";
    var data="";

    window.onload = function (){
        var i=0;
        notifiche = 10;

        for(i =0; i <notifiche; i++){
            titolo= "Ciao";
            testo="Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam.";
            data = "02/05/2017";
            $('#content').append(new_div(testo, titolo));
            console.log('ciao');
            notifiche_tot--;
        }

    }
    //TODO: query che restituisce le notifiche più recenti (da una certa data in poi)
    function new_div(testo,titolo){
        return (
            '<div class="row ann-block align-items-center" id="ann">'+
            '<div class="col col-md-9 col-sm-12 col-12 content-block" id="text-block"><span class="titolo">'+titolo +'<br></span>'+ testo+
            '</div>'+

            '<div class="col col-md-3 col-sm-12 col-12">'+

            '<button class="btn btn-sm" id="edit-button" onclick="myedit(this.getAttribute(\'data-id\'),this.getAttribute(\'data-tipologia\'))">'+
            '<i class="zmdi zmdi-mail-reply"></i>\n<label id="testo">Reply</label>'+
            '</button>'+


            '</div>'+
            '<div>');


    }

    //TODO: query che restituisce tutte le notifiche meno le più recenti ( quelle restituite dalla query sopra)
    function espandi() {
        var i=0;

            while ( i < 5 && notifiche_tot>0) {

                titolo = "Ciao";
                testo = "Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam.";
                data = "02/05/2017";
                $('#content').append(new_div(testo, titolo));
                console.log('ciao');
                notifiche_tot--;
                i++;
            }
        if (notifiche_tot==0){
            $('#espandi-button').hide();
        }

    }

</script>
</body>

