<header id="banner-secton">
   <div class="container">
   <div id="top-bar">     
   @guest
        <p><a href="{{url('/login')}}"><span>login</span></a>-<a href="{{url('/register')}}">create account</a></p>
    @endguest
    @auth 
    <p><a href="{{url('/dashboard')}}"><span>{{ Auth::user()->name }}</span></a>-<a href="{{route('logout')}}">Logout</a></p>
     
    @endauth
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
</header>
