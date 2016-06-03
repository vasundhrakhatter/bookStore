<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 02-06-2016
  Time: 16:11
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <title></title>

</head>

<body>
<g:render template="/templates/header"/>

<form class="container-fluid form-horizontal" action=${createLink(uri: '/j_spring_security_check')} method='POST' id='loginForm'  autocomplete='off' style="margin: 5%; border-style: solid; border-left: hidden; border-right: hidden; padding-top: 5%; padding-bottom: 5% ">
    <div class="form-group" >
        <label class="control-label col-md-4" for='username'>Username:</label>
        <div class="col-md-4">
            <input type="text" class="form-control" name='j_username' id='username' placeholder="Enter username">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for='password'>Password:</label>
        <div class="col-md-4">
            <input type="password" class="form-control" name='j_password' id='password' placeholder="Enter password">
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-4 col-md-4">
            <div class="checkbox">
                <label><input type="checkbox"> Remember me</label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-4 col-md-4">
            <button type="submit" class="btn btn-default" id="submit">Submit</button>
        </div>
    </div>
    <div class="col-md-offset-4 col-md-4" style="color: red">
            <g:if test='${flash.message}'>
                <div class='login_message'>${flash.message}</div>
            </g:if>
        </div>
</form>
</body>
<script>
    $(document).ready(function(){
        $('a[href^="login/auth"]').hide();

    });
</script>

</html>