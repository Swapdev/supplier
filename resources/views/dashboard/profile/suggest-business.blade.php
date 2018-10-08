@extends('voyager::master')


@section('content')

     <div class="container">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Suggest a Business</h4>
                <p class="card-text">You might have a business that is not on Jumla Club, or you might have a friend who owns a business that is not on Jumla Club. If there is a supplier or restaurant you did not see on Jumla Club, let us know who they are and we will do our best to bring them on board. </p>
            </div>
            </div>

            <div class="row" id="suggested-businesses">
                @include('template-parts.suggest-business')
            </div>

            <div class="row">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#suggestbusinessModal">
                    Suggest a Business 
                </button>
            </div>
     </div>



@endsection