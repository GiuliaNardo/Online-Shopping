<%@ page import="it.unitn.progettoweb.utils.Database" %>
<%@ page import="javax.xml.crypto.Data" %>
<%@ page import="it.unitn.progettoweb.Objects.AdvancedSearchParameters" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="it.unitn.progettoweb.Objects.Articolo" %>
<%@ page import="it.unitn.progettoweb.Objects.Categoria" %>
<%@ page import="it.unitn.progettoweb.Objects.QueryOrder" %>
<%@ page import="java.math.BigDecimal" %><%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 22/09/2017
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
    Database db = new Database();
    ArrayList<Categoria> categorie= db.getCategorie();
    ArrayList<Articolo> results = null;

    AdvancedSearchParameters advS1 = new AdvancedSearchParameters();
    boolean isSearch = false;
    String q = "";
    String priceFromS = "", priceToS = "",rev = "", ord = "", catS = "";

/*
    i parametri vengono presi dall'url solo se sono diversi dalla stringa vuota
 */
    if(request.getParameter("priceFrom")!= null){
        if (!request.getParameter("priceFrom").equals("")){
            float priceFrom = Integer.parseInt(request.getParameter("priceFrom") );
            priceFromS = request.getParameter("priceFrom");
            advS1.setStartPrice(priceFrom);
            isSearch = true;
        }
    }

    System.out.println("pFr "+isSearch);


    if(request.getParameter("priceTo")!=null){
        if (!request.getParameter("priceTo").equals("")){
            float priceTo = Integer.parseInt(request.getParameter("priceTo"));
            priceToS = request.getParameter("priceTo");
            advS1.setEndPrice(priceTo);
            isSearch = true;
        }
    }

    System.out.println("pTO "+isSearch);

    if(request.getParameter("rev")!=null){
        if (!request.getParameter("rev").equals("")){
            if(!request.getParameter("rev").equals("choose")){
                int revAverage = Integer.parseInt(request.getParameter("rev"));
                rev = request.getParameter("rev");
                advS1.setMinReview(revAverage);
                isSearch = true;
            } else{
                advS1.setMinReview(1);
                rev = "1";

            }
        }
    }

    System.out.println("rev "+isSearch);
    if(request.getParameter("order-by")!= null){
        QueryOrder order;
        if(!request.getParameter("rev").equals("choose")) {
            if (request.getParameter("order-by").equals("desc")) {
                order = QueryOrder.DESC;
                ord = "desc";
            } else if(request.getParameter("order-by").equals("asc")){
                order = QueryOrder.ASC;
                ord = "asc";
            }else{
                order = QueryOrder.DESC;
                ord = "desc";
            }
            isSearch = true;
            advS1.setQueryOrder(order);
        } else {
            advS1.setQueryOrder(QueryOrder.DESC);
        }
    }
    System.out.println("ord "+isSearch);

    if(request.getParameter("q")!=null){
        if(!request.getParameter("q").equals("")){
            q = request.getParameter("q");
            advS1.setTesto(request.getParameter("q"));
            isSearch = true;
        }
    }
    System.out.println("q "+isSearch);
    if(request.getParameter("cat")!=null){
        if(!request.getParameter("cat").equals("") ){
            if(!request.getParameter("cat").equals("Categorie")) {
                Categoria cat = new Categoria(request.getParameter("cat"), "");
                catS = request.getParameter("cat");
                advS1.setCategoria(cat);
                isSearch = true;
            }
        }
    }
/*
se si arriva alla pagina cliccando il tasto shop, non ci sono ricerche specifiche e vengono quindi visualizzati i 5
articoli più venduti
altrimenti si procede con la ricerca che è stata effettuata
 */
    if(!isSearch){
        results = db.getHomeLastArticles();
        System.out.println("a");
    } else {
        results = db.getAdvancedSearchResults(advS1);
        System.out.println(advS1.getCategoria()+" "+ advS1.getMinReview());
    }

    String nomiArticoli = "";
    for(Articolo articolo : results) {
        nomiArticoli += articolo.getTitolo() + ", ";
    }

    db.close();
%>


<body>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script>
    $(document).ready(function() {
        $('#list').click(function(event){event.preventDefault();$('#products .item').addClass('list-group-item');});
        $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});
    });

    $(document).ready(function(e){
        $('.search-panel .dropdown-menu').find('a').click(function(e) {
            e.preventDefault();
            var param = $(this).attr("href").replace("#","");
            var concept = $(this).text();
            $('.search-panel span#search_concept').text(concept);
            $('.input-group #search_param').val(param);
        });
    });
</script>
<link rel="stylesheet" type="text/css" href="styles/shopstyle.css">

<form action="./shop.jsp" class="form" id="ricerca-avanzata-form">
<div class="shop-container ">
    <div class="well well-sm row">
        <div class="col-md-4 col-sm-12 display">
        <strong>Visualizzazione</strong>
        <div class="btn-group">
            <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
            </span>Lista</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
                class="glyphicon glyphicon-th"></span>Griglia</a>
        </div>
        </div>

            <div class="input-group mb-3">
                    <select type="button" class="ricerca btn btn-default dropdown-toggle custom-select input-group-prepend" data-toggle="dropdown" name="cat">
                        <option class="opzioniCat" disabled selected value>Categorie</option>
                        <%
                            if (categorie.size()>0){
                                for (int i =0; i<categorie.size(); i++){
                        %>

                        <option class="opzioniCat" value="<%=categorie.get(i).getNome()%>"><%=categorie.get(i).getNome()%></option>
                        <%
                                }
                            }
                        %>
                    </select>
                    <input type="text" name="q" class="custom-file ricerca custom-file-input" id="inputGroupFile03">


                        <button class="btn btn-outline-secondary ricerca" class="input-group-prepend" type="submit"><span class="glyphicon glyphicon-search"></span></button>


            </div>


<!--
        <div class="">
            <div class="">
                <form action="./shopbody.jsp" method="GET">
                    <div class="col-xs-12 col-md-8 gruppo">
                        <div class="input-group">
                            <div class="ricerca input-group-btn search-panel">


                                <input type="hidden" name="search_param" value="all" id="search_param">
                                <input type="text" class="ricerca form-control form-control-input" name="search" placeholder="Search term...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default ricerca" type="submit" id="searchbtn"><span class="glyphicon glyphicon-search"></span></button>

                                    </span>

                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>
-->

        </div>
    </div>
    <div class="container2 container row">
            <div id="filter-panel" class="collapse filter-panel">
                <div class="panel panel-default">
                    <div class="panel-body">
                            <div class="form-group">
                                <!--
                                <label class="filter-col"  for="pref-search">Search:</label>
                                <input type="text" class="form-control input-sm" id="pref-search">
                                -->
                                <label class="filter-col">Prezzo<span class="span">da:</span></label>
                                <input type="number" class="form-control input-sm" name="priceFrom" id="price-from">
                                <label class="filter-col"><span class="span">a:</span></label>
                                <input type="number" class="form-control input-sm" name="priceTo" id="price-to">
                            </div>
                            <!-- form group [search] -->
                            <div class="form-group">
                                <label class="filter-col" style="margin-right:0;" for="pref-orderby">Ordina per:</label>
                                <select name="order-by" id="pref-orderby" class="form-control">
                                    <option value="choose" disabled selected value>Scegli</option>
                                    <option value="desc">Prezzo: decrescente</option>
                                    <option value="asc">Prezzo: crescente</option>

                                </select>
                            </div> <!-- form group [order by] -->
                            <div class="form-group">
                                <label class="filter-col">Media voti:</label>
                                <select id="sort-review" class="form-control" name="rev">
                                    <option value="choose" disabled selected value>Scegli</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>

                    </div>
                </div>
            </div>
            <button type="button" class="btn btn-primary pull-right" data-toggle="collapse" data-target="#filter-panel">
                <span class="glyphicon glyphicon-cog"></span> Ricerca avanzata
            </button>
    </div>

</form>
<div class="niente" id="no-item">Non ci sono articoli che soddisfano la tua richiesta</div>
    <div id="products" class="row list-group">

        <div class="articoli-box" id="">
            <div class="row" id="shop-content">


            </div>

        </div>

    </div>

</body>
<%
    //TODO: query per la ricerca
%>
<script>
/*
vengono creati gli oggetti html con i dati ricevuti dalla ricerca e dal database
se non ci sono risultati che soddisfano i criteri della ricerca, viene visualizzato un testo
 */
    $(document).ready(function (){
        $("#ricerca-avanzata-form").submit(function() {
            $(this).find(":input").filter(function(){ return !this.value; }).attr("disabled", "disabled");
            return true; // ensure form still submits
        });

        // Un-disable form fields when page loads, in case they click back after submission
        $( "#ricerca-avanzata-form" ).find( ":input" ).prop( "disabled", false );
    <%
        if(results.size()!=0){
             %>
        document.getElementById("no-item").style.display = "none"
        <%
        String path="http://placehold.it/400x250/000/fff";
            for(int i =0; i< results.size(); i++){
                if(results.get(i).getImmagini() != null){
                    if(results.get(i).getImmagini().size()>0){
                        path = results.get(i).getImmagini().get(0).getPercorso();
                    }
                }
                BigDecimal bd = new BigDecimal(Float.toString(results.get(i).getPrezzo()));
                bd = bd.setScale(2, BigDecimal.ROUND_HALF_UP);

               %>

            $('#shop-content').append(new_item("<%=results.get(i).getIdArticolo()%>","<%=results.get(i).getDescrizione().replaceAll("(['\"])","\\\\$1")%>", "<%=results.get(i).getTitolo().replaceAll("(['\"])","\\\\$1")%>","<%=bd%>"+"€","<%=path%>"));
            <%
            }
        }
        else{
            %>
            document.getElementById("no-item").style.display = "block"
        <%
        }
    %>


    });

    function new_item(id,descrizione,titolo,prezzo,immagine){

        console.log('creato articolo',id)
        <%
        if(q != ""){
        %>
        var q = "<%=q%>";
        <%
        }else{
        %>
        var q = "";
        <%
        }
        %>
        var catS = "<%=catS%>";
        var priceFromS = "<%=priceFromS%>";
        var priceToS = "<%=priceToS%>";
        var ord = "<%=ord%>";
        var rev ="<%=rev%>";
        return (
            '<div class="item  col-xs-12 col-md-3 col-lg-3">\n' +
            '            <div class="thumbnail">\n' +
            '                <img class="group list-group-image" src="'+immagine+'" alt="" />\n' +
            '                <div class="caption">\n' +
            '                    <div class="group inner list-group-item-heading"><a href="../../item.jsp?id='+id+'">'+ titolo +'</a></div> '+
            '                    <p class="group inner list-group-item-text">'+descrizione+'</p>\n' +
            '                    <div class="row">\n' +
            '                        <div class="col-xs-12 col-md-6">\n' +
            '                            <p class="lead">'+prezzo+'</p>\n' +
            '                        </div>\n' +
            '                        <div class="col-xs-12 col-md-6">\n' +
            '                            <a class="btn btn-success" href="../../utils/cart.jsp?action=aggiungi&idArticolo='+id+'&q='+q+'&cat='+catS+'&priceFrom='+priceFromS+'&priceTo='+priceToS+'&order-by='+ord+'&rev='+rev+'">Add to cart</a>\n' +
            '                        </div>\n' +
            '                    </div>\n' +
            '                </div>\n' +
            '            </div>\n' +
            '        </div>'

        );


    }

</script>
