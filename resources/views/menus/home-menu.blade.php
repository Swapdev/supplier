<ul class="navbar-nav mx-auto">
    @foreach($items as $menu_item)
        <li class="nav-item""><a class="nav-link"" href="{{ url($menu_item->link()) }}">{{ $menu_item->title }}</a></li>
    @endforeach
</ul>
