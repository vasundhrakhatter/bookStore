<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 02-06-2016
  Time: 12:58
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <title>NexThoughts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body>
<g:render template="/templates/header"/>
%{--<div class="container-fluid">--}%
    %{--<ul class="nav nav-tabs nav-justified">--}%
        %{--<li class="active"><a data-toggle="pill" href="#home"><span class="glyphicon glyphicon-home"></span>Home</a></li>--}%
        %{--<li><a data-toggle="pill" href="#contact"><span class="glyphicon glyphicon-earphone"></span>Contact Us</a></li>--}%
        %{--<li><a data-toggle="pill" href="#signin"><span class="glyphicon glyphicon-user"></span>SignIn</a></li>--}%
    %{--</ul>--}%
%{--</div>--}%

%{--<div class="tab-content">--}%
    %{--<div id="home" class="tab-pane fade in active">--}%
        %{--<div class="container">--}%
            %{--<h3>Welcome to our BookStall</h3>--}%

            %{--<div class="row">--}%
                %{--<div class="col-md-6">--}%
                    %{--<a class="thumbnail">--}%
                        %{--<p>""</p>--}%
                        %{--<img src=alt style="width:300px;height:300px">--}%
                    %{--</a>--}%
                %{--</div>--}%
            %{--</div>--}%
            %{--<br>--}%
        %{--</div>--}%
    %{--</div>--}%
    %{--<div id="contact" class="tab-pane fade"></div>--}%


    %{--<div id="signin" class="tab-pane fade">--}%
        %{--<g:render template="/login/loginForm"/>--}%
    %{--</div>--}%
%{--</div>--}%
</body>
</html>