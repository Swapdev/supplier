<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;

class CategoryController extends Controller
{
    
/**
 * Categories main page
 */


 public function index($category = 'main'){

    $main = true;
    $child = true;

    if( $category == 'main'){
        $categories_query = Category::where('parent', null);
        $products = array();

    } else {
        $categoryIdfromSlug = Category::where('slug', $category)->first()->id;
        $categories_query = Category::where('parent', $categoryIdfromSlug);

        
        $products = Product::with('categories')->whereHas('categories', function ($query) use ($category) {
            $query->where('slug',$category);
        })->get();

    }

    $categories = $categories_query->get();

     return view('category.index', compact('categories', 'products'));
 }
}
