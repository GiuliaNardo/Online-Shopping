<!--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 02/10/2017
  Time: 23:36
  To change this template use File | Settings | File Templates.
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="it.unitn.progettoweb.utils.Database"%>

<%@ page import="java.sql.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="jdk.jfr.events.ExceptionThrownEvent" %>
<%@ page import="it.unitn.progettoweb.Objects.Utente" %>
<%@ page import="it.unitn.progettoweb.Objects.TipoUtente" %>
<%@ page import="it.unitn.progettoweb.Objects.ValidazioneUtente" %>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="styles/registerstyle.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<body>

    <div class="container">

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4 well well-sm" id="all">
                <legend><a href="http://www.jquery2dotnet.com"><i class="glyphicon glyphicon-globe"></i></a> Sign up!
                </legend>
                <div class="reg-cont">
                <form action="#" method="post" class="form" role="form">
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <input class="form-control" name="firstname" placeholder="First Name" type="text"
                                   required autofocus/>
                        </div>
                        <div class="col-xs-6 col-md-6">
                            <input class="form-control" name="lastname" placeholder="Last Name" type="text" required/>
                        </div>
                        <div class="col-xs-6 col-md-6">
                            <input class="form-control" name="username" placeholder="Username" type="text" required/>
                        </div>
                    </div>
                    <input class="form-control" name="youremail" placeholder="Your Email" type="email"/>
                    <input class="form-control" name="reenteremail" placeholder="Re-enter Email" type="email"/>
                    <input class="form-control" name="password" placeholder="New Password" type="password"/>
                    <div class="row"  id="reg-field">
                        <script>
                            $( function() {
                                $( "#datepicker" ).datepicker();
                                $.datepicker.setDefaults(
                                    $.extend(
                                        {'dateFormat':'dd/mm/yy'},
                                        $.datepicker.regional['it']
                                    )
                                );
                            } );
                        </script>
                        <input type="text" name="date" id="datepicker" placeholder="Your birth date">
                    </div>
                    <label class="radio-inline">
                        <input type="radio" name="sex" id="inlineCheckbox1" value="male"/>
                        Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="sex" id="inlineCheckbox2" value="female"/>
                        Female
                    </label>
                    <br/>
                    <br/>
                    <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">
                        Sign up
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
<!--
NON SO SE FUNZIONA
!-->
<%!
    private boolean checkMail(String real, String check) {
        /*if (real.length() != 0){
            if (real.contains("@") && ((real.contains(".com")) || (real.contains(".it")))){
                if(check.equals(real)){
                    return true;
                }else {
                    return false;
                }
            } else {
                return false;
            }

        } else {
            return false;
        }*/
        return true;

    }
%>
<%
    if ((request.getParameter("submit")!= null) && (request.getParameter("username")!= null) &&
            (request.getParameter("firstname")!= null) && (request.getParameter("lastname")!= null) &&(request.getParameter("youremail")!= null) &&
            (request.getParameter("reenteremail")!= null) && (request.getParameter("password")!= null) && (request.getParameter("date")!= null) &&
            (request.getParameter("sex")!= null)){

        String userName="";
        String firstName="";
        String lastName="";
        String email="";
        String email1="";
        String password="";
        String dateOfBirth;
        java.util.Date tmp = null;
        Date result = null;
        Utente user;
        Database db;
        boolean c = false;
        System.out.println("dentro\n");

        try {
            userName = request.getParameter("username");
            firstName = request.getParameter("firstname");
            lastName = request.getParameter("lastname");
            email = request.getParameter("youremail");
            email1 = request.getParameter("reenteremail");
            password = request.getParameter("password");
            String sex = request.getParameter("sex");
            dateOfBirth = request.getParameter("date");
            SimpleDateFormat formater = new SimpleDateFormat("dd/MM/yyyy");


            try {
                tmp = formater.parse(dateOfBirth);
                result = new Date(tmp.getTime());
                System.out.println("res " + result);
            } catch (Exception e) {
                System.out.println("Data errata " + dateOfBirth);
            }

            c = checkMail(email, email1);
            System.out.println(c);

            if (c) {
                //System.out.println(userName +" "+ password+" "+ firstName +" "+ lastName +" "+ email +" "+ (java.sql.Date) result);
                user = new Utente(userName, password, firstName, lastName, email, result, TipoUtente.USER, ValidazioneUtente.FALSE, "kk");
               /* db = new Database();
                db.insertNewUser(user);
                db.close();*/
            } else{
                String redirectURL = "register.jsp";
                response.sendRedirect(redirectURL);
                System.out.println("email sbagliata");
            }

        } catch (Exception e){
            System.out.println(""+e);
        }
        System.out.println(request.getParameter("username") + " " + request.getParameter("lastname") + " "+ request.getParameter("firstname") + " " +
                request.getParameter("password") + " " + request.getParameter("youremail") + " " + request.getParameter("reenteremail") + " " +
                request.getParameter("sex") + " " + request.getParameter("date") + " " + request.getParameter("submit"));

    } else {
        System.out.println("niente\n");

        System.out.println(request.getParameter("username") + " " + request.getParameter("lastname") + " "+ request.getParameter("firstname") + " " +
                request.getParameter("password") + " " + request.getParameter("youremail") + " " + request.getParameter("reenteremail") + " " +
                request.getParameter("sex") + " " + request.getParameter("date") + " " + request.getParameter("submit"));
    }

%>
