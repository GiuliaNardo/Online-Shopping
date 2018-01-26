<%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 19/01/2018
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="it.unitn.progettoweb.Objects.Articolo" %>
<%@ page import="it.unitn.progettoweb.utils.Database" %>
<%
    Database db = new Database();
    String azione = request.getParameter("action");
    int idArticolo = Integer.parseInt(request.getParameter("idArticolo"));
    HttpSession sessione = request.getSession();
    boolean esiste = false;
    String q = "";
    String cat = "";
    if(request.getParameter("q")!= ""){
        q = "?q="+request.getParameter("q");
    }else{
        q = "";
    }
    List<Articolo> carrello = null;
    if (azione.equals("aggiungi")) {
        if(sessione.getAttribute("carrello") != null){
           carrello =(List<Articolo>)sessione.getAttribute("carrello");
           for (Iterator<Articolo> iterator = carrello.iterator(); iterator.hasNext(); ) {
               Articolo value = iterator.next();
               if (value.getIdArticolo() == idArticolo) {
                   value.setQuantitaNelcarrello(value.getQuantitaNelcarrello()+1);
                   esiste = true;
               }
           }
           if(!esiste){
               carrello.add(db.getArticolo(idArticolo));
           }
           db.close();
           response.sendRedirect("../shop.jsp"+q);
       }else{
           carrello = new ArrayList<Articolo>();
           carrello.add(db.getArticolo(idArticolo));
           response.sendRedirect("../shop.jsp"+q);
       }
       sessione.setAttribute("carrello", carrello);
    }
    else if (azione.equals("elimina")) {
        carrello = (List<Articolo>) sessione.getAttribute("carrello");
        if(carrello != null){
            for (Iterator<Articolo> iterator = carrello.iterator(); iterator.hasNext(); ) {
                Articolo value = iterator.next();
                if (value.getIdArticolo() == idArticolo) {
                        iterator.remove();
                }
            }
            db.close();
            response.sendRedirect("../cart.jsp");
        }
    }
%>
