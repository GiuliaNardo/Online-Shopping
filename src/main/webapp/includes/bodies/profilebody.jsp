<%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 22/09/2017
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%@ page import="it.unitn.progettoweb.Objects.Utente" %>
<%@ page import="it.unitn.progettoweb.Objects.Session" %>
<link rel="stylesheet" type="text/css" href="styles/profilestyle.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<script>
   /* $(function () {
        $('#profile-image1').on('click', function () {

         $(imgId).attr('src', 'images/icon_sync.gif');
         var source = $(imgId).attr('src');
         $('#profile-image1').attr('src', source);

        });
    });*/
</script>
<%

    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
    String path = "";

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
        path = utente.getImmagineUtente().getPercorso();
        database.close();
    }
        if (isLogged){
        System.out.println("loggato");


%>

<body>
<div class="container">
    <div class="order-container" id="profile-cont">
        <div class="row title">
            <div class="col col-md-12 col-12">
                <div><label>Your profile</label></div>
            </div>
        </div>
        <div class="row">
            <div class="col col-md-6 col-12 main " id="profilo">

                <img alt="User Pic"
                     <%

                    if (path.length()==0){
                     %>
                     src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
                     <%
                    }else{
                     %>
                        src="<%=path%>"
                    <%
                    System.out.println(path);
                    }
                    %>
                     id="profile-image1" class="img-circle img-responsive">
                <div class="row">
                    <div class="field">
                        <div><label class="name-field">Name:</label><%=utente.getNome()%></div>
                        <div><label class="name-field">Last Name:</label><%=utente.getCognome()%></div>
                        <div><label class="name-field">Username:</label><%=utente.getUserName()%></div>
                        <div><label class="name-field">Date of birth:</label><%=utente.getDataNascita()%></div>
                        <div><label class="name-field">Email:</label><%=utente.getEmail()%></div>
                        <div><label class="name-field">Tipo utente:</label><%=utente.getTipo()%></div>
                    </div>
                </div>
            </div>
            <div class="col col-md-6 col-12 main .no-gutters" id="opzioni">
                <div class="row col col md-4 col-sm-12 secondary sec1" id="primo">
                    <img src="http://www.spedizioni-espresso.it/img/come-prenotare-ritiro-pacchi.png"
                         class="img ">
                    <div class="row"><a class="profile-generic-anchor" href="orders.jsp">My Orders</a></div>
                    <div class="row">Clicca per visualizzare i tuoi ordini</div>
                </div>
                <div class="row secondary sec1">
                    <img src="https://membershipworks.com/wp-content/uploads/2014/12/shopping-cart.png"
                         class="img">
                    <div class="row">
                        <a class="profile-generic-anchor" href="cart.jsp">Cart</a>
                    </div>
                    <div class="row">Clicca per visualizzare il tuo carrello</div>
                </div>
                <div class="row secondary">
                    <img src="http://www.graphicsfuel.com/wp-content/uploads/2012/07/pencil-icon-512.png" class="img">
                    <div class="row">
                        <a class="profile-generic-anchor" href="profile.jsp">Edit</a>
                    </div>
                    <div class="row">Clicca per modificare il tuo profilo</div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

<%
    } else{
       %>
    <script>
        alert('NON PUOI');
    </script>
<%
        String redirectURL = "../../login.jsp";
        response.sendRedirect(redirectURL);
        System.out.println("rediretto  "+ redirectURL.length());
    }
%>

<!--
<div class="container row">
<div class="col prova-padding">

<div class="container table-head">
<div class="row profile-td-head">
User profile
</div>
<div class="row profile-image-div">
<img alt="User Pic"
src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
id="profile-image1" class="img-circle img-responsive">
<input id="profile-image-upload" class="hidden" type="file">
</div>
<div class="field" nowrap>
<li><span class="etichette">Name: </span>
</li>
<li><span class="etichette">Last Name: </span>
</li>
<li><span class="etichette">Username: </span>
</li>
<li><span class="etichette">Date of birth: </span>
</li>
<li><span class="etichette">Email: </span>
</li>


</div>
</div>
</div>
<div class="col menu">
<table class="table-profile-center">
<tr>
<td class="td-profile-center">
<div class="div-profile-center">
<img src="http://www.spedizioni-espresso.it/img/come-prenotare-ritiro-pacchi.png"
class="img-pacco">
<a class="profile-generic-anchor" href="orders.jsp">My Orders</a>
<p class="didascalia">Clicca per visualizzare i tuoi ordini</p>
</div>

</td>
</tr>
<tr>
<td class="td-profile-center">
<div class="div-profile-center">
<img src="https://membershipworks.com/wp-content/uploads/2014/12/shopping-cart.png"
class="img-cart">
<a class="profile-generic-anchor" href="cart.jsp">Cart</a>
<p class="didascalia">Clicca per visualizzare il tuo carrello</p>
</div>

</td>
</tr>
<tr>
<td class="td-profile-center">
<div class="div-profile-center">
<img src="https://s3.amazonaws.com/gumroad/files/4fb88c695aeca5a56d1d2a563e8cb7da/original/pencil.png"
class="img-edit">
<a class="profile-generic-anchor" href="profile.jsp">Edit</a>
<p class="didascalia">Clicca per modificare il tuo profilo</p>
</div>

</td>
</tr>

</table>
</div>
</div>

</body>

-->
