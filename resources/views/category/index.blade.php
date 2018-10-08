@extends('layout.app')

@section('title', 'Products')

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')

    @component('components.breadcrumbs')
        <a href="/">Home</a>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        <span>Shop</span>
    @endcomponent

    <div class="container">
        @if (session()->has('success_message'))
            <div class="alert alert-success">
                {{ session()->get('success_message') }}
            </div>
        @endif

        @if(count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
    </div>

    <div class="products-section container">
        <div>
            <div class="products-header">
                <h1 class="stylish-heading">Categories</h1>
            </div>

            <div class="products text-center">
                @forelse ($categories as $category)
                    <div class="product">
                        <a href="{{ route('category', $category->slug) }}"><img src="{{ getImage($category->image) }}" alt="product"></a>
                        <a href="{{ route('category', $category->slug) }}"><div class="product-name">{{ $category->name }}</div></a>
                    </div>
                @empty
                    <div style="text-align: left">No items found</div>
                @endforelse
            </div> <!-- end products -->

            <div class="products-section container">
        <div>
            <div class="products-header">
                <h1 class="stylish-heading">Product</h1>
            </div>

            <div class="products text-center">
                @forelse ($products as $product)
                    <div class="product">
                        <a href="{{ route('showProduct', $product->slug ) }}"><img src="{{ getImage($product->image) }}" alt="product"></a>
                        <a href="{{ route('showProduct', $product->slug ) }}"><div class="product-name">{{ $product->name }}</div></a>
                    </div>
                @empty
                    <div style="text-align: left">No items found</div>
                @endforelse
            </div> <!-- end products -->


            <div class="spacer"></div>

        </div>
    </div>

@endsection

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
