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
        <form class="form-inline" role="form" action="${createLink(controller: 'admin',action: 'createEntry')}" style="margin-top: 10%">
            <div class="form-group" style="margin-left: 6%">
                <label for="author">Author</label>
                <input type="text" class="form-control" id="author" name="author">
            </div>
            <div class="form-group" style="margin-left: 2%">
                <label for="title">Title</label>
                <input type="text" class="form-control" id="title" name="title">
            </div>
            <div class="form-group" style="margin-left: 2%">
                <label for="price">Price</label>
                <input type="text" class="form-control" id="price" name="price">
            </div>
            <div class="form-group" style="margin-left: 2%">
                <label for="quantity">Quantity</label>
                <input type="text" class="form-control" id="quantity" name="quantity">
            </div>
            <button type="submit" class="btn btn-default" style="margin-left: 2%">Save</button>
        </form>
    <div id="menu2" class="tab-pane fade">
        <h3>Menu 2</h3>
        <p>Some content in menu 2.</p>
    </div>
</div>
</body>
<script>
    $(document).ready(function(){
        $('a[href^="login/auth"]').html('LogOut');

    });
</script>
</html>