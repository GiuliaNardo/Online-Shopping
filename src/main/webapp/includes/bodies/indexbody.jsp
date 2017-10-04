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

<div class="colonna">

    <nav class="navbar navbar-inverse sidebar" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#bs-sidebar-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Brand</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home<span style="font-size:16px;"
                                                             class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a>
                    </li>
                    <li><a href="#">Profile<span style="font-size:16px;"
                                                 class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
                    </li>
                    <li><a href="#">Messages<span style="font-size:16px;"
                                                  class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span
                                class="caret"></span><span style="font-size:16px;"
                                                           class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Home<span style="font-size:16px;"
                                              class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a>
                    </li>
                    <li><a href="#">Profile<span style="font-size:16px;"
                                                 class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
                    </li>
                    <li><a href="#">Messages<span style="font-size:16px;"
                                                  class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span
                                class="caret"></span><span style="font-size:16px;"
                                                           class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="main">
        <!-- Content Here -->
    </div>

</div>
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
    <div class="riga">
        <div class="container">
            <div class="row">
                <div id="myCarousel-1" class="carousel  slide">
                    <!-- Dot Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel-1" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel-1" data-slide-to="1"></li>
                        <li data-target="#myCarousel-1" data-slide-to="2"></li>
                    </ol>
                    <!-- Items -->
                    <div class="carousel-inner">
                        <div class="active item"><img src="http://2.bp.blogspot.com/-Hc6TN4iB_RM/UTKMrWZF_WI/AAAAAAAAC5Y/r0vMbUSpXSo/s1600/skull_wallpaper4.jpg" class="img-responsive">
                        </div>
                        <div class="item"><img src="http://www.superedo.it/sfondi/sfondi/Paesaggi/Mongolfiere%20Colorate/mongolfiere_colorate_6.jpg" class="img-responsive"></div>
                        <div class="item"><img src="http://wallpaperart.altervista.org/Immagini/fiori_blu_fiore_1280x800.jpg" class="img-responsive"></div>
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
    <div class="riga">
        <div class="container">
            <div class="row">
                <div id="myCarousel-2" class="carousel  slide">
                    <!-- Dot Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel-2" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel-2" data-slide-to="1"></li>
                        <li data-target="#myCarousel-2" data-slide-to="2"></li>
                    </ol>
                    <!-- Items -->
                    <div class="carousel-inner">
                        <div class="active item"><img src="http://2.bp.blogspot.com/-Hc6TN4iB_RM/UTKMrWZF_WI/AAAAAAAAC5Y/r0vMbUSpXSo/s1600/skull_wallpaper4.jpg" class="img-responsive">
                        </div>
                        <div class="item"><img src="http://wallpaperart.altervista.org/Immagini/fiori_blu_fiore_1280x800.jpg" class="img-responsive"></div>
                        <div class="item"><img src="http://www.superedo.it/sfondi/sfondi/Paesaggi/Mongolfiere%20Colorate/mongolfiere_colorate_6.jpg" class="img-responsive"></div>
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
</div>
</body>

