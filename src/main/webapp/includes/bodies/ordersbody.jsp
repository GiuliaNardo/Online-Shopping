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
<link rel="stylesheet" type="text/css" href="styles/orderstyle.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>
   <div class="container order-container" id="order-c">

       <div class="row">
           <div class="container">
               <div class="cont-two">
                   <div class="page-header">
                       <h2>My orders</h2>
                   </div>

                   <div class="row" id="nav-home">

                   </div>
               </div>
               <div class="row">
                   <nav aria-label="Page navigation example">
                       <ul class="pagination">
                           <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                           <li class="page-item"><a class="page-link" href="#">1</a></li>
                           <li class="page-item"><a class="page-link" href="#">2</a></li>
                           <li class="page-item"><a class="page-link" href="#">3</a></li>
                           <li class="page-item"><a class="page-link" href="#">Next</a></li>
                       </ul>
                   </nav>
               </div>
           </div>
       </div>
   </div>
       <!--     <div class="row">


                <div class="order-container">

                    <nav class="nav nav-tabs" id="myTab" role="tablist">
                        <a class="nav-item nav-link active nav-order" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">
                            In attesa
                        </a>
                        <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">
                            Conclusi
                        </a>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">

                        </div>
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledbav-profile-tab">

                        </div>
                    </div>
                    <!--
                    <div class="row justify-content-between buttons">
                        <div class="col col-md-6  col-sm-12 align-self-center">
                            <a href="#" class="">
                                <button class="btn bottom-btn" id="button-back">
                                    Ritorna alla chat
                                </button>
                            </a>
                        </div>
                        <div class="col col-md-6 col-sm-12 align-self-center">
                            <a href="profile.html" class="">
                                <button class="btn bottom-btn">
                                    Ritorna al profilo
                                </button>
                            </a>
                        </div>

                    </div>-->
           </div>


       </div>
   </div>
</body>

