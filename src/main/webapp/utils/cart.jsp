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
    List<Articolo> carrello = null;
    if (azione.equals("aggiungi")) {
       if(sessione.getAttribute("carrello") != null){
           carrello =(List<Articolo>)sessione.getAttribute("carrello");
           carrello.add(db.getArticolo(idArticolo));
           response.sendRedirect("../shop.jsp");
       }else{
           carrello = new ArrayList<Articolo>();
           carrello.add(db.getArticolo(idArticolo));
           response.sendRedirect("../shop.jsp");
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
            response.sendRedirect("../cart.jsp");
        }
    }
%>
