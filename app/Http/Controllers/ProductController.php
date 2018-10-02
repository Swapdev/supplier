<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Supplier;
use App\ProductVariation;
use App\Product;

class ProductController extends Controller
{
    
    /**
     * Product Page that shows the variation of the product
     */

     public function show($product){
         $supplier = Supplier::get();
         $product = Product::where('slug', $product)->first(); 
         $productVariations = ProductVariation::where('product', $product->id )->get();
         

         return view('product.show', compact('supplier','productVariations','product'));
     }
}
