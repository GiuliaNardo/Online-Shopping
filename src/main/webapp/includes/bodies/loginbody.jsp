<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="../../styles/loginstyle.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%
    String error = request.getParameter("error");
    if(error != null){
        if(error.equals("errore1")){
        %>
            <script>
                var errore = "Username o password errato";
            </script>
        <%
        }else if(error.equals("errore2")){
        %>
            <script>
                var errore = "Utente inesistente, perfavore effetturare registrazione";
            </script>
        <%
        }
    }
%>
<body>

<script>
    $(document).ready(function () {
        var a = false;
        $('.forgot-pass').click(function () {

            if (!a){
                $(".pr-wrap").toggleClass("show-pass-reset");
                a = true;
            } else {
                $(".pr-wrap").removeClass("show-pass-reset");
                a = false;
            }
    });

    $('.pass-reset-submit').click(function () {
        $(".pr-wrap").removeClass("show-pass-reset");
        a = false;
    });
    });

    if(errore != null){
        alert(errore);
    }
</script>
<div class="container" >
    <div class="pr-wrap" id="mail">
        <div class="pass-reset">
            <label>
                Enter the email you signed up with</label>
            <input type="email" placeholder="Email"/>
            <input type="submit" value="Submit" class="pass-reset-submit btn btn-success btn-sm"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong> Sign in to continue</strong>
                </div>
                <div class="panel-body">
                    <form role="form" action="../../utils/loginDB.jsp" method="POST">
                        <fieldset>
                            <div class="row">
                                <div class="center-block">
                                    <img class="profile-img"
                                         src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                                         alt="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 col-md-10  col-md-offset-1 ">
                                    <div class="form-group">
                                        <div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span>
                                            <input class="form-control" placeholder="Username" name="username"
                                                   type="text" autofocus>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-lock"></i>
												</span>
                                            <input class="form-control" placeholder="Password" name="password"
                                                   type="password" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in">
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="forgot-pass-content">
                    Forgot Password? <a href="javascript:void(0)" class="forgot-pass">Click here!</a>
                </div>
                <div class="panel-footer ">
                    Don't have an account! <a href="register.jsp" onClick=""> Sign Up Here </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>