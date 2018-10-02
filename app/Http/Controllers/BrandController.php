<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Brand;
use App\Category;
use App\Product;
use App\CategoryProduct;

class BrandController extends Controller
{

    /**
     * Shows the index of brand page
     */
    public function index(){
        $categories = Category::all();
        $brands = Brand::all();
        

        return view('brand.index' , compact('categories','brands'));
    }


    /**
     * Shows the categories of the brand
     */

     public function brand($brand){
            $brandIdfromSlug = Brand::where('slug', $brand)->first()->id;
            $product = Product::where('brand', $brandIdfromSlug)->pluck('id')->toArray();
            
            $categoryProduct = CategoryProduct::whereIn('product_id', $product)->pluck('category_id')->toArray();

            $categories = Category::whereIn('id', $categoryProduct)->get();

         return view('brand.category', compact('categories','brand'));

     }

     /**
      * Show the sub products of categories of the brand
      */

     public function brandCategories($brand, $category){

        $brandMeta = Brand::where('slug', $brand)->first();
        $categoryMeta = Category::where('slug', $category)->first();

     


        $products = Product::with('categories')->where('brand',$brandMeta->id)->whereHas('categories', function ($query) use ($category) {
            $query->where('slug',$category);
        })->get();
        

    
        $categoryName = $categoryMeta->name;
        $categoryId = $categoryMeta->id;

        

        /*--$products = Product::with('categories')->whereHas('categories', function ($query) use ($category){
            dd($category);
            $query->where('slug', $category);
        });

        dd($products);--*/
        

        return view('brand.product', compact('categories','brand','products','categoryName'));
     }
}
