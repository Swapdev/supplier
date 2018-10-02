@php

$sBusinesses = App\SuggestedBussiness::all(); 
@endphp


@forelse( $sBusinesses as $sBusiness)
<table class="table table-striped">
  <tr>
    <th>Business Name: </th>
    <th>{{ $sBusiness->name }}</th>
  </tr>
  <tr>
    <td>Business Type:</td>
    <td>{{ $sBusiness->type }}</td>
  </tr>
  <tr>
    <td>Other Information: </td>
    <td>{{ $sBusiness->additional_information }} </td>
  </tr>
  <tr>
    <td>Status:</td>
    <td>{{ $sBusiness->status }}</td>
  </tr>
</table>
@empty

<div class="alert alert-danger">
<strong>Suggested Business</strong> not found.
</div>
@endforelse


<!--Suggested Business-->
     <!-- Suggest a business modal-->
<!-- The Modal -->
<div class="modal" id="suggestbusinessModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Suggest a Business</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
      <form action="{{ route('addSuggestedBusiness') }}" method="post">
      {{ csrf_field() }}

      <!--Comapny Name-->
            <div class="form-group">
                <label for="name">Company Name:</label>
                <input type="text" class="form-control" name="company-name" id="companyName">
            </div>

        <!--Comapny  best described as-->
            <div class="form-group">
                <label for="pwd">Company is best described as:</label>
                <div class="radio">
                    <label><input type="radio" name="company-type" value="supplier">Food Importer or Supplier</label>
                </div>
                <div class="radio">
                    <label><input type="radio" name="company-type" value="restaurant">Restaurant or Cafe</label>
                </div>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" name="owner" > Own Business </label>
            </div>

            <div class="form-group">
                <textarea name="additional-information" class="form-control" placeholder="Share with us any additional information about the business, like contacts, business hours, etc.">
                </textarea>
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
<!--suggested Business-->
