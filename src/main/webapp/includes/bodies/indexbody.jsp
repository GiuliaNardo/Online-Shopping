<%@ page import="it.unitn.progettoweb.utils.Database" %>
<%@ page import="it.unitn.progettoweb.Objects.Articolo" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Simone
  Date: 19/09/17
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="../../styles/indexstyle.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">


<script>

</script>

<%
    Database db = new Database();

    ArrayList<Articolo> ultimi = db.getHomeLastArticles();
    ArrayList<Articolo> mostSold = db.getHomeMostSold();

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

    <div class="row bottom">
        <div class="col col-lg-4 col-sm-12 content">
            <div class="row title">
                Benvenuto
            </div>
            <div class="row">
                <a href="../login.jsp" role="button">
                    <div class="btn btn-lg btn-accesso">Accedi</div>
                </a>
            </div>
        </div>
        <div class=" col col-lg-4 col-sm-12 content">
            <div class="row title">
                Più venduto
            </div>
            <div class="row">
                <a href="">
                    <div id="carousel-center" class="carousel slide">
                        <!-- Items -->
                        <div class="carousel-inner">
                            <div class="active item"><img
                                    src=""
                                    class="img-responsive" alt="<%=mostSold.get(0).getTitolo() %>">
                            </div>
                            <div class="item"><img
                                    src=""
                                    class="img-responsive" alt="<%=mostSold.get(1).getTitolo() %>">
                            </div>
                            <div class="item"><img
                                    src=""
                                    class="img-responsive" alt="<%=mostSold.get(2).getTitolo() %>">
                            </div>
                            <div class="active item"><img
                                    src=""
                                    class="img-responsive" alt="<%=mostSold.get(3).getTitolo() %>">
                            </div>
                            <div class="active item"><img
                                    src=""
                                    class="img-responsive" alt="<%=mostSold.get(4).getTitolo() %>">
                            </div>

                        </div>
                    </div>

                </a>
            </div>

        </div>
        <div class=" col col-lg-4 col-sm-12 content">
            <div class="row title">
                Latest items
            </div>
            <div class="row">
                <a href="">
                    <div id="carousel-left" class="carousel slide">
                        <!-- Items -->
                        <div class="carousel-inner">
                            <div class="active item"><img
                                    src=""
                                    class="img-responsive" alt="<%=ultimi.get(0).getTitolo() %>">
                                <%
                                    System.out.println("" + ultimi.get(0).getTitolo());
                                %>
                            </div>
                            <div class="item"><img
                                    src=""
                                    class="img-responsive" alt="<%=ultimi.get(1).getTitolo() %>">
                            </div>
                            <div class="item"><img
                                    src=""
                                    class="img-responsive" alt="<%=ultimi.get(2).getTitolo() %>">
                            </div>
                            <div class="active item"><img
                                    src=""
                                    class="img-responsive" alt="<%=ultimi.get(3).getTitolo() %>">
                            </div>
                            <div class="active item"><img
                                    src=""
                                    class="img-responsive" alt="<%=ultimi.get(4).getTitolo() %>">
                            </div>

                        </div>
                    </div>

                </a>
            </div>

        </div>
    </div>
</div>

</body>

<%

    db.close();
%>