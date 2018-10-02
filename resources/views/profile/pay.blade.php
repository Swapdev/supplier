@extends('voyager::master')


@section('content')

     <div class="container">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Suggest a Business</h4>
                <p class="card-text">You might have a business that is not on Jumla Club, or you might have a friend who owns a business that is not on Jumla Club. If there is a supplier or restaurant you did not see on Jumla Club, let us know who they are and we will do our best to bring them on board. </p>



                
            </div>
            </div>

            <div class="row">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                    Suggest a Business 
                </button>
            </div>
     </div>


     <!-- Suggest a business modal-->
<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Suggest a Business</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      <form action="/action_page.php">
            <div class="form-group">
                <label for="email">Email address:</label>
                <input type="email" class="form-control" id="email">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd">
            </div>
            <div class="checkbox">
                <label><input type="checkbox"> Remember me</label>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
</form> 
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>


@endsection