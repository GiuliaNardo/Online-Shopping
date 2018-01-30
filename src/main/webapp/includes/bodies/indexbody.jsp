<%@ page import="it.unitn.progettoweb.utils.Database" %>
<%@ page import="it.unitn.progettoweb.Objects.Articolo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="it.unitn.progettoweb.Objects.ImmagineArticolo" %>
<%@ page import="java.util.concurrent.atomic.AtomicReference" %>
<%@ page import="java.util.Random" %>
<%@ page import="it.unitn.progettoweb.Objects.*" %><%--
  Created by IntelliJ IDEA.
  User: Simone
  Date: 19/09/17
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="../../styles/indexstyle.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%
    Database db = new Database();
    ArrayList<Articolo> ultimi = db.getHomeLastArticles();
    ArrayList<Articolo> mostSold =  db.getHomeMostSold();

    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
    Ordine ordine1=null;

    if(cookies != null && cookies.length != 0) {

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


%>


<div class="container index-container">
    <div class="row top">
        <div id="myCarousel" class="carousel slide">
            <!-- Dot Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- Items -->
            <div class="carousel-inner" id="carousel-inner">

                <div class="active item item1"><a href="../../shop.jsp?cat=Sport"><img src="http://www.lastorderspubs.co.uk/wp-content/uploads/Sport-featured-image.jpg"></a></div>
                <div class="item item1"><a href="../../shop.jsp?cat=Libri"><img src="http://www.luzzago.it/files/4414/3530/6222/libri.jpg"></a></div>
                <div class="item item1"><a href="../../shop.jsp?cat=Abbigliamento"><img src="http://cdn1.loyaltyworks.com/wp-content/uploads/bfi_thumb/shutterstock_644497661-30uj91xgm5uhpi02xwledc.jpg"></a></div>
            </div>
            <!-- Navigation -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>

    <div class="row bottom ">
        <div class="col col-lg-4 col-md-4 col-12 col-sm-12 content">
            <div class="immagine">
                <img src="../../images/BeFunky%20Design.jpg" width="100%">
            </div>

            <%
                if (!isLogged){
            %>
            <div class="row align-items-center">
                <a href="../login.jsp" role="button">
                    <div class="btn btn-lg btn-accesso">Accedi</div>
                </a>
            </div>
            <%
                }
            %>
        </div>

        <div class="col col-lg-4 col-md-4 col-12 col-sm-12 content">
            <div class="row title">
                Più venduti
            </div>
            <div class="row">
                <a href="">
                    <div id="carousel-center" class="carousel slide">
                        <!-- Items -->
                        <div class="carousel-inner" id="most">
                            <%
                                String src="";
                                if (mostSold!=null){
                                if(mostSold.size()>0){
                                    for (int i =0; i< mostSold.size(); i++) {
                                        if (mostSold.get(i).getImmagini().size() > 0) {
                                            src = mostSold.get(i).getImmagini().get(0).getPercorso();

                                        }
                                        if (i==0){
                            %>
                            <div class="active item"><a href="../../item.jsp?id=<%=mostSold.get(i).getIdArticolo()%>"> <img src="<%=src%>" class="img-responsive" alt="<%=mostSold.get(i).getTitolo()%>"></a> </div>
                            <%
                                        }else{

                            %>
                            <div class="item"><a href="../../item.jsp?id=<%=mostSold.get(i).getIdArticolo()%>"><img src="<%=src%>" class="img-responsive" alt="<%=mostSold.get(i).getTitolo()%>"></a> </div>
                            <%
                                    }
                                    }
                                }
                                }
                            %>
                        </div>
                    </div>

                </a>
            </div>
        </div>

        <div class=" col col-lg-4 col-md-4 col-12 col-sm-12 content">
            <div class="row title">
                Ultimi aggiunti
            </div>
            <div class="row">
                <a href="">
                    <div id="carousel-left" class="carousel slide">
                        <!-- Items -->
                        <div class="carousel-inner" id="last">
                            <%
                                String srcU="";
                                if(ultimi!=null){
                                if(ultimi.size()>0){
                                    for (int i =0; i< ultimi.size(); i++) {
                                        if (ultimi.get(i).getImmagini().size() > 0) {
                                            srcU = ultimi.get(i).getImmagini().get(0).getPercorso();
                                        }
                                        if (i==0){
                            %>
                            <div class="active item"><a href="../../item.jsp?id=<%=ultimi.get(i).getIdArticolo()%>"><img src="<%=srcU%>" class="img-responsive" alt="<%=ultimi.get(i).getTitolo()%>"></a> </div>
                            <%
                                        }else{

                            %>
                            <div class="item"><a href="../../item.jsp?id=<%=ultimi.get(i).getIdArticolo()%>"><img src="<%=srcU%>" class="img-responsive" alt="<%=ultimi.get(i).getTitolo()%>"></a> </div>
                            <%
                                    }
                                    }
                                }
                                }
                            %>

                        </div>
                    </div>

                </a>
            </div>

        </div>
    </div>
</div>


<%
        db.close();

%>