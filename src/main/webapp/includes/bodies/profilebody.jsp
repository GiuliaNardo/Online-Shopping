<%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 22/09/2017
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="styles/profilestyle.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<html>
<head>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>


<div class="prova-padding">


    <div class="profile-td-head">User profile</div>

    <div class="profile-image-div">
        <img alt="User Pic"
             src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
             id="profile-image1" class="img-circle img-responsive">
        <input id="profile-image-upload" class="hidden" type="file">
    </div>
    <div class="field">
        <li>Giulia</li>
        <li>Puzzola</li>
        <li>Date of birth</li>

    </div>

    <script>
        $(function () {
            $('#profile-image1').on('click', function () {
                $('#profile-image-upload').click();
            });
        });
    </script>
</div>
<div class="menu">
    <table class="table-profile-center">
        <tr>
            <td class="td-profile-center">
                <div class="div-profile-center">
                    <img src="http://www.spedizioni-espresso.it/img/come-prenotare-ritiro-pacchi.png" class="img-pacco">
                    <a class="profile-generic-anchor" href="orders.jsp">My Orders</a>
                    <p class="didascalia">Clicca per visualizzare i tuoi ordini</p>
                </div>

            </td>
        </tr>
        <tr>
            <td class="td-profile-center">
                <div class="div-profile-center">
                    <img src="https://membershipworks.com/wp-content/uploads/2014/12/shopping-cart.png"
                         class="img-cart">
                    <a class="profile-generic-anchor" href="cart.jsp">Cart</a>
                    <p class="didascalia">Clicca per visualizzare il tuo carrello</p>
                </div>

            </td>
        </tr>
        <tr>
            <td class="td-profile-center">
                <div class="div-profile-center">
                    <img src="https://s3.amazonaws.com/gumroad/files/4fb88c695aeca5a56d1d2a563e8cb7da/original/pencil.png" class="img-edit">
                    <a class="profile-generic-anchor" href="profile.jsp">Edit</a>
                    <p class="didascalia">Clicca per modificare il tuo profilo</p>
                </div>

            </td>
        </tr>

    </table>
</div>

<!--
<table class="profile-table">
    <tr class="profile-tr-menu">
        <td class="profile-menu">
            <div class="prova-padding">
                <table class="profile-menu-table">

                    <tr class="tr-head">
                        <td class="profile-td-head">User profile</td>
                    </tr>
                    <tr class="tr-middle">
                        <td class="profile-image">
                            <div class="profile-image-div">
                                <img alt="User Pic"
                                     src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
                                     id="profile-image1" class="img-circle img-responsive">
                                <input id="profile-image-upload" class="hidden" type="file">
                            </div>
                        </td>

                    </tr>
                    <tr class="tr-footer">
                        <td class="td-bottom">
                            <div class="field">
                                <li>Giulia</li>
                                <li>Puzzola</li>
                                <li>Date of birth</li>

                            </div>

                    </tr>

                </table>
                <script>
                    $(function() {
                        $('#profile-image1').on('click', function() {
                            $('#profile-image-upload').click();
                        });
                    });
                </script>
            </div>
        </td>
        <td class="profile-center">
            <table class="table-profile-center">
                <tr>
                    <td class="td-profile-center">
                        <div class="div-profile-center">
                            <img src="http://www.spedizioni-espresso.it/img/come-prenotare-ritiro-pacchi.png" class="img-pacco">
                            <a class="profile-generic-anchor" href="orders.jsp">My Orders</a>
                            <p class="didascalia">Clicca per visualizzare i tuoi ordini</p>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td class="td-profile-center">
                        <div class="div-profile-center">
                            <img src="https://membershipworks.com/wp-content/uploads/2014/12/shopping-cart.png" class="img-cart">
                            <a class="profile-generic-anchor" href="cart.jsp">Cart</a>
                            <p class="didascalia">Clicca per visualizzare il tuo carrello</p>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td class="td-profile-center">
                        <div class="div-profile-center">
                            <img src="http://www.carbon.co.uk/wp-content/uploads/help-blue.png" class="img-help">
                            <a class="profile-generic-anchor" href="support.jsp">Help me</a>
                            <p class="didascalia">Clicca per visualizzare la pagina help</p>
                        </div>

                    </td>
                </tr>

            </table>

        </td>


    </tr>


</table>
-->

</body>
</html>