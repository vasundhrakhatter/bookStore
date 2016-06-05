<div class="container"  action="${createLink(controller: 'user',action: 'settings')}" style="margin-top: -5%; border-style: solid; border-left: hidden; border-right: hidden; padding-top: 5%; padding-bottom: 5% ">
    <label class="control-label col-md-4"  style="text-align: right; padding-top: 1%">USERNAME:</label>
    <div class="panel panel-warning col-md-3" >
    <div class="panel-heading" id="changeUser" ><b>${user.user}</b></div>
    </div>
    <div class="col-md-2" style="padding-top: 1%">
        <button type="button" id="changeUsername">CHANGE</button>
    </div>
    <div class="col-md-offset-4 col-md-3">
        <form class="form-horizontal" role="form" action="${createLink(controller: 'user',action: 'settings')}">
            <div class="form-group" >
                <input type="text" class="form-control" name='current' id='current' placeholder="Enter current username">
            </div>
            <div class="form-group" >
                    <input type="text" class="form-control" name='display' id='display' placeholder="Enter new username">
            </div>
            <div class="form-group">
                    <button type="submit" class="btn btn-default" id="displaySubmit">UPDATE</button>
            </div>
        </form>
    </div>
</div>