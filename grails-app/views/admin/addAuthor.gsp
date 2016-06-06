<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 06-06-2016
  Time: 13:33
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Author</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body>
<g:render template="/templates/header"/>

<form class="container-fluid form-horizontal" role="form" action="${createLink(controller: 'admin', action: 'addBook')}" style="margin: 5%; border-style: solid;padding-top: 2%; padding-bottom: 2% ;">
        <div class="form-group">
            <label class="control-label col-md-4" style="margin-left: 5%">AUTHOR </label>
            <div class="panel panel-default col-md-3" >
                <input type="hidden" name="authorName" value="${author?.firstName}" />
                <div class="panel-heading" name="authorName" id="authorName" style="font-weight: bold; text-align: center">${author?.firstName.toUpperCase()} ${author?.lastName.toUpperCase()}</div>
            </div>
        </div>
    <div class="form-group">
        <label class="control-label col-md-4" style="margin-left: 5%">BOOKS </label>
        <div class="panel panel-default col-md-3" >
            <input type="hidden" name="bookName" value="${author?.bookTitles}" />
           <g:each in="${author.bookTitles}" var="books">
               <div class="panel-heading" id="bookName" style="font-weight: bold; text-align: center">${books.title.toUpperCase()}</div>
           </g:each>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" style="margin-left: 5%">ADD</label>
        <div class="panel panel-default col-md-3" >
            <input type="text" class="form-control" name='newBook' id='newBook' placeholder="Enter name of Book">
        </div>
    </div>

    <div class="col-lg-offset-5 col-md-6" style="padding-top: 0.2%">
        <button type="submit" class="btn btn-primary" class="editAuthor">ADD</button>
    </div>
</form>
</body>
<script>
    $(document).ready(function(){
        $('a[href^="login/auth"]').html('LogOut');
    });
</script>
</html>