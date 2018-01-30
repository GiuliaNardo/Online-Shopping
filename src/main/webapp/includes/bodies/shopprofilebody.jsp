<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 13/01/2018
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="it.unitn.progettoweb.utils.Database" %>
<%@ page import="it.unitn.progettoweb.Objects.*" %>
<%@ page import="java.util.ArrayList" %>

<link rel="stylesheet" type="text/css" href="styles/shopprofile.css">

<%
    String testoRec = request.getParameter("testo");
    String rate = request.getParameter("valstar");
    int voto = 0;
    String descr = "";
    RecensioneVenditore recendione = null;

    String ricerca = request.getParameter("id");


    ArrayList<RecensioneVenditore> recensioni = null;
    boolean search = true;
    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
    Venditore venditore = null;
    Database database = new Database();
    if (cookies != null && cookies.length != 0) {

        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("SessioneUtente")) {
                if (!(database.getUserSession(cookies[i].getValue()) == null)) {
                    sessione = database.getUserSession(cookies[i].getValue());
                    utente = database.getUtente(sessione.getIdUtente());
                    isLogged = true;
                }
            }
        }

    }

    if (testoRec != null) {
        descr = testoRec;
    }
    if (rate != null) {
        int r = Integer.parseInt(rate);
        if (r > 0) {
            voto = r;
        } else {
            voto = 1;
        }
    }

    if (ricerca != null) {
        if (!ricerca.equals("")) {
            int id = Integer.parseInt(ricerca);
            venditore = database.getVenditore(id);

        }
    }
    if (isLogged) {
        if (utente != null) {

            System.out.println("b");
            if (venditore != null) {
                recensioni = database.getRecensioniVenditore(venditore);
                if (utente.getId() == venditore.getIdUtente()) {
                    search = false;


                }


                //recendione = new RecensioneVenditore(utente,voto,descr,venditore.getIdVenditore());
                //database.insert
                database.close();

%>


<body>

<div class="container main-container">
    <div class="row title">
        <%=venditore.getNomeNegozio()%>

    </div>
    <div class="container field">
        <div class="row justify-content-between">
            <div class="col col-md-5 col-sm-12 titolo">
                Ragione sociale:
            </div>
            <div class="col col-md-5 col-sm-12">
                <%=venditore.getRagioneSociale()%>
            </div>
        </div>
        <div class="row justify-content-between">
            <div class="col col-md-5 col-sm-12 titolo">
                Partita IVA:
            </div>
            <div class="col col-md-5 col-sm-12">
            <%=venditore.getPartitaIva()%>
            </div>
        </div>
        <div class="row justify-content-between">
            <div class="col col-md-5 col-sm-12 titolo">
                Indirizzo:
            </div>
            <div class="col col-md-5 col-sm-12">
                <%=venditore.getIndirizzo()%>
            </div>
        </div>
        <div class="row justify-content-between">
            <div class="col col-md-5 col-sm-12 titolo">
                Valutazione:
            </div>
            <div class="col col-md-5 col-sm-12">
                <%=venditore.getValutazione()%>
            </div>
        </div>
    </div>


        <div class="recensioni testo">
            <div class="titolo">Recensioni</div>
            <%
                if (recensioni != null) {
                    double voto1 = 0.0;
                    if (recensioni.size() > 0) {
                        System.out.println(recensioni.size() + "rec");
                        for (int i = 0; i < recensioni.size(); i++) {
                            if (recensioni.get(i).getVoto() != 0) {
                                voto1 = Math.round(recensioni.get(i).getVoto() * 100.0) / 100.0;
                            } else {
                                voto1 = 1;
                            }
            %>
            <div class="container recensione">
                <div class="row" id="username">
                    <%=recensioni.get(i).getUtente().getUserName()%>
                </div>
                <div class="row">

                    <div>Voto: <%=voto1%>
                    </div>
                </div>
                <div class="row">
                    <p><%=recensioni.get(i).getTesto()%>
                    </p>
                </div>
            </div>

            <%
                }%>
        </div>

            <%
    } else {
    %>
    <div id="noOrders">Nessuna recensione</div></div>

            <%
                    }
                }

            %>



</div>

</body>
    <%

    }
%>


            <%
        }

} else {
    if (venditore != null) {
%>
        <div class="container main-container">
            <div class="row title">
                <%=venditore.getNomeNegozio()%>

            </div>
            <div class="container field">
                <div class="row justify-content-between">
                    <div class="col col-md-5 col-sm-12 titolo">
                        Ragione sociale:
                    </div>
                    <div class="col col-md-5 col-sm-12">
                        <%=venditore.getRagioneSociale()%>
                    </div>
                </div>
                <div class="row justify-content-between">
                    <div class="col col-md-5 col-sm-12 titolo">
                        Partita IVA:
                    </div>
                    <div class="col col-md-5 col-sm-12">
                        <%=venditore.getPartitaIva()%>
                    </div>
                </div>
                <div class="row justify-content-between">
                    <div class="col col-md-5 col-sm-12 titolo">
                        Indirizzo:
                    </div>
                    <div class="col col-md-5 col-sm-12">
                        <%=venditore.getIndirizzo()%>
                    </div>
                </div>
                <div class="row justify-content-between">
                    <div class="col col-md-5 col-sm-12 titolo">
                        Valutazione:
                    </div>
                    <div class="col col-md-5 col-sm-12">
                        <%=venditore.getValutazione()%>
                    </div>
                </div>
            </div>
        </div>
</body>
            <%
        }
    }

%>
