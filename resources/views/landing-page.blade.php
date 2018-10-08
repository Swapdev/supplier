@extends('layouts.app')

@section('content')

<section id="about-section">
  <div class="container">
      <div class="about-wrap mx-auto col-lg-10">
        <div class="heading-sec">
          <h2>{{ setting('home.home_about_title') }}</h2>
        </div>
        <div class="row">
        <div class="col-lg-6">
          <div class="left-section">
            <img class="img-fluid" src="{{ url('/').'/storage/'.setting('home.home_about_image')  }}">
          </div>
        </div>
        <div class="right-section col-lg-6"> 
        {!! setting('home.home_about_content') !!}
        </div>
      </div>
    </div>
  </div>
</section>


<section id="works-section">
  <div class="container">
      <div class="heading-sec text-center">
        <h2>{{ setting('hiw.hiw_title') }}</h2>
                {{ setting('hiw.hiw_description') }}
      </div>



      <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-4 left-part">
            <img src="{{ url('/').'/storage/'.setting('hiw.step_one_image')  }}">
            <h4 class="step-title">{{ setting('hiw.step_one_title') }}</h4>
          </div>
          <div class="col-lg-4 center-part"><h1>{{ setting('hiw.step_one_two_path') }}</h1></div>
          <div class="col-lg-4 right-part">
            <img src="{{ url('/').'/storage/'.setting('hiw.step_two_image')  }}">
            <h4 class="step-title">{{setting('hiw.step_two_title')}}</h4>
          </div>
        </div>
      </div>
      
       <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-12 center-part"><h1>{{ setting('hiw.step_two_three_path') }}</h1></div>
        </div>
      </div>

      <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-4 left-part">
            <img src="{{ url('/').'/storage/'.setting('hiw.step_three_image')  }}">
            <h4 class="step-title">{{setting('hiw.step_three_title')}}</h4>
            </div>
          <div class="col-lg-4 center-part"><h1>{{ setting('hiw.step_three_four_path') }}</h1></div>
          <div class="col-lg-4 right-part">
            <img src="{{ url('/').'/storage/'.setting('hiw.step_four_image')  }}">
            <h4 class="step-title">{{setting('hiw.step_four_title')}}</h4>
            </div>
        </div>
      </div>

      <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-12 center-part"><h1>{{ setting('hiw.step_four_five_path') }}</h1></div>
        </div>
      </div>

      <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-4 left-part">
          <img src="{{ url('/').'/storage/'.setting('hiw.step_five_image')  }}">
          <h4>{{setting('hiw.step_five_title')}}</h4>
          </div>
          <div class="col-lg-4 center-part"><h1>{{ setting('hiw.step_five_six_path') }}</h1></div>
          <div class="col-lg-4 right-part">
            <img src="{{ url('/').'/storage/'.setting('hiw.step_six_image')  }}">
            <h4 class="step-title">setting('hiw.step_six_title')</h4>
          </div>
        </div>
      </div>

      <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-12 center-part"><h1>{{setting('hiw.step_six_seven_path')}}</h1></div>
        </div>
      </div>

       <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-4 left-part">
            <img src="{{ url('/').'/storage/'.setting('hiw.step_seven_image')  }}">
            <h4 class="step-title">{{setting('hiw.step_seven_title')}}</h4>
          </div>
          <div class="col-lg-4 center-part"><h1>{{setting('hiw.step_seven_eight_path')}}</h1></div>
          <div class="col-lg-4 right-part">
            <img src="{{ url('/').'/storage/'.setting('hiw.step_eight_image')  }}">
            <h4 class="step-title">{{setting('hiw.step_eight_title')}}</h4>
          </div>
        </div>
      </div>
  </div>
</section>

<section id="bussiness-section">
  <div class="container">
     <div class="heading-sec text-center">
        <h2>{{ setting('home.get_started_title') }}</h2>
                {{ setting('home.get_started_content') }}
      </div>


         <div id="testimonial-slider">
          <div class="owl-carousel" id="events">
            <div class="item">              
                <div class="cus-inner">
                    <div class="img-wrap">
                      <img src="images/restaurant_table.jpg">
                    </div>
                    <div class="cus-des">
                      <div class="row">
                            <a href="javascript:void(0)">brown sugar</a>
                            <p class="price">3<span>qr</span></p>
                            <div class="show-des" style="display: none;">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
                              <div class="row three-box">
                                <div class="col-lg-4 box"><i class="fa fa-heart" aria-hidden="true"></i></div> 
                                <div class="col-lg-4 box"><i class="fa fa-shopping-bag" aria-hidden="true"></i></div>
                                <div class="col-lg-4 box"><i class="fa fa-share-square-o" aria-hidden="true"></i></div>
                              </div>
                            </div>
                            <div class="row box-wrap">
                              <div class="col-lg-6 box-left">
                                <p><i class="fa fa-user-circle" aria-hidden="true"></i> by " saint louis "</p>
                              </div>

                              <div class="col-lg-6 box-right">
                                <p><i class="fa fa-cubes" aria-hidden="true"></i> sugar</p>
                              </div>
                            </div>
                      </div>
                   </div>          
                </div>
            </div>

             <div class="item">              
                <div class="cus-inner">
                    <div class="img-wrap">
                      <img src="images/restaurant_table.jpg">
                    </div>
                    <div class="cus-des">
                      <div class="row">
                            <a href="javascript:void(0)">brown sugar2</a>
                            <p class="price">3<span>qr</span></p>
                            <div class="show-des" style="display: none;">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
                              <div class="row three-box">
                                <div class="col-lg-4 box"><i class="fa fa-heart" aria-hidden="true"></i></div> 
                                <div class="col-lg-4 box"><i class="fa fa-shopping-bag" aria-hidden="true"></i></div>
                                <div class="col-lg-4 box"><i class="fa fa-share-square-o" aria-hidden="true"></i></div>
                              </div>
                            </div>
                            <div class="row box-wrap">
                              <div class="col-lg-6 box-left">
                                <p><i class="fa fa-user-circle" aria-hidden="true"></i> by " saint louis "</p>
                              </div>

                              <div class="col-lg-6 box-right">
                                <p><i class="fa fa-cubes" aria-hidden="true"></i> sugar</p>
                              </div>
                            </div>
                      </div>
                   </div>          
                </div>
            </div>

             <div class="item">              
                <div class="cus-inner">
                    <div class="img-wrap">
                      <img src="images/restaurant_table.jpg">
                    </div>
                    <div class="cus-des">
                      <div class="row">
                            <a href="javascript:void(0)">brown sugar 3</a>
                            <p class="price">3<span>qr</span></p>
                            <div class="show-des" style="display: none;">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
                              <div class="row three-box">
                                <div class="col-lg-4 box"><i class="fa fa-heart" aria-hidden="true"></i></div> 
                                <div class="col-lg-4 box"><i class="fa fa-shopping-bag" aria-hidden="true"></i></div>
                                <div class="col-lg-4 box"><i class="fa fa-share-square-o" aria-hidden="true"></i></div>
                              </div>
                            </div>
                            <div class="row box-wrap">
                              <div class="col-lg-6 box-left">
                                <p><i class="fa fa-user-circle" aria-hidden="true"></i> by " saint louis "</p>
                              </div>

                              <div class="col-lg-6 box-right">
                                <p><i class="fa fa-cubes" aria-hidden="true"></i> sugar</p>
                              </div>
                            </div>
                      </div>
                   </div>          
                </div>
            </div>

             <div class="item">              
                <div class="cus-inner">
                    <div class="img-wrap">
                      <img src="images/restaurant_table.jpg">
                    </div>
                    <div class="cus-des">
                      <div class="row">
                            <a href="javascript:void(0)">brown sugar 4</a>
                            <p class="price">3<span>qr</span></p>
                            <div class="show-des" style="display: none;">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
                              <div class="row three-box">
                                <div class="col-lg-4 box"><i class="fa fa-heart" aria-hidden="true"></i></div> 
                                <div class="col-lg-4 box"><i class="fa fa-shopping-bag" aria-hidden="true"></i></div>
                                <div class="col-lg-4 box"><i class="fa fa-share-square-o" aria-hidden="true"></i></div>
                              </div>
                            </div>
                            <div class="row box-wrap">
                              <div class="col-lg-6 box-left">
                                <p><i class="fa fa-user-circle" aria-hidden="true"></i> by " saint louis "</p>
                              </div>

                              <div class="col-lg-6 box-right">
                                <p><i class="fa fa-cubes" aria-hidden="true"></i> sugar</p>
                              </div>
                            </div>
                      </div>
                   </div>          
                </div>
            </div>

             <div class="item">              
                <div class="cus-inner">
                    <div class="img-wrap">
                      <img src="images/restaurant_table.jpg">
                    </div>
                    <div class="cus-des">
                      <div class="row">
                            <a href="javascript:void(0)">brown sugar 5</a>
                            <p class="price">3<span>qr</span></p>
                            <div class="show-des" style="display: none;">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
                              <div class="row three-box">
                                <div class="col-lg-4 box"><i class="fa fa-heart" aria-hidden="true"></i></div> 
                                <div class="col-lg-4 box"><i class="fa fa-shopping-bag" aria-hidden="true"></i></div>
                                <div class="col-lg-4 box"><i class="fa fa-share-square-o" aria-hidden="true"></i></div>
                              </div>
                            </div>
                            <div class="row box-wrap">
                              <div class="col-lg-6 box-left">
                                <p><i class="fa fa-user-circle" aria-hidden="true"></i> by " saint louis "</p>
                              </div>

                              <div class="col-lg-6 box-right">
                                <p><i class="fa fa-cubes" aria-hidden="true"></i> sugar</p>
                              </div>
                            </div>
                      </div>
                   </div>          
                </div>
            </div> 
          </div>
    </div>  

    <div class="range-slider">
      <div class="row">
          <div class="col-md-8 mx-auto">
             <form action="#" method="post">
                    <input type="range" class="form-control" value="20" /><span></span>
                </form>
          </div>
      </div>
    </div>
    <div class="account-links">
      <a class="btn btn-dark" href="javascript:void(0)">Create a new account</a>
      <a class="btn btn-dark" href="javascript:void(0)">Log in</a>
    </div>

  </div>
</section>

@endsection
@section('extra-js')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="./js/owl.carousel.js"></script>
<script src="./js/owl.carousel.min.js"></script>
 <script>
$(document).ready(function() {

    var owl = $('#events');
    owl.owlCarousel({     
      margin: 20,
      nav: false,
      loop: true,
      autoplay: 8000000,
      autoplaySpeed: 3000,
      autoplayHoverPause:true,
      responsiveClass:true,
      responsive: {
        0: {
          items: 1
        },
        600: {
          items: 4
        },
        1000: {
          items: 4
        }
      }
    })
  });

$(document).ready(function(){
    $(".cus-des a").click(function(){
    $(this).siblings(".show-des").toggle();
    $(this).siblings(".box-wrap").toggle();
  });
});
</script>
@endsection