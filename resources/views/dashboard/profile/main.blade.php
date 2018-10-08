@extends('voyager::master')


@section('content')
<div class="container">
<!--Start User Section-->
    <div id="user-section" class="jc-section">
        <div class="panel panel-default">
            <div class="panel-heading">User Panel</div>
            <div class="panel-body">
                <div class="row">

                    <div class="col-md-7">

                        <div class="col-md-4 user-proifle">
                            <i class="voyager-person jc-main-icon"></i>
                            <p class="jc-p-user ">Hello {{ Auth::user()->name }},</p>
                            <p class="jc-p-email"><i class="voyager-telephone"></i> {{Auth::user()->phone}}</p>
                            <p class="jc-p-phone"><i class="voyager-mail"></i> {{Auth::user()->email}}</p>
                            <button type="button" class="btn btn-primary btn-block">Update Profile</button>
                        </div>

                        <div class="col-md-4 user-catalog">
                        <i class="voyager-compass jc-main-icon"></i>
                            <p>Shop for Ribs & Rib Eye, Chicken Breast, Chuck & Round Beef Cut, Long Life Milk (UHT), and hundreds of categories in our extensive catalog.</p>
                            <button type="button" class="btn btn-primary btn-block">Browse Catalog</button>
                        </div>

                        <div class="col-md-4 user-brands">
                        <i class="voyager-ticket jc-main-icon"></i>
                            <p>Shop from Creekstone, Nadec, JBS, Mutaheda, Almarai, and many famous international and local brands.</p>
                            <button type="button" class="btn btn-primary btn-block">Brands</button>
                        </div>
                    </div>

                    <div class="col-md-5">

                        <div class="col-md-6 user-search">
                        <i class="voyager-search jc-main-icon"></i>
                            <p>Search through thousands of items, categories, and brands.</p>
                            <button type="button" class="btn btn-primary btn-block">Catalog Search</button>
                        </div>

                        <div class="col-md-6 user-pay">
                            <i class="voyager-credit-card jc-main-icon"></i>
                            <p>Pay for all your purchases from all suppliers in one place.</p>
                            <button type="button" class="btn btn-primary btn-block"> Pay for Purchases</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
<!--End User Section-->
<!--Start Buyer Section-->
    <div id="buyer-section" class="jc-section">
        <div class="panel panel-default">
            <div class="panel-heading">Buyer Panel</div>
            <div class="panel-body">
                <div class="row">

                    <div class="col-md-7">

                        <div class="col-md-4 user-proifle">
                            <i class="voyager-person jc-main-icon"></i>
                            <p>View your shopping cart and place your orders here.</p>
                            <button type="button" class="btn btn-primary btn-block">Shopping List</button>
                        </div>

                        <div class="col-md-4 user-catalog">
                        <i class="voyager-compass jc-main-icon"></i>
                            <p>Track your purchase requests. See if the supplier has updated your orders. Give your suppliers a smiley if they're doing a good job.</p>
                            <button type="button" class="btn btn-primary btn-block">Orders Tracker</button>
                        </div>

                        <div class="col-md-4 user-brands">
                        <i class="voyager-ticket jc-main-icon"></i>
                            <p>Don't see your favorite supplier on Jumla Club? Tell us about your suppliers we will take care of the rest.</p>
                            <button type="button" class="btn btn-primary btn-block">Suggest a Business</button>
                        </div>
                    </div>

                    <div class="col-md-5">

                        <div class="col-md-6 user-search">
                        <i class="voyager-search jc-main-icon"></i>
                            <p>See the reports of all the purchase requests that you've made on Jumla Club, organized by date and by supplier.</p>
                            <button type="button" class="btn btn-primary btn-block">Purchases Report</button>
                        </div>

                        <div class="col-md-6 user-pay">
                            <i class="voyager-credit-card jc-main-icon"></i>
                            <p>See the last products you ordered, the quantities you ordered, and the dates in which you ordered them.</p>
                            <button type="button" class="btn btn-primary btn-block"> Last Purchases</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
<!--End Buyer Section-->
<!--Start Supplier Section-->
    <div id="supplier-section" class="jc-section">
        <div class="panel panel-default">
            <div class="panel-heading">Supplier Panel</div>
            <div class="panel-body">
                <div class="row">

                    <div class="col-md-7">

                        <div class="col-md-4 user-proifle">
                            <i class="voyager-person jc-main-icon"></i>
                            <p>View your company page here. This is how your customers see you. Make sure that your products have nice pictures and are priced correctly.</p>
                            <button type="button" class="btn btn-primary btn-block">Add your Business</button>
                        </div>

                        <div class="col-md-4 user-catalog">
                        <i class="voyager-compass jc-main-icon"></i>
                            <p>Track the purchase requests sent to you and update the status of these purchase requests to make your customers happy.</p>
                            <button type="button" class="btn btn-primary btn-block">Orders Tracker</button>
                        </div>

                        <div class="col-md-4 user-brands">
                        <i class="voyager-ticket jc-main-icon"></i>
                            <p>See the reports of all your purchase requests on Jumla Club, organized by date and by buyer.</p>
                            <button type="button" class="btn btn-primary btn-block">Sales Report</button>
                        </div>
                    </div>

                    <div class="col-md-5">

                        <div class="col-md-6 user-search">
                        <i class="voyager-search jc-main-icon"></i>
                            <p>See SKUs you offer. Update prices and availability.</p>
                            <button type="button" class="btn btn-primary btn-block">Add your Business</button>
                        </div>

                        <div class="col-md-6 user-pay">
                            <i class="voyager-credit-card jc-main-icon"></i>
                            <p>You want your customers to place their orders through Jumla Club? Tell us about your customers we will take care of the rest.</p>
                            <button type="button" class="btn btn-primary btn-block"> Suggest a Business</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--End Supplier Section-->
</div>




@endsection
@section('javascript')

@endsection