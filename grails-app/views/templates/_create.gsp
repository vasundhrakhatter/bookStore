<form class="container-fluid form-horizontal" role="form" action="${createLink(controller: 'admin',action: 'createEntry')}" style="margin: 5%; border-style: solid; border-left: hidden; border-right: hidden; padding-top: 5%; padding-bottom: 5% ">
    <div class="form-group" >
        <label class="control-label col-md-4" for='author'>AUTHOR</label>
        <div class="col-md-4">
            <input type="text" class="form-control" name='author' id='author' placeholder="Enter Author's name">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for='title'>TITLE</label>
        <div class="col-md-4">
            <input type="text" class="form-control" name='title' id='title' placeholder="Enter Title of the book">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for='price'>PRICE</label>
        <div class="col-md-4">
            <input type="text" class="form-control" name='price' id='price' placeholder="Enter Price">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for='quantity'>QUANTITY</label>
        <div class="col-md-4">
            <input type="text" class="form-control" name='quantity' id='quantity' placeholder="Enter Quantity available">
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-4 col-md-4">
            <button type="submit" class="btn btn-default" id="submit">SAVE</button>
        </div>
    </div>
</form>