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
