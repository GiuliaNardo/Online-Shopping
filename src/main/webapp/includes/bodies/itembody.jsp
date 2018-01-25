<%@ page import="it.unitn.progettoweb.utils.Database" %>

<%@ page import="it.unitn.progettoweb.utils.Database"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="it.unitn.progettoweb.Objects.*" %>
<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 25/09/2017
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" type="text/css" href="styles/itemstyle.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body class="item-body">


<script>
    $('.carousel').carousel({
        interval: 2000
    })
</script>

<script>

    // Starrr plugin (https://github.com/dobtco/starrr)
    var __slice = [].slice;

    (function($, window) {
        var Starrr;

        Starrr = (function() {
            Starrr.prototype.defaults = {
                rating: void 0,
                numStars: 5,
                change: function(e, value) {}
            };

            function Starrr($el, options) {
                var i, _, _ref,
                    _this = this;

                this.options = $.extend({}, this.defaults, options);
                this.$el = $el;
                _ref = this.defaults;
                for (i in _ref) {
                    _ = _ref[i];
                    if (this.$el.data(i) != null) {
                        this.options[i] = this.$el.data(i);
                    }
                }
                this.createStars();
                this.syncRating();
                this.$el.on('mouseover.starrr', 'span', function(e) {
                    return _this.syncRating(_this.$el.find('span').index(e.currentTarget) + 1);
                });
                this.$el.on('mouseout.starrr', function() {
                    return _this.syncRating();
                });
                this.$el.on('click.starrr', 'span', function(e) {
                    return _this.setRating(_this.$el.find('span').index(e.currentTarget) + 1);
                });
                this.$el.on('starrr:change', this.options.change);
            }

            Starrr.prototype.createStars = function() {
                var _i, _ref, _results;

                _results = [];
                for (_i = 1, _ref = this.options.numStars; 1 <= _ref ? _i <= _ref : _i >= _ref; 1 <= _ref ? _i++ : _i--) {
                    _results.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"));
                }
                return _results;
            };

            Starrr.prototype.setRating = function(rating) {
                if (this.options.rating === rating) {
                    rating = void 0;
                }
                this.options.rating = rating;
                this.syncRating();
                return this.$el.trigger('starrr:change', rating);
            };

            Starrr.prototype.syncRating = function(rating) {
                var i, _i, _j, _ref;

                rating || (rating = this.options.rating);
                if (rating) {
                    for (i = _i = 0, _ref = rating - 1; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
                        this.$el.find('span').eq(i).removeClass('glyphicon-star-empty').addClass('glyphicon-star');
                    }
                }
                if (rating && rating < 5) {
                    for (i = _j = rating; rating <= 4 ? _j <= 4 : _j >= 4; i = rating <= 4 ? ++_j : --_j) {
                        this.$el.find('span').eq(i).removeClass('glyphicon-star').addClass('glyphicon-star-empty');
                    }
                }
                if (!rating) {
                    return this.$el.find('span').removeClass('glyphicon-star').addClass('glyphicon-star-empty');
                }
            };

            return Starrr;

        })();
        return $.fn.extend({
            starrr: function() {
                var args, option;

                option = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
                return this.each(function() {
                    var data;

                    data = $(this).data('star-rating');
                    if (!data) {
                        $(this).data('star-rating', (data = new Starrr($(this), option)));
                    }
                    if (typeof option === 'string') {
                        return data[option].apply(data, args);
                    }
                });
            }
        });
    })(window.jQuery, window);

    $(function() {
        return $(".starrr").starrr();
    });

    $( document ).ready(function() {

        $('#stars').on('starrr:change', function(e, value){
            $('#count').html(value);
            //value ono le stelle
        });

        $('#stars-existing').on('starrr:change', function(e, value){
            $('#count-existing').html(value);
        });
    });
</script>

<%
    Utente utente = null;
    Session sessione = null;
    Cookie cookies[] = request.getCookies();
    boolean isLogged = false;
    String idItem = request.getParameter("id");
    Articolo item= null;
    Venditore venditore = null;
    ArrayList<RecensioneArticolo> recensioni = null;
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
        System.out.println(idItem+"");
        item = database.getArticolo(Integer.parseInt(idItem));
        recensioni = database.getRecensioniArticolo(item);
        venditore = database.getVenditore(item.getIdVenditore());
        database.close();
    }

    System.out.println("id: "+idItem);
%>

<div class="container-fluid container" >
    <div class="content-wrapper row">
        <div class="item-container">
            <div class="order-container">
                <div class="carousel slide article-slide" id="article-photo-carousel">
                    <div class="up">
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner cont-slider" id="imm">

                            <div class="item active" id="pricipale">
                                <img alt="" title=""
                                     src="https://www.unina.it/documents/11897/1757910/01_Pianeta-Terra.jpg/ea26fdcc-067a-4c6d-83b5-66c606592559?t=1428402313173">
                            </div>
                            <div class="item">
                                <img alt="" title="" src="http://placehold.it/600x400">
                            </div>
                            <div class="item">
                                <img alt="" title=""
                                     src="http://bonkaday.com/wp-content/uploads/2016/04/Immagini-belle-di-fiori-3-e1460300355459.jpg">
                            </div>
                        </div>
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li class="active" data-slide-to="0" data-target="#article-photo-carousel">
                                <img class="img-down" alt=""
                                     src="https://www.unina.it/documents/11897/1757910/01_Pianeta-Terra.jpg/ea26fdcc-067a-4c6d-83b5-66c606592559?t=1428402313173">
                            </li>
                            <li class="" data-slide-to="1" data-target="#article-photo-carousel">
                                <img class="img-down" alt="" src="http://placehold.it/250x180">
                            </li>
                            <li class="" data-slide-to="2" data-target="#article-photo-carousel">
                                <img class="img-down" alt=""
                                     src="http://bonkaday.com/wp-content/uploads/2016/04/Immagini-belle-di-fiori-3-e1460300355459.jpg">
                            </li>
                        </ol>
                    </div>
                </div>

                <div class="up">

                        <div class="product-title row"><span>Nome articolo: </span> <%=item.getTitolo()%></div>
                    <div class="product-price row"><span>Euro: </span><%=item.getPrezzo()%></div>
                    <div class="product-price row"><span>Venduto da: </span><%=venditore.getNomeNegozio()%></div>
                        <hr>
                        <div class="btn-group cart">
                            <button type="button" class="btn btn-success">
                                Add to cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="col-md-12 product-info">
                <ul id="myTab" class="nav nav-tabs nav_tabs">

                    <li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
                    <li><a href="#service-two" data-toggle="tab">REVIEWS</a></li>

                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active product-desc" id="service-one">

                        <section class="item-tab product-info">
                            <div class="testo">
                                    <%=item.getDescrizione()%>
                            </div>
                        </section>

                    </div>
                    <div class="tab-pane fade" id="service-two">

                        <section class="item-tab">
                            <div class="recensioni testo">
                                <%
                                    double voto = 0.0;
                                    if (recensioni.size()>0){
                                        for (int i =0; i < recensioni.size(); i++){
                                            if (recensioni.get(i).getVoto()!= 0){
                                                voto = Math.round(recensioni.get(i).getVoto()*100.0)/100.0;
                                            }
                                %>

                                <div class="container recensione">
                                    <div class="row" id="username">
                                        <%=recensioni.get(i).getUtente().getUserName()%>
                                    </div>
                                    <div class="row">

                                        <div>Voto: <%=voto%></div>
                                    </div>
                                    <div class="row">
                                        <p><%=recensioni.get(i).getTesto()%></p>
                                    </div>
                                </div>

                                <%
                                        }
                                    }
                                %>
                            </div>
                        </section>

                    </div>
                </div>
                <hr>
            </div>
        </div>
    </div>

    <%
        /*
        se sei loggato hai la possibilità di inserire recensioni
         */

        if (isLogged){
    %>
    <div class="row content-wrapper container">
        <div id="title-review">Write your review</div>
        <form>
        <div>
            <textarea id="text-review" name="testo"></textarea>
        </div>
        <div class="row lead">
            <div id="stars" class="starrr"></div>
            You gave a rating of <span id="count">0</span> star(s)
        </div>
        <button class="btn" id="btn-review" type="submit" onclick="sendNotification()">Send</button>
        </form>
    </div>
    <%
        }
    %>
</div>
</body>


