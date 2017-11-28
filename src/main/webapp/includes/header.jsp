<%--
  Created by IntelliJ IDEA.
  User: Simone
  Date: 19/09/17
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%@ page import="it.unitn.progettoweb.Objects.Utente" %>
<%@ page import="it.unitn.progettoweb.Objects.Session" %>


<%

    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
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
        database.close();
    }

%>
<html>
<head>
    <title><%=request.getParameter("pageTitle")%></title>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="styles/style.css">
    <link rel="stylesheet" type="text/css" href="styles/styleheader.css">
    <link rel="stylesheet" type="text/css" href="styles/jquery-ui.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
</head>
<body>
<%
    if(!isLogged){
%>
<nav class="[ navbar navbar-fixed-top ][ navbar-bootsnipp animate ]" role="navigation">
    <div class="[ container ]">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="[ navbar-header ]">
            <button type="button" class="[ navbar-toggle ]" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="[ sr-only ]">Toggle navigation</span>
                <span class="[ icon-bar ]"></span>
                <span class="[ icon-bar ]"></span>
                <span class="[ icon-bar ]"></span>
            </button>
            <div class="[ animbrand ]">
                <a class="[ navbar-brand ][ animate ]" href="index.jsp">DemaShop</a>
            </div>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="[ collapse navbar-collapse ]" id="bs-example-navbar-collapse-1">
            <ul class="[ nav navbar-nav navbar-right ]">
                <li class="[ visible-xs ]">
                    <form action="" method="GET" role="search">
                        <div class="[ input-group ]">
                            <input type="text" class="[ form-control ]" name="q" placeholder="Cerca articoli">
                            <span class="[ input-group-btn ]">
									<button class="[ btn btn-primary ]" type="submit"><span class="[ glyphicon glyphicon-search ]"></span></button>
									<button class="[ btn btn-danger ]" type="reset"><span class="[ glyphicon glyphicon-remove ]"></span></button>
								</span>
                        </div>
                    </form>
                </li>
                <li><a href="/index.jsp" class="[ animate ]">Home</a></li>
                <li><a href="/shop.jsp" class="[ animate ]">Shop</a></li>
                <li>
                    <a href="#" class="[ dropdown-toggle ][ animate ]" data-toggle="dropdown">Categorie <span class="[ caret ]"></span></a>
                    <ul class="[ dropdown-menu ]" role="menu">
                        <li><a href="#" class="[ animate ]">Bau <span class="[ pull-right glyphicon glyphicon-pencil ]"></span></a></li>
                        <li><a href="#" class="[ animate ]">Ciaone <span class="[ pull-right glyphicon glyphicon-align-justify ]"></span></a></li>
                        </ul>
                </li>
                <li>
                    <a href="/cart.jsp" class="[ dropdown-toggle ][ animate ]" data-toggle="dropdown">Carrello <span class="[ caret ]"></span></a>
                    <ul class="[ dropdown-menu ]" role="menu">
                        <li><a href="/item.jsp" class="[ animate ]">item <span class="[ pull-right glyphicon glyphicon-pencil ]"></span></a></li>
                    </ul>
                </li>
                <li><a class="animate" href="/login.jsp">Login</a></li>
                <li class="[ hidden-xs ]"><a href="#toggle-search" class="[ animate ]"><span class="[ glyphicon glyphicon-search ]"></span></a></li>
            </ul>
        </div>
    </div>
    <div class="[ bootsnipp-search animate ]">
        <div class="[ container ]">
            <form action="" method="GET" role="search">
                <div class="[ input-group ]">
                    <input type="text" class="[ form-control ]" id="searchbox-text" name="q" placeholder="Cerca un articolo">
                    <span class="[ input-group-btn ]">
							<button class="[ btn btn-danger ]" type="reset"><span class="[ glyphicon glyphicon-remove ]"></span></button>
						</span>
                </div>
            </form>
        </div>
    </div>
</nav>
<%
    }else{
%>
<nav class="[ navbar navbar-fixed-top ][ navbar-bootsnipp animate ]" role="navigation">
    <div class="[ container ]">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="[ navbar-header ]">
            <button type="button" class="[ navbar-toggle ]" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="[ sr-only ]">Toggle navigation</span>
                <span class="[ icon-bar ]"></span>
                <span class="[ icon-bar ]"></span>
                <span class="[ icon-bar ]"></span>
            </button>
            <div class="[ animbrand ]">
                <a class="[ navbar-brand ][ animate ]" href="index.jsp">DemaShop</a>
            </div>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="[ collapse navbar-collapse ]" id="bs-example-navbar-collapse-1">
            <ul class="[ nav navbar-nav navbar-right ]">
                <li class="[ visible-xs ]">
                    <form action="" method="GET" role="search">
                        <div class="[ input-group ]">
                            <input type="text" class="[ form-control ]" name="q" placeholder="Cerca articoli">
                            <span class="[ input-group-btn ]">
									<button class="[ btn btn-primary ]" type="submit"><span class="[ glyphicon glyphicon-search ]"></span></button>
									<button class="[ btn btn-danger ]" type="reset"><span class="[ glyphicon glyphicon-remove ]"></span></button>
								</span>
                        </div>
                    </form>
                </li>
                <li><a href="/index.jsp" class="[ animate ]">Home</a></li>
                <li><a href="/shop.jsp" class="[ animate ]">Shop</a></li>
                <li>
                    <a href="#" class="[ dropdown-toggle ][ animate ]" data-toggle="dropdown">Categorie <span class="[ caret ]"></span></a>
                    <ul class="[ dropdown-menu ]" role="menu">
                        <li><a href="#" class="[ animate ]">Bau <span class="[ pull-right glyphicon glyphicon-pencil ]"></span></a></li>
                        <li><a href="#" class="[ animate ]">Ciaone <span class="[ pull-right glyphicon glyphicon-align-justify ]"></span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="/cart.jsp" class="[ dropdown-toggle ][ animate ]" data-toggle="dropdown">Carrello <span class="[ caret ]"></span></a>
                    <ul class="[ dropdown-menu ]" role="menu">
                        <li><a href="/item.jsp" class="[ animate ]">item <span class="[ pull-right glyphicon glyphicon-pencil ]"></span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="[ dropdown-toggle ][ animate ]" data-toggle="dropdown"><%=utente.getUserName()%><span class="[ caret ]"></span></a>
                    <ul class="[ dropdown-menu ]" role="menu">
                        <li><a href="profile.jsp" class="[ animate ]">Profile <span class="[ pull-right glyphicon glyphicon-pencil ]"></span></a></li>
                        <li><a href="orders.jsp" class="[ animate ]">I miei Ordini <span class="[ pull-right glyphicon glyphicon-align-justify ]"></span></a></li>
                        <li><a href="utils/logout.jsp">Log out</a></li>
                    </ul>
                </li>
                <li class="[ hidden-xs ]"><a href="#toggle-search" class="[ animate ]"><span class="[ glyphicon glyphicon-search ]"></span></a></li>
            </ul>
        </div>
    </div>
    <div class="[ bootsnipp-search animate ]">
        <div class="[ container ]">
            <form action="" method="GET" role="search">
                <div class="[ input-group ]">
                    <input type="text" class="[ form-control ]" id="searchbox-text" name="q" placeholder="Cerca un articolo">
                    <span class="[ input-group-btn ]">
							<button class="[ btn btn-danger ]" type="reset"><span class="[ glyphicon glyphicon-remove ]"></span></button>
						</span>
                </div>
            </form>
        </div>
    </div>
</nav>
<%}%>
</body>


