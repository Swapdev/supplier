<ul class="social-bar ml-auto">
    @foreach($items as $menu_item)
        <li class="nav-item""><a class="nav-link" href="{{ url($menu_item->link()) }}"><i class="fa {{ $menu_item->title }}" aria-hidden="true"></i></a></li>
    @endforeach
</ul>