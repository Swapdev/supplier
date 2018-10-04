<!DOCTYPE html>
<html lang="en">
<head>
  <title>{{ setting('site.title') }}</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="./css/owl.carousel.min.css">
    <link rel="stylesheet" href="./css/owl.theme.default.min.css">
  </head>
<body>

<section id="banner-secton">
   <div class="container">
      <div id="top-bar">     
        <p><a href="#"><span>login</span></a>-<a href="#">create account</a></p>
      </div>
    
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container">
      <a class="navbar-brand" href="javascript:void(0)"><img src="{{ url('/').'/storage/'.setting('site.logo')  }}"></a>
      <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navb" aria-expanded="false">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="navbar-collapse collapse" id="navb" style="">
      {{ menu('home', 'menus.home-menu')}}
        <form class="form-inline">
          <input class="form-control" placeholder="Search" type="text">
          <button class="btn btn-success" type="button"><i class="fa fa-search" aria-hidden="true"></i>
          </button>
        </form>
        <p class="cart-sec"><i class="fa fa-shopping-bag" aria-hidden="true"></i> 0 items<span>qar 0.00</span></p>
      </div>
    </div>
    </nav>


    <div class="banner-caption text-center">
      <h1>{{ setting('home.home_tagline') }}</h1>
      <p>{{ setting('home.home_sub_tagline') }}</p>
      <a class="btn btn-secondary" href="javascript:void(0)">main page</a>
      <a class="btn btn-secondary" href="javascript:void(0)">browse catalog</a>
    </div>
  </div>
</section>


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
        <h2>how it works</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse luctus pulvinar neque, eget ultricies ex porttitor id. Donec maximus nulla eu ex tempor faucibus. Morbi viverra vehicula dictum.</p>
      </div>



      <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-4 left-part"><img src="{{ url('/').'/storage/'.setting('site.footer_logo')  }}"></div>
          <div class="col-lg-4 center-part"><h1>order</h1></div>
          <div class="col-lg-4 right-part"><img src="images/company-logo.png"></div>
        </div>
      </div>
      
       <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-12 center-part"><h1>get a varification</h1></div>
        </div>
      </div>

      <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-4 left-part"><img src="{{ url('/').'/storage/'.setting('site.footer_logo')  }}"></div>
          <div class="col-lg-4 center-part"><h1>get a varification</h1></div>
          <div class="col-lg-4 right-part"><img src="{{ url('/').'/storage/'.setting('site.footer_logo')  }}"></div>
        </div>
      </div>

      <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-12 center-part"><h1>approved</h1></div>
        </div>
      </div>

      <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-4 left-part"><img src="{{ url('/').'/storage/'.setting('site.footer_logo')  }}"></div>
          <div class="col-lg-4 center-part"><h1>notify</h1></div>
          <div class="col-lg-4 right-part"><img src="images/company-logo.png"></div>
        </div>
      </div>

      <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-12 center-part"><h1>checkout</h1></div>
        </div>
      </div>

       <div class="flow-pats-section text-center">
        <div class="row flow-inner">
          <div class="col-lg-4 left-part"><img src="{{ url('/').'/storage/'.setting('site.footer_logo')  }}"></div>
          <div class="col-lg-4 center-part"><h1>ffsfsd</h1></div>
          <div class="col-lg-4 right-part"><img src="{{ url('/').'/storage/'.setting('site.footer_logo')  }}"></div>
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

<footer>
  <div class="container">
    <div class="row">
      <div class="logo-sec col-lg-3"><a class="navbar-brand" href="#"><img src="{{ url('/').'/storage/'.setting('site.footer_logo')  }}"></a></div>

      <div class="nav-sec col-lg-9">
        <nav class="navbar navbar-expand-lg">
        {{ menu('home', 'menus.home-menu')}}
        </nav>
      </div>
      {{ menu('social', 'menus.footer-social')}}

      <ul class="copyright-bar mr-auto">
        <li class="nav-item">
          <p class="nav-link">{!!  setting('site.copyright_left') !!}</p>
        </li>
        <li class="nav-item">
          <p class="nav-link">{!!  setting('site.copyright_center') !!}</p>
        </li>
        <li class="nav-item">
          <p class="nav-link">{!!  setting('site.copyright_right') !!}</p>
        </li>
      </ul>          
    </div>
  </div>
</footer>

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
</body>
</html>