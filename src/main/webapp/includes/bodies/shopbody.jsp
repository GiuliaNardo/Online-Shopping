<%@ page import="it.unitn.progettoweb.utils.Database" %>
<%@ page import="javax.xml.crypto.Data" %>
<%@ page import="it.unitn.progettoweb.Objects.AdvancedSearchParameters" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="it.unitn.progettoweb.Objects.Articolo" %><%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 22/09/2017
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
    String nameS = request.getParameter("q");
    AdvancedSearchParameters advS = new AdvancedSearchParameters();
    advS.setTesto(nameS);
    System.out.println(""+nameS);
    Database db = new Database();
    ArrayList<Articolo> results = db.getAdvancedSearchResults(advS);
    String nome ="";
    db.close();
%>


<body>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script>
    $(document).ready(function() {
        $('#list').click(function(event){event.preventDefault();$('#products .item').addClass('list-group-item');});
        $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});
    });
</script>
<link rel="stylesheet" type="text/css" href="styles/shopstyle.css">

<div class="shop-container ">
    <div class="well well-sm">
        <strong>Display</strong>
        <div class="btn-group">
            <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
            </span>List</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
                class="glyphicon glyphicon-th"></span>Grid</a>
        </div>
    </div>
    <div class="container2 row">
            <div id="filter-panel" class="collapse filter-panel">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <form class="form-inline" role="form">
                            <!--
                            <div class="form-group">

                                <label class="filter-col" style="margin-right:0;" for="pref-perpage">Rows per page:</label>
                                <select id="pref-perpage" class="form-control">
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option selected="selected" value="10">10</option>
                                    <option value="15">15</option>
                                    <option value="20">20</option>
                                    <option value="30">30</option>
                                    <option value="40">40</option>
                                    <option value="50">50</option>
                                    <option value="100">100</option>
                                    <option value="200">200</option>
                                    <option value="300">300</option>
                                    <option value="400">400</option>
                                    <option value="500">500</option>
                                    <option value="1000">1000</option>
                                </select>

                            </div> -->
                            <!-- form group [rows] -->
                            <div class="form-group">
                                <!--
                                <label class="filter-col"  for="pref-search">Search:</label>
                                <input type="text" class="form-control input-sm" id="pref-search">
                                -->
                                <label class="filter-col">Price<span class="span">from:</span></label>
                                <input type="number" class="form-control input-sm" id="price-from">
                                <label class="filter-col"><span class="span">to:</span></label>
                                <input type="number" class="form-control input-sm" id="price-to">
                            </div>
                            <!-- form group [search] -->
                            <div class="form-group">
                                <label class="filter-col" style="margin-right:0;" for="pref-orderby">Order by:</label>
                                <select id="pref-orderby" class="form-control">
                                    <option>Price: descendent</option>
                                    <option>Price: increasing</option>

                                </select>
                            </div> <!-- form group [order by] -->
                            <div class="form-group">
                                <label class="filter-col">Review average:</label>
                                <select name="sort-review" id="sort-review" class="form-control">Review
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>
                            <div class="row form-group" id="filter-bottom">
                                <div class="checkbox" style="margin-left:10px; margin-right:10px;">
                                    <label><input type="checkbox"> Remember parameters</label>
                                </div>
                                <button type="submit" class="btn btn-default filter-col">
                                    <span class="glyphicon glyphicon-record"></span> Save Settings
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <button type="button" class="btn btn-primary pull-right" data-toggle="collapse" data-target="#filter-panel">
                <span class="glyphicon glyphicon-cog"></span> Advanced Search
            </button>
    </div>
</div>
<div class="niente" id="no-item">There isn't any item for your search</div>
    <div id="products" class="row list-group">

        <div class="articoli-box" id="">
            <div class="row" id="shop-content">


            </div>

        </div>
        <!--
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/400x250/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Product title</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $21.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success" href="http://www.jquery2dotnet.com" >Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/400x250/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Product title</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $21.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/400x250/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Product title</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $21.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/400x250/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Product title</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $21.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/400x250/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Product title</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $21.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="http://placehold.it/400x250/000/fff" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        Product title</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                $21.000</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        -->
    </div>

</body>
<%
    //TODO: query per la ricerca
%>
<script>

    $(document).ready(function (){
        var i=0;
        var articoli = 10;
        var descrizione="Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,\n" +
            "                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat";
        var titolo="Articolo a caso";
        var prezzo ='20.00';
    <%
        if(results.size()!=0){
             %>
        document.getElementById("no-item").style.display = "none";
        <%
            for(int i =0; i< results.size(); i++){
               %>

            $('#shop-content').append(new_item("<%=results.get(i).getIdArticolo()%>",descrizione, "<%=results.get(i).getTitolo()%>","<%=results.get(i).getPrezzo()%>"));
            <%
            }
        }
        else{
            %>
            document.getElementById("no-item").style.display = "block";
        <%
        }
    %>


    });
    function new_item(id,descrizione,titolo,prezzo){
        return (
            '<div class="item  col-xs-12 col-md-3 col-lg-3">\n' +
            '            <div class="thumbnail">\n' +
            '                <img class="group list-group-image" src="http://placehold.it/400x250/000/fff" alt="" />\n' +
            '                <div class="caption">\n' +
            '                    <h4 class="group inner list-group-item-heading"><a href="../../item.jsp?id='+id+'">'+titolo+'</a></h4> '+
            '                    <p class="group inner list-group-item-text">'+descrizione+'</p>\n' +
            '                    <div class="row">\n' +
            '                        <div class="col-xs-12 col-md-6">\n' +
            '                            <p class="lead">'+prezzo+'</p>\n' +
            '                        </div>\n' +
            '                        <div class="col-xs-12 col-md-6">\n' +
            '                            <a class="btn btn-success" href="http://www.jquery2dotnet.com">Add to cart</a>\n' +
            '                        </div>\n' +
            '                    </div>\n' +
            '                </div>\n' +
            '            </div>\n' +
            '        </div>'

        );


    }
</script>
