@extends('voyager::master')


@section('content')

    <div class="container">
    <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-bordered">
                    
                        
                        <div class="panel-body">
                            
                        <table class="table table-striped table bordered">
                            <tr>
                                <td>Full Name</td>
                                <td>{{ Auth::user()->name }} <button type="button" class="btn btn-info" onclick="editModal('edit-name')"><i class="voyager-edit" ></i></button></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>
                                <button type="submit" class="btn btn-default" data-toggle="modal" data-target="#passwordModal">
                                <i class="voyager-power"></i>
                                Edit Password
                            </button><br></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>{{ Auth::user()->email }} <button type="button" class="btn btn-info" onclick="editModal('edit-email')">
                                <i class="voyager-edit"></i>
                                </button>
                            @if(!($emailverified))
                                <br/>Your email has not been confirmed yet. Please check your email for the confirmation code. If you have not received the email, click on the next button to resend, or call us for assistance. 
                                
                                
                                <button onclick="confirmModal('confirm-email')" class="btn btn-primary"> Resend Confirmation Code</button>
                            @endif
                            </td>
                            </tr>
                            <tr>
                                <td>Mobile</td>
                                <td>{{ Auth::user()->phone }}<button type="button" class="btn btn-info" onclick="editModal('edit-mobile')"><i class="voyager-edit"></i></button>
                            @if(!($phoneverified))
                                <br/>Your mobile has not been confirmed yet. Please check your SMS for the confirmation link. If you have not received it yet, click on the next button to resend, or call us for assistance. <button class="btn btn-primary" onclick="confirmModal('confirm-phone')"> Resend Confirmation Code</button>
                            @endif
                            </td>
                            </tr>
                            </table>
                           
                            
                        </div>
                    </div>
                </div>
            </div>
    </div>

      <div class="container">
    <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            
                       <div clas="row">
                        <div class="col-md-6">
                                <h2>Add a Business</h2>
                                <p>Whether you're a seller or a buyer, you can add your business to Jumla now. You can also use this form to suggest adding other businesses that you deal with.</p>
                                <p> <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#suggestbusinessModal">Add Another Business</button></p>
                        </div>


                        <div class="col-md-6 ">
                        <h2>Recorded Suggestions</h2>
                        @include('template-parts.suggest-business')
                        </div>
                       </div>
                            
                        </div>
                    </div>
                </div>
            </div>
    </div>


<!--Edit profile modal -->
<!-- Modal -->
<div id="editModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <form action="{{ route('updateProfile')}}" method="post">
            {{ csrf_field() }}
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">
            <span class="edit-modal-key edit-name">Update Full Name</span>
            <span class="edit-modal-key edit-email">Change Email</span>
            <span class="edit-modal-key edit-mobile">Change Mobile Number</span>
        </h4>
            </div>
            <div class="modal-body">
                <div class="form-group edit-modal-key edit-name">
                    <label for="jc-name">Full Name:</label>
                    <input type="text" class="form-control" name="name" id="jc-name" value="{{ Auth::user()->name }}">

                </div>
                <div class="form-group edit-modal-key edit-email">
                    <label for="jc-email">New Email:</label>
                    <input type="text" class="form-control" name="email" id="jc-email" value="{{ Auth::user()->email }}">
                </div>
                <div class="form-group edit-modal-key edit-mobile">
                    <label for="jc-phone">New Mobile Number:</label>
                    <input type="text" class="form-control" name="phone" id="jc-phone" value="{{ Auth::user()->phone }}">
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </div>
            </form>
        </div>
    </div>
</div>

<!--End Edit profile modal-->


<!--Edit Password Modal-->



<!-- The Modal -->
<div id="passwordModal" class="modal fade" role="dialog">

  <div class="modal-dialog">
    <div class="modal-content">
        <form action="{{ route('updatePassword') }}" method="post">
            {{ csrf_field() }}
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Change Password</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
          <div class="form-group edit-password">
            <label for="jc-password">New Password:</label>
            <input type="text" class="form-control" id="jc-password" name="password">
         </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </form>
    </div>
  </div>
</div>
<!--End Pasword Modal-->



<!--Confirmation modal-->
<!-- The Modal -->
<div class="modal" id="confirmModal">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Resend Confirmation Code</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <form action="{{ route('sendConfirmEmail') }}" method="post" class="confirm-key confirm-email">
        {{ csrf_field() }}
        <button type="submit" class="btn btn-primary">Submit</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
        </form>

        <form action="{{ route('sendConfirmPhone') }}" method="post" class="confirm-key confirm-phone">
        {{ csrf_field() }}
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
        </form>
      </div>

    </div>
  </div>
</div>

<!--End Confirmation Modal-->

@endsection
@section('javascript')
<script>

    function editModal(key){

        $(".edit-modal-key").hide();
        $("."+key).show();
        $("#editModal").modal()
    }

    function confirmModal(key){

        $(".confirm-key").hide();
        $("."+key).show();
        $("#confirmModal").modal()
    }
</script>
@endsection