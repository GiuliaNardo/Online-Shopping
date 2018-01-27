<%@ page import="java.util.List" %>
<%@ page import="it.unitn.progettoweb.Objects.Articolo" %>
<%@ page import="it.unitn.progettoweb.utils.Database" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 25/09/2017
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Database db = new Database();
    List<Articolo> carrello = null;
    HttpSession sessione = request.getSession();
    if(sessione.getAttribute("carrello") != null){
        carrello = (List<Articolo>) sessione.getAttribute("carrello");
    }else{
        carrello = new ArrayList<Articolo>();
        sessione.setAttribute("carrello", carrello);
    }



%>

<link rel="stylesheet" type="text/css" href="styles/cartstyle.css">

<body>

<div class="order-container">
    <div class="row">
        <div class="title">Your Cart</div>
    </div>

    <div class="">
        <div class="col-md-12">
            <div class="panel panel-default">

                <div class="panel-body">
                    <div class="table table-striped">

                        <div class="row all-title">
                            <div class="col-md-4 item-title">Descrizione ordine</div>
                            <div class="col-md-2 item-title">Categoria</div>
                            <div class="col-md-2 item-title">Quantità</div>
                            <div class="col-md-1 item-title" >Prezzo</div>
                            <div class="col-md-2 item-title" >SubTotale</div>
                            <div class="col-md-1 item-title"></div>
                        </div>
                        <div class="row all-item" id="cart-content">


                        </div>
                    </div>
                    <div class="row">
                        <div id="colonnamaledetta">
                            <button type="button" class="btn btn-default btn-bottom col-12 col-md-8" id="btn-maledetto">
                                <span class="glyphicon glyphicon-shopping-cart"></span> Contina con lo shopping
                            </button>
                            <a href="../../checkout.jsp" class="col-12 col-md-4">
                                <button class="btn btn-bottom btn-success ">
                                    Checkout <span class="glyphicon glyphicon-play"></span>
                                </button>

                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>



<script>


//funziona solo la prima volta perchè hanno tutti gli id uguali
    function aumenta(id,quantita){
        quantita++;
        $('#count').val(quantita);
        if (quantita>1){
            document.getElementById('minus').disabled = "false";
        }
        console.log('ciao ' + quantita);
    };
    function diminuisci(id,quantita){
        if (quantita > 1) {
            quantita--;
            $('#count').val(quantita);
        } else{
            document.getElementById('minus').disabled = "true";
        }
        console.log('ciao ' + quantita);
    };


</script>

<script>


    window.onload = function (){
        var num_articoli = 0;
        <%
        if(carrello != null){
        %>
        num_articoli = <%=carrello.size()%>;
        <%
        }
        %>
        var id;
        var prezzo;
        var sub_tot;
        var tot=0;
        var quantita;
        var categoria;
        var nome;
        var descrizione;
        if(num_articoli > 0){
            var j = 0;
            sub_tot = 0;
            tot = 0;
            <%
            for (Articolo a : carrello) {
            %>
                prezzo = <%=a.getPrezzo()%>;
                descrizione= "<%=a.getDescrizione()%>";
                nome="<%=a.getTitolo()%>";
                categoria= "<%=a.getCategoria()%>";
                quantita=<%=a.getQuantitaNelcarrello()%>;
                id = <%=a.getIdArticolo()%>;

                sub_tot=prezzo*quantita;
                tot+=sub_tot;
                $('#cart-content').append(add_articolo(id, nome, descrizione, sub_tot, categoria, quantita,prezzo));

            <%
            }
            %>

            $('#cart-content').append(add_ordine(id,tot));
        }



    };

    function add_articolo(id, nome, descrizione, sub_tot, categoria, quantita,prezzo) {
        return '<div class="row item">\n' +
            '                            <div class="col-md-4 col-sm-12 articolo">\n' +
            '                                <div class="el"><a href="../../item.jsp?id='+id+'" class="sub-title">'+nome+'</a></div>\n' +
            '                                <div id="testo-piccolo el">'+descrizione+'</div>\n' +
            '                            </div>\n' +
            '                            <div class="col-md-2 col-sm-12 el"><strong>'+categoria+'</strong></div>\n' +
            '                            <div class="col-md-2 col-sm-12 el" style="text-align: center">\n' +
            '                                <div class="input-group input-group1">\n' +
                                    '          <input readonly="readonly" type="text" name="quant" class="form-control input-number" id="count" value="'+quantita+'">\n' +

                                    '      </div>' +
            '                            </div>\n' +
            '                            <div class="col-md-1 col-sm-12 el text-center"><strong>'+prezzo+'€</strong></div>\n' +
            '                            <div class="col-md-2 col-sm-12 el text-center"><strong>'+sub_tot.toFixed(2)+'€</strong></div>\n' +
            '                            <div class="col-sm-12 col-md-1 el">\n' +
            '                                <a class="btn btn-danger" href="../../utils/cart.jsp?action=elimina&idArticolo='+id+'">x</a>\n'+
            '                            </div>\n' +
            '                        </div>'
    };

    function add_ordine(id, tot) {
        return '<div class="row">\n' +
            '                            <div class="col-md-7"></div>\n' +
            '                            <div class="text-right tot col-md-3 col-sm-12">Totale</div>\n' +
            '                            <div class="text-center tot col-md-2 col-sm-12"><strong>euro '+tot.toFixed(2)+'</strong></div>\n' +

            '                        </div>'
    };



</script>
<%
    db.close();
%>






