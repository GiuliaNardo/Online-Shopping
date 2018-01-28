<%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 27/01/2018
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%@ page import="java.util.List" %>
<%@ page import="it.unitn.progettoweb.Objects.Articolo" %>
<%@ page import="it.unitn.progettoweb.Objects.Session" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="it.unitn.progettoweb.Objects.*" %>
<%@ page import="java.sql.Date"%>
<%
    Utente utente = null;
    String tipoO = request.getParameter("tipoO");
    TipoOrdine tipoOrdine = null;
    if(!tipoO.equals("")){
        if(tipoO.equals("spedizione")){
            tipoOrdine = TipoOrdine.SPEDIZIONE;
        }else if(tipoO.equals("ritiro")){
            tipoOrdine = TipoOrdine.RITIRO;
        }
    }

    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    float prezzoTot = 0;
    Ordine ordine = null;
    ArrayList<Articolo> carrello = null;
    HttpSession cartSess = request.getSession();
    if(cartSess.getAttribute("carrello") != null){
        carrello = (ArrayList<Articolo>) cartSess.getAttribute("carrello");
    }else{
        carrello = new ArrayList<>();
        cartSess.setAttribute("carrello", carrello);
    }

    if(tipoOrdine != null) {
        Database database = new Database();
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("SessioneUtente")) {
                if (!(database.getUserSession(cookies[i].getValue()) == null)) {
                    if(carrello.size() > 0){
                        sessione = database.getUserSession(cookies[i].getValue());
                        utente = database.getUtente(sessione.getIdUtente());
                        for (Articolo a : carrello) {
                            prezzoTot += a.getPrezzo()*a.getQuantitaNelcarrello();
                        }
                        ordine = new Ordine(utente.getId(), prezzoTot,new Date(new java.util.Date().getTime()),new Date(new java.util.Date().getTime()),tipoOrdine,true, false, carrello );
                        if(database.insertOrder(ordine)){
                            carrello.clear();
                            cartSess.setAttribute("carrello", carrello);
                            response.sendRedirect("../shop.jsp");
                        }else{
                            response.sendRedirect("../checkout.jsp");
                        }
                    }


                }
            }
        }
        database.close();
    }else{
        System.out.println("NONO");
        response.sendRedirect("../index.jsp");
    }


%>
