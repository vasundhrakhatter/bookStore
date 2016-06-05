<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 03-06-2016
  Time: 17:01
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome Admin! </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>
<g:render template="/templates/header"/>
<g:render template="/templates/adminNavigation"/>

<div class="tab-content">

    <div id="home" class="tab-pane fade in active">
        <g:render template="/templates/dashboard"/>
        <p style="text-align: center">Some content!</p>
    </div>

    <div id="create" class="tab-pane fade">
        <g:render template="/templates/create"/>
    </div>

    <div id="menu2" class="tab-pane fade">
        <h3>Menu 2</h3>
        <p>Some content in menu 2.</p>
    </div>
</div>
</div>
</body>
<script>
    $(document).ready(function(){
        $('a[href^="login/auth"]').html('LogOut');

    });
</script>
</html>