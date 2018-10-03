<ul class="navbar-nav mx-auto">
    @foreach($items as $menu_item)
        <li class="class="nav-item""><a class="class="nav-link"" href="{{ $menu_item->link() }}">{{ $menu_item->title }}</a></li>
    @endforeach
</ul>
