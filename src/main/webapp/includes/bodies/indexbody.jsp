<%@ page import="it.unitn.progettoweb.utils.Database" %>
<%@ page import="it.unitn.progettoweb.Objects.Articolo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="it.unitn.progettoweb.Objects.ImmagineArticolo" %>
<%@ page import="java.util.concurrent.atomic.AtomicReference" %><%--
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
    String src0 = "", altU0 = "";
    String src1 = "",altU1 = "";
    String src2 = "", altU2 = "";
    String src3 = "", altU3 = "";
    String src4 = "", altU4 = "";
    String srcU0 = "", alt0 = "";
    String srcU1 = "", alt1 = "";
    String srcU2 = "", alt2 = "";
    String srcU3 = "", alt3 = "";
    String srcU4 = "", alt4 = "";

    System.out.println(mostSold.size()+"");
    if(mostSold.size()!=0){
        alt0 = mostSold.get(0).getTitolo();
        alt1 = mostSold.get(1).getTitolo();
        alt2 = mostSold.get(2).getTitolo();
        alt3 = mostSold.get(3).getTitolo();
        alt4 = mostSold.get(4).getTitolo();
        if (!mostSold.get(0).getImmagini().isEmpty()){
            src0= mostSold.get(0).getImmagini().get(0).getPercorso();
        }
        if (!mostSold.get(1).getImmagini().isEmpty()){
            src1 = mostSold.get(1).getImmagini().get(0).getPercorso();
        }
        if (!mostSold.get(2).getImmagini().isEmpty()){
            src2 = mostSold.get(2).getImmagini().get(0).getPercorso();
        }
        if (!mostSold.get(3).getImmagini().isEmpty()){
            src3 = mostSold.get(3).getImmagini().get(0).getPercorso();
        }
        if (!mostSold.get(4).getImmagini().isEmpty()){
            src4 = mostSold.get(4).getImmagini().get(0).getPercorso();
        }
    }

    if (ultimi.size()!=0) {
        altU0 = ultimi.get(0).getTitolo();
        altU1 = ultimi.get(1).getTitolo();
        altU2 = ultimi.get(2).getTitolo();
        altU3 = ultimi.get(3).getTitolo();
        altU4 = ultimi.get(4).getTitolo();

        if (!ultimi.get(0).getImmagini().isEmpty()) {
            srcU0 = ultimi.get(0).getImmagini().get(0).getPercorso();
        }
        if (!ultimi.get(1).getImmagini().isEmpty()) {
            srcU1 = ultimi.get(1).getImmagini().get(0).getPercorso();
        }
        if (!ultimi.get(2).getImmagini().isEmpty()) {
            srcU2 = ultimi.get(2).getImmagini().get(0).getPercorso();
        }
        if (!ultimi.get(3).getImmagini().isEmpty()) {
            srcU3 = ultimi.get(3).getImmagini().get(0).getPercorso();
        }
        if (!ultimi.get(4).getImmagini().isEmpty()) {
            srcU4 = ultimi.get(4).getImmagini().get(0).getPercorso();
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
            <div class="carousel-inner">
                <div class="active item"><img
                        src="http://www.superedo.it/sfondi/sfondi/Paesaggi/Mongolfiere%20Colorate/mongolfiere_colorate_6.jpg"
                        class="img-responsive">
                </div>
                <div class="item"><img
                        src="http://wallpaperart.altervista.org/Immagini/fiori_blu_fiore_1280x800.jpg"
                        class="img-responsive"></div>
                <div class="item"><img
                        src="http://2.bp.blogspot.com/-Hc6TN4iB_RM/UTKMrWZF_WI/AAAAAAAAC5Y/r0vMbUSpXSo/s1600/skull_wallpaper4.jpg"
                        class="img-responsive"></div>
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
            <div class="row title">
                Benvenuto
            </div>
            <div class="row align-items-center">
                <a href="../login.jsp" role="button">
                    <div class="btn btn-lg btn-accesso">Accedi</div>
                </a>
            </div>
        </div>

        <div class="col col-lg-4 col-md-4 col-12 col-sm-12 content">
            <div class="row title">
                Più venduto
            </div>
            <div class="row">
                <a href="">
                    <div id="carousel-center" class="carousel slide">
                        <!-- Items -->
                        <div class="carousel-inner">
                            <div class="active item"><img
                                    src="<%=src0%>"
                                    class="img-responsive" alt="<%=alt0%>">

                            </div>
                            <div class="item"><img
                                    src="<%=src1%>"
                                    class="img-responsive" alt="<%=alt1%>">
                            </div>
                            <div class="item"><img
                                    src="<%=src2%>"
                                    class="img-responsive" alt="<%=alt2%>">
                            </div>
                            <div class="active item"><img
                                    src=""
                                    class="img-responsive" alt="<%=alt3%>">
                            </div>

                            <div class="active item"><img
                                    src=""
                                    class="img-responsive" alt="<%=alt4%>">

                            </div>
                        </div>
                    </div>

                </a>
            </div>
        </div>

        <div class=" col col-lg-4 col-md-4 col-12 col-sm-12 content">
            <div class="row title">
                Latest items
            </div>
            <div class="row">
                <a href="">
                    <div id="carousel-left" class="carousel slide">
                        <!-- Items -->
                        <div class="carousel-inner">
                            <div class="active item"><img
                                    src="<%=srcU0 %>"
                                    class="img-responsive" alt="<%=altU0%>">

                            </div>
                            <div class="item"><img
                                    src="<%=srcU1 %>"
                                    class="img-responsive" alt="<%=altU1 %>">
                            </div>
                            <div class="item"><img
                                    src="<%=srcU2%>"
                                    class="img-responsive" alt="<%=altU2%>">
                            </div>
                            <div class="active item"><img
                                    src="<%=srcU3 %>"
                                    class="img-responsive" alt="<%=altU3%>">
                            </div>
                            <div class="active item"><img
                                    src="<%=srcU4%>"
                                    class="img-responsive" alt="<%=altU4%>">
                            </div>

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