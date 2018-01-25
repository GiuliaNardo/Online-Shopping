<%@ page import="it.unitn.progettoweb.utils.Database" %>
<%@ page import="it.unitn.progettoweb.Objects.Articolo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="it.unitn.progettoweb.Objects.ImmagineArticolo" %>
<%@ page import="java.util.concurrent.atomic.AtomicReference" %>
<%@ page import="java.util.Random" %><%--
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
                <%
                    String src1="";
                    if(mostSold.size()>0){
                        for (int i =0; i< mostSold.size(); i++) {
                            Random random = new Random();
                            int r =random.nextInt(mostSold.size());
                            if (mostSold.get(r).getImmagini().size() > 0) {
                                src1 = mostSold.get(r).getImmagini().get(0).getPercorso();

                            }
                            if (i==0){
                %>
                <div class="active item item1"><a href="../../item.jsp?id=<%=mostSold.get(r).getIdArticolo()%>"> <img src="<%=src1%>" class="img-responsive up" alt="<%=mostSold.get(r).getTitolo()%>"></a> </div>
                <%
                }else{

                %>
                <div class="item item1"><a href="../../item.jsp?id=<%=mostSold.get(r).getIdArticolo()%>"><img src="<%=src1%>" class="img-responsive up" alt="<%=mostSold.get(r).getTitolo()%>"></a> </div>
                <%
                            }
                        }
                    }
                %>
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
                        <div class="carousel-inner" id="most">
                            <%
                                String src="";
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
                            %>
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
                        <div class="carousel-inner" id="last">
                            <%
                                String srcU="";
                                if(ultimi.size()>0){
                                    for (int i =0; i< ultimi.size(); i++) {
                                        if (ultimi.get(i).getImmagini().size() > 0) {
                                            srcU = ultimi.get(i).getImmagini().get(0).getPercorso();
                                            System.out.println(ultimi.get(i).getIdArticolo());
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