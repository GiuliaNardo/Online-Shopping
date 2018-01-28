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
    if (cookies.length != 0) {

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

    <div class="">
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
        <div id="noOrders">Nessuna recensione</div>

            <%
                    }
                }

            %>


</div>
</div>
            <%
    if (search) {
        System.out.println(search);
%>
        <div class="row content-wrapper container">
            <div id="title-review">Write your review</div>
            <form>
                <div>
                    <textarea id="text-review" name="testo"></textarea>

                </div>
                <input type="hidden" value="<%=venditore.getIdVenditore()%>" name="id">
                <div class="row lead">
                    <div id="stars" class="starrr"></div>
                    You gave a rating of <span id="count">0</span> star(s)
                </div>

                <input type="hidden" name="valstar" id="stelle" value="">
                <button class="btn" id="btn-review" type="submit" onclick="sendNotification()">Send</button>
            </form>
        </div>

</body>
    <%

    }
%>


            <%
        }
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



<script>
    var valore = 0;
    // Starrr plugin (https://github.com/dobtco/starrr)
    var __slice = [].slice;

    (function ($, window) {
        var Starrr;

        Starrr = (function () {
            Starrr.prototype.defaults = {
                rating: void 0,
                numStars: 5,
                change: function (e, value) {
                }
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
                this.$el.on('mouseover.starrr', 'span', function (e) {
                    return _this.syncRating(_this.$el.find('span').index(e.currentTarget) + 1);
                });
                this.$el.on('mouseout.starrr', function () {
                    return _this.syncRating();
                });
                this.$el.on('click.starrr', 'span', function (e) {
                    return _this.setRating(_this.$el.find('span').index(e.currentTarget) + 1);
                });
                this.$el.on('starrr:change', this.options.change);
            }

            Starrr.prototype.createStars = function () {
                var _i, _ref, _results;

                _results = [];
                for (_i = 1, _ref = this.options.numStars; 1 <= _ref ? _i <= _ref : _i >= _ref; 1 <= _ref ? _i++ : _i--) {
                    _results.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"));
                }
                return _results;
            };

            Starrr.prototype.setRating = function (rating) {
                if (this.options.rating === rating) {
                    rating = void 0;
                }
                this.options.rating = rating;
                this.syncRating();
                return this.$el.trigger('starrr:change', rating);
            };

            Starrr.prototype.syncRating = function (rating) {
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
            starrr: function () {
                var args, option;

                option = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
                return this.each(function () {
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

    $(function () {

        return $(".starrr").starrr();

    });

    $(document).ready(function () {

        $('#stars').on('starrr:change', function (e, value) {
            $('#count').html(value);//VALUE E' IL NUMERO DI STELLE
            valore = value;

        });

        $('#stars-existing').on('starrr:change', function (e, value) {
            $('#count-existing').html(value);

        });
    });
</script>
<script>
    function sendNotification() {
        if (valore !== null) {
            document.getElementById('stelle').value = valore;
            alert("Grazie!")
        }

    }
</script>