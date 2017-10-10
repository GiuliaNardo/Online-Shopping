<%--
  Created by IntelliJ IDEA.
  User: Simone
  Date: 19/09/17
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" type="text/css" href="styles/indexstyle.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>
<script>
    $(document).ready(function () {
        $('.carousel').carousel({interval: 4000});
    });

    function htmlbodyHeightUpdate() {
        var height3 = $(window).height()
        var height1 = $('.nav').height() + 50
        height2 = $('.main').height()
        if (height2 > height3) {
            $('html').height(Math.max(height1, height3, height2) + 10);
            $('body').height(Math.max(height1, height3, height2) + 10);
        }
        else {
            $('html').height(Math.max(height1, height3, height2));
            $('body').height(Math.max(height1, height3, height2));
        }

    }

    $(document).ready(function () {
        htmlbodyHeightUpdate()
        $(window).resize(function () {
            htmlbodyHeightUpdate()
        });
        $(window).scroll(function () {
            height2 = $('.main').height()
            htmlbodyHeightUpdate()
        });
    });
</script>


<div class="destra">
    <div class="riga">
        <div class="container">
            <div class="row">
                <div id="myCarousel" class="carousel  slide">
                    <!-- Dot Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Items -->
                    <div class="carousel-inner">
                        <div class="active item"><img src="http://www.superedo.it/sfondi/sfondi/Paesaggi/Mongolfiere%20Colorate/mongolfiere_colorate_6.jpg" class="img-responsive">
                        </div>
                        <div class="item"><img src="http://wallpaperart.altervista.org/Immagini/fiori_blu_fiore_1280x800.jpg" class="img-responsive"></div>
                        <div class="item"><img src="http://2.bp.blogspot.com/-Hc6TN4iB_RM/UTKMrWZF_WI/AAAAAAAAC5Y/r0vMbUSpXSo/s1600/skull_wallpaper4.jpg" class="img-responsive"></div>
                    </div>
                    <!-- Navigation -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom">
        <div class="bottom-sinistra">
            Benvenuto
            <a href="../login.jsp"  role="button">
                <div class="btn-accesso">Accedi</div>
            </a>
        </div>
        <div class="bottom-centro">
            In evidenza
            <div>
                <a href="">
                    <img src="https://cdn.cultofmac.com/wp-content/uploads/2017/02/iPhone-8-concept.jpg.png" class="img-centro">
                </a>
            </div>
            <div>
                <a href="">
                    <img src="https://cdn.cultofmac.com/wp-content/uploads/2017/02/iPhone-8-concept.jpg.png"class="img-centro">
                </a>
            </div>
        </div>
        <div class="bottom-destra">
            Offerte
            <div>
                <a href="">
                    <img src="https://cdn.cultofmac.com/wp-content/uploads/2017/02/iPhone-8-concept.jpg.png" class="img-destra">
                </a>
            </div>
            <div>
                <a href="">
                    <img src="https://cdn.cultofmac.com/wp-content/uploads/2017/02/iPhone-8-concept.jpg.png" class="img-destra">
                </a>
            </div>
        </div>
    </div>


</div>
</body>

