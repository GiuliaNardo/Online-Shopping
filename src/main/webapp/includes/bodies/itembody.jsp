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
<!--<script src="../../js/jquery-3.2.1.js"></script>-->
<script type="text/javascript">
    $('.courosel').courosel(){
        interval: true
    };
</script>


<div class="container-fluid">
    <div class="content-wrapper">
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
                    <div class="col-md-7">
                        <div class="product-title">Corsair GS600 600 Watt PSU</div>
                        <div class="product-desc">The Corsair Gaming Series GS600 is the ideal price/performance choice
                            for
                            mid-spec gaming PC
                        </div>
                        <div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i
                                class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i
                                class="fa fa-star-o"></i>
                        </div>
                        <hr>
                        <div class="product-price">$ 1234.00</div>
                        <div class="product-stock">In Stock</div>
                        <hr>
                        <div class="btn-group cart">
                            <button type="button" class="btn btn-success">
                                Add to cart
                            </button>
                        </div>
                        <div class="btn-group wishlist">
                            <button type="button" class="btn btn-danger">
                                Add to wishlist
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="col-md-12 product-info">
                <ul id="myTab" class="nav nav-tabs nav_tabs">

                    <li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
                    <li><a href="#service-two" data-toggle="tab">PRODUCT INFO</a></li>
                    <li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>

                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="service-one">

                        <section class="order-container product-info">
                            The Corsair Gaming Series GS600 power supply is the ideal price-performance solution for
                            building or upgrading a Gaming PC. A single +12V rail provides up to 48A of reliable,
                            continuous power for multi-core gaming PCs with multiple graphics cards. The ultra-quiet,
                            dual ball-bearing fan automatically adjusts its speed according to temperature, so it will
                            never intrude on your music and games. Blue LEDs bathe the transparent fan blades in a cool
                            glow. Not feeling blue? You can turn off the lighting with the press of a button.

                            <h3>Corsair Gaming Series GS600 Features:</h3>
                            <li>It supports the latest ATX12V v2.3 standard and is backward compatible with ATX12V 2.2
                                and ATX12V 2.01 systems
                            </li>
                            <li>An ultra-quiet 140mm double ball-bearing fan delivers great airflow at an very low noise
                                level by varying fan speed in response to temperature
                            </li>
                            <li>80Plus certified to deliver 80% efficiency or higher at normal load conditions (20% to
                                100% load)
                            </li>
                            <li>0.99 Active Power Factor Correction provides clean and reliable power</li>
                            <li>Universal AC input from 90~264V — no more hassle of flipping that tiny red switch to
                                select the voltage input!
                            </li>
                            <li>Extra long fully-sleeved cables support full tower chassis</li>
                            <li>A three year warranty and lifetime access to Corsair’s legendary technical support and
                                customer service
                            </li>
                            <li>Over Current/Voltage/Power Protection, Under Voltage Protection and Short Circuit
                                Protection provide complete component safety
                            </li>
                            <li>Dimensions: 150mm(W) x 86mm(H) x 160mm(L)</li>
                            <li>MTBF: 100,000 hours</li>
                            <li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li>
                        </section>

                    </div>
                    <div class="tab-pane fade" id="service-two">

                        <section class="order-container">

                        </section>

                    </div>
                    <div class="tab-pane fade" id="service-three">

                    </div>
                </div>
                <hr>
            </div>
        </div>
    </div>
</div>
</body>

