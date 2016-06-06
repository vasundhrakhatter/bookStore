<div class="container-fluid" id="hideAuthor" style="margin: 5%; border-style: solid;padding-top: 2.5%; padding-bottom: 2.5%; display: none">
    <label class="control-label col-md-6" id="authorEdit" style="text-align: right; padding-top: 0.5%">AUTHOR</label>
    <div class=" col-md-6">
        <a href="${createLink(controller: 'admin', action: 'updateAuthor')}" class="btn btn-primary">UPDATE</a>
    </div>
</div>
<form class="container-fluid form-horizontal" id="list" role="form" action="${createLink(controller: 'admin',action: 'editAuthor')}" style="margin: 5%; border-style: solid;padding-top: 2%; padding-bottom: 2% ;display: none">
    <g:each status="i" in="${list}" var="author">
    <div class="form-group">
        <label class="control-label col-md-1" style="margin-left: 5%">AUTHOR</label>
        <div class="panel panel-default col-md-2" >
            <input type="hidden" name="authorName" value="${author?.name}" />
        <div class="panel-heading" name="authorName" id="authorName" style="font-weight: bold">${author?.name}</div>
        </div>
        <div class="col-md-2" id='newAuthor' style="padding-top: 0.3%">
            <input type="text" class="form-control" name='newAuthor'  placeholder="Enter new Name">
        </div>

        <label class="control-label col-md-2" style="margin-left: -2%">POPULARITY</label>
        <div class="panel panel-default col-md-2" >
            <div class="panel-heading" ><b>${author?.popularity}</b></div>
        </div>
        <div class="col-md-1" id='newPopularity' style="padding-top: 0.3%">
            <input type="text" class="form-control" name='newPopularity'  placeholder="Edit">
        </div>
    </div>
    </g:each>
    <div class="col-lg-offset-5 col-md-4" style="padding-top: 0.2%">
        <button type="submit" class="btn btn-primary" class="editAuthor" onclick="callAjax()" >UPDATE</button>
    </div>
</form>
<form class="container-fluid form-horizontal" role="form" action="${createLink(controller: 'admin',action: 'updateTitle')}" style="margin: 5%; border-style: solid;padding-top: 2%; padding-bottom: 2% ">
    <div class="form-group" >
        <label class="control-label col-md-6" >TITLE</label>
        <div class=" col-md-6">
            <button type="submit" class="btn btn-primary" id="updateTitle">UPDATE</button>
        </div>
    </div>

</form>