<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 02/10/2017
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="styles/registerstyle.css">

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
                    </div>
                    <input class="form-control" name="youremail" placeholder="Your Email" type="email"/>
                    <input class="form-control" name="reenteremail" placeholder="Re-enter Email" type="email"/>
                    <input class="form-control" name="password" placeholder="New Password" type="password"/>
                    <label for="">
                        Birth Date</label>
                    <div class="row"  id="reg-field">
                        <div class="col-xs-4 col-md-4">
                            <select class="form-control date">
                                <option value="Month">Month</option>
                            </select>
                        </div>
                        <div class="col-xs-4 col-md-4">
                            <select class="form-control date">
                                <option value="Day">Day</option>
                            </select>
                        </div>
                        <div class="col-xs-4 col-md-4">
                            <select class="form-control date">
                                <option value="Year">Year</option>
                            </select>
                        </div>
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
                    <button class="btn btn-lg btn-primary btn-block" type="submit">
                        Sign up
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
