<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome  </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>
<g:render template="/templates/header"/>

<g:render template="/templates/userNavigation"/>

<div id="home" class="tab-pane fade in active">
<g:render template="/templates/dashboard"/>
<p style="text-align: center">Some content!</p>
</div>

<div id="setting" class="tab-pane fade">
    <g:render template="/templates/settings"/>
</div>
</body>
<script>
    $(document).ready(function(){
        $('a[href^="login/auth"]').html('LogOut');
        $('#display').hide();
        $('#displaySubmit').hide();
        $('#current').hide();
        $('#changeUsername').click(function(){
            $(this).hide();
            $('#changeUser').css("background-color","BurlyWood");
            $('#current').show();
            $('#display').show();
            $('#displaySubmit').show();
        });
    });
</script>
</html>