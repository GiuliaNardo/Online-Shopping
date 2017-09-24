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


        </td>


    </tr>


</table>

</body>
</html>